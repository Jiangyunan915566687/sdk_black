package com.itheima62.mobileguard.domain;

import android.net.Uri;

/**
 * 程序锁数据库 加锁的表结构
 * @author Administrator
 *
 */
public interface LockedTable {
	String TABLENAME = "locked";//程序锁的表名
	String PACKNAME = "packname";//程序锁表的列名
	Uri uri = Uri.parse("content://itheima62/locked");
	
}
