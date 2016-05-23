package com.yayawan.impl;

import java.util.HashMap;
import java.util.UUID;

import android.app.Activity;
import android.util.Log;
import android.widget.Toast;

import com.baidu.gamesdk.ActivityAdPage;
import com.baidu.gamesdk.ActivityAdPage.Listener;
import com.baidu.gamesdk.ActivityAnalytics;
import com.baidu.gamesdk.BDGameSDK;
import com.baidu.gamesdk.BDGameSDKSetting;
import com.baidu.gamesdk.BDGameSDKSetting.Domain;
import com.baidu.gamesdk.BDGameSDKSetting.Orientation;
import com.baidu.gamesdk.IResponse;
import com.baidu.gamesdk.OnGameExitListener;
import com.baidu.gamesdk.ResultCode;
import com.baidu.platformsdk.PayOrderInfo;
import com.yayawan.callback.YYWExitCallback;
import com.yayawan.domain.YYWUser;
import com.yayawan.main.YYWMain;
import com.yayawan.sdk.callback.YayaWanCallback;
import com.yayawan.sdk.main.YayaWan;
import com.yayawan.utils.DeviceUtil;
import com.yayawan.utils.Handle;
import com.yayawan.utils.JSONUtil;
/**
 * 版本号： BDGameSDK V3.6.3(20160309)
 * @author black
 *
 */
public class YaYawanconstants {

	private static HashMap<String, String> mGoodsid;

	private static Activity mActivity;

	private static ActivityAdPage mActivityAdPage;
	private static  ActivityAnalytics mActivityAnalytics;

	/**
	 * 初始化sdk
	 */
	public static void inintsdk(final Activity mactivity) {
		mActivity = mactivity;
		Yayalog.loger("初始化sdk");
		BDGameSDKSetting mBDGameSDKSetting = new BDGameSDKSetting();
		mBDGameSDKSetting.setAppID(Integer.parseInt(DeviceUtil.getGameInfo(
				mactivity, "appid")));// APPID设置
		mBDGameSDKSetting
				.setAppKey(DeviceUtil.getGameInfo(mactivity, "appkey"));// APPKEY设置
		mBDGameSDKSetting.setDomain(Domain.RELEASE);// 设置为正式模式 Domain. DEBUG  为调测模式
		if (DeviceUtil.isLandscape(mactivity)) {
			mBDGameSDKSetting.setOrientation(Orientation.LANDSCAPE);// 设置为横屏
		} else {
			mBDGameSDKSetting.setOrientation(Orientation.PORTRAIT);// 设置为竖屏
		}
		//BDGameSDK的初始化
		BDGameSDK.init(mactivity, mBDGameSDKSetting, new IResponse<Void>() {
			@Override
			public void onResponse(int resultCode, String resultDesc,
					Void extraData) {
				switch (resultCode) {
				case ResultCode.INIT_SUCCESS: // 初始化成功
					mactivity.runOnUiThread(new Runnable() {
						@Override
						public void run() {
							BDGameSDK.getAnnouncementInfo(mactivity);
							mActivityAnalytics = new ActivityAnalytics(mActivity);
							mActivityAdPage = new ActivityAdPage(mActivity, new Listener() {
								@Override
								public void onClose() {
									// 关闭暂停页, CP可以让玩家继续游戏
									Toast.makeText(mActivity, "继续游戏", Toast.LENGTH_LONG).show();
									
								}

							});
						}
					});					
					break;
				case ResultCode.INIT_FAIL:
				default:
					Toast.makeText(mactivity, "启动失败", Toast.LENGTH_LONG).show();
				}
			}
		});
		// 设置用户切换账号监听
		setSuspendWindowChangeAccountListener();
		// 设置用户登录信息过期监听
		setSessionInvalidListener();
	}


	private static void setSuspendWindowChangeAccountListener() {// 设置切换账号事件监听（个人中心界面切换账号）
		Log.d("black", "置切换账号事件监听 已启动");
		BDGameSDK.setSuspendWindowChangeAccountListener(new IResponse<Void>() {

			@Override
			public void onResponse(int resultCode, String resultDesc,
					Void extraData) {
				switch (resultCode) {
				case ResultCode.LOGIN_SUCCESS:
					// 切换登录成功，不管之前是什么登录状态，游戏内部都要切换成新的用户
					Toast.makeText(mActivity, "切换登录成功", Toast.LENGTH_SHORT)
							.show();
					Log.d("black", "切换登录成功");
					String uid = BDGameSDK.getLoginUid();
					String username = uid;
					String session = BDGameSDK.getLoginAccessToken();
					loginSwitch(uid, username, session);
					BDGameSDK.showFloatView(mActivity);
					break;
				case ResultCode.LOGIN_FAIL:
					// 切换登录失败，游戏内部之前如果是已经登录的，要清除自己记录的登录状态，设置成未登录。
					//如果之前未登录，不用处理。
					Toast.makeText(mActivity, "切换登录失败", Toast.LENGTH_SHORT)
							.show();
					if(BDGameSDK.isLogined()){
						logout();
					}
					Log.d("black", "切换登录失败");
					break;
				case ResultCode.LOGIN_CANCEL:
					// 切换帐号 取消，操作前后的登录状态没变化
					loginCancle();
					Log.d("black", "切换登录取消");
					break;
				}
			}

		});
	}

	/**
	 * @Description: 监听session失效时重新登录
	 */
	private static void setSessionInvalidListener() {
		Log.d("black", "监听session失效 已启动");
		BDGameSDK.setSessionInvalidListener(new IResponse<Void>() {

			@Override
			public void onResponse(int resultCode, String resultDesc,
					Void extraData) {
				if (resultCode == ResultCode.SESSION_INVALID) {
					// 会话失效，开发者需要重新登录或者重启游戏
					Toast.makeText(mActivity, "会话失效，请重新登录", Toast.LENGTH_LONG)
							.show();
					Log.d("black", "已监听session失效,即将进行重新登录");
					login(mActivity);
				}
			}
		});
	}

	/**
	 * 登录
	 */
	public static void login(final Activity mactivity) {
		Yayalog.loger("sdk登录");
		BDGameSDK.login(new IResponse<Void>() {

			@Override
			public void onResponse(int resultCode, String resultDesc,
					Void extraData) {
				String hint = "";
				switch (resultCode) {
				case ResultCode.LOGIN_SUCCESS:
					hint = "登录成功";
					String uid = BDGameSDK.getLoginUid();
					String username = uid;
					String session = BDGameSDK.getLoginAccessToken();
					loginSuce(mactivity, uid, username, session);
					// 显示悬浮窗
					BDGameSDK.showFloatView(mActivity);
					break;
				case ResultCode.LOGIN_CANCEL:
					hint = "取消登录";
					loginCancle();
					break;
				case ResultCode.LOGIN_FAIL:
				default: // 其他值为登录失败
					hint = "登录失败";
					loginFail();
				}
			}
		});
	}

	/**
	 * 支付
	 * @param mactivity
	 */
	public static void pay(Activity mactivity, String morderid) {
		Yayalog.loger("sdk支付");
		PayOrderInfo payOrderInfo = new PayOrderInfo();
		payOrderInfo.setCooperatorOrderSerial(morderid); // CP订单号
		payOrderInfo.setProductName(YYWMain.mOrder.goods); // 商品名称
		payOrderInfo.setTotalPriceCent(YYWMain.mOrder.money);// 以分为单位，long类型
		//payOrderInfo.setRatio(1); // 兑换比例，此时不生效
		payOrderInfo.setExtInfo(YYWMain.mOrder.ext);// 该字段在支付通知中原样返回,不超过500个字符
		BDGameSDK.pay(payOrderInfo, null, new IResponse<PayOrderInfo>() {

			@Override
			public void onResponse(int resultCode, String resultDesc,
					PayOrderInfo extraData) {
				String resultStr = "";
				switch (resultCode) {
				case ResultCode.PAY_SUCCESS:
					resultStr = "支付成功" + resultDesc;
					paySuce();
					break;
				case ResultCode.PAY_CANCEL:
					resultStr = "支付取消";
					payCancel();
					break;
				case ResultCode.PAY_FAIL:
					resultStr = "支付失败:" + resultDesc;
					payFail();
					break;
				case ResultCode.PAY_SUBMIT_ORDER:
					resultStr = "订单已经提交，支付结果未知";
					paySuce();
					break;
				default:
					break;
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
		Log.d("black", "返回按键");
		paramActivity.runOnUiThread(new Runnable() {
			
			@Override
			public void run() {
				BDGameSDK.gameExit(mActivity, new OnGameExitListener() {
					@Override
					public void onGameExit() {
						if (DeviceUtil.getGameInfo(mActivity, "need_yayaexit")
								.endsWith("yes")) {
							exitgameFromYyw(mActivity, callback);
						} else {
							// 若SDK有提供退出接口,请在此处调用
							Log.d("black", "退出");					
							//BDGameSDK.logout();
							paramActivity.finish();
							callback.onExit();
							System.exit(0);
						}
					}
				});
			}
		});
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
		if (mActivityAdPage != null) {
			mActivityAdPage.onPause();
			mActivityAnalytics.onPause();
		}
		BDGameSDK.onPause(paramActivity);
	}

	public static void onResume(Activity paramActivity) {
		if (mActivityAdPage != null) {
			mActivityAdPage.onResume();
			mActivityAnalytics.onResume();
		}
		BDGameSDK.onResume(paramActivity);
	}

	public static void onRestart(Activity paramActivity) {

	}

	public static void onStop(Activity paramActivity) {
		if (mActivityAdPage != null) {
			mActivityAdPage.onStop();
		}

	}

	public static void onDestroy(Activity paramActivity) {
		if (mActivityAdPage != null) {
			mActivityAdPage.onDestroy();
		}
		BDGameSDK.closeFloatView(mActivity);

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
		YayaWan.Exitgame(paramActivity, new YayaWanCallback() {

			@Override
			public void onSuccess() {
				callback.onExit();
				paramActivity.finish();
			}
		});
	}

}
