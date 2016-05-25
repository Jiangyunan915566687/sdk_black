package com.blacknife.sdk.util;

import android.content.Context;

public class Util {
	
	public static int dip2px(Context context, float dpValue){
		float scale = context.getResources().getDisplayMetrics().density;
		return (int)(dpValue * scale + 0.5F);
	}
}
