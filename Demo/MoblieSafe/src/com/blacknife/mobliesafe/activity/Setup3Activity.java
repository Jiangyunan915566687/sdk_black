package com.blacknife.mobliesafe.activity;

import com.blacknife.mobliesafe.R;
import com.blacknife.mobliesafe.utils.MyConstants;
import com.blacknife.mobliesafe.utils.SpTools;
import com.blacknife.mobliesafe.utils.ToastUtils;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.EditText;

/**
 * 第一个设置向导页
 * 
 * @author Blacknife
 *
 */
public class Setup3Activity extends BaseSetupActivity {
	private EditText etPhonenumber;
	private String safePhone;

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_setup3);
		etPhonenumber = (EditText) findViewById(R.id.et_phonenumber);
		safePhone = SpTools.getString(Setup3Activity.this, MyConstants.SAFENUMBER, "");
		if (!TextUtils.isEmpty(safePhone)) {
			etPhonenumber.setText(safePhone);
		}
	}

	@Override
	public void showPreviousPage() {
		startActivity(new Intent(Setup3Activity.this, Setup2Activity.class));
		finish();
		overridePendingTransition(R.anim.tran_previous_in, R.anim.tran_previous_out);
		// 进入动画和退出动画
	}

	@Override
	public void showNextPage() {
		// 下一页前判断号码
		//trim() 过滤空格
		safePhone = etPhonenumber.getText().toString().trim();
		if (!TextUtils.isEmpty(safePhone)) {
			SpTools.putString(Setup3Activity.this, MyConstants.SAFENUMBER, safePhone);
			startActivity(new Intent(Setup3Activity.this, Setup4Activity.class));
			finish();
			overridePendingTransition(R.anim.tran_next_in, R.anim.tran_next_out);
			// 进入动画 和 退出动画
		} else {
			ToastUtils.showToast(Setup3Activity.this, "安全号码不能为空!");
		}
	}

	/**
	 * 选择联系人
	 */
	public void selectContact(View view) {
		Intent intent = new Intent(Setup3Activity.this, ContactActivity.class);
		startActivityForResult(intent, 12);
	}

	@Override
	protected void onActivityResult(int requestCode, int resultCode, Intent data) {
		if (resultCode == Activity.RESULT_OK) {
			String contactPhoto = data.getStringExtra("phone");
			contactPhoto = contactPhoto.replace("-", "").replace(" ", "");
			System.out.println(contactPhoto);
			// 从intent中获取photo数据并设置在输入框上
			etPhonenumber.setText(contactPhoto);
		}
		super.onActivityResult(requestCode, resultCode, data);
	}
}
