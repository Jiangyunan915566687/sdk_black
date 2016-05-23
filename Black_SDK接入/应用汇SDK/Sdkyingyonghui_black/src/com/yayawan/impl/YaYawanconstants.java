package com.yayawan.impl;

import java.util.HashMap;

import android.app.Activity;

import com.appchina.model.ErrorMsg;
import com.appchina.usersdk.Account;
import com.yayawan.callback.YYWExitCallback;
import com.yayawan.domain.YYWUser;
import com.yayawan.main.YYWMain;
import com.yayawan.sdk.callback.YayaWanCallback;
import com.yayawan.sdk.main.YayaWan;
import com.yayawan.utils.DeviceUtil;
import com.yayawan.utils.Handle;
import com.yayawan.utils.JSONUtil;
import com.yyh.sdk.AccountCallback;
import com.yyh.sdk.CPInfo;
import com.yyh.sdk.InitCallback;
import com.yyh.sdk.LoginCallback;
import com.yyh.sdk.PayCallback;
import com.yyh.sdk.PayParam;
import com.yyh.sdk.YYHSDKAPI;

public class YaYawanconstants {

	private static HashMap<String, String> mGoodsid;

	private static Activity mActivity;

	/**
	 * 初始化sdk
	 */
	public static void inintsdk(Activity mactivity) {
		mActivity = mactivity;
		Yayalog.loger("初始化sdk");
		CPInfo cpinfo = new CPInfo();
		cpinfo.loginId = Integer.parseInt(DeviceUtil.getGameInfo(mactivity,
				"loginId")); // 登录id
		cpinfo.loginKey = DeviceUtil.getGameInfo(mactivity, "loginKey"); // 登录key
		cpinfo.appid = DeviceUtil.getGameInfo(mactivity, "appid");// appid，支付id，一般为10位或者20位的数字
																	// ，
		cpinfo.appkey = DeviceUtil.getGameInfo(mactivity, "appkey");
		if (DeviceUtil.isLandscape(mactivity)) {
			cpinfo.orientation = CPInfo.LANDSCAPE; // 横竖屏设置
		} else {
			cpinfo.orientation = CPInfo.PORTRAIT; // 横竖屏设置
		}
		// 初始化SDK
		YYHSDKAPI.initSDKAPI(mactivity, cpinfo, new InitCallback() {

			@Override
			public void onFinish() {
				// 初始化完成
				if (YYHSDKAPI.isLogined(mActivity)) {
					YYHSDKAPI.showToolbar(true);
				}
				// YYHSDKAPI.getAccount(mActivity);//获取当前帐号信息的接口
				login(mActivity);
			}

			@Override
			public void onError(String arg0) {
				// 初始化失败
				Yayalog.loger("初始化失败");
			}
		}, new AccountCallback() {
			/**
			 * 切换帐号 preAccount 之前的帐号 crtAccount 现在的帐号
			 */
			@Override
			public void onSwitchAccount(Account preAccount, Account crtAccount) {
				loginSwitch(crtAccount.userName, crtAccount.nickName,
						crtAccount.ticket);
			}

			/**
			 * 退出登录
			 */
			@Override
			public void onLogout() {
				logout();
			}
		});
	}

	/**
	 * 登录
	 */
	public static void login(final Activity mactivity) {
		Yayalog.loger("sdk登录");
		YYHSDKAPI.login(mactivity, new LoginCallback() {
			@Override
			public void onLoginSuccess(Activity activity, Account account) {
				// 登录成功
				YYHSDKAPI.showToolbar(true);
				loginSuce(activity, account.userName, account.nickName,
						account.ticket);
			}

			@Override
			public void onLoginError(Activity activity, ErrorMsg error) {
				// 登录失败
				Yayalog.loger("登录失败:" + error);
				loginFail();
			}

			@Override
			public void onLoginCancel() {
				// 登录取消
				Yayalog.loger("登录取消");
				loginCancle();
			}
		});
	}

	/**
	 * 支付
	 * 
	 * @param mactivity
	 */
	public static void pay(Activity mactivity, String morderid) {
		Yayalog.loger("sdk支付");
		int money = Integer.parseInt(YYWMain.mOrder.money + "");
		YYHSDKAPI.stratPay(mactivity, new PayParam(1, money, 1, morderid,
				morderid, "" + DeviceUtil.getGameInfo(mactivity, "callback")),
				new PayCallback() {

					@Override
					public void onPaySuccess(int resultCode, String signValue,
							String resultInfo) {
						// 支付成功
						paySuce();
					}

					@Override
					public void onPayFaild(int errorCode, String errorMsg) {
						// 支付失败
						payFail();
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
		if (DeviceUtil.getGameInfo(paramActivity, "addexit").endsWith("yes")) {
			paramActivity.runOnUiThread(new Runnable() {
				@Override
				public void run() {
					YayaWan.Exitgame(mActivity, new YayaWanCallback() {

						@Override
						public void onSuccess() {
							paramActivity.finish();
							callback.onExit();
							System.exit(0);
						}
					});
				}
			});
		} else {
			callback.onExit();
		}
	}

	/**
	 * 设置角色信息
	 * 
	 * @param paramActivity
	 */
	public static void setRoleData(Activity paramActivity) {

	}

	public static void onResume(Activity paramActivity) {

	}

	public static void onPause(Activity paramActivity) {

	}

	public static void onDestroy(Activity paramActivity) {

	}

	/**
	 * 登录成功调用
	 * 
	 * @param mactivity
	 * @param uid
	 *            唯一id
	 * @param username
	 *            用户名(昵称)如果用户名为空.则拿uid作为用户名
	 * @param session
	 *            token验证码 或 ticket 用户令牌
	 */
	public static void loginSuce(Activity mactivity, String uid,
			String username, String session) {

		YYWMain.mUser = new YYWUser();

		YYWMain.mUser.uid = DeviceUtil.getUnionid(mactivity) + "-" + uid + "";

		if (username != null) {
			YYWMain.mUser.userName = DeviceUtil.getUnionid(mactivity) + "-"
					+ username + "";
		} else {
			YYWMain.mUser.userName = DeviceUtil.getUnionid(mactivity) + "-"
					+ uid + "";
		}

		YYWMain.mUser.token = JSONUtil.formatToken(mactivity, session,
				YYWMain.mUser.userName);

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
		loginSuce(mActivity, uid, username, session);
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
		// 支付成功
		if (YYWMain.mPayCallBack != null) {
			YYWMain.mPayCallBack.onPaySuccess(YYWMain.mUser, YYWMain.mOrder,
					"success");
		}
	}

	/**
	 * 支付失败
	 */
	public static void payFail() {
		// 支付失败
		if (YYWMain.mPayCallBack != null) {
			YYWMain.mPayCallBack.onPayFailed(null, null);
		}
	}

}
