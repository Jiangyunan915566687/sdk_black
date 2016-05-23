package com.yayawan.impl;

import android.app.Activity;
import android.content.Intent;

import com.qihoo.gamecenter.sdk.matrix.Matrix;
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
		System.out.println("sdkoncreate调用了");
		
		Handle.active_handler(paramActivity);
		Matrix.init(paramActivity);
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
		Matrix.destroy(paramActivity); 
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
