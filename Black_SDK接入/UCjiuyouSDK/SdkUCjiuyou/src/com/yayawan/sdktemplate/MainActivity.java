package com.yayawan.sdktemplate;


import java.util.UUID;

import cn.uc.gamesdk.UCCallbackListener;
import cn.uc.gamesdk.UCGameSDK;
import cn.uc.gamesdk.UCGameSDKStatusCode;

import com.yayawan.callback.YYWAnimCallBack;
import com.yayawan.callback.YYWExitCallback;
import com.yayawan.callback.YYWPayCallBack;
import com.yayawan.callback.YYWUserCallBack;
import com.yayawan.domain.YYWOrder;
import com.yayawan.domain.YYWUser;
import com.yayawan.proxy.GameProxy;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.Toast;

public class MainActivity extends Activity {

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		GameProxy.getInstent().onCreate(this);
		//setContentView(R.layout.sdk_activity_main);
		//login(null);
		final LinearLayout mLinearLayout = new LinearLayout(this);

		mLinearLayout.setLayoutParams(new LinearLayout.LayoutParams( LayoutParams.MATCH_PARENT, LayoutParams.MATCH_PARENT));

		mLinearLayout.setOrientation(LinearLayout.VERTICAL);
		mLinearLayout.setPadding(10, 10, 10, 10);

		Button animButton = new Button(this);
		animButton.setText("anim");
		animButton.setOnClickListener(new OnClickListener() {

			@Override
			public void onClick(View v) {
				anim(mLinearLayout);

			}
		});
		mLinearLayout.addView(animButton, new LinearLayout.LayoutParams( LayoutParams.MATCH_PARENT, LayoutParams.WRAP_CONTENT));


		Button lgoinButton = new Button(this);
		lgoinButton.setText("login");
		lgoinButton.setOnClickListener(new OnClickListener() {

			@Override
			public void onClick(View v) {
				login(mLinearLayout);

			}
		});
		mLinearLayout.addView(lgoinButton, new LinearLayout.LayoutParams( LayoutParams.MATCH_PARENT, LayoutParams.WRAP_CONTENT));


		Button payButton = new Button(this);
		payButton.setText("pay");
		payButton.setOnClickListener(new OnClickListener() {

			@Override
			public void onClick(View v) {
				pay(mLinearLayout);

			}
		});
		mLinearLayout.addView(payButton, new LinearLayout.LayoutParams( LayoutParams.MATCH_PARENT, LayoutParams.WRAP_CONTENT));


		Button extButton = new Button(this);
		extButton.setText("exit");
		extButton.setOnClickListener(new OnClickListener() {

			@Override
			public void onClick(View v) {
				exit(mLinearLayout);

			}
		});
		mLinearLayout.addView(extButton, new LinearLayout.LayoutParams( LayoutParams.MATCH_PARENT, LayoutParams.WRAP_CONTENT));
		setContentView(mLinearLayout);


	}

	public void anim(View v) {
        System.out.println("登录");
        GameProxy.getInstent().anim(this, new YYWAnimCallBack() {

			@Override
			public void onAnimSuccess(String arg0, Object arg1) {
				// TODO Auto-generated method stub
				Toast.makeText(MainActivity.this, "播放动画回调", Toast.LENGTH_SHORT).show();
			}

			@Override
			public void onAnimFailed(String arg0, Object arg1) {
				// TODO Auto-generated method stub

			}

			@Override
			public void onAnimCancel(String arg0, Object arg1) {
				// TODO Auto-generated method stub

			}
		});
    }

	public void login(View v) {
        System.out.println("登录");
        GameProxy.getInstent().login(this, new YYWUserCallBack() {

            @Override
            public void onLogout(Object arg0) {
                System.out.println("登出");

            }

            @Override
            public void onLoginSuccess(YYWUser user, Object arg1) {
                // TODO Auto-generated method stub
                System.out.println(user);
                GameProxy.getInstent().setRoleData(MainActivity.this, "11111", "1111111", "111111111", "11111111", "11111111111");
                Toast.makeText(MainActivity.this, "登录回调" + user, Toast.LENGTH_SHORT).show();
            }

            @Override
            public void onLoginFailed(String arg0, Object arg1) {
                // TODO Auto-generated method stub
            	 System.out.println("登陆失败");

            }
        });
    }

	 public void pay(View v) {
	        YYWOrder order = new YYWOrder(UUID.randomUUID().toString(), "霜之哀伤", 100l,  "xxxx");
	        GameProxy.getInstent().pay(this, order, new YYWPayCallBack() {

	            @Override
	            public void onPaySuccess(YYWUser arg0, YYWOrder arg1, Object arg2) {
	                // TODO Auto-generated method stub
	            	Toast.makeText(MainActivity.this, "充值成功回调", Toast.LENGTH_SHORT).show();
	            }

	            @Override
	            public void onPayFailed(String arg0, Object arg1) {
	                // TODO Auto-generated method stub
	                System.out.println("支付失败");
	            }

	            @Override
	            public void onPayCancel(String arg0, Object arg1) {
	                // TODO Auto-generated method stub
	                System.out.println("支付退出");
	            }
	        });
	 }



	 public void exit(View v) {
	        System.out.println("登录");
	        GameProxy.getInstent().exit(this, new YYWExitCallback() {

				@Override
				public void onExit() {
					Toast.makeText(MainActivity.this, "退出回调", Toast.LENGTH_SHORT).show();
					MainActivity.this.finish();
				}
			});
	  }

	 public void accountManage(View v) {
	        GameProxy.getInstent().manager(this);
	 }

	 @Override
	    protected void onRestart() {
	        super.onRestart();
	        GameProxy.getInstent().onRestart(this);
	    }

	    @Override
	    protected void onResume() {
	        super.onResume();
	        GameProxy.getInstent().onResume(this);
	    }

	    @Override
	    protected void onPause() {
	        super.onPause();
	        GameProxy.getInstent().onPause(this);
	    }

	    @Override
	    protected void onStop() {
	        super.onStop();
	        GameProxy.getInstent().onStop(this);
	    }

	    @Override
	    protected void onDestroy() {
	        super.onDestroy();
	        GameProxy.getInstent().onDestroy(this);
	    }



	    @Override
	    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
	    	// TODO Auto-generated method stub
	    	super.onActivityResult(requestCode, resultCode, data);
	    	GameProxy.getInstent().onActivityResult(this, requestCode, resultCode, data);
	    }

	    @Override
	    public boolean onKeyDown(int keyCode, KeyEvent event) {
	    	// TODO Auto-generated method stub
	    	//
	    	if (keyCode == KeyEvent.KEYCODE_BACK) {
	    		ucSdkExit(this, null);
			}
	    	return super.onKeyDown(keyCode, event);
	    }
	    
	    /**
		 * 必接功能<br>
		 * 当游戏退出前必须调用该方法，进行清理工作。建议在游戏退出事件中进行调用，必须在游戏退出前执行<br>
		 * 如果游戏直接退出，而不调用该方法，可能会出现未知错误，导致程序崩溃<br>
		 * 
		 * @param callback
		 */
		private void ucSdkExit(final Activity paramActivity,
				final YYWExitCallback callback) {
			UCGameSDK.defaultSDK().exitSDK(paramActivity,
					new UCCallbackListener<String>() {
						@Override
						public void callback(int code, String msg) {
							if (UCGameSDKStatusCode.SDK_EXIT_CONTINUE == code) {
								// 此加入继续游戏的代码

							} else if (UCGameSDKStatusCode.SDK_EXIT == code) {
								// 在此加入退出游戏的代码
								ucSdkDestoryFloatButton(paramActivity);
								paramActivity.finish();
								//callback.onExit();
							}
						}
					});
		}
		
		/**
		 * 必接功能<br>
		 * 悬浮按钮销毁<br>
		 * 悬浮按钮销毁需要在UI线程中调用<br>
		 */
		private void ucSdkDestoryFloatButton(final Activity paramActivity) {
			paramActivity.runOnUiThread(new Runnable() {
				public void run() {
					// 悬浮按钮销毁功能
					UCGameSDK.defaultSDK().destoryFloatButton(paramActivity);
				}
			});
		}


}