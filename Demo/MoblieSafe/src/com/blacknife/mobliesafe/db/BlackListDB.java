package com.blacknife.mobliesafe.db;

import android.content.Context;
import android.database.DatabaseErrorHandler;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabase.CursorFactory;
import android.database.sqlite.SQLiteOpenHelper;
/**
 * 黑名单数据库
 * @author Blacknife
 *
 */
public class BlackListDB extends SQLiteOpenHelper {
	/**
	 * 初始化版本信息
	 * @param context
	 */
	public BlackListDB(Context context) {
		super(context, "blacklist.db", null, 1);
	}
	/**
	 * 只初始化一次
	 */
	@Override
	public void onCreate(SQLiteDatabase db) {
		//创建表
		db.execSQL("create table blacktb(_id integer primary key autoincrement,phone text,mode integer)");
	}
	/**
	 * 检测版本号是否更新
	 */
	@Override
	public void onUpgrade(SQLiteDatabase db, int oldVersion, int newVersion) {
		//版本号发生变化，执行
		//清空数据
		db.execSQL("drop table blacktb");
		onCreate(db);//重新创建表
		
	}

}
