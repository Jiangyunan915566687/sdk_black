package com.blacknife.mobliesafe.activity;

import com.blacknife.mobliesafe.R;
import com.blacknife.mobliesafe.utils.MyConstants;
import com.blacknife.mobliesafe.utils.SpTools;
import com.blacknife.mobliesafe.utils.ToastUtils;
import com.blacknife.mobliesafe.view.SettingItemView;

import android.content.Intent;
import android.os.Bundle;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.view.View.OnClickListener;
import android.view.View;

/**
 * 第一个设置向导页
 * 
 * @author Blacknife
 *
 */
public class Setup2Activity extends BaseSetupActivity {
	private SettingItemView sivSim;
	private String sim;

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_setup2);
		sim = SpTools.getString(Setup2Activity.this, MyConstants.SIM, null);
		sivSim = (SettingItemView) findViewById(R.id.siv_sim);
		if (!TextUtils.isEmpty(sim)) {
			sivSim.setChecked(true);
		} else {
			sivSim.setChecked(false);
		}
		sivSim.setOnClickListener(new OnClickListener() {

			@Override
			public void onClick(View v) {
				// 判断当前的勾选状态
				if (sivSim.isChecked()) {
					sivSim.setChecked(false);
					// 更新设置文件config
					sim = null;
					// 删除已绑定的SIM卡
					SpTools.removeKey(Setup2Activity.this, MyConstants.SIM);
					
				} else {
					sivSim.setChecked(true);
					// 保存SIM信息
					TelephonyManager tm = (TelephonyManager) getSystemService(TELEPHONY_SERVICE);
					// 获取SIM卡序列号
					String simSerialNumber = tm.getSimSerialNumber();
					sim = simSerialNumber;
					// 更新设置文件config
					SpTools.putString(Setup2Activity.this, MyConstants.SIM, simSerialNumber);
				}
			}
		});
	}

	@Override
	public void showPreviousPage() {

		startActivity(new Intent(Setup2Activity.this, Setup1Activity.class));
		finish();
		overridePendingTransition(R.anim.tran_previous_in, R.anim.tran_previous_out);
		// 进入动画和退出动画

	}

	@Override
	public void showNextPage() {
		//	如果SIM卡没有绑定,就不允许进入下一个页面
		if (TextUtils.isEmpty(sim)) {
			ToastUtils.showToast(this, "必须绑定SIM卡");
			return;
		} 
		startActivity(new Intent(Setup2Activity.this, Setup3Activity.class));
		finish();
		overridePendingTransition(R.anim.tran_next_in, R.anim.tran_next_out);
		// 进入动画和退出动画
	}

}
