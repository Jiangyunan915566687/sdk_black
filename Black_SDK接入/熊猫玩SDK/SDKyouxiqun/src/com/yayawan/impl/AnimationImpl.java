package com.yayawan.impl;

import android.app.Activity;
import android.os.Handler;
import android.os.Looper;

import com.xmwsdk.control.XmwMatrix;
import com.yayawan.main.YYWMain;
import com.yayawan.proxy.YYWAnimation;

public class AnimationImpl implements YYWAnimation {

    @Override
    public void anim(final Activity paramActivity) {

        new Handler(Looper.getMainLooper()).post(new Runnable() {

            @Override
            public void run() {
                XmwMatrix.invokelogo(paramActivity);
            }
        });
        if (YYWMain.mAnimCallBack != null) {
            YYWMain.mAnimCallBack.onAnimSuccess("success", "");
        }
    }

}
