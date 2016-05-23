package com.yayawan.impl;

import java.util.HashMap;

import android.app.Activity;

import com.tongbu.sdk.bean.TbUser;
import com.tongbu.sdk.configs.TbPayInfo;
import com.tongbu.sdk.configs.TbPlatform;
import com.tongbu.sdk.configs.TbPlatformSettings;
import com.tongbu.sdk.configs.TbToolBarPlace;
import com.tongbu.sdk.listener.OnInitFinishedListener;
import com.tongbu.sdk.listener.OnLeavePlatformListener;
import com.tongbu.sdk.listener.OnLoginFinishedListener;
import com.tongbu.sdk.listener.OnPayProcessListener;
import com.tongbu.sdk.listener.OnSwitchAccountListener;
import com.tongbu.sdk.widget.TbFloatToolBar;
import com.yayawan.callback.YYWExitCallback;
import com.yayawan.domain.YYWUser;
import com.yayawan.main.YYWMain;
import com.yayawan.sdk.callback.YayaWanCallback;
import com.yayawan.sdk.main.YayaWan;
import com.yayawan.utils.DeviceUtil;
import com.yayawan.utils.Handle;
import com.yayawan.utils.JSONUtil;

public class YaYawanconstants {

	private static HashMap<String, String> mGoodsid;
	private static Boolean isInit = false;
	private static Activity mActivity;
	private static TbFloatToolBar toolBar;

	/**
	 * 初始化sdk
	 */
	public static void inintsdk(Activity mactivity) {
		mActivity = mactivity;
		Yayalog.loger("初始化sdk");
		switchAccount();
		leavedSDKPlatform();
		TbPlatformSettings settings = new TbPlatformSettings();
		settings.setContinueWhenCheckUpdateFailed(true);// 检查更新
		// 设置横竖屏或者自动旋转，具体参考文档????
		if (DeviceUtil.isLandscape(mactivity)) {
			settings.setOrient(TbPlatformSettings.SCREEN_ORIENTATION_LAND);
		} else {
			settings.setOrient(TbPlatformSettings.SCREEN_ORIENTATION_PORTRAIT);
		}
		settings.setAppId(DeviceUtil.getGameInfo(mActivity, "appid")+"");//设置app_id
		toolBar = TbFloatToolBar.create(mactivity,
				TbToolBarPlace.POSITION_BOTTOM_LEFT);
		toolBar.show(); // 显示悬浮窗
		/**
		 * 下文，初始化参数中isDebug()是测试更新流程使用的，设为true 之后会强制弹出更新
		 */
		settings.setDebug(false);
		TbPlatform.getInstance().tbInit(mactivity, settings,
				new OnInitFinishedListener() {

					@Override
					public void onInitFinished(int arg0) {
						// TODO Auto-generated method stub
						// TbPlatform.getInstance().tbDestroy(mActivity);
						switch (arg0) {
						case OnInitFinishedListener.FLAG_NORMAL:
							// 正常初始化游戏
							isInit = true;
							System.out.println("初始化成功！");
							break;
						case OnInitFinishedListener.FLAG_FORCE_CLOSE:
							// 强制退出游戏
							System.out.println("初始化失败，强制退出游戏");
							break;
						case OnInitFinishedListener.FLAG_CHECK_FAILED:
							// 检查更新失败
							System.out.println("初始化失败，检查更新失败");
							break;

						default:
							break;
						}
					}
				});

	}

	/**
	 * 离开平台监听
	 */
	private static void leavedSDKPlatform() {
		TbPlatform.getInstance().tbLeavedSDKPlatform(
				new OnLeavePlatformListener() {
					@Override
					public void onLeaveFinished(int type, String order) {
						switch (type) {
						case TBPlatformLeavedFromLogin:
							// 离开注册、登录页面（登陆成功不发送离开通知）
							loginFail();// 通知下游戏登录失败
							break;
						case TBPlatformLeavedFromUserCenter:
							// 离开个人中心、系统公告、论坛等
							break;
						case TBPlatformLeavedFromUserPay:
							// 离开充值页面（包括成功、失败）
							break;

						case TBPlatformLeavedDefault:
							// 离开未知平台(预留状态)
							break;
						}
					}
				});
	}

	/**
	 * 切换帐号
	 */
	private static void switchAccount() {
		// TODO Auto-generated method stub
		TbPlatform.getInstance().setOnSwitchAccountListener(
				new OnSwitchAccountListener() {
					@Override
					public void onSwitchAccountFinished(int flag, TbUser user) {
						switch (flag) {
						case SWITCH_ACCOUNT_START:
							// 将要切换账户
							if (YYWMain.mUserCallBack != null) {
								YYWMain.mUserCallBack.onLogout(mActivity);
							}
							break;
						case SWITCH_ACCOUNT_LOGOUT:
							// 账号注销成功
							/*
							if (YYWMain.mUserCallBack != null) {
								YYWMain.mUserCallBack.onLogout(mActivity);
							}
							*/

							break;
						case SWITCH_ACCOUNT_SUCCESS:
							// 新账户登陆成功
							loginSuce(mActivity, String.valueOf(user.uid),
									user.name, user.session);
							// changeUserInfo(user);
							break;
						case SWITCH_ACCOUNT_FAILED:
							// 新账户登陆失败
							loginFail();
							break;
						case SWITCH_ACCOUNT_CANCEL:
							// 取消切换账号
							break;
						}
					}
				});
	}

	/**
	 * 登录
	 */
	public static void login(final Activity mactivity) {
		Yayalog.loger("sdk登录");
		if (isInit) {
			TbPlatform.getInstance().tbLogin(mactivity,
					new OnLoginFinishedListener() {

						@Override
						public void onLoginFinished(boolean success, TbUser user) {
							// TODO Auto-generated method stub
							if (success) {
								if (user != null) {
									// 登录成功
									loginSuce(mactivity,
											String.valueOf(user.uid),
											user.name, user.session);
								} else {
									// 登录失败
									loginFail();
								}
							}
						}
					});
		} else {
			// 初始化失败，无法进入登录，须重新初始化
			System.out.println("重新进入初始化，调用inintsdk()");
			inintsdk(mactivity);
		}
	}

	static String s_username;
	static String s_token;

	/**
	 * 支付
	 * 
	 * @param mactivity
	 */
	public static void pay(Activity mactivity, String morderid) {

		Yayalog.loger("sdk支付");
		System.out.println(morderid);
		TbPayInfo payinfo = new TbPayInfo();
		payinfo.setSerial(morderid);// ????
		payinfo.setNeedPayRMB((int) (YYWMain.mOrder.money / 10));
		payinfo.setPayDescription("123");
		TbPlatform.getInstance().tbUniPayForCoin(mactivity, payinfo,
				new OnPayProcessListener() {

					@Override
					public void onBuyGoodsDidSuccessWithOrder(String order) {
						// 使用推币直接购买成功，支付成功
						paySuce();
					}

					@Override
					public void onBuyGoodsDidStartRechargeWithOrder(String order) {
						// 购买成功的回调，进入充值界面

					}

					@Override
					public void onBuyGoodsDidFailedWithOrder(String order,
							int code) {
						// 推币余额不足，进入充值页面
						switch (code) {
						case FLAG_PAY_ERROR_QUERY:
							System.out.println("查询推币余额失败");
							break;
						case FLAG_PAY_ERROR_ORDER_EMPTY:
							System.out.println("订单为空");
							break;
						case FLAG_PAY_ERROR_NETWORK:
							System.out.println("网络异常");
							break;
						case FLAG_PAY_ERROR_OTHER:
							System.out.println("其他错误");
							break;

						default:
							break;

						}
						payFail();
					}

					@Override
					public void onBuyGoodsDidCancelByUser(String order) {
						// 购买失败的回调 ，跳提示框时，用户取消
						payFail();
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
		//回调主线程运行
		paramActivity.runOnUiThread(new Runnable() {
			
			@Override
			public void run() {
				callback.onExit();
			}
		});
	}

	/**
	 * 设置角色信息
	 * 
	 * @param arg0
	 */
	public static void setRoleData(Activity arg0) {
		// TODO Auto-generated method stub

	}

	public static void onResume(Activity paramActivity) {
		// TODO Auto-generated method stub

	}

	public static void onPause(Activity paramActivity) {
		// TODO Auto-generated method stub

	}

	public static void onDestroy(Activity paramActivity) {
		if (toolBar != null) {
			toolBar.recycle();
			toolBar = null;
		}
		// 游戏退出时务必调用本接口，以释放SDK 资源以及保存相关数据
		TbPlatform.getInstance().tbDestroy(paramActivity);

	}

	/**
	 * 登录成功调用
	 * 
	 * @param mactivity
	 * @param uid
	 *            唯一id
	 * @param username
	 *            用户名..如果用户名为空.则拿uid作为用户名
	 * @param session
	 *            token验证码
	 */
	public static void loginSuce(Activity mactivity, String uid,
			String username, String session) {

		YYWMain.mUser = new YYWUser();

		YYWMain.mUser.uid = DeviceUtil.getUnionid(mactivity) + "-" + uid + "";
		;
		if (username != null) {
			YYWMain.mUser.userName = DeviceUtil.getUnionid(mactivity) + "-"
					+ username + "";
		} else {
			YYWMain.mUser.userName = DeviceUtil.getUnionid(mactivity) + "-"
					+ uid + "";
		}

		// YYWMain.mUser.nick = data.getNickName();
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

	/*
	 * 支付成功
	 */
	public static void paySuce() {
		// 支付成功
		if (YYWMain.mPayCallBack != null) {
			YYWMain.mPayCallBack.onPaySuccess(YYWMain.mUser, YYWMain.mOrder,
					"success");
		}
	}

	public static void payFail() {
		// 支付成功
		if (YYWMain.mPayCallBack != null) {
			YYWMain.mPayCallBack.onPayFailed(null, null);
		}
	}

}
