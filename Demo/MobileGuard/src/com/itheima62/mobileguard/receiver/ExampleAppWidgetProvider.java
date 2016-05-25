package com.itheima62.mobileguard.receiver;

import com.itheima62.mobileguard.service.AppWidgetService;

import android.appwidget.AppWidgetProvider;
import android.content.Context;
import android.content.Intent;

public class ExampleAppWidgetProvider extends AppWidgetProvider {

	/* (non-Javadoc)
	 * 创建第一个小控件调用
	 * @see android.appwidget.AppWidgetProvider#onEnabled(android.content.Context)
	 */
	@Override
	public void onEnabled(Context context) {
		// TODO Auto-generated method stub
		super.onEnabled(context);
		//启动服务监控 内存状态
		Intent service = new Intent(context,AppWidgetService.class);
		context.startService(service);
	}

	/* (non-Javadoc)
	 * 删除最后一个小控件调用
	 * @see android.appwidget.AppWidgetProvider#onDisabled(android.content.Context)
	 */
	@Override
	public void onDisabled(Context context) {
		// TODO Auto-generated method stub
		super.onDisabled(context);
		//关闭服务监控
		Intent service = new Intent(context,AppWidgetService.class);
		context.stopService(service);
	}

}
