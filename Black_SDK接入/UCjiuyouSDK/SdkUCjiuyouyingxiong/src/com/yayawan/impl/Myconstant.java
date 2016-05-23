package com.yayawan.impl;

import android.app.Activity;
import android.os.Handler;
import android.os.Looper;
import android.widget.Toast;

public class Myconstant {

	
	public static boolean isinit=false;
	
	public static void jfToast(final String text,final Activity mactivity){
		new Handler(Looper.getMainLooper())
		.post(new Runnable() {

			@Override
			public void run() {
			
				Toast.makeText(mactivity, text, Toast.LENGTH_LONG).show();;

			}
		});
	}
}
