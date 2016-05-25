package com.blacknife.mobliesafe.engine;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import com.blacknife.mobliesafe.domain.AppBean;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Environment;

/**
 * 获取所有安装apk的详细安装信息
 * @author Blacknife
 *
 */
public class AppManagerEngine {
	/**
	 * 返回sd卡的可用空间,单位是字节
	 * @param context
	 * @return
	 */
	public static long getSDAvail(Context context){
		long sdAvail = 0;
		File externalStorageDirectory = Environment.getExternalStorageDirectory();
		sdAvail = externalStorageDirectory.getFreeSpace();
		return sdAvail;		
	}
	/**
	 * 返回手机剩余空间
	 */
	public static long getRomAvail(Context context){
		long romAvail = 0;
		File dataDirectory = Environment.getDataDirectory();
		romAvail = dataDirectory.getFreeSpace();
		return romAvail;		
	}
	/**
	 * 返回所有安装的apk安装信息
	 */
	public static List<AppBean> getAllApks(Context context){
		//获取所有的安装的apk数据
		List<AppBean> apks = new ArrayList<AppBean>();
		//获取包的管理器
		PackageManager pm = context.getPackageManager();
		//所有apk信息
		List<PackageInfo> installedPackages = pm.getInstalledPackages(0);
		for (PackageInfo packgeInfo : installedPackages){
			AppBean bean = new AppBean();
			bean.setAppName(packgeInfo.applicationInfo.loadLabel(pm)+"");
			bean.setPackName(packgeInfo.packageName);
			bean.setIcon(packgeInfo.applicationInfo.loadIcon(pm));
			String sourceDir = packgeInfo.applicationInfo.sourceDir;
			File file = new File(sourceDir);
			//apk的大小
			bean.setSize(sourceDir.length());
			int flag = packgeInfo.applicationInfo.flags;
			if((flag & ApplicationInfo.FLAG_SYSTEM) != 0){
				bean.setSystem(true);				
			}else{
				bean.setSystem(false);
			}
			if((flag & ApplicationInfo.FLAG_EXTERNAL_STORAGE) != 0){
				bean.setSD(true);
			}else{
				bean.setSD(false);//rom apk
			}
			apks.add(bean);
		}
		return apks;
		
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
