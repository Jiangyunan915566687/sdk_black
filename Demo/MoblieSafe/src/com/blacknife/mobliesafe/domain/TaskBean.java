package com.blacknife.mobliesafe.domain;

import android.graphics.drawable.Drawable;

/**
 * �������ݵķ�װ��
 * @author Blacknife
 *
 */
public class TaskBean {
	private Drawable icon;//apk��ͼ��
	private String name;//apk������
	private String packName;//apk�İ���
	private long memSize;//apk����ռ���ڴ�Ĵ�С
	private boolean isSystem;//�Ƿ���ϵͳapk;
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
