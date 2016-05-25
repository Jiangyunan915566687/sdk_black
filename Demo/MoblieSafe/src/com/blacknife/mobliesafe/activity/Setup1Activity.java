package com.blacknife.mobliesafe.activity;

import com.blacknife.mobliesafe.R;
import com.blacknife.mobliesafe.receiver.AdminReceiver;
import com.blacknife.mobliesafe.utils.MyConstants;
import com.blacknife.mobliesafe.utils.SpTools;
import com.blacknife.mobliesafe.utils.ToastUtils;

import android.app.admin.DevicePolicyManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.CheckBox;

/**
 * ��һ��������ҳ
 * 
 * @author Blacknife
 *
 */
public class Setup1Activity extends BaseSetupActivity {
	private DevicePolicyManager mDPM;
	private ComponentName mDeviceAdminSample;
	private boolean isActive;
	private Button cbActiveAdmin;

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_setup1);
		mDPM = (DevicePolicyManager) getSystemService(Context.DEVICE_POLICY_SERVICE);// ��ȡ�豸���Է���
		mDeviceAdminSample = new ComponentName(this, AdminReceiver.class);// �豸�������
		isActive = SpTools.getBoolean(Setup1Activity.this, MyConstants.ISACTIVE, false);
		cbActiveAdmin = (Button) findViewById(R.id.bt_activeAdmin);
		// sp�������Ϣ����
		if (mDPM.isAdminActive(mDeviceAdminSample)) {
			cbActiveAdmin.setText("�Ѽ����豸������");
		} else {
			cbActiveAdmin.setText("δ�����豸������");
		}
		cbActiveAdmin.setOnClickListener(new OnClickListener() {

			@Override
			public void onClick(View v) {
				
				if (mDPM.isAdminActive(mDeviceAdminSample)) {// �ж��豸�������Ƿ��Ѿ�����
					mDPM.removeActiveAdmin(mDeviceAdminSample);// ȡ������
					cbActiveAdmin.setText("δ�����豸������");
					System.out.println("ȡ������");					
				} else {
					
					System.out.println("��ʼ����");
					Intent intent = new Intent(DevicePolicyManager.ACTION_ADD_DEVICE_ADMIN);
					intent.putExtra(DevicePolicyManager.EXTRA_DEVICE_ADMIN, mDeviceAdminSample);
					intent.putExtra(DevicePolicyManager.EXTRA_ADD_EXPLANATION, "������, �������˳����豸������, ��NB!");
					startActivityForResult(intent,11);
				}
				SpTools.putBoolean(Setup1Activity.this, MyConstants.ISACTIVE, mDPM.isAdminActive(mDeviceAdminSample));
			}
		});
	}

	@Override
	public void showPreviousPage() {

	}

	@Override
	public void showNextPage() {
		if (!mDPM.isAdminActive(mDeviceAdminSample)) {
			ToastUtils.showToast(this, "���÷������ܱ��뼤���豸������");
			return;
		} 
		startActivity(new Intent(Setup1Activity.this, Setup2Activity.class));
		finish();
		// ���������л��Ķ���
		overridePendingTransition(R.anim.tran_next_in, R.anim.tran_next_out);
		// ���붯�����˳�����
	}

	@Override
	protected void onActivityResult(int requestCode, int resultCode, Intent data) {
		// TODO �Զ����ɵķ������
		if (mDPM.isAdminActive(mDeviceAdminSample)){
			cbActiveAdmin.setText("�Ѽ����豸������");
			SpTools.putBoolean(Setup1Activity.this, MyConstants.ISACTIVE, mDPM.isAdminActive(mDeviceAdminSample));
		}
		super.onActivityResult(requestCode, resultCode, data);
	}
}
