package com.itheima62.mobileguard.domain;

import android.net.Uri;

/**
 * ���������ݿ� �����ı�ṹ
 * @author Administrator
 *
 */
public interface LockedTable {
	String TABLENAME = "locked";//�������ı���
	String PACKNAME = "packname";//�������������
	Uri uri = Uri.parse("content://itheima62/locked");
	
}
