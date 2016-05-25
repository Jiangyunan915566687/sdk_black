package com.blacknife.sdk.floatview;

import java.util.ArrayList;
import java.util.List;
import java.util.Timer;
import java.util.TimerTask;

import android.app.ActivityManager;
import android.app.Service;
import android.app.ActivityManager.RunningTaskInfo;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.os.IBinder;

public class FloatWindowService extends Service {
	
	/**
	 * 定时器，定时进行检测当前应该创建还是移除悬浮窗。
	 */
	private Timer timer;
	@Override
	public IBinder onBind(Intent intent) {
		return null;
	}
	@Override
	public void onCreate() {
		super.onCreate();
	}
	@Override
	public int onStartCommand(Intent intent, int flags, int startId) {
		if(timer == null ){
			timer = new Timer();
			timer.scheduleAtFixedRate(new RefreshTask(), 0, 200);
		}
		return super.onStartCommand(intent, flags, startId);
	}
	@Override
	public void onDestroy() {
		super.onDestroy();
		//Service被终止的同时也停止定时器的运行
		timer.cancel();
		timer = null;
	}
	class RefreshTask extends TimerTask{

		@Override
		public void run() {
			//判断悬浮窗相对桌面的情况
			//1当前界面为桌面 且没有悬浮窗 则创建悬浮窗
			//2当前界面不为桌面 且有悬浮窗 则移除悬浮窗
			//3当前界面为桌面 且有悬浮窗 则更新悬浮窗信息
		}		
	}
	/**
	 * 判断当前界面是否为桌面 Home
	 * @return
	 */
	private boolean isHome(){
		ActivityManager mActivityManager = (ActivityManager)getSystemService(Context.ACTIVITY_SERVICE);
		List<RunningTaskInfo> rti = mActivityManager.getRunningTasks(1);
		return getHomes().contains(rti.get(0).topActivity.getPackageName());
	}

	/**
	 * 获得属于桌面的应用的应用包名称
	 * 
	 * @return 返回包含所有包名的字符串列表
	 */
	private List<String> getHomes() {
		List<String> names = new ArrayList<String>();
		PackageManager packageManager = this.getPackageManager();
		Intent intent = new Intent(Intent.ACTION_MAIN);
		intent.addCategory(Intent.CATEGORY_HOME);
		List<ResolveInfo> resolveInfo = packageManager.queryIntentActivities(intent,
				PackageManager.MATCH_DEFAULT_ONLY);
		for (ResolveInfo ri : resolveInfo) {
			names.add(ri.activityInfo.packageName);
		}
		return names;
	}

}
