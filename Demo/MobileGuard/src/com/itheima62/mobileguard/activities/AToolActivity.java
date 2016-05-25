package com.itheima62.mobileguard.activities;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.ProgressBar;
import android.widget.Toast;

import com.itheima62.mobileguard.R;
import com.itheima62.mobileguard.engine.SmsEngine;
import com.itheima62.mobileguard.engine.SmsEngine.BaikeProgress;

/**
 * 高级工具：电话归属地查询，短信备份和还原，程序锁的设置
 * @author Administrator
 *
 */
public class AToolActivity extends Activity {
	private ProgressDialog pd;
	private ProgressBar pb_bk;

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		super.onCreate(savedInstanceState);
		initView();
		pd = new ProgressDialog(this);
		pd.setProgressStyle(ProgressDialog.STYLE_HORIZONTAL);
		
	}
	
	
	
	/**
	 * 短信的备份
	 * @param v
	 */
	public void smsBaike(View v){
		
				
			SmsEngine.smsBaikeJson(AToolActivity.this,new BaikeProgress() {
				
				@Override
				public void setProgress(int progress) {
					// TODO Auto-generated method stub
					//ui程序员可以显示自己 组件
					pd.setProgress(progress);
					pb_bk.setProgress(progress);
				}
				
				@Override
				public void setMax(int max) {
					pd.setMax(max);
					pb_bk.setMax(max);
				}

				@Override
				public void show() {
					pd.show();
					pb_bk.setVisibility(View.VISIBLE);
				}

				@Override
				public void end() {
					pd.dismiss();
					pb_bk.setVisibility(View.GONE);
				}
			});
				
			
		
	}
	
	/**
	 * 短信的还原
	 * @param v
	 */
	public void smsResumn(View v){
		SmsEngine.smsResumnJson(this, new BaikeProgress() {
			
			@Override
			public void setProgress(int progress) {
				// TODO Auto-generated method stub
				//ui程序员可以显示自己 组件
				pd.setProgress(progress);
				pb_bk.setProgress(progress);
			}
			
			@Override
			public void setMax(int max) {
				pd.setMax(max);
				pb_bk.setMax(max);
			}

			@Override
			public void show() {
				pd.show();
				pb_bk.setVisibility(View.VISIBLE);
			}

			@Override
			public void end() {
				pd.dismiss();
				pb_bk.setVisibility(View.GONE);
			}
		});
	}
	
	/**
	 * 跳转到程序锁的界面
	 * @param v
	 */
	public void lockActivity(View v){
		Intent intent = new Intent(this,LockedActivity.class);
		startActivity(intent);
	}

	/**
	 * 号码归属地查询
	 * @param v
	 */
	public void phoneQuery(View v){
		Intent query = new Intent(this,PhoneLocationActivity.class);
		startActivity(query);//启动手机归属地查询界面
	}

	private void initView() {
		setContentView(R.layout.activity_atool);
		//短信备份的进度
	    pb_bk = (ProgressBar) findViewById(R.id.pb_smsbeike_progress);
	}
}
