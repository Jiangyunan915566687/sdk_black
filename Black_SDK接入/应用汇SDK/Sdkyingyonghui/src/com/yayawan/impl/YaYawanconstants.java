package com.yayawan.impl;

import java.util.HashMap;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.widget.Toast;

import com.appchina.model.ErrorMsg;
import com.appchina.usersdk.Account;
import com.yayawan.callback.YYWExitCallback;
import com.yayawan.domain.YYWUser;
import com.yayawan.main.YYWMain;
import com.yayawan.main.YaYaWan;
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
	}

	/**
	 * 初始化回调
	 */
	private static InitCallback mInitCallback = new InitCallback() {

		@Override
		public void onFinish() {
			// 初始化完成

			if (YYHSDKAPI.isLogined(mActivity)) {
				YYHSDKAPI.showToolbar(true);
			}
			login2(mActivity);
		}

		@Override
		public void onError(String errorMsg) {
			// 初始化失败
			Yayalog.loger("初始化失败");
		}
	};
	/**
	 * 关于帐号的相关回调
	 */
	static AccountCallback mAccountCallback = new AccountCallback() {

		@Override
		public void onLogout() {
			// 退出登录
			if (YYWMain.mUserCallBack != null) {
				YYWMain.mUserCallBack.onLogout(null);
			}
		}

		@Override
		public void onSwitchAccount(com.appchina.usersdk.Account pre,
				com.appchina.usersdk.Account account) {
			// 切换帐号

			String uid = account.userName;
			String session = account.ticket;
			YYWMain.mUser = new YYWUser();

			YYWMain.mUser.uid = DeviceUtil.getUnionid(mActivity) + "-" + uid + "";
			YYWMain.mUser.userName = DeviceUtil.getUnionid(mActivity) + "-"
					+ uid + "";
			YYWMain.mUser.token = JSONUtil.formatToken(mActivity, session,
					YYWMain.mUser.userName);

			if (YYWMain.mUserCallBack != null) {
				YYWMain.mUserCallBack.onLoginSuccess(YYWMain.mUser, "success");
				Handle.login_handler(mActivity, YYWMain.mUser.uid,
						YYWMain.mUser.userName);
			}
			YYHSDKAPI.showToolbar(true);

		}
	};

	/**
	 * 登陆2
	 * 
	 * @param mactivity
	 */
	public static void login2(final Activity mactivity) {
		// 登录
		YYHSDKAPI.login(mActivity, new LoginCallback() {

			@Override
			public void onLoginError(Activity activity, ErrorMsg error) {
				// 登录失败
				Yayalog.loger("登录失败:" + error);
				if (YYWMain.mUserCallBack != null) {
					YYWMain.mUserCallBack.onLoginFailed(null, null);
				}
			}

			@Override
			public void onLoginCancel() {
				// 取消登录, 当自动登录和快速登录时是不支持取消的
				if (YYWMain.mUserCallBack != null) {
					YYWMain.mUserCallBack.onLoginFailed(null, null);
				}
			}

			@Override
			public void onLoginSuccess(Activity activity, Account account) {
				// 登录成功
				// 展示悬浮框
				Yayalog.loger("登录成功:" + account.toString());
				String uid = account.userName;
				String session = account.ticket;
				YYWMain.mUser = new YYWUser();

				YYWMain.mUser.uid = DeviceUtil.getUnionid(activity) + "-" + uid
						+ "";
				;
				YYWMain.mUser.userName = DeviceUtil.getUnionid(activity) + "-"
						+ uid + "";
				YYWMain.mUser.token = JSONUtil.formatToken(activity, session,
						YYWMain.mUser.userName);

				if (YYWMain.mUserCallBack != null) {
					YYWMain.mUserCallBack.onLoginSuccess(YYWMain.mUser,
							"success");
					Handle.login_handler(activity, YYWMain.mUser.uid,
							YYWMain.mUser.userName);
				}
				YYHSDKAPI.showToolbar(true);
			}
		});

	}

	/**
	 * 登录1
	 */
	public static void login(final Activity mactivity) {
		Yayalog.loger("sdk登录");

		// 初始化SDK
		CPInfo cpinfo = new CPInfo();
		cpinfo.loginId = Integer.parseInt(DeviceUtil.getGameInfo(mactivity,
				"loginId"));
		cpinfo.loginKey = DeviceUtil.getGameInfo(mactivity, "loginKey");
		cpinfo.appid = DeviceUtil.getGameInfo(mactivity, "appid");
		cpinfo.appkey = DeviceUtil.getGameInfo(mactivity, "appkey");
		if (DeviceUtil.isLandscape(mactivity)) {
			cpinfo.orientation = CPInfo.LANDSCAPE; // 横竖屏设置
		} else {
			cpinfo.orientation = CPInfo.PORTRAIT; // 横竖屏设置
		}
		YYHSDKAPI.initSDKAPI(mactivity, cpinfo, mInitCallback,
				YaYawanconstants.mAccountCallback);

	}

	/**
	 * 支付
	 * 
	 * @param mactivity
	 */
	public static void pay(Activity mactivity, String morderid) {

		Yayalog.loger("sdk支付");
		String money = YYWMain.mOrder.money + "";
		int money2 = Integer.parseInt(money);
		System.out.println(money2);
		YYHSDKAPI.stratPay(mActivity, new PayParam(1, money2, 1, morderid,
				morderid, "" + DeviceUtil.getGameInfo(mActivity, "callback")),
				new PayCallback() {
					@Override
					public void onPaySuccess(int resultCode, String signValue,
							String resultInfo) {

						if (YYWMain.mPayCallBack != null) {
							YYWMain.mPayCallBack.onPaySuccess(YYWMain.mUser,
									YYWMain.mOrder, "success");
						}

					}

					@Override
					public void onPayFaild(int errorCode, String errorMsg) {
						// Toast.makeText(mActivity, errorMsg,
						// Toast.LENGTH_SHORT)
						// .show();
						System.out.println(errorMsg);
						if (YYWMain.mPayCallBack != null) {
							YYWMain.mPayCallBack.onPayFailed(null, null);
						}

					}
				});
	}

	/**
	 * 退出
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
					YayaWan.Exitgame(paramActivity, new YayaWanCallback() {

						@Override
						public void onSuccess() {
							callback.onExit();
							paramActivity.finish();
						}
					});
				}
			});

		} else {
			callback.onExit();
		}
	}
}
