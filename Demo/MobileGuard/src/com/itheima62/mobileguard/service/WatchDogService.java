package com.itheima62.mobileguard.service;

import java.util.List;

import com.itheima62.mobileguard.activities.WatchDogEnterPassActivity;
import com.itheima62.mobileguard.dao.LockedDao;
import com.itheima62.mobileguard.domain.LockedTable;

import android.app.ActivityManager;
import android.app.ActivityManager.RunningTaskInfo;
import android.app.Service;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.database.ContentObserver;
import android.os.Handler;
import android.os.IBinder;
import android.os.SystemClock;

/**
 * ���Ź�����
 * 
 * @author Administrator
 * 
 */
public class WatchDogService extends Service {
	private boolean isWatch;// �Ƿ���
	private ActivityManager am;
	private LockedDao dao;
	private WatchDogReceiver receiver;
	private String shuRen = "";// ���˵İ���
	private List<String> alllockedPacks;

	@Override
	public IBinder onBind(Intent intent) {
		// TODO Auto-generated method stub
		return null;
	}

	/**
	 * ���Ź��Ĺ㲥������ ��������Ϣ�Ļ�ȡ
	 * 
	 * @author Administrator
	 * 
	 */
	private class WatchDogReceiver extends BroadcastReceiver {

		@Override
		public void onReceive(Context context, Intent intent) {
			if (intent.getAction().equals("com.itheima62.watchdog")) {
				//���˵Ĺ㲥
				shuRen = intent.getStringExtra("packname");
			} else if (intent.getAction().equals(Intent.ACTION_SCREEN_OFF)) {
				//��������
				shuRen = "";
				//ֹͣ���Ź�
				isWatch = false;
			} else if (intent.getAction().equals(Intent.ACTION_SCREEN_ON)){
				//�������Ź�
				watchDog();
			}
		}

	}

	@Override
	public void onCreate() {
		// ע�����ݹ۲��������µ�����

		// ע�����ݹ۲���
		ContentObserver observer = new ContentObserver(new Handler()) {

			@Override
			public void onChange(boolean selfChange) {
				new Thread() {
					public void run() {
						LockedDao dao = new LockedDao(getApplicationContext());
						// ��ȡdao���ȡ����
						alllockedPacks = dao.getAllLockedDatas();

					};

				}.start();
				super.onChange(selfChange);
			}

		};
		getContentResolver().registerContentObserver(LockedTable.uri, true,
				observer);
		LockedDao dao = new LockedDao(this);

		alllockedPacks = dao.getAllLockedDatas();

		receiver = new WatchDogReceiver();

		IntentFilter filter = new IntentFilter("com.itheima62.watchdog");
		filter.addAction(Intent.ACTION_SCREEN_OFF);// ����
		filter.addAction(Intent.ACTION_SCREEN_ON);// ����

		// ע�ῴ�Ź��Ĺ㲥,��ȡ���ˣ�������ʱ��ֹͣ���Ź��� ������ �������Ź�
		registerReceiver(receiver, filter);
		dao = new LockedDao(getApplicationContext());
		am = (ActivityManager) getSystemService(ACTIVITY_SERVICE);
		watchDog();// ���Ź����߼�
		super.onCreate();
	}

	private void watchDog() {
		new Thread() {
			public void run() {
				isWatch = true;
				while (isWatch) {
					// ͨ��isWatch �����Ƹ��߳�
					// ʱ�̼������ջ
					List<RunningTaskInfo> runningTasks = am.getRunningTasks(1);// ��ȡ���µ�����ջ
					RunningTaskInfo runningTaskInfo = runningTasks.get(0);// ���´򿪵�����ջ
					// ����ջ�л�ȡ����activity
					String packName = runningTaskInfo.topActivity
							.getPackageName();

					System.out.println(packName);
					// �ж� ͨ����ȡdb
					if (alllockedPacks.contains(packName)) {// if
															// (dao.isLocked(packName))
															// {

						// �ж��Ƿ�������
						if (packName.equals(shuRen)) {
							// ʲôҲ������
						} else {
							// �Ƿ��Ǽ����ģ�true
							// ������� �ж� ��activity
							Intent enterpass = new Intent(
									getApplicationContext(),
									WatchDogEnterPassActivity.class);
							// �Ѱ������ݸ� �������Ľ���
							enterpass.putExtra("packname", packName);
							enterpass.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
							startActivity(enterpass);
						}

					} else {
						// ʲôҲ����
					}
					SystemClock.sleep(50);// ÿ��50���� ���������ջ
					System.out.println("watch dog....");
				}

			};
		}.start();
	}

	@Override
	public void onDestroy() {
		// TODO Auto-generated method stub
		unregisterReceiver(receiver);
		isWatch = false;
		super.onDestroy();
	}

}
