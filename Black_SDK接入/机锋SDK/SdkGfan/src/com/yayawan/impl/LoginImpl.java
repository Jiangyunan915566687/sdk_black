package com.yayawan.impl;



import android.app.Activity;
import android.os.Handler;
import android.os.Looper;
import android.widget.Toast;


import com.mappn.sdk.uc.GfanUCCallback;
import com.mappn.sdk.uc.GfanUCenter;
import com.mappn.sdk.uc.User;
import com.yayawan.callback.YYWUserCallBack;
import com.yayawan.domain.YYWUser;
import com.yayawan.main.YYWMain;
import com.yayawan.proxy.YYWLoginer;
import com.yayawan.utils.Handle;
import com.yayawan.utils.HttpUtil;
import com.yayawan.utils.JSONUtil;

public class LoginImpl implements YYWLoginer {

    @Override
    public void login(final Activity paramActivity,
            YYWUserCallBack userCallBack, String paramString) {

        new Handler(Looper.getMainLooper()).post(new Runnable() {

            @Override
            public void run() {
            	
            	if (!ActivityStubImpl.isinit) {
					return;
				}
            	GfanUCenter.login(paramActivity, new GfanUCCallback() {

                    @Override
                    public void onSuccess(User user, int loginType) {

                    	System.out.println("登录成功"+user.getToken());
                        YYWMain.mUser = new YYWUser();
                    
                        YYWMain.mUser.uid = user.getUid() + "";
                        YYWMain.mUser.userName = user.getUserName();
                        YYWMain.mUser.token = JSONUtil.formatToken(
                                paramActivity, user.getToken(),
                                YYWMain.mUser.userName);

                        if (YYWMain.mUserCallBack != null) {
                            YYWMain.mUserCallBack.onLoginSuccess(YYWMain.mUser,
                                    "success");
                            Handle.login_handler(paramActivity,
                                    YYWMain.mUser.uid, YYWMain.mUser.userName);
                        }
                    }

                    @Override
                    public void onError(int loginType) {
                        if (YYWMain.mUserCallBack != null) {
                            YYWMain.mUserCallBack.onLoginFailed("", "");
                        }
                    }
                });
            }
        });

    }


    @Override
    public void relogin(Activity paramActivity, YYWUserCallBack userCallBack, String paramString) {

        System.err.println("relogin");
    }

}
