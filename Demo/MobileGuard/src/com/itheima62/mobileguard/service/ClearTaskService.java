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
 * �÷�����Ҫ��� ����ע��㲥 ����ȡ��ע��
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
	 * ������̵Ĺ㲥
	 * @author Administrator
	 *
	 */
	private class ClearTaskReceiver extends BroadcastReceiver{

		@Override
		public void onReceive(Context context, Intent intent) {
			List<RunningAppProcessInfo> runningAppProcesses = am.getRunningAppProcesses();
			for (RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
				am.killBackgroundProcesses(runningAppProcessInfo.processName);//�������
				System.out.println("�����������");
			}
		}
		
	}
	
	@Override
	public void onCreate() {
		am = (ActivityManager) getSystemService(ACTIVITY_SERVICE);
		receiver = new ClearTaskReceiver();
		//ע��㲥
		IntentFilter filter = new IntentFilter(Intent.ACTION_SCREEN_OFF);
		registerReceiver(receiver, filter);
		super.onCreate();
	}
	
	@Override
	public void onDestroy() {
		//ȡ���㲥ע��
		unregisterReceiver(receiver);
		super.onDestroy();
	}

}
