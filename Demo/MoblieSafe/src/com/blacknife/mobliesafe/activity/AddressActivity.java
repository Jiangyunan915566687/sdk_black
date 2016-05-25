package com.blacknife.mobliesafe.activity;

import com.blacknife.mobliesafe.R;
import com.blacknife.mobliesafe.db.dao.AddressDao;

import android.app.Activity;
import android.os.Bundle;
import android.os.Vibrator;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.EditText;
import android.widget.TextView;
/**
 * 归属地查询界面
 * @author Blacknife
 *
 */
public class AddressActivity extends Activity {
	private EditText etNumber;
	private TextView tvResult;
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_address);
		etNumber = (EditText) findViewById(R.id.et_number);
		tvResult = (TextView) findViewById(R.id.tv_result);
		//监听EditText的变化
		etNumber.addTextChangedListener(new TextWatcher() {
			//ed发生变化时的毁掉
			@Override
			public void onTextChanged(CharSequence s, int start, int before, int count) {
				String address = AddressDao.getAddress(s.toString());
				tvResult.setText(address);
			}
			//变化前的回调
			@Override
			public void beforeTextChanged(CharSequence s, int start, int count, int after) {
				
			}
			//文字变化结束后的回调
			@Override
			public void afterTextChanged(Editable s) {
				
			}
		});
	}
	/**
	 * 开始查询
	 */
	public void query(View view){
		String number = etNumber.getText().toString().trim();
		if(!TextUtils.isEmpty(number)){
			String address = AddressDao.getAddress(number);
			tvResult.setText(address);
		}else{
			//设置控件震动效果
			Animation shake = AnimationUtils.loadAnimation(this, R.anim.shake);
			etNumber.startAnimation(shake);
			vibrate();
		}
	}
	/**
	 * 手机震动,需要权限 android.permission.VIBRATE
	 */
	private void vibrate(){
		Vibrator vibrate = (Vibrator) getSystemService(VIBRATOR_SERVICE);
		vibrate.vibrate(2000);
		/**
		 * int repeat -1 表示执行一次,不循环,0 表示循环
		 */
		vibrate.vibrate(new long[]{1000, 2000,3000,4000},-1);//间歇震动
		//取消震动 	vibrate.cancel();
	}
}







