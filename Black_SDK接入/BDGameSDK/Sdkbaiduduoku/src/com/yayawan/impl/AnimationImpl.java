package com.yayawan.impl;

import java.io.IOException;
import java.io.InputStream;

import android.app.Activity;
import android.content.Context;
import android.content.res.AssetManager;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Color;
import android.os.Handler;
import android.os.Message;
import android.view.Gravity;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.Toast;

import com.baidu.gamesdk.BDGameSDK;
import com.baidu.gamesdk.BDGameSDKSetting;
import com.baidu.gamesdk.IResponse;
import com.baidu.gamesdk.ResultCode;
import com.baidu.gamesdk.BDGameSDKSetting.Domain;
import com.baidu.gamesdk.BDGameSDKSetting.Orientation;
import com.yayawan.main.YYWMain;
import com.yayawan.proxy.YYWAnimation;
import com.yayawan.utils.DeviceUtil;

public class AnimationImpl implements YYWAnimation {

	@Override
	public void anim(Activity paramActivity) {
		// TODO Auto-generated method stub
		// Toast.makeText(paramActivity, "播放动画", Toast.LENGTH_SHORT).show();
		System.out.println("播放动画");
		YYWMain.mAnimCallBack.onAnimSuccess("success", "");
		/*BDGameSDKSetting mBDGameSDKSetting = new BDGameSDKSetting();

		int appid = Integer.parseInt(DeviceUtil.getGameInfo(paramActivity,
				"App_id"));
		// int appid=3067515;
		// String App_key="f3Os4GAOqxgm79GqbnkT9L8T";
		String App_key = DeviceUtil.getGameInfo(paramActivity, "App_key");
		// System.out.println(appid + "  " + App_key);
		mBDGameSDKSetting.setAppID(appid);// APPID设置
		mBDGameSDKSetting.setAppKey(App_key);// APPKEY设置
		mBDGameSDKSetting.setDomain(Domain.RELEASE);// 设置为正式模式
		if (DeviceUtil.isLandscape(paramActivity)) {
			// System.out.println("我在这里");
			mBDGameSDKSetting.setOrientation(Orientation.LANDSCAPE);// 设置为横屏
		} else {
			// System.out.println("竖屏");
			mBDGameSDKSetting.setOrientation(Orientation.PORTRAIT);// 设置为横屏
		}
		BDGameSDK.init(paramActivity, mBDGameSDKSetting, new IResponse<Void>() {

			@Override
			public void onResponse(int resultCode, String arg1, Void arg2) {

				switch (resultCode) {
				case ResultCode.INIT_SUCCESS:
					// Toastutils_jf.toastString(paramActivity, "初始化成功");
					Yayalog.loger("初始化成功");
					Toastutils_jf.canlogin = true;
					YYWMain.mAnimCallBack.onAnimSuccess("success", "");
					break;
				case ResultCode.INIT_FAIL:
					// Toastutils_jf.toastString(paramActivity, "初始化失败");
					
					System.out.println("初始化失败");
					YYWMain.mAnimCallBack.onAnimFailed(arg1, null);
					break;
				default:
					break;
				}
			}
		});
		*/
	}

}

class LogoWindow {
	private WindowManager wm;
	private WindowManager.LayoutParams params;
	Context con;
	boolean isadd = false;

	private LinearLayout myview;

	private Handler mHandler = new Handler() {
		public void handleMessage(Message msg) {
			switch (msg.what) {
			case 1:
				if (isadd)
					wm.removeView(myview);
				break;
			}
		}
	};

	public LogoWindow(Context co) {

		this.con = co;
		createView();
	}

	private void createView() {

		if (myview == null) {

			myview = new LinearLayout(this.con);
			myview.setBackgroundColor(Color.parseColor("#F7FAF1"));
			myview.setLayoutParams(new LinearLayout.LayoutParams( ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT));

			myview.setOrientation(LinearLayout.VERTICAL);
			myview.setGravity(Gravity.CENTER);

			ImageView iv = new ImageView(this.con);
			// iv.setLayoutParams(new LayoutParams(source))

			AssetManager assetManager = con.getAssets();

			InputStream istr = null;
			try {
				istr = assetManager.open("logo_start.png");
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			Bitmap bitmap = BitmapFactory.decodeStream(istr);


			iv.setImageBitmap(bitmap);

			iv.setScaleType(ImageView.ScaleType.CENTER);

			iv.setLayoutParams(new LinearLayout.LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT));

			myview.addView(iv);


			wm = ((WindowManager) this.con.getSystemService("window"));
			params = new WindowManager.LayoutParams();

			params.type = 2002;
			params.flags = 40;

			params.flags |= 262144;
			params.flags |= 512;
			params.gravity = 83;
			isadd = true;
		}

		if (myview != null) {

			wm.addView(myview, params);
		}

		mHandler.sendEmptyMessageDelayed(1, 3000L);
	}
}
