package com.blacknife.mobliesafe.db.dao;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;

/**
 * �����ز�ѯ����
 * 
 * @author Blacknife
 *
 */
public class AddressDao {
	// ע��,��·��������data/dataĿ¼���ļ�,�������ݿ���ʲ���
	private static final String PAIN = "data/data/com.blacknife.mobliesafe/files/address.db";

	public static String getAddress(String number) {
		String address = "δ֪����";
		// ��ȡ���ݿ����
		SQLiteDatabase database = SQLiteDatabase.openDatabase(PAIN, null, SQLiteDatabase.OPEN_READONLY);
		// �ֻ�������ص�: 1 + (3,4,5,6,7,8) + (9λ����)
		// ������ʽ
		// ^1[3-8]\d{9}$
		if (number.matches("^1[3-8]\\d{9}$")) {
			String sql = "select location from data2 where id=(select outkey from data1 where id=?)";
			Cursor cursor = database.rawQuery(sql, new String[] { number.substring(0, 7) });
			if (cursor.moveToNext()) {
				address = cursor.getString(0);
				cursor.close();
			}
		}else if(number.matches("^\\d+$")){//ƥ������
			switch (number.length()) {
			case 3:
				address = "�����绰";				
				break;
			case 4:
				address = "ģ����";				
				break;
			case 5:
				address = "�ͷ��绰";				
				break;
			case 7:
			case 8:
				address = "���ص绰";				
				break;
			default:
				if(number.startsWith("0") && number.length() > 10){//�п����ǳ�;�绰
					//��Щ������4λ,��Щ��3λ
					//�Ȳ�ѯ4λ����
					String sqllong4 = "select location from data2 where area =?";
					Cursor cursor4 = database.rawQuery(sqllong4, new String[] { number.substring(1, 4) });
					if (cursor4.moveToNext()) {
						address = cursor4.getString(0);
						cursor4.close();
					}else{
						//��ѯ3λ����
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
