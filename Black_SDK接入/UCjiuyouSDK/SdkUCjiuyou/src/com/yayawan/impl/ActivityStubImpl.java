package com.yayawan.impl;

import android.app.Activity;
import android.content.Intent;
import android.util.Log;
import android.widget.Toast;
import cn.uc.gamesdk.UCCallbackListener;
import cn.uc.gamesdk.UCCallbackListenerNullException;
import cn.uc.gamesdk.UCGameSDK;
import cn.uc.gamesdk.UCGameSDKStatusCode;
import cn.uc.gamesdk.UCLogLevel;
import cn.uc.gamesdk.UCLoginFaceType;
import cn.uc.gamesdk.UCOrientation;
import cn.uc.gamesdk.info.GameParamInfo;

import com.yayawan.main.YYWMain;
import com.yayawan.proxy.YYWActivityStub;
import com.yayawan.utils.DeviceUtil;
import com.yayawan.utils.Handle;

public class ActivityStubImpl implements YYWActivityStub {

	@Override
	public void applicationInit(Activity paramActivity) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void onCreate(final Activity paramActivity) {
		// TODO Auto-generated method stub
		System.out.println("九游sdk调用了oncreate方法");
		
		Handle.active_handler(paramActivity);
		paramActivity.runOnUiThread(new Runnable() {

			@Override
			public void run() {
				// TODO Auto-generated method stub
				try {
					UCGameSDK.defaultSDK().setLogoutNotifyListener(
							new UCCallbackListener<String>() {
								@Override
								public void callback(int statuscode, String msg) {
									// TODO 此处需要游戏客户端注销当前已经登录的游戏角色信息
									String s = "游戏接收到用户退出通知。" + msg
											+ statuscode;
									Log.e("UCGameSDK", s);
									// 未成功初始化
									if (statuscode == UCGameSDKStatusCode.NO_INIT) {
										// 调用SDK初始化接口
										initucSdk(paramActivity);
									}
									// 未登录成功
									if (statuscode == UCGameSDKStatusCode.NO_LOGIN) {
										// 调用SDK登录接口
										// ucSdkLogin();
										if (YYWMain.mUserCallBack != null) {
											YYWMain.mUserCallBack
													.onLoginFailed(null, null);
										}
									}
									// 退出账号成功
									if (statuscode == UCGameSDKStatusCode.SUCCESS) {
										// 执行销毁悬浮按钮接口
										// ucSdkDestoryFloatButton();
										// 调用SDK登录接口
										// ucSdkLogin();
										if (YYWMain.mUserCallBack != null) {
											YYWMain.mUserCallBack
													.onLogout(null);
										}
									}
									// 退出账号失败
									if (statuscode == UCGameSDKStatusCode.FAIL) {
										// 调用SDK退出当前账号接口
										// ucSdkLogout();
									}
								}
							});
				} catch (UCCallbackListenerNullException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				}

				initucSdk(paramActivity);

			}

			
		});
	}

	private void initucSdk(final Activity paramActivity) {
		// TODO Auto-generated method stub
		GameParamInfo gpi = new GameParamInfo();// 下面的值仅供参考
		// gpi.setCpId(0); // 此参数已废弃,默认传入0即可

		int cpid = Integer.parseInt(DeviceUtil.getGameInfo(paramActivity,
				"cpid"));
		int game = Integer.parseInt(DeviceUtil.getGameInfo(paramActivity,
				"gameId"));
		gpi.setCpId(cpid);
		gpi.setGameId(game);
		gpi.setServerId(0);

		if (DeviceUtil.isLandscape(paramActivity)) {
			// 设置SDK登录界面为横屏
			UCGameSDK.defaultSDK().setOrientation(UCOrientation.LANDSCAPE);
		} else {
			// 设置SDK登录界面为竖屏
			UCGameSDK.defaultSDK().setOrientation(UCOrientation.PORTRAIT);
		}

		// 设置登录界面：
		// USE_WIDGET - 简版登录界面
		// USE_STANDARD - 标准版登录界面
		UCGameSDK.defaultSDK().setLoginUISwitch(UCLoginFaceType.USE_WIDGET);

		try {
			UCGameSDK.defaultSDK().initSDK(paramActivity, UCLogLevel.ERROR,
					false, gpi, new UCCallbackListener<String>() {
						@Override
						public void callback(int code, String msg) {

							switch (code) {
							// 初始化成功,可以执行后续的登录充值操作
							case UCGameSDKStatusCode.SUCCESS:
								// dispalyGameLoginUI();
								// LoginImpl.canlogin=true;
								break;
							case UCGameSDKStatusCode.FAIL:
								paramActivity.runOnUiThread(new Runnable() {
									
									@Override
									public void run() {
										// TODO Auto-generated method stub
										Toast.makeText(paramActivity, "初始化失败，请重新启动游戏", 0).show();
									}
								});
								break;
							default:
								break;
							}
						}
					});
		} catch (UCCallbackListenerNullException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			paramActivity.runOnUiThread(new Runnable() {
				
				@Override
				public void run() {
					// TODO Auto-generated method stub
					Toast.makeText(paramActivity, "初始化失败，请重新启动游戏", 0).show();
				}
			});
		}
	}
	@Override
	public void onStop(Activity paramActivity) {
		// TODO Auto-generated method stub

	}

	@Override
	public void onResume(Activity paramActivity) {
		// TODO Auto-generated method stub

	}

	@Override
	public void onPause(Activity paramActivity) {
		// TODO Auto-generated method stub

	}

	@Override
	public void onRestart(Activity paramActivity) {
		// TODO Auto-generated method stub

	}

	@Override
	public void onDestroy(Activity paramActivity) {
		UCGameSDK.defaultSDK().destoryFloatButton(paramActivity);
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

}
