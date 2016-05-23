package com.yayawan.impl;

import java.net.URL;
import java.util.HashMap;
import java.util.Map;

import org.json.JSONException;
import org.json.JSONObject;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import android.view.View;
import android.widget.Toast;

import com.xmwsdk.asynchttp.AsyncHttpConnection;
import com.xmwsdk.asynchttp.StringResponseHandler;
import com.xmwsdk.asynchttp.support.ParamsWrapper;
import com.xmwsdk.control.XmwMatrix;
import com.xmwsdk.data.XmwTimeData;
import com.xmwsdk.inface.XmwIDispatcherCallback;
import com.xmwsdk.model.PayInfo;
import com.xmwsdk.util.MD5Ecnrypt;
import com.xmwsdk.view.ConAlertDialog;
import com.yayawan.callback.YYWExitCallback;
import com.yayawan.domain.YYWUser;
import com.yayawan.main.YYWMain;
import com.yayawan.sdk.callback.YayaWanCallback;
import com.yayawan.sdk.main.YayaWan;
import com.yayawan.utils.DeviceUtil;
import com.yayawan.utils.Handle;
import com.yayawan.utils.JSONUtil;
/**
 * 版本号：v2.2.6-xmw20151111
 * 
 * @author black
 *
 */
public class YaYawanconstants {

	private static HashMap<String, String> mGoodsid;

	private static Activity mActivity;
	private static Boolean isLandScape;

	public static String token = "";
	public static String refresh_token;
	public static String user_id;
	public String client_id;

	/**
	 * 客户端服务器地址。 用服务器访问SDK 服务器获取access_token
	 */
	public static String access_token_url = "http://open.xmwan.com/v2/oauth2/access_token";
	public static String CLIENTID = "3ff532e966ffc597522bee653ded081c";
	public static String CLIENTSECRET = "3294dd9737780d10ecd94b24beb2b985";

	/**
	 * 熊猫玩用户访问地址
	 */
	public static String user_me_url = XmwTimeData.getInstance().ohost
			+ "/users/me";

	/**
	 * 自己客户端服务器地址。 用服务器访问SDK 服务器获取serial
	 */
	public static String notify_url = "http://union.yayawan.com/pay/notify/1246603097/1043348637/";
	public static String purchases_url = "http://open.xmwan.com/v2/purchases";

	public static Handler handler;

	private static Handler createHandler() {
		Handler handler = new Handler() {
			@Override
			public void handleMessage(Message msg) {
				super.handleMessage(msg);
				switch (msg.what) {
				case 0: // 登录取消
					loginCancle();
					Toast.makeText(mActivity, (String) msg.obj,
							Toast.LENGTH_SHORT).show();
					break;
				case 1: // 登录失败
					// landview.setVisibility(View.GONE);
					// gameview.setVisibility(View.VISIBLE);
					Toast.makeText(mActivity, (String) msg.obj,
							Toast.LENGTH_SHORT).show();
					break;
				case 2: // 登录成功
					JSONObject json;
					try {
						json = new JSONObject((String) msg.obj);
						String uid = json.optString("xmw_open_id", "");
						// user_id = uid;
						// String nickname = json.optString("nickname", "");

						loginSuce(mActivity, uid, uid, token, refresh_token);
					} catch (JSONException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}

					Toast.makeText(mActivity, (String) msg.obj,
							Toast.LENGTH_SHORT).show();
					break;
				case 3:// 支付成功
					paySuce();
					Toast.makeText(mActivity, (String) msg.obj,
							Toast.LENGTH_SHORT).show();
					break;
				case 4: // 支付失败
					payFail();
					break;
				case 5: // 支付取消
					payCancel();
					break;
				}
			}
		};
		return handler;
	}

	/**
	 * 初始化sdk
	 */
	public static void inintsdk(Activity mactivity) {
		mActivity = mactivity;
		Yayalog.loger("初始化sdk");
		// 获取游戏横竖屏
		isLandScape = DeviceUtil.isLandscape(mactivity);
		notify_url = DeviceUtil.getGameInfo(mactivity, "notifyAddress");
		// 熊猫玩初始化 Activity.getPackageName()获得Activity所在包名
		XmwMatrix.initxmw(mactivity, mactivity.getPackageName());
		// 闪屏
		XmwMatrix.invokelogo(mactivity);
		handler = createHandler();

		// login(mactivity);

	}

	/**
	 * 登录
	 */
	public static void login(final Activity mactivity) {
		Yayalog.loger("sdk登录");
		CLIENTID = DeviceUtil.getGameInfo(mactivity, "XMWAPPID");
		CLIENTSECRET = DeviceUtil.getGameInfo(mactivity, "CLIENTSECRET");
		// 熊猫玩登录
		XmwMatrix.invokeLogin(mactivity, new XmwIDispatcherCallback() {

			@Override
			public void onFinished(int error_code, String data) {
				if (error_code == 99) {
					// 用户取消登录
					Message msg = new Message();
					msg.what = 0;
					msg.obj = "用户登录取消";
					handler.sendMessage(msg);
					return;
				}
				try {
					JSONObject json = new JSONObject(data);
					String auth_code = json.optString("authorization_code", "");
					if (!"".equalsIgnoreCase(auth_code)) {
						getAccessToken(auth_code);
					}

				} catch (JSONException e) {
					e.printStackTrace();
				}
			}
		}, isLandScape);
	}

	/*
	 * grant_type 定值 authorization_code code authorization_code client_id
	 * 游戏的client_id client_secret 游戏的client_secret 客户端在获取游戏信息失败时请重新获取
	 */
	public static void getAccessToken(String code) {
		Log.i("black", "code:----->" + code);
		mActivity.runOnUiThread(new Runnable() {

			@Override
			public void run() {
				progress();
			}
		});
		AsyncHttpConnection http = AsyncHttpConnection.getInstance();
		ParamsWrapper params = new ParamsWrapper();
		if (!"".equalsIgnoreCase(code)) {
			params.put("client_id", CLIENTID);
			params.put("client_secret", CLIENTSECRET);
			params.put("grant_type", "authorization_code");
			params.put("code", code);
		}
		Log.i("black", "access_token_url:----->" + access_token_url);
		http.post(access_token_url, params, new StringResponseHandler() {
			@Override
			public void onResponse(String content, URL url, int code) {
				System.out.println("content:" + content);
				JSONObject j;
				try {
					j = new JSONObject(content);
					token = j.optString("access_token");
					refresh_token = j.optString("refresh_token");
					// 将access_token回传给SDK，用于悬浮框用户信息的展示 （XMWSDK_V2.2.0更新，重要）
					getUser_Me();
					XmwMatrix.xmw_settoken(mActivity, token);

				} catch (JSONException e) {
					e.printStackTrace();
					disprogress();
					// 登录失败1
					Message msg = new Message();
					msg.what = 1;
					msg.obj = "获取用户账号失败";
					handler.sendMessage(msg);
					System.out.println("url+" + url);
				}
			}

		});
	}

	// 使用access_token获取SDK用户信息的访问地址
	// 可以在服务器调用此链接也可以在客户端服务器调用以换取和客户端用户信息信息匹配的信息
	// 客户端在获取游戏信息失败时请重新获取
	public static void getUser_Me() {
		AsyncHttpConnection http = AsyncHttpConnection.getInstance();
		String url = user_me_url + "?access_token=" + token;
		http.get(url, new StringResponseHandler() {
			@Override
			public void onResponse(String content, URL url, int code) {
				System.out.println("content:" + content);
				JSONObject json;
				try {
					// 具体返回内容见打印信息
					json = new JSONObject(content);
					String error = json.optString("error", "");
					Log.d("black", "error=" + error);
					if (error == "") {
						// 登录成功
						// String id = json.optString("xmw_open_id", "");
						// String nickname = json.optString("nickname", "");
						Message msg = new Message();
						msg.what = 2;
						msg.obj = content;
						handler.sendMessage(msg);
					} else {
						// 登录失败2
						Message msg = new Message();
						msg.what = 1;
						msg.obj = "获取用户资料失败";
						handler.sendMessage(msg);
					}
				} catch (JSONException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}

				disprogress();
			}

		});
	}

	static ProgressDialog progressDialog = null;

	private static void progress() {
		progressDialog = new ProgressDialog(mActivity);
		// 设置进度条风格，风格为圆形，旋转的
		progressDialog.setProgressStyle(ProgressDialog.STYLE_SPINNER);
		progressDialog.setMessage("获取游戏数据");
		progressDialog.setIndeterminate(true);
		progressDialog.setCancelable(false);
		try {
			progressDialog.show();
		} catch (Exception e) {

		}
	}

	private static void disprogress() {
		if (progressDialog != null) {
			if (progressDialog.isShowing())
				progressDialog.dismiss();
		}
	}

	/**
	 * 支付
	 * 
	 * @param mactivity
	 */
	public static void pay(Activity mactivity, final String morderid) {
		Yayalog.loger("sdk支付");
		progress();
		AsyncHttpConnection http = AsyncHttpConnection.getInstance();
		ParamsWrapper params = new ParamsWrapper();
		params.put("access_token", token);
		params.put("app_user_id", YYWMain.mUser.uid);
		params.put("app_order_id", YYWMain.mOrder.orderId);
		params.put("amount", YYWMain.mOrder.money / 100);
		params.put("app_subject", YYWMain.mOrder.goods);
		params.put("app_ext1", JSONUtil.formatExt(YYWMain.mOrder.ext,
				DeviceUtil.getGameId(mactivity), YYWMain.mUser.userName,
				YYWMain.mUser.uid));
		params.put("notify_url", notify_url);
		params.put("timestamp", System.currentTimeMillis() / 1000);
		params.put("client_secret", CLIENTSECRET);
		try {

			String string = new StringBuffer("amount=")
					.append(YYWMain.mOrder.money / 100)
					.append("&app_ext1=")
					.append(JSONUtil.formatExt(YYWMain.mOrder.ext,
							DeviceUtil.getGameId(mActivity),
							YYWMain.mUser.userName, YYWMain.mUser.uid))
					.append("&app_order_id=").append(YYWMain.mOrder.orderId)
					.append("&app_subject=").append(YYWMain.mOrder.goods)
					.append("&app_user_id=").append(YYWMain.mUser.uid)
					.append("&notify_url=").append(notify_url)
					.append("&timestamp=")
					.append(System.currentTimeMillis() / 1000)
					.append("&client_secret=").append(CLIENTSECRET).toString();

			String sign = MD5Ecnrypt.EncodeMD5Hex(string);
			params.put("sign", sign);
		} catch (Exception e1) {
			e1.printStackTrace();
		}
		params.put("access_token", token);
		params.put("client_id", CLIENTID);
		http.post(purchases_url, params, new StringResponseHandler() {
			@Override
			public void onResponse(String content, URL url, int code) {
				System.out.println("content:" + content);
				JSONObject j;
				PayInfo payinfo;
				try {
					j = new JSONObject(content);
					String error = j.optString("error_description", "");
					if (error.equalsIgnoreCase("")) {
						String serial = j.optString("serial");
						String amount = j.optString("amount");
						String app_order_id = j.optString("app_order_id");
						String app_user_id = j.optString("app_user_id");
						String app_subject = j.optString("app_subject");
						String app_description = j.optString("app_description");
						String app_ext1 = j.optString("app_ext1");
						String app_ext2 = j.optString("app_ext2");
						YYWMain.mOrder.id = serial;
						payinfo = new PayInfo();
						payinfo.setPurchase_serial(serial);
						payinfo.setAmount(amount);// 金额
						payinfo.setApp_subject(app_subject);// 商品名称
						payinfo.setApp_description(app_description);// 商品描述
						payinfo.setApp_ext1(app_ext1);//
						payinfo.setApp_ext2(app_ext2);//
						payinfo.setApp_order_id(app_order_id);// 订单号
						payinfo.setApp_user_id(app_user_id);

						XmwMatrix.invokePay(mActivity,
								new XmwIDispatcherCallback() {

									@Override
									public void onFinished(int code, String data) {
										System.out.println("code:" + code
												+ " data:" + data);
										if (code == 99) {
											// 用户取消支付或支付失败
											Message msg = new Message();
											msg.what = 4;
											msg.obj = "支付取消或支付失败";
											handler.sendMessage(msg);
											return;
										} else if (code == 1) {
											// 支付正在处理，充值卡重置可能比较慢
											// 支付完成后会向服务器返回充值结果
											return;
										} else if (code == 0) {
											// 支付成功
											Message msg = new Message();
											msg.what = 3;
											msg.obj = "支付成功！";
											handler.sendMessageDelayed(msg,
													1000);
											return;
										}
									}
								}, payinfo);
					} else {
						disprogress();
						// 支付失败
						Message msg = new Message();
						msg.what = 4;
						msg.obj = error;
						handler.sendMessage(msg);
					}
					disprogress();
				} catch (JSONException e) {
					e.printStackTrace();
					disprogress();
					// 支付失败
					Message msg = new Message();
					msg.what = 5;
					msg.obj = "申请消费订单失败";
					handler.sendMessage(msg);
					System.out.println("url+" + url);
				}
			}
		});
	}

	/**
	 * 退出游戏
	 * 
	 * @param paramActivity
	 * @param callback
	 */
	public static void exit(final Activity paramActivity,
			final YYWExitCallback callback) {
		Yayalog.loger("sdk退出");
		if (DeviceUtil.getGameInfo(paramActivity, "need_yayaexit").endsWith(
				"yes")) {
			exitgameFromYyw(paramActivity, callback);
		} else {
			// 若SDK有提供退出接口,请在此处调用
			//XmwMatrix.exitXMW(mActivity);
			new ConAlertDialog(paramActivity) {
				@Override
				protected void onPositiveButton() {
					XmwMatrix.closeXmw(paramActivity);
					// 退出逻辑
					paramActivity.finish();
					callback.onExit();
					System.exit(0);
				}

				@Override
				protected String content() {
					// TODO Auto-generated method stub
					return "是否退出游戏？";
				}

				@Override
				protected String Title() {
					return "退出游戏";
				}

				@Override
				protected String Positivetext() {
					return "退出游戏";
				}

				@Override
				protected String Negativetext() {
					return "还玩一会";
				}

				@Override
				protected void NegativeButton() {
					dismiss();
				}
			};

		}
	}

	/**
	 * 设置角色信息
	 * 
	 * @param paramActivity
	 */
	public static void setRoleData(Activity paramActivity) {

	}

	/**
	 * 若接入要求重写activity的生命周期,在此处接入
	 * 
	 * @param paramActivity
	 */
	public static void onPause(Activity paramActivity) {

	}

	public static void onResume(Activity paramActivity) {

	}

	public static void onRestart(Activity paramActivity) {

	}

	public static void onStop(Activity paramActivity) {

	}

	public static void onDestroy(Activity paramActivity) {
		disprogress();
	}

	/**
	 * 登录成功调用
	 * 
	 * @param mactivity
	 * @param uid
	 *            唯一识别id
	 * @param username
	 *            用户名(昵称) 如果用户名为空.则拿uid作为用户名
	 * @param session
	 *            token验证码 ticket用户令牌 等类似的用户识别码
	 */
	public static void loginSuce(Activity mactivity, String uid,
			String username, String token, String refresh_token) {

		YYWMain.mUser = new YYWUser();
		YYWMain.mUser.uid = uid;
		YYWMain.mUser.userName = username;
		/*
		 * YYWMain.mUser.uid = DeviceUtil.getUnionid(mactivity) + "-" + uid +
		 * "";
		 * 
		 * if (username != null) { YYWMain.mUser.userName =
		 * DeviceUtil.getUnionid(mactivity) + "-" + username + ""; } else {
		 * YYWMain.mUser.userName = DeviceUtil.getUnionid(mactivity) + "-" + uid
		 * + ""; }
		 */
		YYWMain.mUser.token = JSONUtil.formatToken(mactivity, "access_token="
				+ token + "&refresh_token=" + refresh_token,
				YYWMain.mUser.userName);

		// 回传登录成功给游戏
		if (YYWMain.mUserCallBack != null) {
			YYWMain.mUserCallBack.onLoginSuccess(YYWMain.mUser, "success");
			Handle.login_handler(mactivity, YYWMain.mUser.uid,
					YYWMain.mUser.userName);
		}
	}

	/**
	 * 登录失败
	 */
	public static void loginFail() {
		if (YYWMain.mUserCallBack != null) {
			YYWMain.mUserCallBack.onLoginFailed(null, null);
		}
	}

	/**
	 * 登录取消
	 */
	public static void loginCancle() {
		if (YYWMain.mUserCallBack != null) {
			YYWMain.mUserCallBack.onCancel();
		}
	}

	/**
	 * 切换登录 切换帐号
	 * 
	 * @param mactivity
	 * @param uid
	 *            唯一id
	 * @param username
	 *            用户名(昵称)如果用户名为空.则拿uid作为用户名
	 * @param session
	 *            token验证码 或 ticket 用户令牌
	 */
	public static void loginSwitch(String uid, String username, String session) {
		// 切换登录第一步 :退出原有的帐号
		logout();
		// 第二步:再次使用新的登录信息进行登录操作
		loginSuce(mActivity, uid, username, token, refresh_token);
	}

	/**
	 * 退出登录
	 */
	public static void logout() {
		if (YYWMain.mUserCallBack != null) {
			YYWMain.mUserCallBack.onLogout(null);
		}
	}

	/**
	 * 支付成功
	 */
	public static void paySuce() {
		if (YYWMain.mPayCallBack != null) {
			YYWMain.mPayCallBack.onPaySuccess(YYWMain.mUser, YYWMain.mOrder,
					"success");
		}
	}

	/**
	 * 支付失败
	 */
	public static void payFail() {
		if (YYWMain.mPayCallBack != null) {
			YYWMain.mPayCallBack.onPayFailed(null, null);
		}
	}

	/**
	 * 支付取消
	 */
	public static void payCancel() {
		if (YYWMain.mPayCallBack != null) {
			YYWMain.mPayCallBack.onPayCancel(null, null);
		}
	}

	/**
	 * YYW提供的退出接口
	 * 
	 * @param paramActivity
	 *            activity
	 * @param callback
	 *            YYW退出回调
	 */
	public static void exitgameFromYyw(final Activity paramActivity,
			final YYWExitCallback callback) {
		paramActivity.runOnUiThread(new Runnable() {
			@Override
			public void run() {
				YayaWan.Exitgame(paramActivity, new YayaWanCallback() {

					@Override
					public void onSuccess() {
						callback.onExit();
						paramActivity.finish();
					}
				});
			}
		});
	}

}
