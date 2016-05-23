package com.yayawan.impl;

import android.app.Activity;
import android.widget.Toast;

import com.downjoy.CallbackListener;
import com.downjoy.Downjoy;
import com.yayawan.callback.YYWExitCallback;
import com.yayawan.callback.YYWUserManagerCallBack;
import com.yayawan.main.YYWMain;
import com.yayawan.proxy.YYWUserManager;
import com.yayawan.utils.DeviceUtil;

public class UserManagerImpl implements YYWUserManager {

    @Override
    public void manager(Activity paramActivity) {
        
        
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
    	if (Myconstant.dangle!=null) {
    		Myconstant.dangle.logout(paramActivity);
		}
    	

    }

    @Override
    public void setUserListener(Activity paramActivity,
            YYWUserManagerCallBack paramXMUserListener) {
        // TODO Auto-generated method stub

    }

    @Override
    public void exit(final Activity paramActivity, final YYWExitCallback callback) {
        // TODO Auto-generated method stub
        //Toast.makeText(paramActivity, "退出游戏", Toast.LENGTH_SHORT).show();
    	paramActivity.runOnUiThread(new Runnable() {
    		
    		@Override
    		public void run() {
    			// TODO Auto-generated method stub
    			if (Myconstant.dangle!=null) {
    				Myconstant.dangle.openExitDialog(paramActivity, new CallbackListener<String>() {
    					
    					@Override
    					public void callback(int arg0, String arg1) {
    						// TODO Auto-generated method stub
    						String isfinish = DeviceUtil.getGameInfo(paramActivity, "isfinish");
    						if (isfinish.equals("yes")) {
    							paramActivity.finish();
    							
							}else {
								callback.onExit();
							}
    					
    						//paramActivity.finish();
    					}
    				});
    			}else {
    				callback.onExit();
    			}
    	    	
    		}
    	});
    }

	@Override
	public void setRoleData(Activity arg0) {
		// TODO Auto-generated method stub

	}

}
