package com.itheima62.mobileguard.dao;

import java.util.ArrayList;
import java.util.List;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;

import com.itheima62.mobileguard.db.BlackDB;
import com.itheima62.mobileguard.domain.BlackBean;
import com.itheima62.mobileguard.domain.BlackTable;

/**
 * @author Administrator ���������ݵ�ҵ���װ��
 */
public class BlackDao {
	private BlackDB blackDB;

	
	
	public BlackDao(Context context) {
		this.blackDB = new BlackDB(context);
	}

	/**
	 * @param phone
	 *            �绰����
	 * @return ����ģʽ : 1 ���� 2 �绰 3 ȫ�� 0 ������
	 */
	public int getMode(String phone) {
		SQLiteDatabase database = blackDB.getReadableDatabase();
		Cursor cursor = database.rawQuery("select " + BlackTable.MODE
				+ " from " + BlackTable.BLACKTABLE + " where "
				+ BlackTable.PHONE + "=?", new String[] { phone });
		int mode = 0;
		if (cursor.moveToNext()) {// �Ǻ���������
			mode = cursor.getInt(0);// ȡ����Ӧ���������ģʽ
		} else {
			mode = 0;// ���Ǻ���������
		}
		return mode;
	}

	/**
	 * @return �����ݸ���
	 */
	public int getTotalRows() {
		SQLiteDatabase database = blackDB.getReadableDatabase();
		Cursor cursor = database.rawQuery("select count(1) from "
				+ BlackTable.BLACKTABLE, null);
		cursor.moveToNext();
		// ������
		int totalRows = cursor.getInt(0);

		cursor.close();// �ر��α�
		return totalRows;
	}

	/**
	 * @param datasNumber
	 *            �������ص�������Ŀ��
	 * @param startIndex
	 *            ȡ���ݵ���ʼλ��
	 * @return ������������
	 */
	public List<BlackBean> getMoreDatas(int datasNumber, int startIndex) {
		List<BlackBean> datas = new ArrayList<BlackBean>();
		SQLiteDatabase database = blackDB.getReadableDatabase();
		// ��ȡblacktb�����������α� (2 + 3) + ""
		Cursor cursor = database.rawQuery("select " + BlackTable.PHONE + ","
				+ BlackTable.MODE + " from " + BlackTable.BLACKTABLE
				+ " order by _id desc limit ?,? ", new String[] {
				startIndex + "", datasNumber + "" });

		while (cursor.moveToNext()) {
			// �����ݣ����ݷ�װ
			BlackBean bean = new BlackBean();

			// ��װ����������
			bean.setPhone(cursor.getString(0));

			// ��װ����ģʽ
			bean.setMode(cursor.getInt(1));

			// ������ݵ�������
			datas.add(bean);
		}

		cursor.close();// �ر��α�
		database.close();// �ر����ݿ�

		return datas;
	}

	/**
	 * @param currentPage
	 *            ��ǰҳ��ҳ��
	 * @param perPage
	 *            ÿҳ��ʾ����������
	 * @return ��ǰҳ������
	 */
	public List<BlackBean> getPageDatas(int currentPage, int perPage) {
		List<BlackBean> datas = new ArrayList<BlackBean>();
		SQLiteDatabase database = blackDB.getReadableDatabase();
		// ��ȡblacktb�����������α� (2 + 3) + ""
		Cursor cursor = database.rawQuery("select " + BlackTable.PHONE + ","
				+ BlackTable.MODE + " from " + BlackTable.BLACKTABLE
				+ " limit ?,? ", new String[] {
				((currentPage - 1) * perPage) + "", perPage + "" });

		while (cursor.moveToNext()) {
			// �����ݣ����ݷ�װ
			BlackBean bean = new BlackBean();

			// ��װ����������
			bean.setPhone(cursor.getString(0));

			// ��װ����ģʽ
			bean.setMode(cursor.getInt(1));

			// ������ݵ�������
			datas.add(bean);
		}

		cursor.close();// �ر��α�
		database.close();// �ر����ݿ�

		return datas;

	}

	/**
	 * @param perPage
	 *            ָ��ÿҳ��ʾ����������
	 * @return ��ҳ��
	 */
	public int getTotalPages(int perPage) {
		int totalRows = getTotalRows();
		// ���������ҳ������ceil���������ز�С�ڸ�������С���� �� :6.1 ����7.0
		int totalPages = (int) Math.ceil(totalRows * 1.0 / perPage);
		return totalPages;

	}

	/**
	 * @return �������еĺ���������
	 */
	public List<BlackBean> getAllDatas() {
		List<BlackBean> datas = new ArrayList<BlackBean>();
		SQLiteDatabase database = blackDB.getReadableDatabase();
		// ��ȡblacktb�����������α�
		Cursor cursor = database.rawQuery("select " + BlackTable.PHONE + ","
				+ BlackTable.MODE + " from " + BlackTable.BLACKTABLE, null);

		while (cursor.moveToNext()) {
			// �����ݣ����ݷ�װ
			BlackBean bean = new BlackBean();

			// ��װ����������
			bean.setPhone(cursor.getString(0));

			// ��װ����ģʽ
			bean.setMode(cursor.getInt(1));

			// ������ݵ�������
			datas.add(bean);
		}

		cursor.close();// �ر��α�
		database.close();// �ر����ݿ�

		return datas;
	}

	/**
	 * ɾ������������
	 * 
	 * @param phone
	 *            Ҫɾ���ĺ���������
	 */
	public void delete(String phone) {
		SQLiteDatabase db = this.blackDB.getWritableDatabase();
		// ���ݺ��������룬��ɾ������������
		db.delete(BlackTable.BLACKTABLE, BlackTable.PHONE + "=?",
				new String[] { phone });
		db.close();
	}

	/**
	 * @param phone
	 *            �޸ĵĺ���������
	 * @param mode
	 *            �޸ĵ��µ�����ģʽ
	 */
	public void update(String phone, int mode) {
		SQLiteDatabase db = this.blackDB.getWritableDatabase();

		ContentValues values = new ContentValues();// �޸��µ�����ֵ
		// �����µ�����ģʽ
		values.put(BlackTable.MODE, mode);

		// ���ݺ�������µ�ģʽ
		db.update(BlackTable.BLACKTABLE, values, BlackTable.PHONE + "=?",
				new String[] { phone });

		db.close();// �ر����ݿ�

	}

	/**
	 * ��Ӻ���������
	 * 
	 * @param bean
	 *            ��������Ϣ�ķ�װbean
	 */
	public void add(BlackBean bean) {

		add(bean.getPhone(), bean.getMode());
	}

	/**
	 * ��Ӻ���������
	 * 
	 * @param phone
	 *            ����������
	 * @param mode
	 *            ����ģʽ
	 */
	public void add(String phone, int mode) {
		delete(phone);// ɾ������
		// ��ȡ���������ݿ�
		SQLiteDatabase db = blackDB.getWritableDatabase();
		ContentValues values = new ContentValues();
		// ���ú���������
		values.put(BlackTable.PHONE, phone);

		// ���ú���������ģʽ
		values.put(BlackTable.MODE, mode);

		// �����������в���һ����¼
		db.insert(BlackTable.BLACKTABLE, null, values);

		// �ر����ݿ�
		db.close();
	}
}
