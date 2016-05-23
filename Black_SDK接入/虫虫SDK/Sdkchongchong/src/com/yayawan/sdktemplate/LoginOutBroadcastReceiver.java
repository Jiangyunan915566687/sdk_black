package com.yayawan.sdktemplate;

import com.yayawan.main.YYWMain;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.widget.Toast;

/**
 * 登出广播
 * 
 * @author 巍
 * 
 */
public class LoginOutBroadcastReceiver extends BroadcastReceiver {

	public static final String LOGINOUT_ACTION = "CCPAY_LOGINOUT_ACTION";

	@Override
	public void onReceive(Context context, Intent intent) {
		if (intent.getAction().equals(LOGINOUT_ACTION)) {
			Toast.makeText(context, "注销登录", Toast.LENGTH_SHORT).show();
			System.out.println("我注销登陆了");
			if (YYWMain.mUserCallBack!=null) {
				YYWMain.mUserCallBack.onLogout(null);
			}
		}
	}
}
