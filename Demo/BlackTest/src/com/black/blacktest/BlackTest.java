package com.black.blacktest;

import java.text.SimpleDateFormat;
import java.util.Date;

import android.test.AndroidTestCase;
import android.util.Log;

public class BlackTest extends AndroidTestCase {
	private static final String TAG = "black";
	private static void BlackLog(String logText){
		Log.d(TAG, logText);
	}
	public void testdemo() {
		final int a = 1;
		final int b = 2;
		Log.d(TAG, "Test = "+ a + b);
	}
	public void testMillisecondToDate(){
		String pattern = "yyyy-MM-dd HH:mm:ss" ;	//日期格式
		long dateTime = 1461860974l;				//毫秒或秒的长整型
		BlackLog((dateTime+"").length()+"");
		if((dateTime+"").length() != 13){
			dateTime = dateTime * 1000;
			BlackLog((dateTime+"").length()+"");
		}
	    SimpleDateFormat sDateFormat = new SimpleDateFormat(pattern);
	    String mDate = sDateFormat.format(new Date(dateTime));
	    
		BlackLog(mDate);
	}
	
}
