package com.itheima62.mobileguard.domain;

import android.graphics.drawable.Drawable;

/**
 * 进程的数据封装类
 * @author Administrator
 *
 */
public class TaskBean {
	private boolean isChecked;//是否被选中
	private Drawable icon;//apk的图标
	private String name;//apk的名字
	private String packName;//apk的包名
	private long memSize;//apk占用的内存大小
	private boolean isSystem;//是否系统apk
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
	public boolean isSystem() {
		return isSystem;
	}
	public void setSystem(boolean isSystem) {
		this.isSystem = isSystem;
	}
	public boolean isChecked() {
		return isChecked;
	}
	public void setChecked(boolean isChecked) {
		this.isChecked = isChecked;
	}
	
}
