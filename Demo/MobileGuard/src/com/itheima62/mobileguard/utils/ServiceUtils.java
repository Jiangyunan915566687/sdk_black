package com.itheima62.mobileguard.utils;

import java.util.List;

import android.app.ActivityManager;
import android.app.ActivityManager.RunningServiceInfo;
import android.content.Context;

/**
 * @author Administrator
 * �жϷ����״̬
 */
public class ServiceUtils {
	/**
	 * @param context
	 * @param serviceName
	 *       service���������� ����+����
	 * @return
	 *     ��servcie�Ƿ�������
	 */
	public static boolean isServiceRunning(Context context,String serviceName){
		boolean isRunning = false;
		
		//�ж������еķ���״̬��ActivityManager
		ActivityManager am = (ActivityManager) context.getSystemService(Context.ACTIVITY_SERVICE);
		//��ȡandroid�ֻ������е����з���
		List<RunningServiceInfo> runningServices = am.getRunningServices(50);
		
		for (RunningServiceInfo runningServiceInfo : runningServices) {
			//System.out.println(runningServiceInfo.service.getClassName());
			//�жϷ���������Ƿ��������ָ���ķ�����
			if (runningServiceInfo.service.getClassName().equals(serviceName)){
				//����һֱ���÷����������� 
				isRunning = true;
				//�Ѿ��ҵ� �˳�ѭ��
				break;
			}
		}
		return isRunning;
	}
}
