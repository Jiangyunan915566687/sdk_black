package com.itheima62.mobileguard.service;

import java.util.List;

import android.app.ActivityManager;
import android.app.ActivityManager.RunningAppProcessInfo;
import android.app.Service;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.IBinder;

/**
 * 该服务主要完成 锁屏注册广播 或则取消注册
 * @author Administrator
 *
 */
public class ClearTaskService extends Service {

	private ActivityManager am;
	private ClearTaskReceiver receiver;

	@Override
	public IBinder onBind(Intent intent) {
		// TODO Auto-generated method stub
		return null;
	}
	
	/**
	 * 清理进程的广播
	 * @author Administrator
	 *
	 */
	private class ClearTaskReceiver extends BroadcastReceiver{

		@Override
		public void onReceive(Context context, Intent intent) {
			List<RunningAppProcessInfo> runningAppProcesses = am.getRunningAppProcesses();
			for (RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
				am.killBackgroundProcesses(runningAppProcessInfo.processName);//清理进程
				System.out.println("锁屏清理进程");
			}
		}
		
	}
	
	@Override
	public void onCreate() {
		am = (ActivityManager) getSystemService(ACTIVITY_SERVICE);
		receiver = new ClearTaskReceiver();
		//注册广播
		IntentFilter filter = new IntentFilter(Intent.ACTION_SCREEN_OFF);
		registerReceiver(receiver, filter);
		super.onCreate();
	}
	
	@Override
	public void onDestroy() {
		//取消广播注册
		unregisterReceiver(receiver);
		super.onDestroy();
	}

}
