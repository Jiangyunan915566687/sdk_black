package com.black.royalwarwallpaper.service;

import java.math.BigDecimal;

import com.black.royalwarwallpaper.R;
import com.black.royalwarwallpaper.activity.AdvertCycleActivity;
import com.black.royalwarwallpaper.activity.MainActivity;
import com.black.royalwarwallpaper.engine.LaunchApkEngine;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.IBinder;
import android.provider.MediaStore.Audio;
import android.support.v4.app.NotificationCompat;
import android.util.Log;

public class DownloadService extends Service {
	private static final int NotifiID = 1;
	private static Context mContext;
	private static NotificationManager mManager;
	private static NotificationCompat.Builder mNotifyBuiler;
	@Override public IBinder onBind(Intent intent) {
		return null;
	}

	@Override
	public void onCreate() {
		super.onCreate();
		initService();
	}

	private void initService() {
		Log.d(MainActivity.TAG, "Start DownloadService initService");
		mContext = this;
		Boolean isFileExists = LaunchApkEngine.downloadApk(MainActivity.mActivity, MainActivity.mDownloadUrl);
		if (isFileExists) {
			mManager = (NotificationManager) getSystemService(Context.NOTIFICATION_SERVICE);
			Bitmap bitmap = BitmapFactory.decodeResource(getResources(), R.drawable.ic_launcher);
			mNotifyBuiler = new NotificationCompat.Builder(getApplicationContext()).setContentTitle("下载进度")// 设置通知的标题
					.setContentText("My Name is BlackJiang")// 设置通知的主题信息
					.setContentInfo("->")// 设置通知右下角的文本信息(小)
					.setTicker("开始下载~")// 设置通知来到时候,通知栏的提示信息
					.setLargeIcon(bitmap)// 设置通知的左边的图标
					.setSmallIcon(R.drawable.ic_launcher)// 设置通知右下角的小图标
					.setNumber(1)// 设置通知集合的数量
					// .setVibrate(new long[]{0,500,500,500})//设置震动提醒
					.setWhen(System.currentTimeMillis())// 设置通知右上角的时间,一般用来显示到达的时间
					.setAutoCancel(true)// 设置通知是否可以被用户单击面板 自动取消
					.setPriority(Notification.PRIORITY_HIGH)// 设置该通知优先级,优先级高的靠前排列
					.setOngoing(true)// 设置该通知是否为后台进程,就是是否可以滑动取消
					.setProgress(100, 0, false);
			mManager.notify(NotifiID, mNotifyBuiler.build());
		} else {
			stopService(new Intent(mContext, DownloadService.class));
		}
	}

	public static void UpdataNotitfProgress(float progress) {
		BigDecimal mBdProgerss = new BigDecimal(progress);
		mBdProgerss = mBdProgerss.setScale(1, BigDecimal.ROUND_HALF_UP);
		mNotifyBuiler.setProgress(100, (int) progress, false)// 设置通知的进度情况,true代表不确定进度,显示循环图,false表示确定进度,有准确的进度信息
				.setContentInfo(mBdProgerss + "%");
		mManager.notify(NotifiID, mNotifyBuiler.build());
	}

	public static void UpdataNotitfSuccess() {
		mNotifyBuiler
				.setContentIntent(PendingIntent.getActivity(mContext, 0,
						new Intent(mContext, AdvertCycleActivity.class), PendingIntent.FLAG_UPDATE_CURRENT))// 设置该通知的点击意图
				.setProgress(0, 0, false)// 如果进度完成后要使进度条消失,直接设置成该形式即可
				.setContentInfo("ok").setContentTitle("下载成功").setContentText("Download Success!")
				.setDefaults(Notification.DEFAULT_SOUND)// 设置默认的提示方式
				.setSound(Uri.withAppendedPath(Audio.Media.INTERNAL_CONTENT_URI, ""));// 设置通知提示音,调用安卓多媒体库的提示音
		mManager.notify(NotifiID, mNotifyBuiler.build());
		mContext.stopService(new Intent(mContext, DownloadService.class));

	}

	public static void UpdataNotitfFail(String stringError) {
		mNotifyBuiler.setContentInfo("error").setProgress(0, 0, false).setOngoing(false).setContentTitle("下载失败")
				.setContentText(stringError).setDefaults(Notification.DEFAULT_SOUND)
				.setSound(Uri.withAppendedPath(Audio.Media.INTERNAL_CONTENT_URI, ""));
		mManager.notify(NotifiID, mNotifyBuiler.build());
		// mManager.cancel(NotifiID);
		mContext.stopService(new Intent(mContext, DownloadService.class));
	}

	@Override
	public int onStartCommand(Intent intent, int flags, int startId) {
		Log.d(MainActivity.TAG, "onStartCommand");
		return super.onStartCommand(intent, flags, startId);
	}

	@Override
	public void onDestroy() {
		super.onDestroy();
		Log.d(MainActivity.TAG, "DownloadService onDestroy");
	}
}
