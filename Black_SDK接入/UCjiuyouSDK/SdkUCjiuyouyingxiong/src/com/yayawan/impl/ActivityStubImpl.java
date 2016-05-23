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
		System.out.println("久游sdk调用了oncreate方法");
		
		Handle.active_handler(paramActivity);
	
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
			UCGameSDK.defaultSDK().initSDK(paramActivity, UCLogLevel.DEBUG,
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
