package com.itheima62.mobileguard.activities;

import android.app.Activity;
import android.os.Bundle;
import android.os.Vibrator;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;

import com.itheima62.mobileguard.R;
import com.itheima62.mobileguard.engine.PhoneLocationEngine;

/**
 * 手机归属地查询界面
 * @author Administrator
 *
 */
public class PhoneLocationActivity extends Activity {
	private EditText et_phone;
	private Button bt_query;
	private TextView tv_location;

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		super.onCreate(savedInstanceState);
		initView();
		
		initEvent();
	}

	private void initEvent() {
		//给EditText加文件变化事件
		et_phone.addTextChangedListener(new TextWatcher() {
			
			@Override
			public void onTextChanged(CharSequence s, int start, int before, int count) {
				// TODO Auto-generated method stub
				
			}
			
			@Override
			public void beforeTextChanged(CharSequence s, int start, int count,
					int after) {
				// TODO Auto-generated method stub
				
			}
			
			@Override
			public void afterTextChanged(Editable s) {
				//文本改变
				locationQuery();
			}
		});
		bt_query.setOnClickListener(new OnClickListener() {
			
			@Override
			public void onClick(View v) {
				locationQuery();
			}

			
		});
	}
	/**
	 * 归属地查询事件封装
	 */
	private void locationQuery() {
		String phone = et_phone.getText().toString().trim();//获取编辑的号码
		if (TextUtils.isEmpty(phone)){
			//为空
			//Toast.makeText(getApplicationContext(), "不能为空", 1).show();
			//抖动的效果
			Animation shake = AnimationUtils.loadAnimation(this, R.anim.shake);
	        et_phone.startAnimation(shake);
	        
	        //震动的效果
	        Vibrator vibrator = (Vibrator) getSystemService(VIBRATOR_SERVICE);
	        //震动的参数设置
	        vibrator.vibrate(new long[]{200,300,300,200,500,100}, 3);
	        
			tv_location.setText("归属地：");
			return ;
		}
		
		//查询
		String location = PhoneLocationEngine.locationQuery(phone, getApplicationContext());
		tv_location.setText("归属地：" + location);
	}

	private void initView() {
		setContentView(R.layout.activity_phonelocation);
		//输入号码
		et_phone = (EditText) findViewById(R.id.et_phonelocation_number);
		//查询的按钮
		bt_query = (Button) findViewById(R.id.bt_phonelocation_query);
		
		//显示号码归属地
		tv_location = (TextView) findViewById(R.id.tv_phonelocation_address);
	}
}
