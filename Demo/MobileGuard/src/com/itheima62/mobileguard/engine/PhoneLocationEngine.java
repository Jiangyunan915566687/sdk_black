package com.itheima62.mobileguard.engine;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;

/**
 * 电话归属地业务的封装类
 * 
 * @author Administrator
 * 
 */
public class PhoneLocationEngine {

	public static String locationQuery(String phoneNumber, Context context) {
		String location = phoneNumber;

		//
		/**
		 * 判断phoneNumber 1， 手机号 2， 固定电话 4008517517 3， 服务号码 110 120 95559 010 -
		 * 99999999 0391-3456654 0755-8888888
		 */
		// 如果是手机号
		// 正则表达式
		Pattern p = Pattern.compile("1{1}[3857]{1}[0-9]{9}");
		Matcher m = p.matcher(phoneNumber);
		boolean b = m.matches();
		if (b) {
			// 是手机号
			location = mobileQuery(phoneNumber, context);
		} else if (phoneNumber.length() >= 11) {
			// 固定号码
			// 如果是固定号码
			location = phoneQuery(phoneNumber, context);
		} else {

			// 如果是服务号码
			location = serviceNumberQuery(phoneNumber);
		}
		return location;

	}

	/**
	 * 查询服务号码 如：110匪警
	 * 
	 * @param phoneNumber
	 * @return
	 */
	public static String serviceNumberQuery(String phoneNumber) {
		String res = "";
		if (phoneNumber.equals("110")) {
			res = "匪警";
		} else if (phoneNumber.equals("10086")) {
			res = "中国移动";
		}
		return res;
	}

	/**
	 * @param phoneNumber
	 *            电话号码全称
	 * @param context
	 * @return 固定电话号码归属地
	 */
	public static String phoneQuery(String phoneNumber, Context context) {

		/*
		 * phoneNumber 三种类型： 1， 手机号 2， 固定电话 3， 服务号码 110 120 95559 95555
		 * 0755-88888888 010-888888
		 */
		String res = phoneNumber;
		SQLiteDatabase database = SQLiteDatabase.openDatabase(
				"/data/data/com.itheima62.mobileguard/files/address.db", null,
				SQLiteDatabase.OPEN_READONLY);
		String quHao = "";
		// 2位区号 3位区号
		if (phoneNumber.charAt(1) == '1' || phoneNumber.charAt(1) == '2') {
			// 2位区号
			quHao = phoneNumber.substring(1, 3);
		} else {
			// 3位区号
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
	 *            电话号码全称
	 * @param context
	 * @return 手机号码归属地
	 */
	public static String mobileQuery(String phoneNumber, Context context) {

		/*
		 * phoneNumber 三种类型： 1， 手机号 2， 固定电话 3， 服务号码 110 120 95559 95555
		 */
		String res = "归属地差不到";
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
