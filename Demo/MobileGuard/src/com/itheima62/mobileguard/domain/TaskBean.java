package com.itheima62.mobileguard.domain;

import android.graphics.drawable.Drawable;

/**
 * ���̵����ݷ�װ��
 * @author Administrator
 *
 */
public class TaskBean {
	private boolean isChecked;//�Ƿ�ѡ��
	private Drawable icon;//apk��ͼ��
	private String name;//apk������
	private String packName;//apk�İ���
	private long memSize;//apkռ�õ��ڴ��С
	private boolean isSystem;//�Ƿ�ϵͳapk
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
