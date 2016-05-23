package com.yayawan.impl;

import android.app.Activity;
import android.content.Intent;

import com.xmwsdk.control.XmwMatrix;
import com.yayawan.proxy.YYWActivityStub;
import com.yayawan.utils.DeviceUtil;
import com.yayawan.utils.Handle;

public class ActivityStubImpl implements YYWActivityStub {

    @Override
    public void applicationInit(Activity paramActivity) {
        // TODO Auto-generated method stub

    }

    @Override
    public void onCreate(Activity paramActivity) {

    	//System.err.println(paramActivity.lau);
    	String packageName = paramActivity.getPackageName();
    	Intent launchIntent = paramActivity.getPackageManager().getLaunchIntentForPackage(packageName);
    	String className = launchIntent.getComponent().getClassName();
    	System.err.println(paramActivity.getClass().getPackage().toString());
    	System.out.println("包名"+packageName);
        XmwMatrix.initxmw(paramActivity, packageName);

        Handle.active_handler(paramActivity);

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
        // TODO Auto-generated method stub

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

}
