package com.yayawan.impl;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabase.CursorFactory;
import android.database.sqlite.SQLiteOpenHelper;

public class UserTimeDB extends SQLiteOpenHelper {

	public UserTimeDB(Context context) {
		super(context, "usertime", null, 1);
	}

	@Override
	public void onCreate(SQLiteDatabase db) {
		//String sql = 
		//db.execSQL(sql);
	}

	@Override
	public void onUpgrade(SQLiteDatabase db, int oldVersion, int newVersion) {
		// TODO Auto-generated method stub

	}

}
