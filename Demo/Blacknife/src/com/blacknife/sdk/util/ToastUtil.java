package com.blacknife.sdk.util;

import android.content.Context;
import android.widget.Toast;

public class ToastUtil {
	public static Boolean ISDEBUG = true;
	public static void showToast(Context context,String text){
		if(ISDEBUG){
			Toast.makeText(context, text, Toast.LENGTH_SHORT).show();
		}
	}
}
