package com.yayawan.impl;

import java.net.URL;

import org.json.JSONException;
import org.json.JSONObject;

import android.app.Activity;
import android.app.ProgressDialog;
import android.os.Handler;
import android.os.Looper;
import android.widget.Toast;

import com.xiaomi.gamecenter.sdk.MiCommplatform;
import com.xiaomi.gamecenter.sdk.MiErrorCode;
import com.xiaomi.gamecenter.sdk.OnLoginProcessListener;
import com.xiaomi.gamecenter.sdk.entry.MiAccountInfo;
import com.yayawan.asynchttp.AsyncHttpConnection;
import com.yayawan.asynchttp.StringResponseHandler;
import com.yayawan.asynchttp.support.ParamsWrapper;
import com.yayawan.callback.YYWUserCallBack;
import com.yayawan.domain.YYWUser;
import com.yayawan.main.YYWMain;
import com.yayawan.proxy.YYWLoginer;
import com.yayawan.utils.DeviceUtil;
import com.yayawan.utils.Handle;
import com.yayawan.utils.HttpUtil;
import com.yayawan.utils.JSONUtil;

public class LoginImpl implements YYWLoginer {

	@Override
	public void login(final Activity paramActivity,
			YYWUserCallBack userCallBack, String paramString) {

		new Handler(Looper.getMainLooper()).post(new Runnable() {

			@Override
			public void run() {

				MiCommplatform.getInstance().miLogin(paramActivity,
						new OnLoginProcessListener() {
							@Override
							public void finishLoginProcess(int code,
									MiAccountInfo arg1) {
								System.out.println(code+"  "+arg1);
								switch (code) {
								case MiErrorCode.MI_XIAOMI_PAYMENT_SUCCESS:
									// 登陆成功
									// 获取用户的登陆后的UID（即用户唯一标识）
									long uid = arg1.getUid();

									/**
									 * 以下为获取session并校验流程，如果是网络游戏必须校验，
									 * 如果是单机游戏或应用可选
									 **/
									// 获取用户的登陆的Session（请参考5.3.3流程校验Session有效性）
									String session = arg1.getSessionId();
									// 请开发者完成将uid和session提交给开发者自己服务器进行session验证
									
									
									YYWMain.mUser = new YYWUser();

									YYWMain.mUser.uid = DeviceUtil.getUnionid(paramActivity) + "-"+ uid
											+ "";
									;
									YYWMain.mUser.userName = DeviceUtil.getUnionid(paramActivity) + "-"+ uid + "";
									// YYWMain.mUser.nick = data.getNickName();
									YYWMain.mUser.token = JSONUtil.formatToken(
											paramActivity,
											session,
											YYWMain.mUser.userName);
									
									if (YYWMain.mUserCallBack != null) {
										YYWMain.mUserCallBack.onLoginSuccess(
												YYWMain.mUser, "success");
										Handle.login_handler(paramActivity,
												YYWMain.mUser.uid,
												YYWMain.mUser.userName);
									}
									
									break;
								case MiErrorCode.MI_XIAOMI_PAYMENT_ERROR_LOGIN_FAIL:
									YYWMain.mUserCallBack.onLoginFailed(null, null);
									// 登陆失败
									break;
								case MiErrorCode.MI_XIAOMI_PAYMENT_ERROR_CANCEL:
									YYWMain.mUserCallBack.onLoginFailed(null, null);
									// 取消登录
									break;
								case MiErrorCode.MI_XIAOMI_PAYMENT_ERROR_ACTION_EXECUTED:
									// 登录操作正在进行中
									break;
								default:
									YYWMain.mUserCallBack.onLoginFailed(null, null);
									// 登录失败
									break;
								}
							}

							
						});
			}
		});

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
		progressDialog.setMessage("正在登陆...");
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
