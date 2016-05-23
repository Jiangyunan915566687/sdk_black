package com.yayawan.impl;

import java.util.HashMap;

import android.app.Activity;
import android.content.pm.ActivityInfo;
import cn.m4399.operate.OperateCenter;
import cn.m4399.operate.OperateCenter.OnLoginFinishedListener;
import cn.m4399.operate.OperateCenter.OnQuitGameListener;
import cn.m4399.operate.OperateCenter.OnRechargeFinishedListener;
import cn.m4399.operate.OperateCenterConfig;
import cn.m4399.operate.OperateCenterConfig.PopLogoStyle;
import cn.m4399.operate.OperateCenterConfig.PopWinPosition;
import cn.m4399.operate.User;

import com.yayawan.callback.YYWExitCallback;
import com.yayawan.domain.YYWUser;
import com.yayawan.main.YYWMain;
import com.yayawan.utils.DeviceUtil;
import com.yayawan.utils.Handle;
import com.yayawan.utils.JSONUtil;

public class YaYawanconstants {

	private static HashMap<String, String> mGoodsid;

	private static Activity mActivity;

	private static OperateCenter mOpeCenter;

	private static OperateCenterConfig mOpeConfig;

	/**
	 * 初始化sdk
	 */
	public static void inintsdk(final Activity mactivity) {
		mActivity = mactivity;

		int screenp = 0;
		if (DeviceUtil.isLandscape(mactivity)) {
			screenp = ActivityInfo.SCREEN_ORIENTATION_LANDSCAPE;
		} else {
			screenp = ActivityInfo.SCREEN_ORIENTATION_PORTRAIT;
		}
		Yayalog.loger("gamekey+" + DeviceUtil.getGameInfo(mactivity, "appkey"));
		mOpeCenter = OperateCenter.getInstance();
		mOpeConfig = new OperateCenterConfig.Builder(mactivity)
				.setGameKey(DeviceUtil.getGameInfo(mactivity, "appkey")) // 设置AppKey
				.setDebugEnabled(false) // 设置DEBUG模式,用于接入过程中开关日志输出，发布前必须设置为false或删除该行。默认为false。
				.setOrientation(screenp) // 设置横竖屏方向，默认为横屏，现支持横竖屏，和180度旋转
				.setSupportExcess(false) // 设置服务端是否支持处理超出部分金额，默认为false
				.setPopLogoStyle(PopLogoStyle.POPLOGOSTYLE_ONE) // 设置悬浮窗样式，现有四种可选
				.setPopWinPosition(PopWinPosition.POS_LEFT) // 设置悬浮窗默认显示位置，现有四种可选
				.build();
		mOpeCenter.setConfig(mOpeConfig);
		//mOpeCenter.init(arg0, arg1);
		mOpeCenter.init(mactivity, new OperateCenter.OnInitGloabListener() {
			// 初始化结束执行后回调
			@Override
			public void onInitFinished(boolean isLogin, User userInfo) {
				assert (isLogin == mOpeCenter.isLogin());
			}

			// 注销帐号的回调， 包括个人中心里的注销和logout()注销方式
			// fromUserCenter区分是否是从个人中心注销的，若是则为true，不是为false
			@Override
			public void onUserAccountLogout(boolean fromUserCenter,
					int resultCode) {
				if (YYWMain.mUserCallBack != null) {
					YYWMain.mUserCallBack.onLogout(null);
				}
			}

			// 个人中心里切换帐号的回调
			@Override
			public void onSwitchUserAccountFinished(User userInfo) {
				if (YYWMain.mUserCallBack != null) {
					YYWMain.mUserCallBack.onLogout(null);
				}
				String uid = userInfo.getUid();
				String username = userInfo.getName();
				String session = userInfo.getState();

				// 登录结束后的游戏逻辑
				YYWMain.mUser = new YYWUser();

				YYWMain.mUser.uid = DeviceUtil.getUnionid(mactivity) + "-"
						+ uid + "";
				;
				YYWMain.mUser.userName = DeviceUtil.getUnionid(mactivity) + "-"
						+ username + "";
				// YYWMain.mUser.nick = data.getNickName();
				YYWMain.mUser.token = JSONUtil.formatToken(mactivity, session,
						YYWMain.mUser.userName);

				if (YYWMain.mUserCallBack != null) {
					YYWMain.mUserCallBack.onLoginSuccess(YYWMain.mUser,
							"success");
					Handle.login_handler(mactivity, YYWMain.mUser.uid,
							YYWMain.mUser.userName);
				}
			}
		});

	}

	/**
	 * 登录
	 */
	public static void login(final Activity mactivity) {

		mOpeCenter.login(mactivity, new OnLoginFinishedListener() {

			@Override
			public void onLoginFinished(boolean success, int resultCode,
					User userInfo) {
				if (success) {
					String uid = userInfo.getUid();
					String username = userInfo.getName();
					String session = userInfo.getState();

					// 登录结束后的游戏逻辑
					YYWMain.mUser = new YYWUser();

					YYWMain.mUser.uid = DeviceUtil.getUnionid(mactivity) + "-"
							+ uid + "";
					;
					YYWMain.mUser.userName = DeviceUtil.getUnionid(mactivity)
							+ "-" + username + "";
					// YYWMain.mUser.nick = data.getNickName();
					YYWMain.mUser.token = JSONUtil.formatToken(mactivity,
							session, YYWMain.mUser.userName);

					if (YYWMain.mUserCallBack != null) {
						YYWMain.mUserCallBack.onLoginSuccess(YYWMain.mUser,
								"success");
						Handle.login_handler(mactivity, YYWMain.mUser.uid,
								YYWMain.mUser.userName);
					}
				} else {

					if (YYWMain.mUserCallBack != null) {
						YYWMain.mUserCallBack.onLoginFailed(null, null);

					}

					Yayalog.loger("登录失败状态码:" + resultCode);
				}

			}
		});
	}

	/**
	 * 支付
	 * @param mactivity
	 */
	public static void pay(Activity mactivity, String morderid) {

		int money = Integer.parseInt(YYWMain.mOrder.money + "") / 100;
		mOpeCenter.recharge(mactivity, money, // 充值金额（元）
				morderid, // 游戏方订单号
				YYWMain.mOrder.goods, // 商品名称
				new OnRechargeFinishedListener() {

					@Override
					public void onRechargeFinished(boolean success,
							int resultCode, String msg) {
						Yayalog.loger("返回状态码:" + resultCode + msg);
						if (success) {
							// 请求游戏服，获取充值结果
							if (YYWMain.mPayCallBack != null) {
								YYWMain.mPayCallBack.onPaySuccess(
										YYWMain.mUser, YYWMain.mOrder,
										"success");
							}
						} else {

							if (YYWMain.mPayCallBack != null) {
								YYWMain.mPayCallBack.onPayFailed(null, null);
							}
							// 充值失败逻辑
						}
					}
				});

	}

	/**
	 * 游戏里面退出
	 * 
	 * @param paramActivity
	 * @param callback
	 */
	public static void exit(final Activity paramActivity,
			final YYWExitCallback callback) {
		// TODO Auto-generated method stub
		// Toast.makeText(paramActivity, "退出游戏", Toast.LENGTH_SHORT).show();
		Yayalog.loger("退出登陆");
		paramActivity.runOnUiThread(new Runnable() {
			
			@Override
			public void run() {
				// TODO Auto-generated method stub
				mOpeCenter.shouldQuitGame(paramActivity, new OnQuitGameListener() {

					@Override
					public void onQuitGame(boolean shouldQuit) {
						// 点击“退出游戏”时，shouldQuit为true，游戏处理自己的退出业务逻辑
						// 点击“前往游戏圈”时，shouldQuit为false，SDK会进入游戏圈或者下载
						// 游戏盒子界面，游戏可以不做处理。
						// 点击“留在游戏”时，shouldQuit为false，SDK和游戏都不做任何处理
						// 点击右上角的关闭图标，shouldQuit为false，SDK和游戏都不做任何处理
						if (shouldQuit) {
							callback.onExit();
						}
					}
				});
			}
		});
		

	}

	/**
	 * 游戏里面注销登陆
	 */
	public static void logout() {
		// TODO Auto-generated method stub
		mOpeCenter.logout();
	}

}
