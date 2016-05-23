package com.yayawan.impl;

import android.app.Activity;
import android.content.Intent;
import android.widget.Toast;

import com.baidu.gamesdk.ActivityAdPage;
import com.baidu.gamesdk.ActivityAnalytics;
import com.baidu.gamesdk.BDGameSDK;
import com.baidu.gamesdk.BDGameSDKSetting;
import com.baidu.gamesdk.IResponse;
import com.baidu.gamesdk.ResultCode;
import com.baidu.gamesdk.BDGameSDKSetting.Domain;
import com.baidu.gamesdk.BDGameSDKSetting.Orientation;
import com.yayawan.domain.YYWUser;
import com.yayawan.main.YYWMain;
import com.yayawan.proxy.YYWActivityStub;
import com.yayawan.utils.DeviceUtil;
import com.yayawan.utils.Handle;
import com.yayawan.utils.JSONUtil;

public class ActivityStubImpl implements YYWActivityStub {

	private ActivityAnalytics mActivityAnalytics;
	private ActivityAdPage activityAdPage;

	public static boolean isinit=false;
	@Override
	public void applicationInit(Activity paramActivity) {
		// TODO Auto-generated method stub

	}

	@Override
	public void onCreate(final Activity paramActivity) {
		// TODO Auto-generated method stub
		Handle.active_handler(paramActivity);
		BDGameSDKSetting mBDGameSDKSetting = new BDGameSDKSetting();
		int App_id = Integer.parseInt(DeviceUtil.getGameInfo(paramActivity,
				"App_id"));
		//
		Yayalog.loger("id"+App_id);
		mBDGameSDKSetting.setAppID(App_id);
		String App_key = DeviceUtil.getGameInfo(paramActivity,
				"App_key");
		mBDGameSDKSetting.setAppKey(App_key);// APPKEY设置
		//
		mBDGameSDKSetting.setDomain(Domain.RELEASE);// 设置为正式模式
		//
		if (DeviceUtil.isLandscape(paramActivity)) {
			mBDGameSDKSetting.setOrientation(Orientation.LANDSCAPE);// 设置为横屏
			Yayalog.loger("横屏");
		}else {
			mBDGameSDKSetting.setOrientation(Orientation.PORTRAIT);// 设置为横屏
			Yayalog.loger("竖屏");
		}
		
		Yayalog.loger("我要开始初始化了");
		BDGameSDK.init(paramActivity, mBDGameSDKSetting, new IResponse<Void>() {

			@Override
			public void onResponse(int resultCode, String resultDesc,
					Void extraData) {
				// TODO Auto-generated method stub
				switch (resultCode) {
				case ResultCode.INIT_SUCCESS:
					isinit=true;
					// 调取百度公告
					Yayalog.loger("初始化成功");
					paramActivity.runOnUiThread(new Runnable() {
						@Override
						public void run() {
							// TODO Auto-generated method stub
							try {
								BDGameSDK.getAnnouncementInfo(paramActivity);
								activityAdPage = new ActivityAdPage(paramActivity,
										new com.baidu.gamesdk.ActivityAdPage.Listener() {

											@Override
											public void onClose() {
												// TODO Auto-generated method stub
												//LoginImpl.loginBd(paramActivity);
											}
										});
								
								mActivityAnalytics = new ActivityAnalytics(paramActivity);
								
								
							} catch (Exception e) {
								// TODO: handle exception
							}
							

						}
					});
					break;
				case ResultCode.INIT_FAIL:
					Yayalog.loger("初始化失败");
				default:
					Yayalog.loger("初始化失败");
					// 初始化失败
				}
			}
		});

		setSuspendWindowChangeAccountListener(paramActivity);// 设置切换账号事件监听（个人中心界面切换账号）
		
		setSessionInvalidListener(paramActivity);// 设置会话失效监听

	}

	private void setSessionInvalidListener(final Activity paramActivity) {
		// TODO Auto-generated method stub
		BDGameSDK.setSessionInvalidListener(new IResponse<Void>() {

			@Override
			public void onResponse(int resultCode, String arg1, Void arg2) {
				// TODO Auto-generated method stub
				if (resultCode == ResultCode.SESSION_INVALID) {
					if (YYWMain.mUserCallBack != null) {
						YYWMain.mUserCallBack.onLogout(paramActivity);
					}
				}
			}
		});

	}

	@Override
	public void onStop(Activity paramActivity) {
		// TODO Auto-generated method stub
	if (activityAdPage!=null) {
		activityAdPage.onStop();
	}
		
	}

	@Override
	public void onResume(Activity paramActivity) {
		if (activityAdPage!=null) {
			activityAdPage.onResume();

			Yayalog.loger("我启动了");
			mActivityAnalytics.onResume();
		}
		// TODO Auto-generated method stub
		

	}

	@Override
	public void onPause(Activity paramActivity) {
		if (activityAdPage!=null) {
			activityAdPage.onPause();
			Yayalog.loger("我开始了");
			mActivityAnalytics.onPause();
		}
		// TODO Auto-generated method stub
		

	}

	@Override
	public void onRestart(Activity paramActivity) {
		// TODO Auto-generated method stub

	}

	@Override
	public void onDestroy(Activity paramActivity) {
		if (activityAdPage!=null) {
			activityAdPage.onDestroy();
		}
		
		BDGameSDK.closeFloatView(paramActivity);// 关闭悬浮窗
		BDGameSDK.destroy();
	}

	@Override
	public void applicationDestroy(Activity paramActivity) {
		// TODO Auto-generated method stub

	}

	@Override
	public void onActivityResult(Activity paramActivity, int paramInt1,
			int paramInt2, Intent paramIntent) {
		// TODO Auto-generated method stub
	}

	@Override
	public void onNewIntent(Intent paramIntent) {
		// TODO Auto-generated method stub

	}

	private void setSuspendWindowChangeAccountListener(
			final Activity paramActivity) {// 设置切换账号事件监听（个人中心界面切换账号）
		BDGameSDK.setSuspendWindowChangeAccountListener(new IResponse<Void>() {

			@Override
			public void onResponse(int resultCode, String resultDesc,
					Void extraData) {

				BDGameSDK.closeFloatView(paramActivity);// 关闭悬浮窗
				switch (resultCode) {
				case ResultCode.LOGIN_SUCCESS:

					if (YYWMain.mUserCallBack != null) {
						YYWMain.mUserCallBack.onLogout(paramActivity);
					}
					// TODO 登录成功，不管之前是什么登录状态，游戏内部都要切换成新的用户
					String uid = BDGameSDK.getLoginUid();
					String token = BDGameSDK.getLoginAccessToken();
					System.out.println("我切换账号时候的uid" + uid);
					System.out.println(BDGameSDK.getLoginAccessToken());
					if (YYWMain.mUserCallBack != null) {

						YYWMain.mUser = new YYWUser();
						YYWMain.mUser.uid = DeviceUtil
								.getUnionid(paramActivity) + "-" + uid + "";
						YYWMain.mUser.userName = DeviceUtil
								.getUnionid(paramActivity) + "-" + uid;
						// yywUser.token =
						// tokenVerifyModel.getAccess_token();
						YYWMain.mUser.token = JSONUtil.formatToken(
								paramActivity, token, YYWMain.mUser.userName);

						YYWMain.mUserCallBack.onLoginSuccess(YYWMain.mUser,
								"success");
						Handle.login_handler(paramActivity, YYWMain.mUser.uid,
								YYWMain.mUser.userName);
					}
					BDGameSDK.showFloatView(paramActivity);// 显示悬浮窗
					break;
				case ResultCode.LOGIN_FAIL:
					if (YYWMain.mUserCallBack != null) {
						YYWMain.mUserCallBack.onLogout(paramActivity);
					}

					// TODO
					// 登录失败，游戏内部之前如果是已经登录的，要清楚自己记录的登录状态，设置成未登录。如果之前未登录，不用处理。

					break;
				case ResultCode.LOGIN_CANCEL:
					BDGameSDK.showFloatView(paramActivity);// 显示悬浮窗
					// TODO 取消，操作前后的登录状态没变化

					break;

				}
			}

		});
	}

	@Override
	public void initSdk(Activity arg0) {
		// TODO Auto-generated method stub
		
	}

}
