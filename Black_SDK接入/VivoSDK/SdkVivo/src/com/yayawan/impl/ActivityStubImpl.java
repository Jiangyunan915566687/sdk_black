package com.yayawan.impl;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;

import com.yayawan.main.YYWMain;
import com.yayawan.proxy.YYWActivityStub;
import com.yayawan.utils.Handle;

public class ActivityStubImpl implements YYWActivityStub {

	public static final int REQUEST_CODE_PAY = 1;
	@Override
	public void applicationInit(Activity paramActivity) {
		// TODO Auto-generated method stub

	}

	@Override
	public void onCreate(Activity paramActivity) {
		// TODO Auto-generated method stub

		Handle.active_handler(paramActivity);
		YaYawanconstants.inintsdk(paramActivity);
		
	}

	@Override
	public void onStop(Activity paramActivity) {
		// TODO Auto-generated method stub

	}

	@Override
	public void onResume(Activity paramActivity) {
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
		YaYawanconstants.mVivoAccountManager.unRegistListener(YaYawanconstants.mOnVivoAccountChangedListener);
	}

	@Override
	public void applicationDestroy(Activity paramActivity) {
		// TODO Auto-generated method stub

	}

	@Override
	public void onActivityResult(Activity paramActivity, int requestCode,
			int paramInt2, Intent data) {
		// TODO Auto-generated method stub
		
		if(requestCode == REQUEST_CODE_PAY){

    		Bundle extras = data.getBundleExtra("pay_info");
    		String trans_no = extras.getString("transNo");
    		boolean pay_result = extras.getBoolean("pay_result");
    		String res_code = extras.getString("result_code");
    		String pay_msg = extras.getString("pay_msg");

    		if (res_code == "9000") {
    			YYWMain.mPayCallBack.onPaySuccess(YYWMain.mUser, YYWMain.mOrder, 0);
			}else if (res_code == "6001") {
				YYWMain.mPayCallBack.onPayCancel("", 0);
			}else {
				YYWMain.mPayCallBack.onPayFailed("", 0);
			}

		}

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
