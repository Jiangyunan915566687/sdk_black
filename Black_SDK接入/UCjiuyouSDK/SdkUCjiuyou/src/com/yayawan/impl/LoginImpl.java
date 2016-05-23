package com.yayawan.impl;

import java.net.URL;

import org.json.JSONException;
import org.json.JSONObject;

import android.app.Activity;
import android.app.ProgressDialog;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.widget.Toast;
import cn.uc.gamesdk.UCCallbackListener;
import cn.uc.gamesdk.UCCallbackListenerNullException;
import cn.uc.gamesdk.UCFloatButtonCreateException;
import cn.uc.gamesdk.UCGameSDK;
import cn.uc.gamesdk.UCGameSDKStatusCode;

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

	private boolean islogin = false;

	public static boolean canlogin = false;

	@Override
	public void login(final Activity paramActivity,
			YYWUserCallBack userCallBack, String paramString) {

		new Handler(Looper.getMainLooper()).post(new Runnable() {

			@Override
			public void run() {
				paramActivity.runOnUiThread(new Runnable() {

					@Override
					public void run() {
						// TODO Auto-generated method stub
						UcLogin(paramActivity);
					}
				});
			}

		});

	}

	private void UcLogin(final Activity paramActivity) {
		try {
			UCGameSDK.defaultSDK().login(paramActivity,
					new UCCallbackListener<String>() {
						@Override
						public void callback(int code, String msg) {
							System.out.println("+++++++" + code + "  msg:"
									+ msg);
							if (code == UCGameSDKStatusCode.SUCCESS) {
								System.out.println("=============" + code
										+ "  我是登录成功.....");
								// 登录成功，可以执行后续操作
								islogin = true;
								final String sid = UCGameSDK.defaultSDK()
										.getSid();
								Log.d("black", "获取sid"+sid);
								Yibuhttputils yibuhttputils = new Yibuhttputils() {

									@Override
									public void sucee(String str) {
										// TODO Auto-generated method
										// stub
										// System.out.println(str);

										String uid = "";
										String username = "";
										/*
										 * System.out.println("返回来的用户信息:" +
										 * str);
										 */

										JSONObject object;
										try {
											object = new JSONObject(str);
											Log.d("black", "获取object"+object);
											int jsonObject2 = object
													.isNull("success") ? null
													: object.getInt("success");
											if (jsonObject2 == 0) {
												uid = object
														.isNull("accountId") ? null
														: object.getString("accountId");
												username = object
														.isNull("nickName") ? null
														: object.getString("nickName");

												if (YYWMain.mUserCallBack != null) {
													YYWMain.mUser = new YYWUser();

													YYWMain.mUser = new YYWUser();
													YYWMain.mUser.uid = DeviceUtil
															.getUnionid(paramActivity)
															+ "-" + uid + "";
													YYWMain.mUser.userName = DeviceUtil
															.getUnionid(paramActivity)
															+ "-" + uid;
													// yywUser.token =
													// tokenVerifyModel.getAccess_token();
													YYWMain.mUser.token = JSONUtil
															.formatToken(
																	paramActivity,
																	sid,
																	YYWMain.mUser.userName);

													YYWMain.mUserCallBack
															.onLoginSuccess(
																	YYWMain.mUser,
																	"success");
													// System.out
													// .println("登录成功"+YYWMain.mUser.token+"uid"+YYWMain.mUser.uid+"username"+YYWMain.mUser.userName);
													Handle.login_handler(
															paramActivity,
															YYWMain.mUser.uid,
															YYWMain.mUser.userName);

												}
												ucSdkCreateFloatButton(paramActivity);
												// 执行悬浮按钮显示方法
												ucSdkShowFloatButton(paramActivity);

											} else {
												YYWMain.mUserCallBack
														.onLoginFailed(null,
																null);
											}
										} catch (JSONException e) {
											YYWMain.mUserCallBack
													.onLoginFailed(null, null);
										}

									}

									@Override
									public void faile(String err, String rescode) {
										// TODO Auto-generated method
										// stub
										YYWMain.mUserCallBack.onLoginFailed(
												null, null);
									}
								};

								yibuhttputils.runHttp(
										"http://union.yayawan.com/get_userinfo/?union_id="
												+ DeviceUtil.getGameInfo(
														paramActivity,
														"union_id")
												+ "&game_id="
												+ DeviceUtil.getGameInfo(
														paramActivity,
														"yayawan_game_id")
												+ "&sid=" + "" + sid, "",
										"GET", "");
							}
							if (code == UCGameSDKStatusCode.LOGIN_EXIT) {
								// 登录界面关闭，游戏需判断此时是否已登录成功进行相应操作
								if (islogin) {
									islogin = false;
								} else {
									// 登录失败
									YYWMain.mUserCallBack.onLoginFailed(null,
											null);
								}

							}
							if (code == UCGameSDKStatusCode.NO_INIT) {
								// 没有初始化就进行登录调用，需要游戏调用SDK初始化方法

								new Thread(new Runnable() {

									@Override
									public void run() {
										// TODO Auto-generated method stub
										try {
											Thread.sleep(4000);
											UcLogin(paramActivity);
										} catch (InterruptedException e) {
											// TODO Auto-generated catch block

										}
									}
								}).start();
							}
						}
					});
		} catch (UCCallbackListenerNullException e) {
			// 异常处理
			YYWMain.mUserCallBack.onLoginFailed(null, null);
		}
	}

	/**
	 * 必接功能<br>
	 * 悬浮按钮创建及显示<br>
	 * 悬浮按钮必须保证在SDK进行初始化成功之后再进行创建需要在UI线程中调用<br>
	 */
	private void ucSdkCreateFloatButton(final Activity mactivity) {
		mactivity.runOnUiThread(new Runnable() {
			public void run() {
				try {
					// 创建悬浮按钮。该悬浮按钮将悬浮显示在GameActivity页面上，点击时将会展开悬浮菜单，菜单中含有
					// SDK 一些功能的操作入口。
					// 创建完成后，并不自动显示，需要调用showFloatButton(Activity,
					// double, double, boolean)方法进行显示或隐藏。
					UCGameSDK.defaultSDK().createFloatButton(mactivity,
							new UCCallbackListener<String>() {

								@Override
								public void callback(int statuscode, String data) {
									Log.d("SelectServerActivity`floatButton Callback",
											"statusCode == " + statuscode
													+ "  data == " + data);
								}
							});

				} catch (UCCallbackListenerNullException e) {
					e.printStackTrace();
				} catch (UCFloatButtonCreateException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		});
	}

	/**
	 * 必接功能<br>
	 * 悬浮按钮显示<br>
	 * 悬浮按钮显示需要在UI线程中调用<br>
	 */
	private void ucSdkShowFloatButton(final Activity mactivity) {
		mactivity.runOnUiThread(new Runnable() {
			public void run() {
				// 显示悬浮图标，游戏可在某些场景选择隐藏此图标，避免影响游戏体验
				try {
					UCGameSDK.defaultSDK().showFloatButton(mactivity, 100, 50,
							true);
				} catch (UCCallbackListenerNullException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
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
