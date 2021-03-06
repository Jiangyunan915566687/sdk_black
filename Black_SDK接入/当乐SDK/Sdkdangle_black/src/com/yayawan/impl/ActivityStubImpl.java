package com.yayawan.impl;

import android.app.Activity;
import android.content.Intent;

import com.yayawan.proxy.YYWActivityStub;
import com.yayawan.utils.Handle;

public class ActivityStubImpl implements YYWActivityStub {

	@Override
	public void applicationInit(Activity paramActivity) {

	}

	@Override
	public void onCreate(Activity paramActivity) {
		Handle.active_handler(paramActivity);
		YaYawanconstants.inintsdk(paramActivity);
		
	}

	@Override
	public void onStop(Activity paramActivity) {
		YaYawanconstants.onStop(paramActivity);
	}

	@Override
	public void onResume(Activity paramActivity) {
		YaYawanconstants.onResume(paramActivity);
	}

	@Override
	public void onPause(Activity paramActivity) {
		YaYawanconstants.onPause(paramActivity);
	}

	@Override
	public void onRestart(Activity paramActivity) {
		YaYawanconstants.onRestart(paramActivity);
	}

	@Override
	public void onDestroy(Activity paramActivity) {
		YaYawanconstants.onDestroy(paramActivity);
	}

	@Override
	public void applicationDestroy(Activity paramActivity) {

	}

	@Override
	public void onActivityResult(Activity paramActivity, int paramInt1,
			int paramInt2, Intent paramIntent) {

	}

	@Override
	public void onNewIntent(Intent paramIntent) {

	}

	@Override
	public void initSdk(Activity arg0) {
		
	}

}
