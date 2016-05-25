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
		//appwidget������
		
		awm = AppWidgetManager.getInstance(getApplicationContext());
		//��̬�������� ʱ�䶨ʱ��
		timer = new Timer();
		//��ʱ������������
		task = new TimerTask() {
			
			@Override
			public void run() {
				//���ݸ���
				
				
				ComponentName provider = new ComponentName(getApplicationContext(), ExampleAppWidgetProvider.class);
				
				//Զ�̵Ľ���
				RemoteViews views = new RemoteViews(getPackageName(), R.layout.process_widget);
				
				System.out.println("��������");
				
				//�����е��������
				int runningNumber = TaskManagerEngine.getAllRunningTaskInfos(getApplicationContext()).size();
				
				//�����ڴ�
				long availMem = TaskManagerEngine.getAvailMemSize(getApplicationContext());
				
				String availMemStr = Formatter.formatFileSize(getApplicationContext(), availMem);
				
				///��RemoteViews���������ֵ
				views.setTextViewText(R.id.process_count, "�����������:" + runningNumber);
				views.setTextViewText(R.id.process_memory, "�����ڴ�:" + availMemStr);
				
				Intent intent =  new Intent("com.itheima62.widget.cleartask");
				PendingIntent pendingIntent = PendingIntent.getBroadcast(getApplicationContext(), 0, intent , 0);
				//��widget��ť�ӵ���¼�
				views.setOnClickPendingIntent(R.id.btn_clear, pendingIntent );
				
				
				awm.updateAppWidget(provider, views );
				
			}
		};
		//ÿ��10�������� task
		timer.schedule(task, 0, 1000 * 5);
		super.onCreate();
	}
	
	@Override
	public void onDestroy() {
		timer.cancel();//ȡ������
		timer = null;
		task = null;
		super.onDestroy();
	}

}
