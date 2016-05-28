package com.black.studycode.db;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabase.CursorFactory;
import android.database.sqlite.SQLiteOpenHelper;

public class SQLiteOpenHelperTest extends SQLiteOpenHelper {

	public SQLiteOpenHelperTest(Context context, String name,
			CursorFactory factory, int version) {
		super(context, name, factory, version);
	}
	
	@Override
	public void onCreate(SQLiteDatabase db) {
		String sql = "create table dbtest(_id integer primary key autoincrement,name text)";
		db.execSQL(sql);
	}

	@Override
	public void onUpgrade(SQLiteDatabase db, int oldVersion, int newVersion) {
		String sql = "drop table dbtest";
		db.execSQL(sql);
	}

}
