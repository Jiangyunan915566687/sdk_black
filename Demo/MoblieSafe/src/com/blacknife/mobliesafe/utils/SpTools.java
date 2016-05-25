package com.blacknife.mobliesafe.utils;

import android.content.Context;
import android.content.SharedPreferences;

/**
 * 封装的工具类 读写sharedPreferences
 * 
 * @author Blacknife
 *
 */
public class SpTools {
	private static SharedPreferences sp;
	private static String config = MyConstants.SPFILE;
	private static int MODE_PRIVATE = Context.MODE_PRIVATE;

	public static void putString(Context context, String key, String value) {
		sp = context.getSharedPreferences(config, MODE_PRIVATE);
		sp.edit().putString(key, value).commit();// 保存数据
	}

	public static String getString(Context context, String key, String defValue) {
		sp = context.getSharedPreferences(config, MODE_PRIVATE);
		return sp.getString(key, defValue);
	}

	public static void putBoolean(Context context, String key, Boolean value) {
		sp = context.getSharedPreferences(config, MODE_PRIVATE);
		sp.edit().putBoolean(key, value).commit();// 保存数据
	}

	public static boolean getBoolean(Context context, String key, boolean defValue) {
		sp = context.getSharedPreferences(config, MODE_PRIVATE);
		return sp.getBoolean(key, defValue);
	}

	public static void putInt(Context context, String key, int defValue) {
		sp = context.getSharedPreferences(config, MODE_PRIVATE);
		sp.edit().putInt(key, defValue).commit();// 保存数据
	}

	public static int getInt(Context context, String key, int defValue) {
		sp = context.getSharedPreferences(config, MODE_PRIVATE);
		return sp.getInt(key, defValue);
	}
	public static void removeKey(Context context, String key){
		sp = context.getSharedPreferences(config, MODE_PRIVATE);
		sp.edit().remove(key).commit();
	}
}
