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
 * 看门狗服务
 * 
 * @author Administrator
 * 
 */
public class WatchDogService extends Service {
	private boolean isWatch;// 是否监控
	private ActivityManager am;
	private LockedDao dao;
	private WatchDogReceiver receiver;
	private String shuRen = "";// 熟人的包名
	private List<String> alllockedPacks;

	@Override
	public IBinder onBind(Intent intent) {
		// TODO Auto-generated method stub
		return null;
	}

	/**
	 * 看门狗的广播接收者 ，熟人信息的获取
	 * 
	 * @author Administrator
	 * 
	 */
	private class WatchDogReceiver extends BroadcastReceiver {

		@Override
		public void onReceive(Context context, Intent intent) {
			if (intent.getAction().equals("com.itheima62.watchdog")) {
				//熟人的广播
				shuRen = intent.getStringExtra("packname");
			} else if (intent.getAction().equals(Intent.ACTION_SCREEN_OFF)) {
				//清理熟人
				shuRen = "";
				//停止看门狗
				isWatch = false;
			} else if (intent.getAction().equals(Intent.ACTION_SCREEN_ON)){
				//启动看门狗
				watchDog();
			}
		}

	}

	@Override
	public void onCreate() {
		// 注册内容观察者来最新的数据

		// 注册内容观察者
		ContentObserver observer = new ContentObserver(new Handler()) {

			@Override
			public void onChange(boolean selfChange) {
				new Thread() {
					public void run() {
						LockedDao dao = new LockedDao(getApplicationContext());
						// 读取dao层读取数据
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
		filter.addAction(Intent.ACTION_SCREEN_OFF);// 锁屏
		filter.addAction(Intent.ACTION_SCREEN_ON);// 解锁

		// 注册看门狗的广播,获取熟人，锁屏的时候，停止看门狗， 解锁的 开启看门狗
		registerReceiver(receiver, filter);
		dao = new LockedDao(getApplicationContext());
		am = (ActivityManager) getSystemService(ACTIVITY_SERVICE);
		watchDog();// 看门狗的逻辑
		super.onCreate();
	}

	private void watchDog() {
		new Thread() {
			public void run() {
				isWatch = true;
				while (isWatch) {
					// 通过isWatch 来控制该线程
					// 时刻监控任务栈
					List<RunningTaskInfo> runningTasks = am.getRunningTasks(1);// 获取最新的任务栈
					RunningTaskInfo runningTaskInfo = runningTasks.get(0);// 最新打开的任务栈
					// 任务栈中获取顶部activity
					String packName = runningTaskInfo.topActivity
							.getPackageName();

					System.out.println(packName);
					// 判断 通过读取db
					if (alllockedPacks.contains(packName)) {// if
															// (dao.isLocked(packName))
															// {

						// 判断是否是熟人
						if (packName.equals(shuRen)) {
							// 什么也不拦截
						} else {
							// 是否是加锁的，true
							// 输入口令 判断 打开activity
							Intent enterpass = new Intent(
									getApplicationContext(),
									WatchDogEnterPassActivity.class);
							// 把包名传递给 输入口令的界面
							enterpass.putExtra("packname", packName);
							enterpass.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
							startActivity(enterpass);
						}

					} else {
						// 什么也不做
					}
					SystemClock.sleep(50);// 每个50毫秒 狗监控任务栈
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
