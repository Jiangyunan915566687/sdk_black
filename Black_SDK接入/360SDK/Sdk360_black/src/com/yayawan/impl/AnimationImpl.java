package com.yayawan.impl;

import java.io.IOException;
import java.io.InputStream;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.AssetManager;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Color;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;

import com.yayawan.main.YYWMain;
import com.yayawan.proxy.YYWAnimation;
import com.yayawan.utils.DeviceUtil;

public class AnimationImpl implements YYWAnimation {

	@Override
	public void anim(final Activity paramActivity) {
		System.err.println("播放动画");

		new Handler(Looper.getMainLooper()).post(new Runnable() {

			@Override
			public void run() {
				//若不需要闪屏动画,直接取消注释以下一句,并注释new LogoWindow(paramActivity);
				if(DeviceUtil.getGameInfo(paramActivity, "need_yayaanim").endsWith("yes")){
					new LogoWindow(paramActivity);					
				}else{
					//调用接入的SDK闪屏动画
					YaYawanconstants.logoAnim(paramActivity);
					YYWMain.mAnimCallBack.onAnimSuccess("success", "");
				}
				//闪屏动画播放完后,黑屏时间较长
				//请在此处直接发送 AnimSuccess闪屏播放成功的通知
				//然后,把需要调用的闪屏代码段放到 初始化接口中的末尾(可以对其使用主线程运行)
				//YYWMain.mAnimCallBack.onAnimSuccess("success", "");
			}
		});

	}

}

class LogoWindow {
	private WindowManager wm;
	private WindowManager.LayoutParams params;
	Activity con;
	boolean isadd = false;

	private LinearLayout myview;

	private Handler mHandler = new Handler() {
		public void handleMessage(Message msg) {
			switch (msg.what) {
			case 1:

				rootview.removeView(iv);
				YYWMain.mAnimCallBack.onAnimSuccess("success", "");
				break;
			}
		}
	};

	private ViewGroup rootview;
	private ImageView iv;
	private android.widget.FrameLayout.LayoutParams lp;

	public LogoWindow(Activity co) {

		this.con = co;
		rootview = (ViewGroup) con.getWindow().getDecorView();

		createView();
	}

	private void createView() {

		iv = new ImageView(con);
		
		lp = new android.widget.FrameLayout.LayoutParams(
				LayoutParams.MATCH_PARENT, LayoutParams.MATCH_PARENT);
		// lp.setMargins(machSize(10), machSize(80), 0, 0);
		iv.setLayoutParams(lp);
		AssetManager assetManager = con.getAssets();

		InputStream istr = null;
		try {

			istr = assetManager.open("yaya_logo_start.png");

		} catch (IOException e) {
			e.printStackTrace();
		}
		Bitmap bitmap = BitmapFactory.decodeStream(istr);

		iv.setBackgroundColor(Color.parseColor("#f7faf1"));
		iv.setImageBitmap(bitmap);
		iv.setScaleType(ScaleType.CENTER);
		rootview.addView(iv);

		mHandler.sendEmptyMessageDelayed(1, 3000L);
	}
}
