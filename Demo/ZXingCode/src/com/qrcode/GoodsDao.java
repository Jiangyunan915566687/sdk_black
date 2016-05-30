package com.qrcode;

import android.content.ContentValues;
import android.content.Context;
import android.database.sqlite.SQLiteDatabase;

public class GoodsDao {
	private GoodsDB goodsDB;
	private static final String NAME = "name";
	private static final String MONEY = "money";
	private static final String DBTABLE = "moneytable";
	public GoodsDao(Context context) {
		this.goodsDB = new GoodsDB(context);
	}
	/**
	 * 
	 * @param name
	 * @param money
	 */
	public void add(String name , int money){
		SQLiteDatabase db = goodsDB.getWritableDatabase();
		ContentValues values = new ContentValues();
		values.put(NAME,name);
		values.put(MONEY,money);
		//往moneytable表中插入一条记录
		db.insert(DBTABLE, null, values);
		db.close();
	}
}
