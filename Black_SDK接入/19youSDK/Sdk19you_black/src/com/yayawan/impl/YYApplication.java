package com.yayawan.impl;


import com.app.yjy.game.OneNineGame;

import android.app.Application;

public class YYApplication extends Application {

	

	@Override
	public void onCreate() {
		super.onCreate();
		OneNineGame.init(getApplicationContext());
	}
}
