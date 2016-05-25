package com.blacknife.mobliesafe.utils;

import android.content.Context;
import android.widget.Toast;

public class ToastUtils {
	public static void showToast(Context context,String Toastext){
		Toast.makeText(context, Toastext, Toast.LENGTH_SHORT).show();
	}
}
