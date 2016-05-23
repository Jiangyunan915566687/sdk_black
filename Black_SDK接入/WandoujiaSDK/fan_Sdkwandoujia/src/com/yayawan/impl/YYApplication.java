package com.yayawan.impl;

import com.wandoujia.mariosdk.plugin.api.api.WandouGamesApi;
import com.yayawan.utils.DeviceUtil;

import android.app.Application;
import android.content.Context;

public class YYApplication extends Application {

	private static final long APP_KEY = 0;// 100000225; // 100008237;
	private static final String SECURITY_KEY = null;// "9e45e1d5cfcd2ad21f86c1b43a12b3d8";
													// //"10159606448b775c8de9d0e79a4bfff3";

	private static WandouGamesApi wandouGamesApi;

	public static WandouGamesApi getWandouGamesApi() {
		return wandouGamesApi;
	}

	@Override
	protected void attachBaseContext(Context base) {
		String APP_KEY1 = DeviceUtil.getGameInfo(base, "APP_KEY");
		String SECURITY_KEY = DeviceUtil.getGameInfo(base, "SECURITY_KEY");
		long APP_KEY = Long.parseLong(APP_KEY1);
		System.out.println("APP_KEY"+APP_KEY);
		System.out.println("SECURITY_KEY"+SECURITY_KEY);
		WandouGamesApi.initPlugin(base, APP_KEY, SECURITY_KEY);
		super.attachBaseContext(base);
		System.out.println("我在这里1");
	}

	@Override
	public void onCreate() {
		System.out.println("我在这里2");
		String APP_KEY1 = DeviceUtil.getGameInfo(getApplicationContext(),
				"APP_KEY");
		String SECURITY_KEY = DeviceUtil.getGameInfo(getApplicationContext(),
				"SECURITY_KEY");
		long APP_KEY = Long.parseLong(APP_KEY1);
		System.out.println("APP_KEY1"+APP_KEY);
		System.out.println("SECURITY_KEY1"+SECURITY_KEY);
		wandouGamesApi = new WandouGamesApi.Builder(this, APP_KEY, SECURITY_KEY)
				.create();
		wandouGamesApi.setLogEnabled(true);
		super.onCreate();
		System.out.println("我在这里3");
	}
}
