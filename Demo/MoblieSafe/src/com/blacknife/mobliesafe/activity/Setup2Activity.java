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
 * ��һ��������ҳ
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
				// �жϵ�ǰ�Ĺ�ѡ״̬
				if (sivSim.isChecked()) {
					sivSim.setChecked(false);
					// ���������ļ�config
					sim = null;
					// ɾ���Ѱ󶨵�SIM��
					SpTools.removeKey(Setup2Activity.this, MyConstants.SIM);
					
				} else {
					sivSim.setChecked(true);
					// ����SIM��Ϣ
					TelephonyManager tm = (TelephonyManager) getSystemService(TELEPHONY_SERVICE);
					// ��ȡSIM�����к�
					String simSerialNumber = tm.getSimSerialNumber();
					sim = simSerialNumber;
					// ���������ļ�config
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
		// ���붯�����˳�����

	}

	@Override
	public void showNextPage() {
		//	���SIM��û�а�,�Ͳ����������һ��ҳ��
		if (TextUtils.isEmpty(sim)) {
			ToastUtils.showToast(this, "�����SIM��");
			return;
		} 
		startActivity(new Intent(Setup2Activity.this, Setup3Activity.class));
		finish();
		overridePendingTransition(R.anim.tran_next_in, R.anim.tran_next_out);
		// ���붯�����˳�����
	}

}
