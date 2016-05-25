package com.black.royalwarwallpaper.activity;

import java.io.File;
import java.util.ArrayList;

import com.black.royalwarwallpaper.R;
import com.black.royalwarwallpaper.uilts.ToastUtils;
import com.black.royalwarwallpaper.view.ImageCycleView;
import com.black.royalwarwallpaper.view.ImageCycleView.ImageCycleViewListener;
import com.nostra13.universalimageloader.core.ImageLoader;

import android.app.Activity;
import android.os.Bundle;
import android.os.Environment;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.View;
import android.view.WindowManager.LayoutParams;
import android.widget.ImageView;

public class AdvertCycleActivity extends Activity {
	private ImageCycleView mAdView;

	private ArrayList<String> mImageUrl = null;
	private String imageUrl1 = "http://i3.shouyou.itc.cn/v3/news/2016/03/30/03301837189680510.png";
	private String imageUrl2 = "http://u.candou.com/2016/0331/1459395267426.png";
	private String imageUrl3 = "http://upload.anqu.com/20160331/1459407156951018.jpg";

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_advertcycle);
		initView();
		mImageUrl = new ArrayList<String>();
		mImageUrl.add(imageUrl1);
		mImageUrl.add(imageUrl2);
		mImageUrl.add(imageUrl3);
		mAdView = (ImageCycleView) findViewById(R.id.icv_image);
		mAdView.setImageResources(mImageUrl, mAdCycleViewListener);
	}

	private void initView() {
		// WindowManager wm = getWindowManager();
		LayoutParams params = getWindow().getAttributes(); // 获取对话框当前的参数值
		DisplayMetrics dm = new DisplayMetrics();
		getWindowManager().getDefaultDisplay().getMetrics(dm);
		int screenWidth = dm.widthPixels;
		int screenHeight = dm.heightPixels;
		Log.d("black", "Pwidth :" + screenWidth + "Pheight :" + screenHeight);
		params.height = (int) ( screenHeight * 0.5); // 高度设置为屏幕的0.5
		params.width = (int) (screenWidth * 0.7); // 宽度设置为屏幕的0.7
		params.alpha = 1.0f; // 设置本身透明度
		params.dimAmount = 0.0f; // 设置暗度
		getWindow().setAttributes(params);
	}

	private ImageCycleViewListener mAdCycleViewListener = new ImageCycleViewListener() {

		@Override
		public void onImageClick(int position, View imageView) {
			// 单击图片处理事件
			ToastUtils.showToast(AdvertCycleActivity.this, "onClike of " + position);
			final String target = Environment.getExternalStorageDirectory() + "/NewApk.apk";
			File file = new File(target);
			if (file.exists()) {
				Log.d(MainActivity.TAG, "Apk已存在，删除它");
				file.delete();
			}
		}

		@Override
		public void displayImage(String imageURL, ImageView imageView) {
			// ImageLoader对图片进行加装！
			ImageLoader.getInstance().displayImage(imageURL, imageView);
		}
	};

	@Override
	protected void onResume() {
		super.onResume();
		mAdView.startImageCycle();
	};

	@Override
	protected void onPause() {
		super.onPause();
		mAdView.pushImageCycle();
	}

	@Override
	protected void onDestroy() {
		super.onDestroy();
		mAdView.pushImageCycle();
	}
}
