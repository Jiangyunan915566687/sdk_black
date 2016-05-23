package com.yayawan.impl;


import com.xiaomi.gamecenter.sdk.MiCommplatform;
import com.xiaomi.gamecenter.sdk.entry.MiAppInfo;
import com.yayawan.utils.DeviceUtil;

import android.app.Application;
import android.util.Log;

public class YYApplication extends Application {

	

	@Override
	public void onCreate() {
		super.onCreate();
		Log.d("black", "YYApplication");
		MiAppInfo appInfo = new MiAppInfo();
		appInfo.setAppId(DeviceUtil.getGameInfo(this, "AppId"));
		appInfo.setAppKey(DeviceUtil.getGameInfo(this, "AppKey"));
		MiCommplatform.Init( this, appInfo );
	}
}
