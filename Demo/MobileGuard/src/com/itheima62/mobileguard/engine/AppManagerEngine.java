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
 * ��ȡ���а�װ��apk��ϸ��Ϣ
 * @author Administrator
 *
 */
public class AppManagerEngine {
	
	/**
	 * @return
	 *     ����sd�Ŀ��ÿռ�,��λ byte
	 */
	public static long getSDAvail(Context context){
		long sdAvail = 0;
		//��ȡsd����Ŀ¼
		File externalStorageDirectory = Environment.getExternalStorageDirectory();
		
		sdAvail = externalStorageDirectory.getFreeSpace();
		return sdAvail;
	}
	
	/**
	 * @return
	 *     �����ֻ�ʣ��ռ�
	 */
	public static long getRomAvail(){
		long romAvail = 0;
		File dataDirectory = Environment.getDataDirectory();
		romAvail = dataDirectory.getFreeSpace();
		return romAvail;
	}
	
	/**
	 * @return
	 *    ���а�װ��apk��Ϣ
	 */
	public static List<AppBean> getAllApks(Context context){
		//��ȡ���а�װ��apk����
		List<AppBean> apks = new ArrayList<AppBean>();
		
		//��ȡ��������
		PackageManager pm = context.getPackageManager();
		
		//���а�װ��apk
		List<PackageInfo> installedPackages = pm.getInstalledPackages(0);
		for (PackageInfo packageInfo : installedPackages) {
			AppBean bean = new AppBean();
			
			//����apk������
			bean.setAppName(packageInfo.applicationInfo.loadLabel(pm) +"");
			//����apk�İ���
			bean.setPackName(packageInfo.packageName);
			//����apk��ͼ��
			bean.setIcon(packageInfo.applicationInfo.loadIcon(pm));
			String sourceDir = packageInfo.applicationInfo.sourceDir;
			File file = new File(sourceDir);
			//apk�Ĵ�С
			bean.setSize(file.length());
			
			//��ȡ��ǰapk��flag����
			int flag = packageInfo.applicationInfo.flags;
			
			//�Ƿ���ϵͳapk
			if ((flag & ApplicationInfo.FLAG_SYSTEM) != 0) {
				//ϵͳapk
				bean.setSystem(true);//ϵͳapk�ı��
			} else {
				bean.setSystem(false);//�û�apk
			}
			
			//��װ��λ��
			if ((flag & ApplicationInfo.FLAG_EXTERNAL_STORAGE) != 0) {
				//��װ��sd���е�apk
				bean.setSd(true);//��sd�еı��
			} else {
				bean.setSd(false);//rom�еı��apk
			}
			
			
			//���apk��·��
			bean.setApkPath(packageInfo.applicationInfo.sourceDir);
			
			//���app��uid
			bean.setUid(packageInfo.applicationInfo.uid);
			//���һ��apk��Ϣ
			apks.add(bean);
		}
		
		return apks;
	}
	
	
}
