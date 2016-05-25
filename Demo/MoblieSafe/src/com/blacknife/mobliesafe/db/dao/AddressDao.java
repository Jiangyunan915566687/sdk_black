package com.blacknife.mobliesafe.db.dao;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;

/**
 * 归属地查询工具
 * 
 * @author Blacknife
 *
 */
public class AddressDao {
	// 注意,该路径必须是data/data目录的文件,否则数据库访问不到
	private static final String PAIN = "data/data/com.blacknife.mobliesafe/files/address.db";

	public static String getAddress(String number) {
		String address = "未知号码";
		// 获取数据库对象
		SQLiteDatabase database = SQLiteDatabase.openDatabase(PAIN, null, SQLiteDatabase.OPEN_READONLY);
		// 手机号码的特点: 1 + (3,4,5,6,7,8) + (9位数字)
		// 正则表达式
		// ^1[3-8]\d{9}$
		if (number.matches("^1[3-8]\\d{9}$")) {
			String sql = "select location from data2 where id=(select outkey from data1 where id=?)";
			Cursor cursor = database.rawQuery(sql, new String[] { number.substring(0, 7) });
			if (cursor.moveToNext()) {
				address = cursor.getString(0);
				cursor.close();
			}
		}else if(number.matches("^\\d+$")){//匹配数字
			switch (number.length()) {
			case 3:
				address = "报警电话";				
				break;
			case 4:
				address = "模拟器";				
				break;
			case 5:
				address = "客服电话";				
				break;
			case 7:
			case 8:
				address = "本地电话";				
				break;
			default:
				if(number.startsWith("0") && number.length() > 10){//有可能是长途电话
					//有些区号是4位,有些是3位
					//先查询4位区号
					String sqllong4 = "select location from data2 where area =?";
					Cursor cursor4 = database.rawQuery(sqllong4, new String[] { number.substring(1, 4) });
					if (cursor4.moveToNext()) {
						address = cursor4.getString(0);
						cursor4.close();
					}else{
						//查询3位区号
						String sqllong3 = "select location from data2 where area =?";
						Cursor cursor3 = database.rawQuery(sqllong3, new String[] { number.substring(1, 3) });
						if (cursor3.moveToNext()) {
							address = cursor3.getString(0);
							cursor3.close();
						}
					}
				}
				break;
			}
		}
		database.close();
		return address;
	}
}
