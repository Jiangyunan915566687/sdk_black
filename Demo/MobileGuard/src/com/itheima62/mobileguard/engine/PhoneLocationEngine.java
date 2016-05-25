package com.itheima62.mobileguard.engine;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;

/**
 * �绰������ҵ��ķ�װ��
 * 
 * @author Administrator
 * 
 */
public class PhoneLocationEngine {

	public static String locationQuery(String phoneNumber, Context context) {
		String location = phoneNumber;

		//
		/**
		 * �ж�phoneNumber 1�� �ֻ��� 2�� �̶��绰 4008517517 3�� ������� 110 120 95559 010 -
		 * 99999999 0391-3456654 0755-8888888
		 */
		// ������ֻ���
		// ������ʽ
		Pattern p = Pattern.compile("1{1}[3857]{1}[0-9]{9}");
		Matcher m = p.matcher(phoneNumber);
		boolean b = m.matches();
		if (b) {
			// ���ֻ���
			location = mobileQuery(phoneNumber, context);
		} else if (phoneNumber.length() >= 11) {
			// �̶�����
			// ����ǹ̶�����
			location = phoneQuery(phoneNumber, context);
		} else {

			// ����Ƿ������
			location = serviceNumberQuery(phoneNumber);
		}
		return location;

	}

	/**
	 * ��ѯ������� �磺110�˾�
	 * 
	 * @param phoneNumber
	 * @return
	 */
	public static String serviceNumberQuery(String phoneNumber) {
		String res = "";
		if (phoneNumber.equals("110")) {
			res = "�˾�";
		} else if (phoneNumber.equals("10086")) {
			res = "�й��ƶ�";
		}
		return res;
	}

	/**
	 * @param phoneNumber
	 *            �绰����ȫ��
	 * @param context
	 * @return �̶��绰���������
	 */
	public static String phoneQuery(String phoneNumber, Context context) {

		/*
		 * phoneNumber �������ͣ� 1�� �ֻ��� 2�� �̶��绰 3�� ������� 110 120 95559 95555
		 * 0755-88888888 010-888888
		 */
		String res = phoneNumber;
		SQLiteDatabase database = SQLiteDatabase.openDatabase(
				"/data/data/com.itheima62.mobileguard/files/address.db", null,
				SQLiteDatabase.OPEN_READONLY);
		String quHao = "";
		// 2λ���� 3λ����
		if (phoneNumber.charAt(1) == '1' || phoneNumber.charAt(1) == '2') {
			// 2λ����
			quHao = phoneNumber.substring(1, 3);
		} else {
			// 3λ����
			quHao = phoneNumber.substring(1, 4);
		}

		Cursor cursor = database.rawQuery(
				"select location from data2 where area=?",
				new String[] { quHao });
		if (cursor.moveToNext()) {
			res = cursor.getString(0);
		}
		return res;
	}

	/**
	 * @param phoneNumber
	 *            �绰����ȫ��
	 * @param context
	 * @return �ֻ����������
	 */
	public static String mobileQuery(String phoneNumber, Context context) {

		/*
		 * phoneNumber �������ͣ� 1�� �ֻ��� 2�� �̶��绰 3�� ������� 110 120 95559 95555
		 */
		String res = "�����ز��";
		SQLiteDatabase database = SQLiteDatabase.openDatabase(
				"/data/data/com.itheima62.mobileguard/files/address.db", null,
				SQLiteDatabase.OPEN_READONLY);
		Cursor cursor = database
				.rawQuery(
						"select location from data2 where id = (select outKey from data1 where id=?)",
						new String[] { phoneNumber.substring(0, 7) });
		if (cursor.moveToNext()) {
			res = cursor.getString(0);
		}
		return res;
	}
}
