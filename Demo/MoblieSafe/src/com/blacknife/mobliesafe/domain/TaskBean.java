package com.blacknife.mobliesafe.domain;

import android.graphics.drawable.Drawable;

/**
 * 进程数据的封装类
 * @author Blacknife
 *
 */
public class TaskBean {
	private Drawable icon;//apk的图标
	private String name;//apk的名字
	private String packName;//apk的包名
	private long memSize;//apk运行占用内存的大小
	private boolean isSystem;//是否是系统apk;
	public boolean isSystem() {
		return isSystem;
	}
	public void setSystem(boolean isSystem) {
		this.isSystem = isSystem;
	}
	public Drawable getIcon() {
		return icon;
	}
	public void setIcon(Drawable icon) {
		this.icon = icon;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPackName() {
		return packName;
	}
	public void setPackName(String packName) {
		this.packName = packName;
	}
	public long getMemSize() {
		return memSize;
	}
	public void setMemSize(long memSize) {
		this.memSize = memSize;
	}
}
