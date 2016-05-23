package com.yayawan.impl;

import android.app.Activity;
import android.content.Intent;

import com.yayawan.main.YYWMain;
import com.yayawan.proxy.YYWActivityStub;
import com.yayawan.utils.Handle;
import com.mappn.sdk.pay.GfanConfirmOrderCallback;
import com.mappn.sdk.pay.GfanPay;
import com.mappn.sdk.pay.GfanPayInitCallback;
import com.mappn.sdk.pay.model.Order;

public class ActivityStubImpl implements YYWActivityStub {

	@Override
	public void applicationInit(Activity paramActivity) {
		// TODO Auto-generated method stub

	}

	public static boolean isinit = false;

	@Override
	public void onCreate(final Activity paramActivity) {
		
	
		Handle.active_handler(paramActivity);

	}

	@Override
	public void onStop(Activity paramActivity) {
		// TODO Auto-generated method stub

	}

	@Override
	public void onResume(final Activity paramActivity) {
		// TODO Auto-generated method stub
			if (!isinit) {
			

			}
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
	public void initSdk(final Activity paramActivity) {
		// TODO Auto-generated method stub
		System.out.println("");
		paramActivity.runOnUiThread(new Runnable() {

			@Override
			public void run() {
				// TODO Auto-generated method stub
				try {
					
					GfanPay.getInstance(paramActivity.getApplicationContext()).init(paramActivity,
							new GfanPayInitCallback() {

								@Override
								public void onSuccess() {
									// TODO Auto-generated method stub
									isinit = true;

								}

								@Override
								public void onError() {
									// TODO Auto-generated method stub
									isinit = false;
								}
							});
				
				} catch (Exception e) {
					// TODO: handle exception
					System.out.println("初始化的错误"+e.toString());
				}

			}
		});
	}

}
