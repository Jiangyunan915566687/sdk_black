package com.yayawan.impl;


import com.nearme.game.sdk.GameCenterSDK;
import com.nearme.game.sdk.common.model.biz.GameCenterSettings;
import com.nearme.game.sdk.common.util.AppUtil;
import com.yayawan.utils.DeviceUtil;

import android.app.Application;

public class YYApplication extends Application {

	

	@Override
	public void onCreate() {
		super.onCreate();
		if (getApplicationInfo().packageName.equals(AppUtil
				.getCurrentProcessName(this))) {
			String appKey = DeviceUtil.getGameInfo(getApplicationContext(), "APPKEY");
			String appSecret = DeviceUtil.getGameInfo(getApplicationContext(), "APPSECRET");
			Boolean isLand = DeviceUtil.isLandscape(getApplicationContext());
			GameCenterSettings gameCenterSettings = new GameCenterSettings(
					false, // 网游固定为false
					appKey, appSecret, true, // 调试开关 true 打印log，false
												// 关闭log，正式上线请设置为false
					!isLand); // 将游戏横竖屏状态传递给sdk， true为竖屏 false为横屏
			GameCenterSDK.init(gameCenterSettings, this);
		}
	}
}
