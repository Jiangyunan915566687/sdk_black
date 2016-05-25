package com.itheima62.mobileguard.utils;

import java.util.List;

import android.app.ActivityManager;
import android.app.ActivityManager.RunningServiceInfo;
import android.content.Context;

/**
 * @author Administrator
 * 判断服务的状态
 */
public class ServiceUtils {
	/**
	 * @param context
	 * @param serviceName
	 *       service完整的名字 包名+类名
	 * @return
	 *     该servcie是否在运行
	 */
	public static boolean isServiceRunning(Context context,String serviceName){
		boolean isRunning = false;
		
		//判断运行中的服务状态，ActivityManager
		ActivityManager am = (ActivityManager) context.getSystemService(Context.ACTIVITY_SERVICE);
		//获取android手机中运行的所有服务
		List<RunningServiceInfo> runningServices = am.getRunningServices(50);
		
		for (RunningServiceInfo runningServiceInfo : runningServices) {
			//System.out.println(runningServiceInfo.service.getClassName());
			//判断服务的名字是否包含我们指定的服务名
			if (runningServiceInfo.service.getClassName().equals(serviceName)){
				//名字一直，该服务在运行中 
				isRunning = true;
				//已经找到 退出循环
				break;
			}
		}
		return isRunning;
	}
}
