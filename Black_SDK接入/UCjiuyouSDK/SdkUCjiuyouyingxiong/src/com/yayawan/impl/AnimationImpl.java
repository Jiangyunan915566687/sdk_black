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
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;

import com.yayawan.main.YYWMain;
import com.yayawan.proxy.YYWAnimation;
import com.yayawan.utils.DeviceUtil;

public class AnimationImpl implements YYWAnimation {

    @Override
    public void anim(final Activity paramActivity) {
        // TODO Auto-generated method stub
        //Toast.makeText(paramActivity, "播放动画", Toast.LENGTH_SHORT).show();
    	//System.err.println("播放动画");

    	//String MY_PKG_NAME = paramActivity.getPackageName();


    	//Intent paramYayawanStartAnimationCallback =  new Intent(paramActivity.getApplicationContext(), logoAnimation.class);
        //paramActivity.startActivity(paramYayawanStartAnimationCallback);

    	//setContentView(paramActivity.getResources().getIdentifier("logo_start", "layout", MY_PKG_NAME));

    	new Handler(Looper.getMainLooper()).post(new Runnable() {

            @Override
            public void run() {
            	String gameInfo = DeviceUtil.getGameInfo(paramActivity, "needanimation");
            	if (gameInfo.equals("yes")) {
            		new LogoWindow(paramActivity);
				}else {
					YYWMain.mAnimCallBack.onAnimSuccess("success", "");
				}
                

            }
        });

        

    }

}

/*
class logoAnimation extends Activity{

	@Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        setContentView(this.getResources().getIdentifier("logo_start", "layout", getPackageName()));
    }


}
*/

class LogoWindow
{
	
	
	private WindowManager wm;
	private WindowManager.LayoutParams params;
	Activity con;
	boolean isadd = false;

	private LinearLayout myview;

	private Handler mHandler = new Handler() {
		public void handleMessage(Message msg) {
			switch (msg.what) {
			case 1:

				AssetManager assetManager = con.getAssets();

				InputStream istr = null;
				try {

					istr = assetManager.open("2.jpg");

				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				Bitmap bitmap = BitmapFactory.decodeStream(istr);
				iv.setImageBitmap(bitmap);
				mHandler.sendEmptyMessageDelayed(2, 1000L);
				break;
			case 2:

				AssetManager assetManager2 = con.getAssets();

				InputStream istr2 = null;
				try {

					istr2 = assetManager2.open("3.jpg");

				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				Bitmap bitmap1 = BitmapFactory.decodeStream(istr2);
				iv.setImageBitmap(bitmap1);
				mHandler.sendEmptyMessageDelayed(3, 1000L);
				//rootview.removeView(iv);
				//YYWMain.mAnimCallBack.onAnimSuccess("success", "");
				break;
			case 3:

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
		System.out.println("我得到根布局的类名是:"
				+ con.getWindow().getDecorView().getClass().getName());
		lp = new android.widget.FrameLayout.LayoutParams(
				LayoutParams.MATCH_PARENT, LayoutParams.MATCH_PARENT);
		// lp.setMargins(machSize(10), machSize(80), 0, 0);
		iv.setLayoutParams(lp);
		AssetManager assetManager = con.getAssets();

		InputStream istr = null;
		try {

			istr = assetManager.open("1.jpg");

		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		Bitmap bitmap = BitmapFactory.decodeStream(istr);
		iv.setScaleType(ImageView.ScaleType.FIT_XY);
		iv.setBackgroundColor(Color.parseColor("#313131"));
		iv.setImageBitmap(bitmap);

		rootview.addView(iv);

		mHandler.sendEmptyMessageDelayed(3, 3000L);
	}

}
