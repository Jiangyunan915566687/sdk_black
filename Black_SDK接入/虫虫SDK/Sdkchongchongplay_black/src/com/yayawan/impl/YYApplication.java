package com.yayawan.impl;


import com.lion.ccpay.sdk.CCPaySdkApplicationUtils;

import android.app.Application;

public class YYApplication extends Application {

	

	@Override
	public void onCreate() {
		super.onCreate();
		CCPaySdkApplicationUtils.getInstance(this);
	}
}
