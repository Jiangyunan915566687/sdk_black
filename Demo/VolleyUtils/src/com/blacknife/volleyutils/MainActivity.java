package com.blacknife.volleyutils;

import com.android.volley.VolleyError;

import android.app.Activity;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import android.widget.Toast;

public class MainActivity extends Activity {
	private static final String URL = "http://www.imooc.com/api/teacher?type=4&num=30";
	public static String resuleString = "";
	private Handler mHandler = new Handler(){
		public void handleMessage(Message msg) {
			Toast.makeText(MainActivity.this, "我成功了！", Toast.LENGTH_SHORT).show();
		};
	};
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);
		//volleyGet(URL);
		newVolleyGet(URL);
	}
	
	private void newVolleyGet(String url) {
		VolleyRequest.RequestGet(this, url, "black",this);
		new Thread(new Runnable() {
			public void run() {
				while(resuleString.equals("")){	
					Log.d("black", "Threadcome!");
					try {
						Thread.sleep(500);
					} catch (InterruptedException e) {
						// TODO 自动生成的 catch 块
						e.printStackTrace();
					}
				}
				Log.d("black", "Threadout!");
				mHandler.sendEmptyMessage(1);
			}
		}).start();
	}

	private void volleyGet(String url) {
		VolleyRequest.RequestGet(this, url, "black", 
				new VolleyInterface(this,VolleyInterface.mListener,VolleyInterface.mErrorListener) {
			
			@Override
			public void onMySuccess(String result) {
				Log.d("black", "come!");
				Toast.makeText(MainActivity.this, result, Toast.LENGTH_SHORT).show();
			}
			
			@Override
			public void onMyError(VolleyError error) {
				Log.d("black", "Nocome!");
			}
		});
	}

}
