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
 * �����ز�ѯ����
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
		//����EditText�ı仯
		etNumber.addTextChangedListener(new TextWatcher() {
			//ed�����仯ʱ�Ļٵ�
			@Override
			public void onTextChanged(CharSequence s, int start, int before, int count) {
				String address = AddressDao.getAddress(s.toString());
				tvResult.setText(address);
			}
			//�仯ǰ�Ļص�
			@Override
			public void beforeTextChanged(CharSequence s, int start, int count, int after) {
				
			}
			//���ֱ仯������Ļص�
			@Override
			public void afterTextChanged(Editable s) {
				
			}
		});
	}
	/**
	 * ��ʼ��ѯ
	 */
	public void query(View view){
		String number = etNumber.getText().toString().trim();
		if(!TextUtils.isEmpty(number)){
			String address = AddressDao.getAddress(number);
			tvResult.setText(address);
		}else{
			//���ÿؼ���Ч��
			Animation shake = AnimationUtils.loadAnimation(this, R.anim.shake);
			etNumber.startAnimation(shake);
			vibrate();
		}
	}
	/**
	 * �ֻ���,��ҪȨ�� android.permission.VIBRATE
	 */
	private void vibrate(){
		Vibrator vibrate = (Vibrator) getSystemService(VIBRATOR_SERVICE);
		vibrate.vibrate(2000);
		/**
		 * int repeat -1 ��ʾִ��һ��,��ѭ��,0 ��ʾѭ��
		 */
		vibrate.vibrate(new long[]{1000, 2000,3000,4000},-1);//��Ъ��
		//ȡ���� 	vibrate.cancel();
	}
}







