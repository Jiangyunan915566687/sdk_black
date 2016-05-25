package com.blacknife.mobliesafe.utils;

import java.util.List;

import android.app.ActivityManager;
import android.app.ActivityManager.RunningServiceInfo;
import android.content.Context;

/**
 * 服务状态工具类
 * @author Blacknife
 *
 */
public class ServiceStatusUtils {
	/**
	 * 检测服务是否在后台运行
	 * @return
	 */
	public static boolean isServiceRunning(Context context,String serviceName){
		ActivityManager am = (ActivityManager) context
				.getSystemService(Context.ACTIVITY_SERVICE);
		//获取系统所有正在运行的服务,最多一百个
		List<RunningServiceInfo> runningServices = am.getRunningServices(100);
		for (RunningServiceInfo runningServiceInfo : runningServices) {
			String className = runningServiceInfo.service.getClassName();
			//判断服务是否存在
			if(className.equals(serviceName)){
				
				return true;
			}
		}
		
		return false;
		
	}
}
