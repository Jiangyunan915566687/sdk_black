package com.yayawan.impl;

import java.net.URL;

import org.json.JSONException;
import org.json.JSONObject;

import android.app.Activity;
import android.app.ProgressDialog;
import android.os.Handler;
import android.os.Looper;

import com.baidu.gamesdk.BDGameSDK;

import com.baidu.gamesdk.IResponse;
import com.baidu.gamesdk.ResultCode;
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

	@Override
	public void login(final Activity paramActivity,
			YYWUserCallBack userCallBack, String paramString) {

		new Handler(Looper.getMainLooper()).post(new Runnable() {

			@Override
			public void run() {
				Yayalog.loger("调用了登录");
				//百度账号登录
				if (ActivityStubImpl.isinit) {
					
					loginBd(paramActivity);
				}
				
				
			}
		});

	}
	
	//百度账号登录
	public static void loginBd(final Activity paramActivity){
		BDGameSDK.login(new IResponse<Void>() {

			@Override
			public void onResponse(int resultCode, String resultDesc,
					Void extraData) {
				// TODO Auto-generated method stub

				String hint = "";
				switch (resultCode) {
				case ResultCode.LOGIN_SUCCESS:
					System.out.println("登录成功的uid"+BDGameSDK.getLoginUid());
					Yayalog.loger("登录成功的uid"+BDGameSDK.getLoginUid());
					String uid=BDGameSDK.getLoginUid();
					String token=BDGameSDK.getLoginAccessToken();
					//System.out.println(BDGameSDK.getLoginAccessToken());
					if (YYWMain.mUserCallBack != null) {
						YYWMain.mUser=new YYWUser();
						
							YYWMain.mUser = new YYWUser();
							YYWMain.mUser.uid = DeviceUtil
									.getUnionid(paramActivity)
									+ "-"
									+ uid
									+ "";
							YYWMain.mUser.userName = DeviceUtil
									.getUnionid(paramActivity)
									+ "-"
									+ uid;
							// yywUser.token =
							// tokenVerifyModel.getAccess_token();
							YYWMain.mUser.token = JSONUtil
									.formatToken(
											paramActivity,
											token,
											YYWMain.mUser.userName);

							YYWMain.mUserCallBack
									.onLoginSuccess(
											YYWMain.mUser,
											"success");
							Handle.login_handler(paramActivity, YYWMain.mUser.uid, YYWMain.mUser.userName);
					}
					BDGameSDK.showFloatView(paramActivity);//显示悬浮窗
					hint = "登录成功";
					Yayalog.loger("登录成功了");
					break;
				case ResultCode.LOGIN_CANCEL:
					
					YYWMain.mUserCallBack.onLoginFailed(null, null);
					hint = "取消登录";
					Yayalog.loger("登录失败");
					break;
				case ResultCode.LOGIN_FAIL:
					Toastutils_jf.toastString(paramActivity, resultDesc);
					YYWMain.mUserCallBack.onLoginFailed(null, null);
					Yayalog.loger("登录失败");
				default: // 其他值为登录失败 
					hint = "登录失败"; 
					Yayalog.loger("登录失败");
					
				}

			}

			
		});
	}
	//监听账号是否被挤下线
	private void setSessionInvalidListener(final Activity paramActivity) {
		BDGameSDK.setSessionInvalidListener(new IResponse<Void>() {
			
			@Override
			public void onResponse(int resultCode, String resultDesc,
					Void extraData) {
				switch (resultCode) {
				case ResultCode.SESSION_INVALID:
					Toastutils_jf.toastString(paramActivity, "与服务器断开连接,尝试重新登录~");
					YYWMain.mUserCallBack.onLogout(paramActivity);
					break;

				default:
					break;
				}
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
