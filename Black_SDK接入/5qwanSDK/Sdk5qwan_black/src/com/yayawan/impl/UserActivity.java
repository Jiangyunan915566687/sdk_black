package com.yayawan.impl;

import org.json.JSONObject;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;

import com.net1798.sdk.Sdk;
import com.net1798.sdk.user.MarketUtils;
import com.net1798.sdk.user.SdkUser;
import com.net1798.sdk.user.UserConfig;
import com.yayawan.sdktemplate.R;

public class UserActivity extends Activity {
	
	public static final String SDK_USERBACK_ACTION = "com.yayawan.impl.UserActivity";
	public SdkBroadcastReceiver receiver = null;
	private SdkUser user;
	private UserConfig config;
	private static final String TAG = "black";
	static Boolean isLogin = false;

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		
		setFullScreen();
		
		final Sdk sdk = new Sdk(this);
		config = new UserConfig(this);
		//user = config.getUser();
		user = new SdkUser();
		//user.isLogin
		if (isLogin) {
			userCenter(sdk);
		}else{
			userLogin(sdk);
		}
	}
	
	protected void setFullScreen(){
		this.requestWindowFeature(Window.FEATURE_NO_TITLE);
		int flag = WindowManager.LayoutParams.FLAG_FULLSCREEN;
		this.getWindow().setFlags(flag, flag);
	}
	
	
	protected void userCenter(final Sdk sdk){
		setContentView(R.layout.net1798_user_center);
		
		final TextView title = (TextView) findViewById(R.id.textView3);
		final TextView username = (TextView) findViewById(R.id.usernameshow);
		final Button button_startgame = (Button) findViewById(R.id.button_startgame);
		final Button button_relogin_or_vregist = (Button) findViewById(R.id.button_relogin_or_vregist);

		config = new UserConfig(this);
		user = config.getUser();
		//user = new SdkUser();
		
		username.setText(user.isVisitor ? "游客"+user._id : user.name);
		if(user.isVisitor){
			title.setText("游客模式");
			username.setText("游客"+user._id);
			button_relogin_or_vregist.setText("游客转正");
		}else{
			username.setText(user.name);
		}
		
		button_startgame.setOnClickListener(new View.OnClickListener() {
			public void onClick(View v) {
				callToastShow((user.isVisitor ? "游客"+user.name : "用户"+user._id) + "，开始游戏！");
				//TODO startgame
				//user._id 作为用户唯一标记传递进游戏
				//Intent intent = new Intent(getApplicationContext(), GameStart.class);
				//startActivity(intent);
				finish();
			}
		});
		
		button_relogin_or_vregist.setOnClickListener(new View.OnClickListener() {
			public void onClick(View v) {
				if("用户中心".equals(title.getText().toString().trim())){
					user._id = 0;
					user.name = "";
					user.isLogin = false;
					config.putUser(user);
					
					userLogin(sdk);
				}else{ //游客转正
					userRegist(sdk);
				}
			}
		});
	}
	
	protected void userLogin(final Sdk sdk){
		setContentView(R.layout.net1798_user_login);
		
		final EditText username = (EditText) findViewById(R.id.username);
		final EditText userpass = (EditText) findViewById(R.id.userpass);
		final Button button_login = (Button) findViewById(R.id.button_login);
		final Button button_goregist = (Button) findViewById(R.id.button_goregist);
		final Button button_visitor = (Button) findViewById(R.id.button_visitor);
		
		if(!user.isVisitor){ //一旦用户注册登陆过，游客模式隐藏
			button_visitor.setVisibility(View.GONE);
		}
		
		button_login.setOnClickListener(new View.OnClickListener() {
			public void onClick(View v) {
				//callToastShow("用户登录");
				final String name = username.getText().toString().trim();
				final String pass = userpass.getText().toString().trim();
				
				if ("".equals(name) || "".equals(pass)) {
					callToastShow("用户或密码不能为空");
					return;
				}
				
				receiver = new SdkBroadcastReceiver();
				IntentFilter intentFilter = new IntentFilter(SDK_USERBACK_ACTION);
				intentFilter.setPriority(Integer.MAX_VALUE);
				registerReceiver(receiver, intentFilter);
				new Thread(new Runnable() {
					
					@Override
					public void run() {
						String op = "user_login";
						String md5pass = MarketUtils.getMD5String(pass);
						String json_data = "{\"user\":\"" + name + "\",\"pass\":\"" + md5pass + "\"}";
						sdk.req(op, json_data, SDK_USERBACK_ACTION);
					}
				}).start();
			}
		});
		
		button_goregist.setOnClickListener(new View.OnClickListener() {
			public void onClick(View v) {
				userRegist(sdk);
			}
		});
		
		button_visitor.setOnClickListener(new View.OnClickListener() {
			public void onClick(View v) {
				receiver = new SdkBroadcastReceiver();
				IntentFilter intentFilter = new IntentFilter(SDK_USERBACK_ACTION);
				intentFilter.setPriority(Integer.MAX_VALUE);
				registerReceiver(receiver, intentFilter);
				new Thread(new Runnable() {
					
					@Override
					public void run() {
						String op = "visitor_game";
						String json_data = "";
						sdk.req(op, json_data, SDK_USERBACK_ACTION);
						
					}
				}).start();
			}
		});
	}
	
	protected void userRegist(final Sdk sdk){
		setContentView(R.layout.net1798_user_regist);
		
		final TextView title = (TextView) findViewById(R.id.textView3);
		final EditText username = (EditText) findViewById(R.id.username);
		final EditText userpass = (EditText) findViewById(R.id.userpass);
		final Button button_regist = (Button) findViewById(R.id.button_regist);
		final Button button_gologin = (Button) findViewById(R.id.button_gologin);
		final Button button_visitor = (Button) findViewById(R.id.button_visitor);
		
		if(!user.isVisitor){ //一旦用户注册登陆过，游客模式隐藏
			button_visitor.setVisibility(View.GONE);
		}
		
		config = new UserConfig(this);
		user = config.getUser();
		if (user.isLogin) {
			if(!user.isVisitor){ //已登陆用户非游客不可重复注册，可推出后注册
				userCenter(sdk);
			}
			
			//游客转正
			title.setText("游客转正");
			username.setText(user.name);
			button_regist.setText("转       正");
		}
		
		button_regist.setOnClickListener(new View.OnClickListener() {
			public void onClick(View v) {
				final String name = username.getText().toString().trim();
				final String pass = userpass.getText().toString().trim();
				
				if ("".equals(name) || "".equals(pass)) {
					callToastShow("用户或密码不能为空");
					return;
				}
				
				//callToastShow(title.getText().toString().trim());
				
				receiver = new SdkBroadcastReceiver();
				IntentFilter intentFilter = new IntentFilter(SDK_USERBACK_ACTION);
				intentFilter.setPriority(Integer.MAX_VALUE);
				registerReceiver(receiver, intentFilter);
				new Thread(new Runnable() {
					
					@Override
					public void run() {
						String op = "user_regist";
						String md5pass = MarketUtils.getMD5String(pass);
						String json_data = "{\"user\":\"" + name + "\",\"pass\":\"" + md5pass + "\"}";
						sdk.req(op, json_data, SDK_USERBACK_ACTION);
					}
				}).start();
			}
		});
		
		button_gologin.setOnClickListener(new View.OnClickListener() {
			public void onClick(View v) {
				userLogin(sdk);
			}
		});
		
		button_visitor.setOnClickListener(new View.OnClickListener() {
			public void onClick(View v) {
				receiver = new SdkBroadcastReceiver();
				IntentFilter intentFilter = new IntentFilter(SDK_USERBACK_ACTION);
				intentFilter.setPriority(Integer.MAX_VALUE);
				registerReceiver(receiver, intentFilter);
				new Thread(new Runnable() {
					
					@Override
					public void run() {
						String op = "visitor_game";
						String json_data = "";
						sdk.req(op, json_data, SDK_USERBACK_ACTION);
						System.out.println("new"); 
					}
				}).start();
				
			}
		});
	}
	
	protected void callToastShow(String message){
		Toast.makeText(getApplicationContext(), message, Toast.LENGTH_SHORT).show();
	}

	@Override
	protected void onDestroy() {
		Sdk.close();
		super.onDestroy();
	}
	
	class SdkBroadcastReceiver extends BroadcastReceiver {
		@Override
		public void onReceive(Context context, Intent intent) {
			String action = intent.getAction();
			if (SDK_USERBACK_ACTION.equals(action)) {
				String data = intent.getExtras().getString("data");
				System.out.println("pay_result data="+data);
				try {
					JSONObject parse = new JSONObject(data);
					Log.d(TAG, parse.toString());
					String op = parse.getString("method");
					//callToastShow("method->" + parse.getString("method") + ":" + data);
					//System.out.println("来到这里1");
					JSONObject vdata = new JSONObject((new JSONObject(parse.getString("value")).getString("data")));
					//System.out.println("来到这里2");
					if ("user_login".equals(op)) {
						if (vdata.getBoolean("rst")) {
							String name = vdata.getString("user");
							int _id = vdata.getInt("userid");
							
							UserConfig config = new UserConfig(getApplicationContext());
							SdkUser user = config.getUser();
							user._id = _id;
							user.name = name;
							user.isLogin = true;
							user.isVisitor = false;
							config.putUser(user);
							callToastShow("欢迎回来，" + name);
							YaYawanconstants.loginSuce(_id+"", name, _id+"");
							Log.d(TAG, "登录成功......");
							isLogin = true;
							//startActivity(new Intent(getApplicationContext(), UserActivity.class));
							finish();
						}else{
							String msg = vdata.getString("msg");
							String code = vdata.getString("code");
							callToastShow("用户登录失败"+",错误："+msg+"("+code+")");
							YaYawanconstants.loginFail();
							isLogin = false;
						}
					}else if ("visitor_game".equals(op)) {
						if (vdata.getBoolean("rst")) {
							String name = vdata.getString("user");
							int _id = vdata.getInt("userid");
							
							UserConfig config = new UserConfig(getApplicationContext());
							SdkUser user = config.getUser();
							user._id = _id;
							user.name = name;
							user.isLogin = true;
							user.isVisitor = true;
							config.putUser(user);
							callToastShow("欢迎回来，游客" + _id);
							YaYawanconstants.loginSuce(_id+"", name, _id+"");
							Log.d(TAG, "登录成功......");
							isLogin = true;
							//startActivity(new Intent(getApplicationContext(), UserActivity.class));
							finish();
						}else{
							String msg = vdata.getString("msg");
							String code = vdata.getString("code");
							callToastShow("获取游客信息失败"+",错误："+msg+"("+code+")");
							YaYawanconstants.loginFail();
							isLogin = false;
						}
					}else if ("user_regist".equals(op)) {
						String titleText = ((TextView) findViewById(R.id.textView3)).getText().toString().trim();
						if (vdata.getBoolean("rst")) {
							String name = vdata.getString("user");
							int _id = vdata.getInt("userid");
							
							UserConfig config = new UserConfig(getApplicationContext());
							SdkUser user = config.getUser();
							user._id = _id;
							user.name = name;
							user.isLogin = true;
							user.isVisitor = false;
							config.putUser(user);
							
							callToastShow(titleText + "成功，用户" + name);
							YaYawanconstants.loginSuce(_id+"", name, _id+"");
							Log.d(TAG, "注册后自动登录......");
							isLogin = true;
							//startActivity(new Intent(getApplicationContext(), UserActivity.class));
							finish();
							
						}else{
							String msg = vdata.getString("msg");
							String code = vdata.getString("code");
							callToastShow(titleText + "失败"+",错误："+msg+"("+code+")");
							YaYawanconstants.loginFail();
							isLogin = false;
						}
					}
				} catch (Exception e) {
					System.out.println("sdk on receive"+e);
					isLogin = false;
				}
			}
		}
	}

}
