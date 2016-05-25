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
 * ��ȡ���а�װapk����ϸ��װ��Ϣ
 * @author Blacknife
 *
 */
public class AppManagerEngine {
	/**
	 * ����sd���Ŀ��ÿռ�,��λ���ֽ�
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
	 * �����ֻ�ʣ��ռ�
	 */
	public static long getRomAvail(Context context){
		long romAvail = 0;
		File dataDirectory = Environment.getDataDirectory();
		romAvail = dataDirectory.getFreeSpace();
		return romAvail;		
	}
	/**
	 * �������а�װ��apk��װ��Ϣ
	 */
	public static List<AppBean> getAllApks(Context context){
		//��ȡ���еİ�װ��apk����
		List<AppBean> apks = new ArrayList<AppBean>();
		//��ȡ���Ĺ�����
		PackageManager pm = context.getPackageManager();
		//����apk��Ϣ
		List<PackageInfo> installedPackages = pm.getInstalledPackages(0);
		for (PackageInfo packgeInfo : installedPackages){
			AppBean bean = new AppBean();
			bean.setAppName(packgeInfo.applicationInfo.loadLabel(pm)+"");
			bean.setPackName(packgeInfo.packageName);
			bean.setIcon(packgeInfo.applicationInfo.loadIcon(pm));
			String sourceDir = packgeInfo.applicationInfo.sourceDir;
			File file = new File(sourceDir);
			//apk�Ĵ�С
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
