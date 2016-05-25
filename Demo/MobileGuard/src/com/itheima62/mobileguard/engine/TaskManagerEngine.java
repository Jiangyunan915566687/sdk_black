package com.itheima62.mobileguard.engine;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.List;

import com.itheima62.mobileguard.domain.TaskBean;

import android.app.ActivityManager;
import android.app.ActivityManager.MemoryInfo;
import android.app.ActivityManager.RunningAppProcessInfo;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;

/**
 * ��ȡ���������н��̵���Ϣ
 * 
 * @author Administrator
 * 
 */
public class TaskManagerEngine {

	/**
	 * @return ���������еĽ�������
	 */
	public static List<TaskBean> getAllRunningTaskInfos(Context context) {
		List<TaskBean> datas = new ArrayList<TaskBean>();
		// ��ȡ�����еĽ���
		ActivityManager am = (ActivityManager) context
				.getSystemService(Context.ACTIVITY_SERVICE);
		// ��ȡ��������
		PackageManager pm = context.getPackageManager();
		// ��ȡ�����еĽ���
	
			List<RunningAppProcessInfo> runningAppProcesses = am
					.getRunningAppProcesses();
			
			for (RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
				TaskBean bean = new TaskBean();
				// apk�� ����
				String processName = runningAppProcessInfo.processName;// ����
				// ����apk�İ���
				bean.setPackName(processName);

				// ��ȡapk��ͼ�������

				//��Щ��������������
				PackageInfo packageInfo = null;
				try {
					packageInfo = pm.getPackageInfo(processName, 0);
				} catch (NameNotFoundException e) {
					continue;//����ѭ�� �����û�����ֵĽ���
					
				}
				//��ȡapk��ͼ��
				bean.setIcon(packageInfo.applicationInfo.loadIcon(pm));
				//��ȡapk������
				bean.setName(packageInfo.applicationInfo.loadLabel(pm) + "");
				
				if ((packageInfo.applicationInfo.flags & ApplicationInfo.FLAG_SYSTEM) != 0){
					//ϵͳapk
					bean.setSystem(true);
				} else {
					bean.setSystem(false);//�û�apk 
				}
				
				//��ȡռ�õ��ڴ��С
				
				android.os.Debug.MemoryInfo[] processMemoryInfo = am.getProcessMemoryInfo(new int[]{runningAppProcessInfo.pid});
				//��ȡռ���ڴ� ��byte��λ
				long totalPrivateDirty = processMemoryInfo[0].getTotalPrivateDirty() * 1024;// ��ȡ������ռ�õ��ڴ�
				bean.setMemSize(totalPrivateDirty);
	
				datas.add(bean);// ���һ��������Ϣ
			} // end for
		

		return datas;
	}

	/**
	 * @return ��ȡ�����ڴ�Ĵ�С
	 */
	public static long getAvailMemSize(Context context) {
		long size = 0;
		ActivityManager am = (ActivityManager) context
				.getSystemService(Context.ACTIVITY_SERVICE);

		MemoryInfo outInfo = new MemoryInfo();
		// MemoryInfo ����ڴ����Ϣ
		am.getMemoryInfo(outInfo);

		// ��kb ת����byte
		size = outInfo.availMem;

		return size;
	}

	/**
	 * @return ���ڴ��С
	 */
	public static long getTotalMemSize(Context context) {
		long size = 0;

		/*
		 * //Activity������,��ȡ���������Ϣ ActivityManager am = (ActivityManager)
		 * context.getSystemService(Context.ACTIVITY_SERVICE);
		 * 
		 * MemoryInfo outInfo = new MemoryInfo(); //MemoryInfo ����ڴ����Ϣ
		 * am.getMemoryInfo(outInfo ); //��ȡ���ڴ��С��16�������� ,��ȡ�ڴ��ļ� size =
		 * outInfo.totalMem;
		 */

		// ��ȡ�����ļ�����ȡ���ڴ��С

		File file = new File("/proc/meminfo");
		try {
			BufferedReader reader = new BufferedReader(new InputStreamReader(
					new FileInputStream(file)));
			// //zip�� pipe��

			String totalMemInfo = reader.readLine();

			int startIndex = totalMemInfo.indexOf(':');
			int endIndex = totalMemInfo.indexOf('k');
			// ��λ��kb
			totalMemInfo = totalMemInfo.substring(startIndex + 1, endIndex)
					.trim();
			size = Long.parseLong(totalMemInfo);
			size *= 1024;// byte��λ
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return size;
	}
}
