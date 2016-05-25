package com.black.royalwarwallpaper.uilts;

import android.content.Context;
import android.widget.Toast;

public class ToastUtils {
	public static void showToast(Context context ,String ToastText){
		Toast.makeText(context, ToastText, Toast.LENGTH_SHORT).show();
	}
}
