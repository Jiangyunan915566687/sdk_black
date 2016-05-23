package com.yayawan.impl;

import android.app.Activity;
import android.widget.Toast;

import cn.uc.gamesdk.UCCallbackListenerNullException;
import cn.uc.gamesdk.UCGameSDK;

import com.yayawan.callback.YYWExitCallback;
import com.yayawan.callback.YYWUserManagerCallBack;
import com.yayawan.proxy.YYWUserManager;

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
	public void logout(Activity paramActivity, String paramString,
			Object paramObject) {
		try {
			UCGameSDK.defaultSDK().logout();
		} catch (UCCallbackListenerNullException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	@Override
	public void setUserListener(Activity paramActivity,
			YYWUserManagerCallBack paramXMUserListener) {
		// TODO Auto-generated method stub

	}

	@Override
	public void exit(final Activity paramActivity,
			final YYWExitCallback callback) {
		// TODO Auto-generated method stub
		// Toast.makeText(paramActivity, "退出游戏", Toast.LENGTH_SHORT).show();
		System.out.println("来这里了");
		paramActivity.runOnUiThread(new Runnable() {

			@Override
			public void run() {
				YaYawanconstants.exit(paramActivity, callback);
			}
		});

	}

	@Override
	public void setRoleData(Activity activity) {
		// TODO Auto-generated method stub
		//YaYawanconstants.setRoleData(activity);
	}

	// 3.15版兼容角色信息接口
	public void setData(Activity activity, String roleId, String roleName,
			String roleLevel, String zoneId, String zoneName, String roleCTime,
			String ext) {
		System.out.println("调用了impl中的usermanagerimpl中的setdata方法");
		YaYawanconstants.setData(activity,roleId,roleName,roleLevel,
				zoneId,zoneName,roleCTime,ext);
		
	}

}
