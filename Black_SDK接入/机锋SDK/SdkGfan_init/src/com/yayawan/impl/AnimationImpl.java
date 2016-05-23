package com.yayawan.impl;

import android.app.Activity;
import android.widget.Toast;

import com.mappn.sdk.pay.GfanPay;
import com.mappn.sdk.pay.GfanPayInitCallback;
import com.yayawan.main.YYWMain;
import com.yayawan.proxy.YYWAnimation;

public class AnimationImpl implements YYWAnimation {

	public static boolean isinit = false;
    @Override
    public void anim(Activity paramActivity) {
        // TODO Auto-generated method stub
        //Toast.makeText(paramActivity, "播放动画", Toast.LENGTH_SHORT).show();
    	
    	// TODO Auto-generated method stub
    	YYWMain.mAnimCallBack.onAnimSuccess("", "");	

    }

}
