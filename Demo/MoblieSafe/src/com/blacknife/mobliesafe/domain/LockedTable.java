package com.blacknife.mobliesafe.domain;

import android.net.Uri;

public interface LockedTable {
	String TABLENAME = "locked";//�������ı���
	String PACKNAME = "packname";//������������
	Uri uri = Uri.parse("content://mobliesafe/locked");
}
