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
		String appKey = DeviceUtil.getGameInfo(getApplicationContext(), "APPKEY");
		String appSecret = DeviceUtil.getGameInfo(getApplicationContext(), "APPSECRET");
		Boolean island=DeviceUtil.isLandscape(getApplicationContext());
		// 因为sdk插件中service activity跑在独立进程，这里只需要在主进程做一次初始化操作。
		if (getApplicationInfo().packageName.equals(AppUtil
				.getCurrentProcessName(this))) {
			/*
			 * Config.isSingle, //是否是单机，单机：true 网游：false 
			 * appKey, //游戏自己的appKey（这里是demo的） 
			 * appSecret, //游戏自己的appSecret（这里是demo的） 
			 * Config.isDebugModel, //是否打开debug开关，是：true 打印log 否：false 关闭log
			 * Config.isOrientationPort);//横竖屏控制开关，竖屏：true 横屏：false
			 */
			GameCenterSettings gameCenterSettings = 
					new GameCenterSettings(	false, appKey, appSecret, false,!island); 
			// 将游戏横竖屏状态传递给sdk， true为竖屏 false为横屏
			GameCenterSDK.init(gameCenterSettings, this);
		}
	}
}
