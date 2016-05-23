package com.yayawan.impl;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Intent;
import android.widget.LinearLayout;

import com.tencent.tauth.Tencent;
import com.tencent.unipay.plugsdk.UnipayPlugAPI;
import com.tencent.unipay.plugsdk.UnipayPlugTools;
import com.tencent.ysdk.api.YSDKApi;
import com.yayawan.proxy.YYWActivityStub;
import com.yayawan.utils.DeviceUtil;
import com.yayawan.utils.Handle;

public class ActivityStubImpl implements YYWActivityStub {

	@Override
	public void applicationInit(Activity paramActivity) {
		// TODO Auto-generated method stub

	}

	private Activity mActivity;
	public static ProgressDialog mAutoLoginWaitingDlg;

	@Override
	public void onCreate(Activity paramActivity) {
		// TODO Auto-generated method stub

		Handle.active_handler(paramActivity);

		mActivity = paramActivity;
		YSDKApi.onCreate(paramActivity);
		Myconstants.mpayinfo=new Payinfo();
		YSDKApi.setUserListener(new YSDKCallback(paramActivity));
		YSDKApi.setBuglyListener(new YSDKCallback(paramActivity));
		
		YSDKApi.handleIntent(paramActivity.getIntent());
	}

	@Override
	public void onStop(Activity paramActivity) {
		// TODO Auto-generated method stub
		YSDKApi.onStop(paramActivity);
	}

	@Override
	public void onResume(Activity paramActivity) {
		// TODO Auto-generated method stub
		YSDKApi.onResume(paramActivity);
	}

	@Override
	public void onPause(Activity paramActivity) {
		// TODO Auto-generated method stub
		// Utilsjf.stopDialog();
		YSDKApi.onPause(paramActivity);
	}

	@Override
	public void onRestart(Activity paramActivity) {
		// TODO Auto-generated method stub
		YSDKApi.onRestart(paramActivity);
	}

	@Override
	public void onDestroy(Activity paramActivity) {
		YSDKApi.logout();
		YSDKApi.onDestroy(paramActivity);
	}

	@Override
	public void applicationDestroy(Activity paramActivity) {
		// TODO Auto-generated method stub

	}

	@Override
	public void onActivityResult(Activity paramActivity, int paramInt1,
			int paramInt2, Intent paramIntent) {
		// TODO Auto-generated method stub
		YSDKApi.onActivityResult(paramInt1, paramInt2, paramIntent);
	}

	@Override
	public void onNewIntent(Intent paramIntent) {

		// TODO Auto-generated method stub
		// Logger.d("onNewIntent");
		System.out.println("onNewIntent");
		// TODO GAME 处理游戏被拉起的情况
		// launchActivity的onCreat()和onNewIntent()中必须调用
		// YSDKApi.handleCallback()。否则会造成微信登录无回调
		
		YSDKApi.handleIntent(paramIntent);
		
	}

	@Override
	public void initSdk(Activity arg0) {
		// TODO Auto-generated method stub

	}

}
