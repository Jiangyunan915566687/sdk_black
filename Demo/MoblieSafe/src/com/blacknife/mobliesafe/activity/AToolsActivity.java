package com.blacknife.mobliesafe.activity;

import com.blacknife.mobliesafe.R;
import com.blacknife.mobliesafe.engine.SmsEngine;
import com.blacknife.mobliesafe.engine.SmsEngine.BaikeProgress;
import com.blacknife.mobliesafe.utils.ToastUtils;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.ProgressBar;

/**
 * �߼����� ����
 * 
 * @author Blacknife
 *
 */
public class AToolsActivity extends Activity {

	private ProgressBar pbBk;
	private ProgressBar pbRs;

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_atools);

		pbBk = (ProgressBar) findViewById(R.id.pb_smsbeike_progress);
		pbRs = (ProgressBar) findViewById(R.id.pb_smsresumn_progress);
	}

	/**
	 * �����ز�ѯ����
	 * 
	 * @param view
	 */
	public void numberAddressQuery(View view) {
		startActivity(new Intent(AToolsActivity.this, AddressActivity.class));
	}

	/**
	 * ���ŵı���
	 * 
	 * @param
	 */
	public void smsBaike(View view) {
		// new Thread(){
		// public void run() {
		SmsEngine.smsBaikeJson(AToolsActivity.this, new BaikeProgress() {
			// �ӿڻص�
			@Override
			public void setProgress(int progress) {
				pbBk.setProgress(progress);
			}

			@Override
			public void setMax(int max) {
				pbBk.setMax(max);
			}

			@Override
			public void end() {
				pbBk.setVisibility(View.GONE);
			}

			@Override
			public void show() {
				pbBk.setVisibility(View.VISIBLE);
			}
		});

	}

	/**
	 * ���Ż�ԭ
	 * 
	 */
	public void smsResumn(View v) {
		SmsEngine.smsResumnJson(AToolsActivity.this, new BaikeProgress() {
			// �ӿڻص�
			@Override
			public void setProgress(int progress) {
				pbRs.setProgress(progress);
			}

			@Override
			public void setMax(int max) {
				pbRs.setMax(max);
			}

			@Override
			public void end() {
				pbRs.setVisibility(View.GONE);
			}

			@Override
			public void show() {
				pbRs.setVisibility(View.VISIBLE);
			}
		});
	}
	/**
	 * ��ת���������Ľ���
	 * @param v
	 */
	public void lockActivity(View v){
		Intent intent = new Intent(this,LockedActivity.class);
		startActivity(intent);
	}
}
