package com.itheima62.mobileguard.dao;

import java.util.ArrayList;
import java.util.List;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;

import com.itheima62.mobileguard.db.LockedDB;
import com.itheima62.mobileguard.domain.LockedTable;

/**
 * �����������ݴ�ȡ��
 * 
 * @author Administrator
 * 
 */
public class LockedDao {
	private LockedDB lockdb;
	private Context context;

	public LockedDao(Context context) {
		this.context = context;
		lockdb = new LockedDB(context);
	}

	/**
	 * @param packName
	 *            app �İ���
	 * @return �Ƿ��Ǽ�����
	 */
	public boolean isLocked(String packName) {
		boolean res = false;
		SQLiteDatabase database = lockdb.getReadableDatabase();
		Cursor cursor = database.rawQuery("select 1 from "
				+ LockedTable.TABLENAME + " where " + LockedTable.PACKNAME
				+ "=?", new String[] { packName });
		if (cursor.moveToNext()) {
			res = true;
		}

		cursor.close();
		database.close();
		return res;
	}

	/**
	 * @param packName
	 *            Ҫ������app�İ���
	 */
	public void add(String packName) {
		SQLiteDatabase database = lockdb.getWritableDatabase();
		// �����еķ�װ
		ContentValues values = new ContentValues();
		values.put(LockedTable.PACKNAME, packName);

		// ���������һ����¼
		database.insert(LockedTable.TABLENAME, null, values);

		database.close();// �ر����ݿ�
		// �������ݹ۲��ߵ�֪ͨ
		context.getContentResolver().notifyChange(LockedTable.uri, null);
	}

	/**
	 * @return ��ȡ���м�����app����
	 */
	public List<String> getAllLockedDatas() {

		List<String> lockedNames = new ArrayList<String>();
		SQLiteDatabase database = lockdb.getReadableDatabase();
		// ȡ�����еİ���
		Cursor cursor = database.rawQuery("select " + LockedTable.PACKNAME
				+ " from " + LockedTable.TABLENAME, null);
		while (cursor.moveToNext()) {
			// ȡ������
			lockedNames.add(cursor.getString(0));
		}
		cursor.close();
		database.close();

		return lockedNames;
	}

	/**
	 * @param packName
	 *            Ҫ���������app����
	 */
	public void remove(String packName) {
		SQLiteDatabase database = lockdb.getWritableDatabase();
		// ����ɾ��һ������
		database.delete(LockedTable.TABLENAME, LockedTable.PACKNAME + "=?",
				new String[] { packName });

		database.close();// �ر����ݿ�

		// �������ݹ۲��ߵ�֪ͨ
		context.getContentResolver().notifyChange(LockedTable.uri, null);
	}
}
