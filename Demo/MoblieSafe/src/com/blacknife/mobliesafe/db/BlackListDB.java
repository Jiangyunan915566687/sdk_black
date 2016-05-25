package com.blacknife.mobliesafe.db;

import android.content.Context;
import android.database.DatabaseErrorHandler;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabase.CursorFactory;
import android.database.sqlite.SQLiteOpenHelper;
/**
 * ���������ݿ�
 * @author Blacknife
 *
 */
public class BlackListDB extends SQLiteOpenHelper {
	/**
	 * ��ʼ���汾��Ϣ
	 * @param context
	 */
	public BlackListDB(Context context) {
		super(context, "blacklist.db", null, 1);
	}
	/**
	 * ֻ��ʼ��һ��
	 */
	@Override
	public void onCreate(SQLiteDatabase db) {
		//������
		db.execSQL("create table blacktb(_id integer primary key autoincrement,phone text,mode integer)");
	}
	/**
	 * ���汾���Ƿ����
	 */
	@Override
	public void onUpgrade(SQLiteDatabase db, int oldVersion, int newVersion) {
		//�汾�ŷ����仯��ִ��
		//�������
		db.execSQL("drop table blacktb");
		onCreate(db);//���´�����
		
	}

}
