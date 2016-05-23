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
		Log.d("black","Application");
		MiAppInfo appInfo = new MiAppInfo();
		appInfo.setAppId(DeviceUtil.getGameInfo(getApplicationContext(), "AppId"));
		appInfo.setAppKey(DeviceUtil.getGameInfo(getApplicationContext(), "AppKey"));
		System.out.println(DeviceUtil.getGameInfo(getApplicationContext(), "AppId")+"  "+DeviceUtil.getGameInfo(getApplicationContext(), "AppKey"));
		MiCommplatform.Init( this, appInfo );
	}
}
