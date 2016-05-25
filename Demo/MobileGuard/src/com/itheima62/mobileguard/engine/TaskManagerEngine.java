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
 * 获取所有运行中进程的信息
 * 
 * @author Administrator
 * 
 */
public class TaskManagerEngine {

	/**
	 * @return 所有运行中的进程数据
	 */
	public static List<TaskBean> getAllRunningTaskInfos(Context context) {
		List<TaskBean> datas = new ArrayList<TaskBean>();
		// 获取运行中的进程
		ActivityManager am = (ActivityManager) context
				.getSystemService(Context.ACTIVITY_SERVICE);
		// 获取包管理器
		PackageManager pm = context.getPackageManager();
		// 获取运行中的进程
	
			List<RunningAppProcessInfo> runningAppProcesses = am
					.getRunningAppProcesses();
			
			for (RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
				TaskBean bean = new TaskBean();
				// apk的 包名
				String processName = runningAppProcessInfo.processName;// 包名
				// 设置apk的包名
				bean.setPackName(processName);

				// 获取apk的图标和名字

				//有些进程是无名进程
				PackageInfo packageInfo = null;
				try {
					packageInfo = pm.getPackageInfo(processName, 0);
				} catch (NameNotFoundException e) {
					continue;//继续循环 不添加没有名字的进程
					
				}
				//获取apk的图标
				bean.setIcon(packageInfo.applicationInfo.loadIcon(pm));
				//获取apk的名字
				bean.setName(packageInfo.applicationInfo.loadLabel(pm) + "");
				
				if ((packageInfo.applicationInfo.flags & ApplicationInfo.FLAG_SYSTEM) != 0){
					//系统apk
					bean.setSystem(true);
				} else {
					bean.setSystem(false);//用户apk 
				}
				
				//获取占用的内存大小
				
				android.os.Debug.MemoryInfo[] processMemoryInfo = am.getProcessMemoryInfo(new int[]{runningAppProcessInfo.pid});
				//获取占用内存 以byte单位
				long totalPrivateDirty = processMemoryInfo[0].getTotalPrivateDirty() * 1024;// 获取运行中占用的内存
				bean.setMemSize(totalPrivateDirty);
	
				datas.add(bean);// 添加一个进程信息
			} // end for
		

		return datas;
	}

	/**
	 * @return 获取可用内存的大小
	 */
	public static long getAvailMemSize(Context context) {
		long size = 0;
		ActivityManager am = (ActivityManager) context
				.getSystemService(Context.ACTIVITY_SERVICE);

		MemoryInfo outInfo = new MemoryInfo();
		// MemoryInfo 存放内存的信息
		am.getMemoryInfo(outInfo);

		// 把kb 转换成byte
		size = outInfo.availMem;

		return size;
	}

	/**
	 * @return 总内存大小
	 */
	public static long getTotalMemSize(Context context) {
		long size = 0;

		/*
		 * //Activity管理器,获取运行相关信息 ActivityManager am = (ActivityManager)
		 * context.getSystemService(Context.ACTIVITY_SERVICE);
		 * 
		 * MemoryInfo outInfo = new MemoryInfo(); //MemoryInfo 存放内存的信息
		 * am.getMemoryInfo(outInfo ); //获取总内存大小，16级别以上 ,读取内存文件 size =
		 * outInfo.totalMem;
		 */

		// 读取配置文件来获取总内存大小

		File file = new File("/proc/meminfo");
		try {
			BufferedReader reader = new BufferedReader(new InputStreamReader(
					new FileInputStream(file)));
			// //zip流 pipe流

			String totalMemInfo = reader.readLine();

			int startIndex = totalMemInfo.indexOf(':');
			int endIndex = totalMemInfo.indexOf('k');
			// 单位是kb
			totalMemInfo = totalMemInfo.substring(startIndex + 1, endIndex)
					.trim();
			size = Long.parseLong(totalMemInfo);
			size *= 1024;// byte单位
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return size;
	}
}
