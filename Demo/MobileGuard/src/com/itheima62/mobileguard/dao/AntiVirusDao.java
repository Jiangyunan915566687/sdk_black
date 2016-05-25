package com.itheima62.mobileguard.dao;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.widget.SlidingDrawer;

/**
 * ������ҵ����
 * @author Administrator
 *
 */
public class AntiVirusDao {
	
	/**
	 * @param version
	 *     ���ݵķ������Ĳ�����汾
	 * @return
	 *    ������汾�Ƿ�һ��
	 */
	public static boolean isNewVirus(int version){
		boolean res = false;
		SQLiteDatabase database = SQLiteDatabase.openDatabase(
				"/data/data/com.itheima62.mobileguard/files/antivirus.db", null,
				SQLiteDatabase.OPEN_READWRITE);
		Cursor cursor = database.rawQuery("select 1 from version where subcnt=?", new String[]{version+""});
		if (cursor.moveToNext()) {
			res = true;
		}
		cursor.close();
		database.close();
		return res;
	}
	/**
	 * @param md5   �����ļ���md5
	 *        desc  ������������Ϣ
	 *     
	 */
	public static void addVirus(String md5,String desc){
		//��ȡ���ݿ� /data/data/com.ith
		SQLiteDatabase database = SQLiteDatabase.openDatabase(
				"/data/data/com.itheima62.mobileguard/files/antivirus.db", null,
				SQLiteDatabase.OPEN_READWRITE);
		ContentValues values = new ContentValues();
		values.put("md5", md5);
		values.put("type", 6);
		values.put("name", "Android.Hack.CarrierIQ.a");
		values.put("desc", desc);
		database.insert("datable", null, values);
		database.close();
	}
	
	/**
	 * @param md5
	 *      �ļ���md5ֵ
	 * @return
	 *      �Ƿ��ǲ����ļ�
	 */
	public static boolean isVirus(String md5){
		boolean res = false;
		SQLiteDatabase database = SQLiteDatabase.openDatabase(
				"/data/data/com.itheima62.mobileguard/files/antivirus.db", null,
				SQLiteDatabase.OPEN_READWRITE);
		Cursor cursor = database.rawQuery("select 1 from datable where md5=?", new String[]{md5});
		if (cursor.moveToNext()) {
			res = true;
		}
		cursor.close();
		database.close();
		return res;
	}
}
