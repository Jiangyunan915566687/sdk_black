package com.blacknife.sdk.login;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;

import com.blacknife.sdk.R;

public class LoginActivity extends Activity {
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_login);
	}
	public static void launch(Context context){
		//调用启动登录窗口
		context.startActivity(new Intent(context, LoginActivity.class));
	}
	@Override
	public void onBackPressed() {
		super.onBackPressed();
	}
}
