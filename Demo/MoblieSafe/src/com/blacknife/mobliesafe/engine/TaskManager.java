package com.blacknife.mobliesafe.engine;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.List;

import com.blacknife.mobliesafe.domain.TaskBean;

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
 * @author Blacknife
 *
 */
public class TaskManager {
	/**
	 * ��ȡ�����ڴ�Ĵ�С
	 * 
	 * @param context
	 * @return
	 */
	public static long getAvailMemSize(Context context) {
		long size = 0;
		// activity�Ĺ�����
		ActivityManager am = (ActivityManager) context.getSystemService(Context.ACTIVITY_SERVICE);
		MemoryInfo outInfo = new MemoryInfo();
		// ����ڴ���Ϣ
		am.getMemoryInfo(outInfo);
		// ��ȡ���ڴ��С,api16 ����,��ȡ�ڴ��ļ�
		size = outInfo.availMem * 1024;// ����1024,��kbת�����ֽڵ�λ
		return size;
	}

	/**
	 * ���ڴ�Ĵ�С
	 * 
	 * @return
	 */
	public static long getTotalMemSize(Context context) {
		long size = 0;
		// activity�Ĺ�����
		// ActivityManager am = (ActivityManager)
		// context.getSystemService(Context.ACTIVITY_SERVICE);
		// MemoryInfo outInfo = new MemoryInfo();
		// ����ڴ���Ϣ
		// am.getMemoryInfo(outInfo);
		// ��ȡ���ڴ��С,api16 ����,��ȡ�ڴ��ļ�
		// long totalMem = outInfo.totalMem;

		// ��ȡ�����ļ�����ȡ���ڴ�Ĵ�С
		File file = new File("/proc/meminfo");
		try {
			BufferedReader reader = new BufferedReader(new InputStreamReader(new FileInputStream(file)));
			String totalMemInfo = reader.readLine();
			int startIndex = totalMemInfo.indexOf(':');
			int endIndex = totalMemInfo.indexOf('k');
			totalMemInfo = totalMemInfo.substring(startIndex + 1, endIndex).trim();
			size = Long.parseLong(totalMemInfo);
			size *= 1024;// ת��Ϊbype��λ

		} catch (FileNotFoundException e) {
			// TODO �Զ����ɵ� catch ��
			e.printStackTrace();
		} catch (IOException e) {
			// TODO �Զ����ɵ� catch ��
			e.printStackTrace();
		}
		return size;
	}

	/**
	 * ��ȡ�ֻ����ܽ��̸���,�Լ������е�����
	 */
	public static List<TaskBean> getAllRunningTaskInfos(Context context) {
		List<TaskBean> datas = new ArrayList<TaskBean>();

		// ��ȡ�����еĽ���
		ActivityManager am = (ActivityManager) context.getSystemService(Context.ACTIVITY_SERVICE);
		PackageManager pm = context.getPackageManager();
		try {
			List<RunningAppProcessInfo> runningAppProcess = am.getRunningAppProcesses();
			for (RunningAppProcessInfo runningAppProcessInfo : runningAppProcess) {
				TaskBean bean = new TaskBean();
				String processName = runningAppProcessInfo.processName;// ����
				bean.setPackName(processName);// apk����
				PackageInfo packageInfo;
				packageInfo = pm.getPackageInfo(processName, 0);
				bean.setIcon(packageInfo.applicationInfo.loadIcon(pm));
				bean.setName(packageInfo.applicationInfo.loadLabel(pm) + "");
				if ((packageInfo.applicationInfo.flags & ApplicationInfo.FLAG_SYSTEM) != 0) {
					bean.setSystem(true);//ϵͳapk
				} else {
					bean.setSystem(false);//�û�apk
				}
				android.os.Debug.MemoryInfo[] processMemoryInfo = am.getProcessMemoryInfo(new int[]{runningAppProcessInfo.pid});
				//��ȡռ�õ��ڴ��С,��BYPEΪ��λ
				long totalPrivateDirty = processMemoryInfo[0].getTotalPrivateDirty() * 1024;//��ȡ������ռ�õ��ڴ�
				bean.setMemSize(totalPrivateDirty);
				datas.add(bean);
			}
		} catch (NameNotFoundException e) {
			e.printStackTrace();
		}
		return datas;
	}
}
