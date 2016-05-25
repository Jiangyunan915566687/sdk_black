package com.blacknife.mobliesafe.db.dao;

import java.util.ArrayList;
import java.util.List;

import com.blacknife.mobliesafe.db.BlackListDB;
import com.blacknife.mobliesafe.domain.BlackBean;
import com.blacknife.mobliesafe.domain.BlackListTable;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;

/**
 * ���������ݵ�ҵ���װ��
 * @author Blacknife
 *
 */
public class BlackDao {
	private BlackListDB blackDB;
	public BlackDao(Context context){
		this.blackDB = new BlackListDB(context);
	}
	/**
	 * ��Ӻ���������
	 * @param phone
	 * @param mode
	 */
	public void add(String phone , int mode){
		delete(phone);
		SQLiteDatabase db = blackDB.getWritableDatabase();
		ContentValues values = new ContentValues();
		values.put(BlackListTable.PHONE,phone);
		values.put(BlackListTable.MODE,mode);
		//�����������в���һ����¼
		db.insert(BlackListTable.BLACKTABLE, null, values);
		db.close();
	}
	/**
	 * ��������Ϣ�ķ�װbean
	 */
	public void add(BlackBean bean){
		add(bean.getPhone(),bean.getMode());
	}
	/**
	 * �޸�����ģʽ
	 */
	public void update(String phone,int mode){
		SQLiteDatabase db = this.blackDB.getWritableDatabase();
		ContentValues values = new ContentValues();
		values.put(BlackListTable.MODE, mode);
		//�����µ�ģʽ
		db.update(BlackListTable.BLACKTABLE, values, BlackListTable.PHONE + "=?", new String[]{phone});
		db.close();
	}
	/**
	 * ɾ������������
	 * @param phone
	 */
	public void delete(String phone){
		SQLiteDatabase db = this.blackDB.getWritableDatabase();
		db.delete(BlackListTable.BLACKTABLE, BlackListTable.PHONE + "=?", new String[]{phone});
		db.close();
	}
	/**
	 * �������еĺ���������
	 * @return
	 */
	public List<BlackBean> getALLDatas(){
		List<BlackBean> datas = new ArrayList<BlackBean>();
		SQLiteDatabase database = blackDB.getReadableDatabase();
		//��ȡblacktb�����������α�
		Cursor cursor = database.rawQuery("select "+BlackListTable.PHONE + ","+ BlackListTable.MODE + " from "
				+ BlackListTable.BLACKTABLE, null);
		while(cursor.moveToNext()){
			//�����ݣ����ݷ�װ
			BlackBean bean = new BlackBean();
			//��װ����������
			bean.setPhone(cursor.getString(0));
			bean.setMode(cursor.getInt(1));
			//������ݵ�������
			datas.add(bean);
		}
		cursor.close();
		database.close();
		return datas;
	}
	/**
	 * 
	 * @param datasNumber ȡ���ݸ���
	 * @param startIndex  ȡ���ݵ���ʼλ��
	 * @return ������������
	 */
	public List<BlackBean> getMoreDatas(int datasNumber,int startIndex){
		List<BlackBean> datas = new ArrayList<BlackBean>();
		SQLiteDatabase database = blackDB.getReadableDatabase();
		Cursor cursor = database.rawQuery("select "+BlackListTable.PHONE+","
				+ BlackListTable.MODE + " from " + BlackListTable.BLACKTABLE
				+" order by _id desc limit ?,? ", new String[]{startIndex + "",datasNumber + ""});
		//String sqll = "select phone,mode from blacktb order by _id desc limit ?,? ";
		while(cursor.moveToNext()){
			//�����ݣ����ݷ�װ
			BlackBean bean = new BlackBean();
			//��װ����������
			bean.setPhone(cursor.getString(0));
			bean.setMode(cursor.getInt(1));
			//������ݵ�������
			datas.add(bean);
		}
		cursor.close();
		database.close();
		return datas;
		
	}
	/**
	 * �����ж�
	 * @param phone
	 * ����ģʽ: 1 ����  2�绰 3ȫ��  0��������
	 * @return
	 */
	public int getMode(String phone){
		SQLiteDatabase database = blackDB.getReadableDatabase();
		Cursor cursor = database.rawQuery("select "+BlackListTable.MODE + " from " + BlackListTable.BLACKTABLE
				+" where " + BlackListTable.PHONE + " =? ",new String[]{phone} );
		int mode = 0;
		if(cursor.moveToNext()){
			mode = cursor.getInt(0);
		}else{
			mode = 0;//���Ǻ���������
		}
		database.close();
		cursor.close();
		return mode;
		
	}

}
