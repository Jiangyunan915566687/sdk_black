package com.itheima62.mobileguard.db;

import android.content.Context;
import android.database.DatabaseErrorHandler;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabase.CursorFactory;
import android.database.sqlite.SQLiteOpenHelper;

/**
 * @author Administrator
 * 黑名单数据库
 */
public class BlackDB extends SQLiteOpenHelper {

	/**
	 * 初始版本信息
	 * @param context
	 */
	public BlackDB(Context context) {
		//Context context 上下文   			String name 数据库名称(带后缀)
		//CursorFactory factory 游标工厂		int version 数据库版本
		super(context, "black.db", null, 2);
	}
	@Override
	public void onCreate(SQLiteDatabase db) {
		//只初始一次,首次创建数据库才会主动调用
		//创建表
		db.execSQL("create table blacktb(_id integer primary key autoincrement,phone text,mode integer)");
	}
	@Override
	public void onUpgrade(SQLiteDatabase db, int oldVersion, int newVersion) {
		//版本号发生变化，执行此方法
		db.execSQL("drop table blacktb");	//清空数据
		onCreate(db);
	}

}
