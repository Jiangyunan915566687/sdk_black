package com.itheima62.mobileguard.domain;

import android.graphics.drawable.Drawable;

/**
 * apk��Ϣ��װ��
 * @author Administrator
 *
 */
public class AppBean {
	private int uid;
	private String apkPath;//apk��װ·��
	
	private Drawable icon; //apk��ͼ��
	private String appName;//apk������
	private long  size;//ռ�õĴ�С ��λbyte
	private boolean isSd;//�Ƿ����sd��
	
	private boolean isSystem;//�Ƿ���ϵͳapk
	private String  packName;//apk�İ���
	public Drawable getIcon() {
		return icon;
	}
	public void setIcon(Drawable icon) {
		this.icon = icon;
	}
	public String getAppName() {
		return appName;
	}
	public void setAppName(String appName) {
		this.appName = appName;
	}
	public long getSize() {
		return size;
	}
	public void setSize(long size) {
		this.size = size;
	}
	public boolean isSd() {
		return isSd;
	}
	public void setSd(boolean isSd) {
		this.isSd = isSd;
	}
	public boolean isSystem() {
		return isSystem;
	}
	public void setSystem(boolean isSystem) {
		this.isSystem = isSystem;
	}
	public String getPackName() {
		return packName;
	}
	public void setPackName(String packName) {
		this.packName = packName;
	}
	public String getApkPath() {
		return apkPath;
	}
	public void setApkPath(String apkPath) {
		this.apkPath = apkPath;
	}
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	
}
