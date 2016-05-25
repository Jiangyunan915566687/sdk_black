package com.blacknife.mobliesafe.domain;

import android.net.Uri;

public interface LockedTable {
	String TABLENAME = "locked";//程序锁的表名
	String PACKNAME = "packname";//程序锁的列名
	Uri uri = Uri.parse("content://mobliesafe/locked");
}
