package com.blacknife.mobliesafe.utils;

import java.util.List;

import android.app.ActivityManager;
import android.app.ActivityManager.RunningServiceInfo;
import android.content.Context;

/**
 * ����״̬������
 * @author Blacknife
 *
 */
public class ServiceStatusUtils {
	/**
	 * �������Ƿ��ں�̨����
	 * @return
	 */
	public static boolean isServiceRunning(Context context,String serviceName){
		ActivityManager am = (ActivityManager) context
				.getSystemService(Context.ACTIVITY_SERVICE);
		//��ȡϵͳ�����������еķ���,���һ�ٸ�
		List<RunningServiceInfo> runningServices = am.getRunningServices(100);
		for (RunningServiceInfo runningServiceInfo : runningServices) {
			String className = runningServiceInfo.service.getClassName();
			//�жϷ����Ƿ����
			if(className.equals(serviceName)){
				
				return true;
			}
		}
		
		return false;
		
	}
}
