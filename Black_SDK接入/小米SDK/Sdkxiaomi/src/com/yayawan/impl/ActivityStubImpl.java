package com.yayawan.impl;

import android.app.Activity;
import android.content.Intent;
import android.util.Log;

import com.xiaomi.gamecenter.sdk.MiCommplatform;
import com.yayawan.proxy.YYWActivityStub;
import com.yayawan.utils.Handle;

public class ActivityStubImpl implements YYWActivityStub {

	@Override
	public void applicationInit(Activity paramActivity) {
		// TODO Auto-generated method stub

	}

	@Override
	public void onCreate(Activity paramActivity) {
		// TODO Auto-generated method stub
		Log.d("black", "Activity");
		Handle.active_handler(paramActivity);
		//MiCommplatform.Init(paramActivity, arg1);
	}

	@Override
	public void onStop(Activity paramActivity) {
		// TODO Auto-generated method stub

	}

	@Override
	public void onResume(Activity paramActivity) {
		// TODO Auto-generated method stub

	}

	@Override
	public void onPause(Activity paramActivity) {
		// TODO Auto-generated method stub

	}

	@Override
	public void onRestart(Activity paramActivity) {
		// TODO Auto-generated method stub

	}

	@Override
	public void onDestroy(Activity paramActivity) {

	}

	@Override
	public void applicationDestroy(Activity paramActivity) {
		// TODO Auto-generated method stub

	}

	@Override
	public void onActivityResult(Activity paramActivity, int paramInt1,
			int paramInt2, Intent paramIntent) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void onNewIntent(Intent paramIntent) {
		// TODO Auto-generated method stub

	}

	@Override
	public void initSdk(Activity arg0) {
		// TODO Auto-generated method stub
		
	}

}
