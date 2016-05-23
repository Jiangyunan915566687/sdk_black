package com.yayawan.impl;

import java.net.URL;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.widget.Toast;

import com.qihoo.gamecenter.sdk.activity.ContainerActivity;
import com.qihoo.gamecenter.sdk.common.IDispatcherCallback;
import com.qihoo.gamecenter.sdk.matrix.Matrix;
import com.qihoo.gamecenter.sdk.protocols.ProtocolConfigs;
import com.qihoo.gamecenter.sdk.protocols.ProtocolKeys;
import com.yayawan.asynchttp.AsyncHttpConnection;
import com.yayawan.asynchttp.StringResponseHandler;
import com.yayawan.asynchttp.support.ParamsWrapper;
import com.yayawan.callback.YYWUserCallBack;
import com.yayawan.domain.YYWUser;
import com.yayawan.main.YYWMain;
import com.yayawan.proxy.YYWLoginer;
import com.yayawan.utils.DeviceUtil;
import com.yayawan.utils.Handle;
import com.yayawan.utils.JSONUtil;

public class LoginImpl implements YYWLoginer {

	public static String mAccessToken;
	@Override
	public void login(final Activity paramActivity,
			YYWUserCallBack userCallBack, String paramString) {

		new Handler(Looper.getMainLooper()).post(new Runnable() {

			@Override
			public void run() {
				//System.out.println(DeviceUtil.isLandscape(paramActivity));
				Matrix.execute(paramActivity,
						getLoginIntent(false, paramActivity, false),
						new IDispatcherCallback() {
							@Override
							public void onFinished(String data) {
								// TODO Auto-generated method stub
								// press back
								if (isCancelLogin(data)) {
									System.out.println("登陆返回");
									YYWMain.mUserCallBack.onLoginFailed(null,
											null);
									return;
								}

								// 显示一下登录结果
								// Toast.makeText(SdkUserBaseActivity.this,
								// data, Toast.LENGTH_LONG).show();
								// Log.d(TAG,
								// "mAccountSwitchSupportOfflineCB, data is " +
								// data);
								// 解析access_token
								mAccessToken = parseAccessTokenFromLoginResult(data);

								if (!TextUtils.isEmpty(mAccessToken)) {
									getuserinfo(paramActivity, mAccessToken);
								} else {
									YYWMain.mUserCallBack.onLoginFailed(null,
											null);
								}

							}

						});

			}
		});

	}

	public static void getuserinfo(final Activity mactivity, final String token) {
		Yibuhttputils yibuhttputils = new Yibuhttputils() {

			@Override
			public void sucee(String str) {
				System.out.println(str);
				try {
					JSONObject object = new JSONObject(str);
					//object.getLong(name)
					String id = object.isNull("id") ? null : object
							.getLong("id")+"";
					String name = object.isNull("name") ? null : object
							.getString("name");
					//登录成功
					YYWMain.mUser = new YYWUser();
					YYWMain.mUser.uid =DeviceUtil.getUnionid(mactivity) + "-"+ id + "";
					YYWMain.mUser.userName =DeviceUtil.getUnionid(mactivity) + "-" +name + "";
					// YYWMain.mUser.nick = data.getNickName();
					YYWMain.mUser.token = JSONUtil.formatToken(mactivity,
							token, YYWMain.mUser.userName);
					if (YYWMain.mUserCallBack != null) {
						YYWMain.mUserCallBack.onLoginSuccess(YYWMain.mUser,
								"success");
						Handle.login_handler(mactivity, YYWMain.mUser.uid,
								YYWMain.mUser.userName);
					}
					//doSdkAntiAddictionQuery(YYWMain.mUser.token, YYWMain.mUser.uid, mactivity);

				} catch (JSONException e) {
					//登录失败
					YYWMain.mUserCallBack.onLoginFailed(null, null);
				}
			}

			@Override
			public void faile(String err, String rescode) {
				//登录失败
				YYWMain.mUserCallBack.onLoginFailed(null, null);
			}
		};
		yibuhttputils.runHttp("https://openapi.360.cn/user/me?access_token="
				+ token, "", "GET", "");
	}

	public static String parseAccessTokenFromLoginResult(String loginRes) {
		try {

			JSONObject joRes = new JSONObject(loginRes);
			JSONObject joData = joRes.getJSONObject("data");
			return joData.getString("access_token");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public void relogin(Activity paramActivity, YYWUserCallBack userCallBack,
			String paramString) {

		System.err.println("relogin");
	}

	public void getAccessToken(final Activity paramActivity, String code) {
		progress(paramActivity);
		AsyncHttpConnection http = AsyncHttpConnection.getInstance();
		ParamsWrapper params = new ParamsWrapper();
		if (!"".equalsIgnoreCase(code)) {

			params.put("grant_type", "authorization_code");
			params.put("code", code);
		}

		http.post("token_url", params, new StringResponseHandler() {
			@Override
			public void onResponse(String content, URL url, int code) {
				JSONObject j;
				try {
					j = new JSONObject(content);

				} catch (JSONException e) {
					e.printStackTrace();
					disprogress();
					if (YYWMain.mUserCallBack != null) {
						YYWMain.mUserCallBack.onLoginFailed("", "");
					}
				}
			}

		});
	}

	public static void doSdkAntiAddictionQuery(String accessToken,
			String qihooUserId, final Activity mactivity) {
		Bundle bundle = new Bundle();
		// 必需参数，用户access token，要使用注意过期和刷新问题，最大64字符。
		bundle.putString(ProtocolKeys.ACCESS_TOKEN, accessToken);
		// 必需参数，360账号id。
		bundle.putString(ProtocolKeys.QIHOO_USER_ID, qihooUserId);
		// 必需参数，使用360SDK的防沉迷查询模块。
		bundle.putInt(ProtocolKeys.FUNCTION_CODE,
				ProtocolConfigs.FUNC_CODE_ANTI_ADDICTION_QUERY);
		Intent intent = new Intent(mactivity, ContainerActivity.class);
		intent.putExtras(bundle);
		Matrix.execute(mactivity, intent, new IDispatcherCallback() {

			@Override
			public void onFinished(String data) {
				// TODO Auto-generated method stub
				if (!TextUtils.isEmpty(data)) {
					try {
						JSONObject resultJson = new JSONObject(data);
						int errorCode = resultJson.optInt("error_code");
						if (errorCode == 0) {
							JSONObject contentData = resultJson
									.getJSONObject("content");
							if (contentData != null) {
								// 保存登录成功的用户名及密码
								JSONArray retData = contentData
										.getJSONArray("ret");
								if (retData != null && retData.length() > 0) {
									int status = retData.getJSONObject(0)
											.optInt("status");
									switch (status) {
									case 0:
										System.out.println("无结果");
										// 查询结果:无此用户数据
										doSdkRealNameRegister(
												YYWMain.mUser.uid, mactivity);
										break;
									case 1:
										System.out.println("未成年人");
										// 查询结果:未成年
										doSdkRealNameRegister(
												YYWMain.mUser.uid, mactivity);

										break;
									case 2:
										System.out.println("成年人");
										// 查询结果:已成年
										break;
									default:
										break;
									}
									return;
								}
							}
						} else {
							return;
						}
					} catch (JSONException e) {
						e.printStackTrace();
					}
				}

				//
			}
		});

	}

	/**
	 * 使用360SDK实名注册接口
	 * 
	 * @param isLandScape
	 *            是否横屏显示登录界面
	 * @param qihooUserId
	 *            奇虎360用户ID
	 */
	protected static void doSdkRealNameRegister(String qihooUserId, Activity mactivity) {
		Bundle bundle = new Bundle();
		// 界面相关参数，360SDK界面是否以横屏显示。
		bundle.putBoolean(ProtocolKeys.IS_SCREEN_ORIENTATION_LANDSCAPE,
				DeviceUtil.isLandscape(mactivity));
		// 必需参数，360账号id。
		bundle.putString(ProtocolKeys.QIHOO_USER_ID, qihooUserId);
		// 可选参数，登录界面的背景图片路径，必须是本地图片路径
		bundle.putString(ProtocolKeys.UI_BACKGROUND_PICTRUE, "");
		// 必需参数，使用360SDK的实名注册模块。
		bundle.putInt(ProtocolKeys.FUNCTION_CODE,
				ProtocolConfigs.FUNC_CODE_REAL_NAME_REGISTER);
		Intent intent = new Intent(mactivity, ContainerActivity.class);
		intent.putExtras(bundle);
		Matrix.invokeActivity(mactivity, intent, new IDispatcherCallback() {
			@Override
			public void onFinished(String data) {
					System.out.println(data);
			}
		});

	}

	public static boolean isCancelLogin(String data) {
		try {
			JSONObject joData = new JSONObject(data);
			int errno = joData.optInt("errno", -1);
			if (-1 == errno) {
				// Toast.makeText(mActivity, data, Toast.LENGTH_LONG).show();
				return true;
			}
		} catch (Exception e) {
		}
		return false;
	}

	/**
	 * 生成调用360SDK登录接口的Intent
	 * 
	 * @param isLandScape
	 *            是否横屏
	 * @return intent
	 * 
	 *         isswich 是否切换账号
	 */
	public static Intent getLoginIntent(boolean isLandScape,
			Activity mActivity, boolean isswich) {

		Intent intent = new Intent(mActivity, ContainerActivity.class);

		// 界面相关参数，360SDK界面是否以横屏显示。
		intent.putExtra(ProtocolKeys.IS_SCREEN_ORIENTATION_LANDSCAPE, DeviceUtil.isLandscape(mActivity));

		// 必需参数，使用360SDK的登录模块。
		intent.putExtra(ProtocolKeys.FUNCTION_CODE,
				ProtocolConfigs.FUNC_CODE_LOGIN);

		if (isswich) {
			intent.putExtra(ProtocolKeys.FUNCTION_CODE,
					ProtocolConfigs.FUNC_CODE_SWITCH_ACCOUNT);
		}

		// 是否显示关闭按钮
		intent.putExtra(ProtocolKeys.IS_LOGIN_SHOW_CLOSE_ICON, false);

		// -- 以下参数仅仅针对自动登录过程的控制
		// 可选参数，自动登录过程中是否不展示任何UI，默认展示。
		// intent.putExtra(ProtocolKeys.IS_AUTOLOGIN_NOUI,
		// getCheckBoxBoolean(R.id.isAutoLoginHideUI));

		// 可选参数，静默自动登录失败后是否显示登录窗口，默认不显示
		// intent.putExtra(ProtocolKeys.IS_SHOW_LOGINDLG_ONFAILED_AUTOLOGIN,
		// getCheckBoxBoolean(R.id.isShowDlgOnFailedAutoLogin));
		// 测试参数，发布时要去掉
		//intent.putExtra(ProtocolKeys.IS_SOCIAL_SHARE_DEBUG, true);

		return intent;
	}

	public void getAccessUserInfo(final Activity paramActivity, String code) {
		progress(paramActivity);
		AsyncHttpConnection http = AsyncHttpConnection.getInstance();
		ParamsWrapper params = new ParamsWrapper();
		if (!"".equalsIgnoreCase(code)) {

			params.put("grant_type", "authorization_code");
			params.put("code", code);
		}

		http.post("token_url", params, new StringResponseHandler() {
			@Override
			public void onResponse(String content, URL url, int code) {
				JSONObject j;
				try {
					j = new JSONObject(content);
					String error = j.optString("error", "");
					if (error == "") {
						YYWMain.mUser = new YYWUser();
						YYWMain.mUser.uid = j.optString("xmw_open_id", "");
						YYWMain.mUser.userName = j.optString("xmw_open_id", "");
						YYWMain.mUser.nick = j.optString("nickname", "");
						YYWMain.mUser.icon = j.optString("avatar", "");
						YYWMain.mUser.body = "";
						YYWMain.mUser.token = JSONUtil.formatToken(
								paramActivity, "access_token=" + "token"
										+ "&refresh_token="
										+ YYWMain.mUser.userName, error);

						if (YYWMain.mUserCallBack != null) {
							YYWMain.mUserCallBack.onLoginSuccess(YYWMain.mUser,
									"success");
							Handle.login_handler(paramActivity,
									YYWMain.mUser.uid, YYWMain.mUser.userName);
						}

					} else {
						if (YYWMain.mUserCallBack != null) {
							YYWMain.mUserCallBack.onLoginFailed("", "");
						}
					}

				} catch (JSONException e) {
					e.printStackTrace();
					disprogress();
					if (YYWMain.mUserCallBack != null) {
						YYWMain.mUserCallBack.onLoginFailed("", "");
					}
				}
			}

		});
	}

	ProgressDialog progressDialog = null;

	private void progress(Activity paramActivity) {
		progressDialog = new ProgressDialog(paramActivity);
		// 设置进度条风格，风格为圆形，旋转的
		progressDialog.setProgressStyle(ProgressDialog.STYLE_SPINNER);
		// 设置ProgressDialog 标题
		// progressDialog.setTitle("提示");
		// 设置ProgressDialog 提示信息
		progressDialog.setMessage("获取游戏数据");
		// 设置ProgressDialog 标题图标
		// progressDialog.setIcon(R.drawable.a);
		// 设置ProgressDialog 的进度条是否不明确
		progressDialog.setIndeterminate(true);
		// 设置ProgressDialog 是否可以按退回按键取消
		progressDialog.setCancelable(false);
		// 设置ProgressDialog 的一个Button
		// progressDialog.setButton("确定", new SureButtonListener());
		// 让ProgressDialog显示
		try {
			progressDialog.show();
		} catch (Exception e) {

		}
	}

	private void disprogress() {
		if (progressDialog != null) {
			if (progressDialog.isShowing())
				progressDialog.dismiss();
		}
	}

}
