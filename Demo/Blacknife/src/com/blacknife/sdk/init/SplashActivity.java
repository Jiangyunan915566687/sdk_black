package com.blacknife.sdk.init;



import com.blacknife.sdk.R;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;

public class SplashActivity extends Activity {
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_splash);
		finishSplash();
	}

	public static void launch(Context context) {
		//调用启动闪屏页面
		context.startActivity(new Intent(context, SplashActivity.class));
	}
	public void finishSplash() {
		new Handler().postDelayed(new Runnable(){
			public void run() {
				SplashActivity.this.finish();
			}
		},2000L);
	}
	@Override
	public void onBackPressed() {
		//覆盖onBackPressed方法使返回按钮失效
		//super.onBackPressed();
	}
	@Override
	protected void onActivityResult(int requestCode, int resultCode, Intent data) {
		super.onActivityResult(requestCode, resultCode, data);
		finish();
	}
	@Override
	public void finish() {
		super.finish();
	}
}
