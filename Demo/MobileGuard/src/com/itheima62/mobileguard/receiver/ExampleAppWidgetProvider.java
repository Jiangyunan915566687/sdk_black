package com.itheima62.mobileguard.receiver;

import com.itheima62.mobileguard.service.AppWidgetService;

import android.appwidget.AppWidgetProvider;
import android.content.Context;
import android.content.Intent;

public class ExampleAppWidgetProvider extends AppWidgetProvider {

	/* (non-Javadoc)
	 * ������һ��С�ؼ�����
	 * @see android.appwidget.AppWidgetProvider#onEnabled(android.content.Context)
	 */
	@Override
	public void onEnabled(Context context) {
		// TODO Auto-generated method stub
		super.onEnabled(context);
		//���������� �ڴ�״̬
		Intent service = new Intent(context,AppWidgetService.class);
		context.startService(service);
	}

	/* (non-Javadoc)
	 * ɾ�����һ��С�ؼ�����
	 * @see android.appwidget.AppWidgetProvider#onDisabled(android.content.Context)
	 */
	@Override
	public void onDisabled(Context context) {
		// TODO Auto-generated method stub
		super.onDisabled(context);
		//�رշ�����
		Intent service = new Intent(context,AppWidgetService.class);
		context.stopService(service);
	}

}
