package com.blacknife.mobliesafe.domain;

import android.graphics.drawable.Drawable;

/**
 * apk��Ϣ��װ��
 * @author Blacknife
 *
 */
public class AppBean {
	private Drawable icon;//apkͼ��
	private String appName;//apk����
	private long size;//ռ�õĴ�С��λbyte
	private boolean isSD;//�Ƿ�洢��SD��
	private boolean isSystem;//�Ƿ���ϵͳapk
	private String packName;//apk�İ���
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
	public void setSize(int size) {
		this.size = size;
	}
	public boolean isSD() {
		return isSD;
	}
	public void setSD(boolean isSD) {
		this.isSD = isSD;
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
}
