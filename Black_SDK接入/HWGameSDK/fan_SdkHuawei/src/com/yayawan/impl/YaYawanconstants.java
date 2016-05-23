package com.yayawan.impl;

import java.util.HashMap;
import java.util.Map;

import android.app.Activity;

import com.huawei.gamebox.buoy.sdk.impl.BuoyOpenSDK;
import com.huawei.gamebox.buoy.sdk.inter.UserInfo;
import com.huawei.gamebox.buoy.sdk.util.RoleInfo;
import com.huawei.hwid.openapi.OpenHwID;
import com.huawei.opensdk.OpenSDK;
import com.huawei.opensdk.RetCode;
import com.yayawan.callback.YYWExitCallback;
import com.yayawan.domain.YYWUser;
import com.yayawan.main.YYWMain;
import com.yayawan.utils.DeviceUtil;
import com.yayawan.utils.Handle;
import com.yayawan.utils.JSONUtil;

public class YaYawanconstants {

	private static HashMap<String, String> mGoodsid;

	private static Activity mActivity;
	private static String APP_ID;
	private static String PAY_ID;
	private static String privateKey;// 浮标秘钥

	private static int retCode = -10;

	/**
	 * 初始化sdk
	 */
	public static void inintsdk(final Activity mactivity) {
		mActivity = mactivity;
		Yayalog.loger("初始化sdk");
		//Yayalog.loger("retCode:" + RetCode.SUCCESS);
		APP_ID = DeviceUtil.getGameInfo(mactivity, "APP_ID");
		PAY_ID = DeviceUtil.getGameInfo(mactivity, "PAY_ID");
		privateKey = DeviceUtil.getGameInfo(mactivity, "privateKey");
		//Yayalog.loger(APP_ID);
	//	Yayalog.loger(PAY_ID);
	//	Yayalog.loger(privateKey);

		retCode = OpenSDK.init(mactivity, APP_ID, PAY_ID, privateKey,
				new UserInfo() {

					@Override
					public void dealUserInfo(HashMap<String, String> userInfo) {

						// 用户信息为空，登录失败
						if (null == userInfo) {
							Yayalog.loger("登录失败");
						}
						// 使用华为账号登录且成功，进行accessToken验
						else if ("1".equals((String) userInfo
								.get("loginStatus"))) {
							// loginPageTips.setText("使用华为账号登录，进行accessToken校验");

							// 进行accessToken校验
							Map<String, String> param = new HashMap<String, String>();

							param.put("accessToken",
									(String) userInfo.get("accesstoken"));
							String session = (String) userInfo
									.get("accesstoken");
							String uid = (String) userInfo.get("userID");

							YYWMain.mUser = new YYWUser();
							Yayalog.loger("登录成功.登录的账号是:" + uid);
							YYWMain.mUser.uid = DeviceUtil
									.getUnionid(mactivity) + "-" + uid + "";
							;
							YYWMain.mUser.userName = DeviceUtil
									.getUnionid(mactivity) + "-" + uid + ""; // YYWMain.mUser.nick
																				// =
																				// data.getNickName();
							YYWMain.mUser.token = JSONUtil.formatToken(
									mactivity, session, YYWMain.mUser.userName);

							mActivity.runOnUiThread(new Runnable() {

								@Override
								public void run() { // TODO Auto-generated
													// method stub
									BuoyOpenSDK.getIntance().showSmallWindow(
											mActivity);
								}
							});

							if (YYWMain.mUserCallBack != null) {
								YYWMain.mUserCallBack.onLoginSuccess(
										YYWMain.mUser, "success");

								Handle.login_handler(mactivity,
										YYWMain.mUser.uid,
										YYWMain.mUser.userName);
							}

						}
					}

				});

		Yayalog.loger(retCode + "retCode:");

	}

	/**
	 * 登录
	 */
	public static void login(final Activity mactivity) {
		Yayalog.loger("sdk登录");
		// OpenSDK.start();
		// 初始化成功，进行登录调用
		 if (RetCode.SUCCESS == retCode) {
		OpenSDK.start();
		 }
	}

	/**
	 * 支付
	 * 
	 * @param mactivity
	 */
	public static void pay(Activity mactivity, String morderid) {

		Yayalog.loger("sdk支付");
	}

	/**
	 * 退出
	 * 
	 * @param paramActivity
	 * @param callback
	 */
	public static void exit(Activity paramActivity,
			final YYWExitCallback callback) {
		Yayalog.loger("sdk退出");

		callback.onExit();

	}

	/**
	 * 设置角色信息
	 * 
	 * @param arg0
	 */
	public static void setRoleData(Activity arg0) {
		// TODO Auto-generated method stub
		HashMap<String, String> role = new HashMap<String, String>();

		/**
		 * 将用户的等级等信息保存起来，必须的参数为RoleInfo.GAME_RANK(等级)/RoleInfo.GAME_ROLE(角色名称)
		 * /RoleInfo.GAME_AREA(角色所属区)/RoleInfo.GAME_SOCIATY(角色所属公会名称)
		 * 全部使用String类型存放
		 */
		role.put(RoleInfo.GAME_RANK, YYWMain.mRole.getRoleLevel());
		role.put(RoleInfo.GAME_ROLE, YYWMain.mRole.getRoleName());
		role.put(RoleInfo.GAME_AREA, YYWMain.mRole.getZoneName());
		role.put(RoleInfo.GAME_SOCIATY, YYWMain.mRole.getZoneName());

		// 存储用户当前的角色信息
		BuoyOpenSDK.getIntance().saveRoleInfo(role, mActivity);

	}

	public static void onResume(Activity paramActivity) {
		// TODO Auto-generated method stub
		if (RetCode.SUCCESS == retCode) {
			BuoyOpenSDK.getIntance().showSmallWindow(mActivity);
		}
	}

	public static void onPause(Activity paramActivity) {
		// TODO Auto-generated method stub
		if (RetCode.SUCCESS == retCode) {
			BuoyOpenSDK.getIntance().hideSmallWindow(paramActivity);
			BuoyOpenSDK.getIntance().hideBigWindow(paramActivity);
		}
	}

	public static void onDestroy(Activity paramActivity) {
		// TODO Auto-generated method stub
		// 清空帐号资源
		OpenHwID.releaseResouce();
		// 在退出的时候销毁浮标
		BuoyOpenSDK.getIntance().destroy(paramActivity);
	}

}
