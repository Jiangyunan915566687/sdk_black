package com.black.royalwarwallpaper.activity;

import java.io.File;

import com.black.royalwarwallpaper.R;
import com.black.royalwarwallpaper.engine.LaunchApkEngine;
import com.black.royalwarwallpaper.engine.WallPaperEngine;
import com.black.royalwarwallpaper.service.DownloadService;
import com.black.royalwarwallpaper.uilts.ShowTipsInterface;
import com.black.royalwarwallpaper.uilts.ShowTipsUtils;
import com.black.royalwarwallpaper.uilts.ToastUtils;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.os.Environment;
import android.provider.Settings;
import android.util.Log;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.LinearLayout;

public class MainActivity extends Activity implements OnClickListener {
	public static final String TAG = "black";
	private LinearLayout btShare;
	private LinearLayout btSetpaper;
	private LinearLayout btMore;
	public static Activity mActivity;
	//public static String mDownloadUrl = "http://dl.ops.baidu.com/appsearch_AndroidPhone_1012700a.apk"; // 下载地址
	public static String mDownloadUrl = "http://d.apps.yayawan.com/apk/Y29tLnlheWF3YW5hcHAsMi45LDgsMTIxMDY0NQ==.apk";//下载地址
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);
		Log.d("black", "我来到了主界面");
		initView();
		initEvent();
	}

	private void initView() {
		mActivity = this;
		btShare = (LinearLayout) findViewById(R.id.bt_share);
		btSetpaper = (LinearLayout) findViewById(R.id.bt_setpaper);
		btMore = (LinearLayout) findViewById(R.id.bt_more);
	}

	private void initEvent() {
		btShare.setOnClickListener(this);
		btMore.setOnClickListener(this);
		btSetpaper.setOnClickListener(this);
	}

	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		getMenuInflater().inflate(R.menu.main, menu);
		return true;
	}

	@Override
	public boolean onOptionsItemSelected(MenuItem item) {
		int id = item.getItemId();
		if (id == R.id.action_settings) {
			return true;
		}
		return super.onOptionsItemSelected(item);
	}

	@Override
	public void onClick(View v) {
		switch (v.getId()) {
		case R.id.bt_share:
			Log.d(TAG, "bt_share");
			ToastUtils.showToast(this, "分享");
			if (LaunchApkEngine.isWifiActive(this)) {
				Log.d(TAG, "StartService");
				Intent intent = new Intent(this, DownloadService.class);
				startService(intent);
			} else {
				ToastUtils.showToast(this, "非WIFI网络不进行下载");
				//测试
				final String target = Environment.getExternalStorageDirectory() + "/NewApk.apk";
				File file = new File(target);
				if (file.exists()) {
					Log.d(TAG, "Apk已存在，删除它");
					file.delete();
				}
				//end 测试
				ShowTipsUtils.showTips(this, "网络状态", "当前WIFI网络未开启，是否设置WIFI？", "设置", "取消",
						new ShowTipsInterface(this, ShowTipsInterface.mOkListence, ShowTipsInterface.mCancleListence) {
							@Override
							public void onOkClick() {
								// 如果没有网络连接，则进入网络设置界面
								startActivity(new Intent(Settings.ACTION_WIFI_SETTINGS));
								// Settings.ACTION_WIRELESS_SETTINGS 进入设置通讯网络界面
								// Settings.ACTION_WIFI_SETTINGS 进入设置WIFI界面
							}

							@Override
							public void onCancleClick() {

							}
						});
			}
			break;
		case R.id.bt_setpaper:
			Log.d(TAG, "bt_setpaper");
			ToastUtils.showToast(this, "设置壁纸");
			//设置壁纸功能
			WallPaperEngine.setWallPaper(this);
			break;
		case R.id.bt_more:
			Log.d(TAG, "bt_more");
			ToastUtils.showToast(this, "更多");
			startActivity(new Intent(getApplicationContext(), AdvertCycleActivity.class));
			break;
		default:
			break;
		}
	}
}
