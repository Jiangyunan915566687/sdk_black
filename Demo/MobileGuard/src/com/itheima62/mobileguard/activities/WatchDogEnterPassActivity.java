package com.itheima62.mobileguard.activities;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.Toast;

import com.itheima62.mobileguard.R;

public class WatchDogEnterPassActivity extends Activity {

	private ImageView iv_icon;
	private EditText et_pass;
	private Button bt_enter;
	private String packName;
	private HomeReceiver receiver;

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		super.onCreate(savedInstanceState);
		initView();
		initData();
		initEvent();
		
	}

	private class HomeReceiver extends BroadcastReceiver{

		@Override
		public void onReceive(Context context, Intent intent) {
			if (intent.getAction().equals(Intent.ACTION_CLOSE_SYSTEM_DIALOGS)) {
				//如果是home键
				//回到主界面 关闭自己
				goToHome();
			}
		}
		
	}
	private void initData() {
		//注册home键的广播
		
		receiver = new HomeReceiver();
		
		IntentFilter filter = new IntentFilter(Intent.ACTION_CLOSE_SYSTEM_DIALOGS);
		registerReceiver(receiver, filter);
		
		
		Intent intent = getIntent();
		//获取app的包名
		packName = intent.getStringExtra("packname");
		
		PackageManager pm = getPackageManager();
		try {
			ApplicationInfo applicationInfo = pm.getApplicationInfo(packName, 0);
			iv_icon.setImageDrawable(applicationInfo.loadIcon(pm));
		} catch (NameNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

	private void initEvent() {
		bt_enter.setOnClickListener(new OnClickListener() {
			
			@Override
			public void onClick(View v) {
				//判断输入的密码
				String pass = et_pass.getText().toString().trim();
				if (TextUtils.isEmpty(pass)) {
					Toast.makeText(getApplicationContext(), "密码不能为空", 1).show();
					return;
				}
				//如果密码正确 关闭自己
				if (pass.equals("123")) {
					//密码正确
					//告诉看门狗 这是熟人
					Intent intent = new Intent();
					intent.setAction("com.itheima62.watchdog");
					
					intent.putExtra("packname", packName);
					//发送广播，告诉看门狗 是熟人
					sendBroadcast(intent);
					finish();//关闭自己
				} else {
					Toast.makeText(getApplicationContext(), "密码不正确", 1).show();
					return;
				}
				//不正确继续输入密码
			}
		});
	}

	private void initView() {
		setContentView(R.layout.activity_watchdog_enterpass);
		
		//加锁的app的图标
		iv_icon = (ImageView) findViewById(R.id.iv_watchdog_enterpass_icon);
		
		//输入的口令
		et_pass = (EditText) findViewById(R.id.et_watchdog_enterpass_password);
		
		//输入按钮
		bt_enter = (Button) findViewById(R.id.bt_watchdog_enterpass_enter);
	}
	
	@Override
	public boolean onKeyDown(int keyCode, KeyEvent event) {
		if (keyCode == KeyEvent.KEYCODE_BACK) {
			//回到手机主界面
			/*
			 *  <intent-filter>
                <action android:name="android.intent.action.MAIN" />
                <category android:name="android.intent.category.HOME" />
                <category android:name="android.intent.category.DEFAULT" />
                <category android:name="android.intent.category.MONKEY"/>
            </intent-filter>
			 */
			goToHome();
		}
		return super.onKeyDown(keyCode, event);
	}

	private void goToHome() {
		Intent intent = new Intent("android.intent.action.MAIN");
		intent.addCategory("android.intent.category.HOME");
		intent.addCategory("android.intent.category.DEFAULT");
		intent.addCategory("android.intent.category.MONKEY");
		startActivity(intent);
		finish();//关闭自己
	}
	
	@Override
	protected void onDestroy() {
		// TODO Auto-generated method stub
		//取消home键的广播
		unregisterReceiver(receiver);
		super.onDestroy();
	}

}
