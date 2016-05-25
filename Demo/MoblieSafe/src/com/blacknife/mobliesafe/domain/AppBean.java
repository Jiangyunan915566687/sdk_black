package com.blacknife.mobliesafe.domain;

import android.graphics.drawable.Drawable;

/**
 * apk信息封装类
 * @author Blacknife
 *
 */
public class AppBean {
	private Drawable icon;//apk图标
	private String appName;//apk名称
	private long size;//占用的大小单位byte
	private boolean isSD;//是否存储在SD卡
	private boolean isSystem;//是否是系统apk
	private String packName;//apk的包名
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
