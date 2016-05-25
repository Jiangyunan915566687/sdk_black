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
 * 黑名单数据的业务封装类
 * @author Blacknife
 *
 */
public class BlackDao {
	private BlackListDB blackDB;
	public BlackDao(Context context){
		this.blackDB = new BlackListDB(context);
	}
	/**
	 * 添加黑名单号码
	 * @param phone
	 * @param mode
	 */
	public void add(String phone , int mode){
		delete(phone);
		SQLiteDatabase db = blackDB.getWritableDatabase();
		ContentValues values = new ContentValues();
		values.put(BlackListTable.PHONE,phone);
		values.put(BlackListTable.MODE,mode);
		//往黑名单表中插入一条记录
		db.insert(BlackListTable.BLACKTABLE, null, values);
		db.close();
	}
	/**
	 * 黑名单信息的封装bean
	 */
	public void add(BlackBean bean){
		add(bean.getPhone(),bean.getMode());
	}
	/**
	 * 修改拦截模式
	 */
	public void update(String phone,int mode){
		SQLiteDatabase db = this.blackDB.getWritableDatabase();
		ContentValues values = new ContentValues();
		values.put(BlackListTable.MODE, mode);
		//更新新的模式
		db.update(BlackListTable.BLACKTABLE, values, BlackListTable.PHONE + "=?", new String[]{phone});
		db.close();
	}
	/**
	 * 删除黑名单号码
	 * @param phone
	 */
	public void delete(String phone){
		SQLiteDatabase db = this.blackDB.getWritableDatabase();
		db.delete(BlackListTable.BLACKTABLE, BlackListTable.PHONE + "=?", new String[]{phone});
		db.close();
	}
	/**
	 * 返回所有的黑名单数据
	 * @return
	 */
	public List<BlackBean> getALLDatas(){
		List<BlackBean> datas = new ArrayList<BlackBean>();
		SQLiteDatabase database = blackDB.getReadableDatabase();
		//获取blacktb的所有数据游标
		Cursor cursor = database.rawQuery("select "+BlackListTable.PHONE + ","+ BlackListTable.MODE + " from "
				+ BlackListTable.BLACKTABLE, null);
		while(cursor.moveToNext()){
			//有数据，数据封装
			BlackBean bean = new BlackBean();
			//封装黑名单号码
			bean.setPhone(cursor.getString(0));
			bean.setMode(cursor.getInt(1));
			//添加数据到集合中
			datas.add(bean);
		}
		cursor.close();
		database.close();
		return datas;
	}
	/**
	 * 
	 * @param datasNumber 取数据个数
	 * @param startIndex  取数据的起始位置
	 * @return 分批加载数据
	 */
	public List<BlackBean> getMoreDatas(int datasNumber,int startIndex){
		List<BlackBean> datas = new ArrayList<BlackBean>();
		SQLiteDatabase database = blackDB.getReadableDatabase();
		Cursor cursor = database.rawQuery("select "+BlackListTable.PHONE+","
				+ BlackListTable.MODE + " from " + BlackListTable.BLACKTABLE
				+" order by _id desc limit ?,? ", new String[]{startIndex + "",datasNumber + ""});
		//String sqll = "select phone,mode from blacktb order by _id desc limit ?,? ";
		while(cursor.moveToNext()){
			//有数据，数据封装
			BlackBean bean = new BlackBean();
			//封装黑名单号码
			bean.setPhone(cursor.getString(0));
			bean.setMode(cursor.getInt(1));
			//添加数据到集合中
			datas.add(bean);
		}
		cursor.close();
		database.close();
		return datas;
		
	}
	/**
	 * 拦截判断
	 * @param phone
	 * 拦截模式: 1 短信  2电话 3全部  0不用拦截
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
			mode = 0;//不是黑名单号码
		}
		database.close();
		cursor.close();
		return mode;
		
	}

}
