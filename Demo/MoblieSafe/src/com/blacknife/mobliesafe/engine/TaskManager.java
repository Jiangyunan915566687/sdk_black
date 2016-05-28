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
 * 获取所有运行中进程的信息
 * 
 * @author Blacknife
 *
 */
public class TaskManager {
	/**
	 * 获取可用内存的大小
	 * 
	 * @param context
	 * @return
	 */
	public static long getAvailMemSize(Context context) {
		long size = 0;
		// activity的管理器
		ActivityManager am = (ActivityManager) context.getSystemService(Context.ACTIVITY_SERVICE);
		MemoryInfo outInfo = new MemoryInfo();
		// 存放内存信息
		am.getMemoryInfo(outInfo);
		// 获取总内存大小,api16 以上,读取内存文件
		size = outInfo.availMem * 1024;// 乘于1024,把kb转换成字节单位
		return size;
	}

	/**
	 * 总内存的大小
	 * 
	 * @return
	 */
	public static long getTotalMemSize(Context context) {
		long size = 0;
		// activity的管理器
		// ActivityManager am = (ActivityManager)
		// context.getSystemService(Context.ACTIVITY_SERVICE);
		// MemoryInfo outInfo = new MemoryInfo();
		// 存放内存信息
		// am.getMemoryInfo(outInfo);
		// 获取总内存大小,api16 以上,读取内存文件
		// long totalMem = outInfo.totalMem;

		// 读取配置文件来获取总内存的大小
		File file = new File("/proc/meminfo");
		try {
			BufferedReader reader = new BufferedReader(new InputStreamReader(new FileInputStream(file)));
			String totalMemInfo = reader.readLine();
			int startIndex = totalMemInfo.indexOf(':');
			int endIndex = totalMemInfo.indexOf('k');
			totalMemInfo = totalMemInfo.substring(startIndex + 1, endIndex).trim();
			size = Long.parseLong(totalMemInfo);
			size *= 1024;// 转换为bype单位

		} catch (FileNotFoundException e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
		} catch (IOException e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
		}
		return size;
	}

	/**
	 * 获取手机内总进程个数,以及运行中的数据
	 */
	public static List<TaskBean> getAllRunningTaskInfos(Context context) {
		List<TaskBean> datas = new ArrayList<TaskBean>();

		// 获取运行中的进程
		ActivityManager am = (ActivityManager) context.getSystemService(Context.ACTIVITY_SERVICE);
		PackageManager pm = context.getPackageManager();
		try {
			List<RunningAppProcessInfo> runningAppProcess = am.getRunningAppProcesses();
			for (RunningAppProcessInfo runningAppProcessInfo : runningAppProcess) {
				TaskBean bean = new TaskBean();
				String processName = runningAppProcessInfo.processName;// 包名
				bean.setPackName(processName);// apk包名
				PackageInfo packageInfo;
				packageInfo = pm.getPackageInfo(processName, 0);
				bean.setIcon(packageInfo.applicationInfo.loadIcon(pm));
				bean.setName(packageInfo.applicationInfo.loadLabel(pm) + "");
				if ((packageInfo.applicationInfo.flags & ApplicationInfo.FLAG_SYSTEM) != 0) {
					bean.setSystem(true);//系统apk
				} else {
					bean.setSystem(false);//用户apk
				}
				android.os.Debug.MemoryInfo[] processMemoryInfo = am.getProcessMemoryInfo(new int[]{runningAppProcessInfo.pid});
				//获取占用的内存大小,以BYPE为单位
				long totalPrivateDirty = processMemoryInfo[0].getTotalPrivateDirty() * 1024;//获取运行中占用的内存
				bean.setMemSize(totalPrivateDirty);
				datas.add(bean);
			}
		} catch (NameNotFoundException e) {
			e.printStackTrace();
		}
		return datas;
	}
}
