package com.blacknife.sdk.util;

import android.util.Log;

public class LogUtile {
	public static Boolean ISDEBUG = true;
	private static final String TAG = "black";
	public static void showLog(String msg){
		if(ISDEBUG){
			Log.d(TAG, msg);
		}
	}
}
