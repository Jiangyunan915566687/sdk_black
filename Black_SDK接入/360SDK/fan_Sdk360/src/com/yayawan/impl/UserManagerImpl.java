package com.yayawan.impl;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.widget.Toast;

import com.qihoo.gamecenter.sdk.activity.ContainerActivity;
import com.qihoo.gamecenter.sdk.common.IDispatcherCallback;
import com.qihoo.gamecenter.sdk.matrix.Matrix;
import com.qihoo.gamecenter.sdk.protocols.ProtocolConfigs;
import com.qihoo.gamecenter.sdk.protocols.ProtocolKeys;
import com.yayawan.callback.YYWExitCallback;
import com.yayawan.callback.YYWUserManagerCallBack;
import com.yayawan.main.YYWMain;
import com.yayawan.proxy.YYWUserManager;
import com.yayawan.utils.DeviceUtil;

public class UserManagerImpl implements YYWUserManager {

	@Override
	public void manager(Activity paramActivity) {

		Toast.makeText(paramActivity, "个人中心", Toast.LENGTH_SHORT).show();
	}

	@Override
	public void login(Activity paramActivity, String paramString,
			Object paramObject) {
		// TODO Auto-generated method stub

	}

	@Override
	public void logout(final Activity paramActivity, String paramString,
			Object paramObject) {
		

		Matrix.execute(paramActivity,
				LoginImpl.getLoginIntent(false, paramActivity,true),
				new IDispatcherCallback() {

					private String mAccessToken;

					@Override
					public void onFinished(String data) {
						// TODO Auto-generated method stub
						// press back
						if (LoginImpl.isCancelLogin(data)) {
							System.out.println("登陆返回");
							YYWMain.mUserCallBack.onLoginFailed(null,
									null);
							return;
						}

						// 显示一下登录结果
						// Toast.makeText(SdkUserBaseActivity.this,
						// data, Toast.LENGTH_LONG).show();
						// Log.d(TAG,
						// "mAccountSwitchSupportOfflineCB, data is " +
						// data);
						// 解析access_token
						mAccessToken = LoginImpl.parseAccessTokenFromLoginResult(data);

						if (!TextUtils.isEmpty(mAccessToken)) {
							LoginImpl.getuserinfo(paramActivity, mAccessToken);
						} else {
							YYWMain.mUserCallBack.onLoginFailed(null,
									null);
						}

					}

				});
		
	}

	@Override
	public void setUserListener(Activity paramActivity,
			YYWUserManagerCallBack paramXMUserListener) {
		// TODO Auto-generated method stub

	}

	@Override
	public void exit(final Activity paramActivity, final YYWExitCallback callback) {
		// TODO Auto-generated method stub
		// Toast.makeText(paramActivity, "退出游戏", Toast.LENGTH_SHORT).show();
		
		paramActivity.runOnUiThread(new Runnable() {
			
			@Override
			public void run() {
				// TODO Auto-generated method stub
				doSdkQuit(DeviceUtil.isLandscape(paramActivity), paramActivity,callback);
				
			}
		});
		
		
		
	}

	@Override
	public void setRoleData(Activity arg0) {
		// TODO Auto-generated method stub

	}
	
	protected void doSdkQuit(boolean isLandScape,final Activity mactivity, final YYWExitCallback callback) { 
		Bundle bundle = new Bundle(); 
		// 界面相关参数，360SDK界面是否以横屏显示。
		bundle.putBoolean(ProtocolKeys.IS_SCREEN_ORIENTATION_LANDSCAPE, isLandScape);
		// 可选参数，登录界面的背景图片路径，必须是本地图片路径
		bundle.putString(ProtocolKeys.UI_BACKGROUND_PICTRUE, ""); 
		// 必需参数，使用360SDK的退出模块。
		bundle.putInt(ProtocolKeys.FUNCTION_CODE, ProtocolConfigs.FUNC_CODE_QUIT); 
		Intent intent = new Intent(mactivity, ContainerActivity.class); 
		intent.putExtras(bundle);
		Matrix.invokeActivity(mactivity, intent, new IDispatcherCallback() {
			
			@Override
			public void onFinished(String arg0) {
				// TODO Auto-generated method stub
				mactivity.runOnUiThread(new Runnable() {
					
					@Override
					public void run() {
						// TODO Auto-generated method stub
						mactivity.finish();
					}
				});
				
			}
		}); 
		
	}
	
	

}
