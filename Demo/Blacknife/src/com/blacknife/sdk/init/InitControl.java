package com.blacknife.sdk.init;

import com.blacknife.sdk.util.ToastUtil;

import android.content.Context;

public class InitControl {
	private Context context;
	
	public InitControl(Context context){
		this.context = context;
	}
	public void init(){
		//BKnife sdk init
		//初始化init的同时，检查网络连接情况等耗时操作
		//NetControl.init(this.context);
	    ToastUtil.showToast(context, "闪屏页暂时先隐藏");
		//SplashActivity.launch(this.context);
	}
}
