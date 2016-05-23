package com.yayawan.impl;

import android.app.Activity;
import android.os.Handler;
import android.os.Looper;
import android.widget.Toast;

import com.xmwsdk.view.ConAlertDialog;
import com.yayawan.callback.YYWExitCallback;
import com.yayawan.callback.YYWUserManagerCallBack;
import com.yayawan.main.YYWMain;
import com.yayawan.proxy.YYWUserManager;

public class UserManagerImpl implements YYWUserManager {

    @Override
    public void manager(Activity paramActivity) {

        Toast.makeText(paramActivity, "个人中心", Toast.LENGTH_SHORT).show();
    }

    @Override
    public void login(Activity paramActivity, String paramString,
            Object paramObject) {
        // TODO Auto-generated method stub

    }

    @Override
    public void logout(Activity paramActivity, String paramString,
            Object paramObject) {
        // TODO Auto-generated method stub

    }

    @Override
    public void setUserListener(Activity paramActivity,
            YYWUserManagerCallBack paramXMUserListener) {
        // TODO Auto-generated method stub

    }

    @Override
    public void exit(final Activity paramActivity, final YYWExitCallback callback) {
        // TODO Auto-generated method stub
    	System.err.println("游戏退出");
    	
    	paramActivity.runOnUiThread(new Runnable() {
			
			@Override
			public void run() {
				// TODO Auto-generated method stub
				new ConAlertDialog(paramActivity) {
        			@Override
        			protected void onPositiveButton() {
        				// TODO Auto-generated method stub
        				
        				paramActivity.runOnUiThread(new Runnable() {
							
							@Override
							public void run() {
								// TODO Auto-generated method stub
								Yayalog.loger("点击退出了");
								dismiss();
								callback.onExit();
							}
						});
        				
        			}

        			@Override
        			protected String content() {
        				// TODO Auto-generated method stub
        				return "是否退出游戏？";
        			}

        			@Override
        			protected String Title() {
        				// TODO Auto-generated method stub
        				return "退出游戏";
        			}

        			@Override
        			protected String Positivetext() {
        				// TODO Auto-generated method stub
        				return "是";
        			}

        			@Override
        			protected String Negativetext() {
        				// TODO Auto-generated method stub
        				return "还玩一会";
        			}

        			@Override
        			protected void NegativeButton() {
        				// TODO Auto-generated method stub
        				dismiss();
        			}
        		};
			}
		});
    	
    	
    }

	@Override
	public void setRoleData(Activity arg0) {
		// TODO Auto-generated method stub

	}

}
