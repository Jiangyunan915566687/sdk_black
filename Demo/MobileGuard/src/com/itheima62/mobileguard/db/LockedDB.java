package com.itheima62.mobileguard.db;

import com.itheima62.mobileguard.dao.LockedDao;
import com.itheima62.mobileguard.domain.LockedTable;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabase.CursorFactory;
import android.database.sqlite.SQLiteOpenHelper;

/**
 * ���������������ݿ� ,��һ�ű��ñ��һ���� packname
 * @author Administrator
 *
 */
public class LockedDB extends SQLiteOpenHelper {

	public LockedDB(Context context) {
		super(context, "locked.db", null, 2);
	}

	@Override
	public void onCreate(SQLiteDatabase db) {
		//���������ı�
		db.execSQL("create table locked(_id integer primary key autoincrement,packname text)");
	}

	@Override
	public void onUpgrade(SQLiteDatabase db, int oldVersion, int newVersion) {
		//ɾ���Ѵ��ڵı�
		db.execSQL("drop table locked");
		onCreate(db);//���´�����
	}

}
