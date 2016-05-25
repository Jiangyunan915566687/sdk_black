package com.blacknife.sdk;

import android.content.Context;

import com.blacknife.sdk.callback.BKnifeExitCallback;
import com.blacknife.sdk.exit.ExitDialog;
import com.blacknife.sdk.floatview.FloatView;
import com.blacknife.sdk.init.InitControl;
import com.blacknife.sdk.login.LoginControl;
import com.blacknife.sdk.pay.BKnifePay;

public class BKnife {
	public static void init(Context context){
		new InitControl(context).init();
	}
	public static void showFloatView(Context context){
		//context.startActivity(new Intent(context, FloatActivity.class));
		FloatView.getInstance(context).show();
	}
	public static void hideFloatView(Context context){
		FloatView.getInstance(context).hide();
	}
	public static void login(Context context){
		new LoginControl(context).login();
	}
	public static void pay(Context context,String orderId, int payGfanTicket, String productName, String productDesc, Object tag, BKnifePay.Listener listener){
		
	}
	public static void exit(Context context,BKnifeExitCallback callback){
		ExitDialog.launch(context,callback);
	}
	public static void onDestroy(Context context){
		//销毁sdk中资源，如悬浮窗
		FloatView.getInstance(context).destroy();
	}
}
