package com.blacknife.mobliesafe.db;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabase.CursorFactory;
import android.database.sqlite.SQLiteOpenHelper;

public class LockedDB extends SQLiteOpenHelper {

	public LockedDB(Context context) {
		super(context, "locked.db", null, 2);
		// TODO Auto-generated constructor stub
	}

	@Override
	public void onCreate(SQLiteDatabase db) {
		String sql = "create table locked(_id integer primary key autoincrement,packname text)";
		//String sqi = "create table locked(_id integer primary key autoincrement,packname text)";
		db.execSQL(sql);//������
	}

	@Override
	public void onUpgrade(SQLiteDatabase db, int newVersion, int oldVersion) {
		String sql = "drop table locked";
		db.execSQL(sql);	//ɾ���Ѵ��ڵı�
		onCreate(db);		//���´�����
	}

}
