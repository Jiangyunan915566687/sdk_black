package com.itheima62.mobileguard.engine;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Environment;

import com.itheima62.mobileguard.domain.AppBean;

/**
 * 获取所有安装的apk详细信息
 * @author Administrator
 *
 */
public class AppManagerEngine {
	
	/**
	 * @return
	 *     返回sd的可用空间,单位 byte
	 */
	public static long getSDAvail(Context context){
		long sdAvail = 0;
		//获取sd卡的目录
		File externalStorageDirectory = Environment.getExternalStorageDirectory();
		
		sdAvail = externalStorageDirectory.getFreeSpace();
		return sdAvail;
	}
	
	/**
	 * @return
	 *     返回手机剩余空间
	 */
	public static long getRomAvail(){
		long romAvail = 0;
		File dataDirectory = Environment.getDataDirectory();
		romAvail = dataDirectory.getFreeSpace();
		return romAvail;
	}
	
	/**
	 * @return
	 *    所有安装的apk信息
	 */
	public static List<AppBean> getAllApks(Context context){
		//获取所有安装的apk数据
		List<AppBean> apks = new ArrayList<AppBean>();
		
		//获取包管理器
		PackageManager pm = context.getPackageManager();
		
		//所有安装的apk
		List<PackageInfo> installedPackages = pm.getInstalledPackages(0);
		for (PackageInfo packageInfo : installedPackages) {
			AppBean bean = new AppBean();
			
			//设置apk的名字
			bean.setAppName(packageInfo.applicationInfo.loadLabel(pm) +"");
			//设置apk的包名
			bean.setPackName(packageInfo.packageName);
			//设置apk的图标
			bean.setIcon(packageInfo.applicationInfo.loadIcon(pm));
			String sourceDir = packageInfo.applicationInfo.sourceDir;
			File file = new File(sourceDir);
			//apk的大小
			bean.setSize(file.length());
			
			//获取当前apk的flag属性
			int flag = packageInfo.applicationInfo.flags;
			
			//是否是系统apk
			if ((flag & ApplicationInfo.FLAG_SYSTEM) != 0) {
				//系统apk
				bean.setSystem(true);//系统apk的标记
			} else {
				bean.setSystem(false);//用户apk
			}
			
			//安装的位置
			if ((flag & ApplicationInfo.FLAG_EXTERNAL_STORAGE) != 0) {
				//安装在sd卡中的apk
				bean.setSd(true);//中sd中的标记
			} else {
				bean.setSd(false);//rom中的标记apk
			}
			
			
			//添加apk的路径
			bean.setApkPath(packageInfo.applicationInfo.sourceDir);
			
			//添加app的uid
			bean.setUid(packageInfo.applicationInfo.uid);
			//添加一个apk信息
			apks.add(bean);
		}
		
		return apks;
	}
	
	
}
