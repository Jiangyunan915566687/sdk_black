package com.yayawan.impl;

import android.app.Activity;
import android.widget.Toast;

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

	}

	@Override
	public void logout(Activity paramActivity, String paramString,
			Object paramObject) {
		YaYawanconstants.logout(paramActivity);
	}

	@Override
	public void setUserListener(Activity paramActivity,
			YYWUserManagerCallBack paramXMUserListener) {

	}

	@Override
	public void exit(Activity paramActivity, YYWExitCallback callback) {
		YaYawanconstants.exit(paramActivity, callback);
		
	}

	@Override
	public void setRoleData(Activity arg0) {
		YaYawanconstants.setRoleData(arg0);
	}
	// 3.15版兼容角色信息接口
	public void setData(Activity activity, String roleId, String roleName,String roleLevel,
			String zoneId, String zoneName, String roleCTime,String ext) {
		YaYawanconstants.setData(activity,roleId,roleName,roleLevel,
					zoneId,zoneName,roleCTime,ext);
	}
}
