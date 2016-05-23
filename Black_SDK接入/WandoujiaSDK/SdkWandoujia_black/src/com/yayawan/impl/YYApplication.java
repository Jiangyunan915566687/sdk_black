package com.yayawan.impl;


import com.wandoujia.mariosdk.plugin.api.api.WandouGamesApi;
import com.yayawan.utils.DeviceUtil;

import android.app.Application;
import android.content.Context;

public class YYApplication extends Application {

	
	private static WandouGamesApi wandouGamesApi;
	
	public static WandouGamesApi getWandouGamesApi() {
	    return wandouGamesApi;
	}
	@Override
	protected void attachBaseContext(Context base) {
		Long APP_KEY = Long.parseLong(DeviceUtil.getGameInfo(base, "APP_KEY"));
		String SECURITY_KEY = DeviceUtil.getGameInfo(base, "SECURITY_KEY");

		WandouGamesApi.initPlugin(base, APP_KEY, SECURITY_KEY);
		super.attachBaseContext(base);
	}

	@Override
	public void onCreate() {
		Long APP_KEY = Long.parseLong(DeviceUtil.getGameInfo(getApplicationContext(), "APP_KEY"));
		String SECURITY_KEY = DeviceUtil.getGameInfo(getApplicationContext(), "SECURITY_KEY");

		wandouGamesApi = new WandouGamesApi.Builder(this, APP_KEY, SECURITY_KEY).create();
	    wandouGamesApi.setLogEnabled(true);
		super.onCreate();
	}
}
