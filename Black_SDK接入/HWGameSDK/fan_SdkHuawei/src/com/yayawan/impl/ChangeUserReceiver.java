package com.yayawan.impl;

import com.huawei.gamebox.buoy.sdk.util.BuoyConstant;
import com.yayawan.main.YYWMain;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;

public class ChangeUserReceiver extends BroadcastReceiver {

	@Override
	public void onReceive(Context context, Intent intent) {
		// TODO Auto-generated method stub

		String action = intent.getAction();
		System.err.println(action+"-------------------ffffffffffffff");
        //DebugConfig.d(TAG, "onReceive action=" + action);
        if (BuoyConstant.CHANGE_USER_LOGIN_ACTION.equals(action))
        {
            Bundle bundle = intent.getBundleExtra(BuoyConstant.GAMEBOX_EXTRA_DATA);

            System.err.println(bundle);
            int value = 0;
            if(null != bundle)
            {
                value = bundle.getInt(BuoyConstant.KEY_GAMEBOX_CHANGEUSERLOGIN);
            }
            System.err.println(value);
            //DebugConfig.d(TAG, "onReceive value=" + value);
            if (BuoyConstant.VALUE_CHANGE_USER == value)
            {
                // 跳转到首页逻辑，以及后续逻辑请开发者自行补充
                //Toast.makeText(context, "即将跳转到首页", Toast.LENGTH_SHORT).show();
                //Intent mainIntent = new Intent(context, MainActivity.class);

                // 用于标注此请求来自切换账号
                //mainIntent.putExtra("from", "changeuserinfo");
               // mainIntent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
                //context.startActivity(mainIntent);

            	if (YYWMain.mUserCallBack!=null) {
            		YYWMain.mUserCallBack.onLogout(null);
				}
            	
            	//android.os.Process.killProcess(android.os.Process.myPid());
            }
        }

		//
	}

}
