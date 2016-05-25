package com.itheima62.mobileguard.service;

import java.util.Date;
import java.util.Timer;
import java.util.TimerTask;

import com.itheima62.mobileguard.R;
import com.itheima62.mobileguard.engine.TaskManagerEngine;
import com.itheima62.mobileguard.receiver.ExampleAppWidgetProvider;

import android.app.PendingIntent;
import android.app.Service;
import android.appwidget.AppWidgetManager;
import android.content.ComponentName;
import android.content.Intent;
import android.os.IBinder;
import android.text.format.Formatter;
import android.widget.RemoteViews;

public class AppWidgetService extends Service {

	private Timer timer;
	private TimerTask task;
	private AppWidgetManager awm;

	@Override
	public IBinder onBind(Intent intent) {
		// TODO Auto-generated method stub
		return null;
	}
	
	@Override
	public void onCreate() {
		//appwidget管理器
		
		awm = AppWidgetManager.getInstance(getApplicationContext());
		//动态更新数据 时间定时器
		timer = new Timer();
		//定时器触发的任务
		task = new TimerTask() {
			
			@Override
			public void run() {
				//数据更新
				
				
				ComponentName provider = new ComponentName(getApplicationContext(), ExampleAppWidgetProvider.class);
				
				//远程的界面
				RemoteViews views = new RemoteViews(getPackageName(), R.layout.process_widget);
				
				System.out.println("更新数据");
				
				//运行中的软件个数
				int runningNumber = TaskManagerEngine.getAllRunningTaskInfos(getApplicationContext()).size();
				
				//可用内存
				long availMem = TaskManagerEngine.getAvailMemSize(getApplicationContext());
				
				String availMemStr = Formatter.formatFileSize(getApplicationContext(), availMem);
				
				///给RemoteViews的子组件赋值
				views.setTextViewText(R.id.process_count, "正在运行软件:" + runningNumber);
				views.setTextViewText(R.id.process_memory, "可用内存:" + availMemStr);
				
				Intent intent =  new Intent("com.itheima62.widget.cleartask");
				PendingIntent pendingIntent = PendingIntent.getBroadcast(getApplicationContext(), 0, intent , 0);
				//给widget按钮加点击事件
				views.setOnClickPendingIntent(R.id.btn_clear, pendingIntent );
				
				
				awm.updateAppWidget(provider, views );
				
			}
		};
		//每隔10秒监控任务 task
		timer.schedule(task, 0, 1000 * 5);
		super.onCreate();
	}
	
	@Override
	public void onDestroy() {
		timer.cancel();//取消监听
		timer = null;
		task = null;
		super.onDestroy();
	}

}
