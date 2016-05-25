package com.blacknife.mobliesafe.activity;

import com.blacknife.mobliesafe.R;
import com.blacknife.mobliesafe.service.AddressService;
import com.blacknife.mobliesafe.service.TelSmsBlackService;
import com.blacknife.mobliesafe.utils.MyConstants;
import com.blacknife.mobliesafe.utils.ServiceStatusUtils;
import com.blacknife.mobliesafe.utils.SpTools;
import com.blacknife.mobliesafe.view.SettingClickView;
import com.blacknife.mobliesafe.view.SettingItemView;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;

/**
 * �������� ������
 * 
 * @author Blacknife
 *
 */
public class SettingActivity extends Activity {
	private SettingItemView sivUpdate;
	private SettingItemView sivAddress;
	private SettingClickView scvAddressStyle;// �޸ķ��
	private SettingClickView scvAddressLocation;// �޸Ĺ�����λ��
	private SettingItemView sivBlackNumber;//�޸ĺ���������

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_setting);
		// ��ȡ�����ļ�config
		sivUpdate = (SettingItemView) findViewById(R.id.siv_update);
		sivAddress = (SettingItemView) findViewById(R.id.siv_address);
		sivBlackNumber = (SettingItemView) findViewById(R.id.siv_blacknumber);
		
		initUpdateView();
		initAddressView();
		initAddressStyle();
		initAddressLocation();
		initBlackNumberView();
	}

	/**
	 * �Զ����¿���
	 */
	private void initUpdateView() {
		boolean autoUpdate = SpTools.getBoolean(SettingActivity.this, MyConstants.SERVICEAUTOUPDATE, true);
		if (autoUpdate) {
			sivUpdate.setChecked(true);
		} else {
			sivUpdate.setChecked(false);
		}
		sivUpdate.setOnClickListener(new OnClickListener() {

			@Override
			public void onClick(View v) {
				// �жϵ�ǰ�Ĺ�ѡ״̬
				if (sivUpdate.isChecked()) {
					sivUpdate.setChecked(false);
					// ���������ļ�config
					SpTools.putBoolean(SettingActivity.this, MyConstants.SERVICEAUTOUPDATE, false);
				} else {
					sivUpdate.setChecked(true);
					// ���������ļ�config
					SpTools.putBoolean(SettingActivity.this, MyConstants.SERVICEAUTOUPDATE, true);
				}
			}
		});
	}
	private void initBlackNumberView(){
		// ���ݺ����������Ƿ�����������checkbox
		
		boolean serviceRunning = ServiceStatusUtils.isServiceRunning(this,
					"com.blacknife.mobliesafe.service.TelSmsBlackService");
		if (serviceRunning) {
			sivBlackNumber.setChecked(true);
		} else {
			sivBlackNumber.setChecked(false);
		}
		SpTools.putBoolean(SettingActivity.this, MyConstants.SERVICEBLACKNUMBER, serviceRunning);
		sivBlackNumber.setOnClickListener(new OnClickListener() {
			
			@Override
			public void onClick(View v) {
				if (sivBlackNumber.isChecked()) {
					sivBlackNumber.setChecked(false);
					// ���������ļ�config
					SpTools.putBoolean(SettingActivity.this, MyConstants.SERVICEBLACKNUMBER, false);
					// ֹͣ���������ط���
					stopService(new Intent(SettingActivity.this, TelSmsBlackService.class));
				} else {
					sivBlackNumber.setChecked(true);
					// ���������ļ�config
					SpTools.putBoolean(SettingActivity.this, MyConstants.SERVICEBLACKNUMBER, true);
					// �������������ط���
					startService(new Intent(SettingActivity.this, TelSmsBlackService.class));
				}
			}
		});
	}
	/**
	 * ��ʼ�������ؿ���
	 */
	private void initAddressView() {
		// ���ݹ����ط����Ƿ�����������checkbox
		boolean serviceRunning = ServiceStatusUtils.isServiceRunning(this,
				"com.blacknife.mobliesafe.service.AddressService");
		if (serviceRunning) {
			sivAddress.setChecked(true);
		} else {
			sivAddress.setChecked(false);
		}
		SpTools.putBoolean(SettingActivity.this, MyConstants.SERVICEADDRESS, serviceRunning);
		sivAddress.setOnClickListener(new OnClickListener() {

			@Override
			public void onClick(View v) {
				if (sivAddress.isChecked()) {
					sivAddress.setChecked(false);
					// ���������ļ�config
					SpTools.putBoolean(SettingActivity.this, MyConstants.SERVICEADDRESS, false);
					// ֹͣ�����ط���
					stopService(new Intent(SettingActivity.this, AddressService.class));
				} else {
					sivAddress.setChecked(true);
					// ���������ļ�config
					SpTools.putBoolean(SettingActivity.this, MyConstants.SERVICEADDRESS, true);
					// ���������ط���
					startService(new Intent(SettingActivity.this, AddressService.class));
				}
			}
		});
	}

	final String[] items = new String[] { "��͸��", "������", "��ʿ��", "������", "ƻ����" };

	/**
	 * �޸���ʾ����ʾ���
	 */
	private void initAddressStyle() {
		scvAddressStyle = (SettingClickView) findViewById(R.id.scv_address_style);

		scvAddressStyle.setTitle("��������ʾ����");

		int style = SpTools.getInt(SettingActivity.this, MyConstants.ADDRESSSTYLE, 0);// ��ȡ�����style
		scvAddressStyle.setDesc(items[style]);

		scvAddressStyle.setOnClickListener(new OnClickListener() {

			@Override
			public void onClick(View v) {
				showSingleChooseDailog();
			}
		});
	}

	/**
	 * ����ѡ����ĵ�ѡ��
	 */
	protected void showSingleChooseDailog() {
		AlertDialog.Builder builder = new AlertDialog.Builder(this);
		// builder.setIcon(R.drawable.ic_launcher);
		builder.setTitle("��������ʾ����");

		int style = SpTools.getInt(SettingActivity.this, MyConstants.ADDRESSSTYLE, 0);// ��ȡ�����style

		builder.setSingleChoiceItems(items, style, new DialogInterface.OnClickListener() {

			@Override
			public void onClick(DialogInterface dialog, int which) {
				SpTools.putInt(SettingActivity.this, MyConstants.ADDRESSSTYLE, 0);
				dialog.dismiss();// ��dialog��ʧ

				scvAddressStyle.setDesc(items[which]);// ������Ͽؼ���������Ϣ
			}
		});

		builder.setNegativeButton("ȡ��", null);
		builder.show();
	}

	/**
	 * �޸Ĺ�������ʾλ��
	 */
	private void initAddressLocation() {
		scvAddressLocation = (SettingClickView) findViewById(R.id.scv_address_location);
		scvAddressLocation.setTitle("��������ʾ����ʾλ��");
		scvAddressLocation.setDesc("���ù�������ʾ�����ʾλ��");

		scvAddressLocation.setOnClickListener(new OnClickListener() {

			@Override
			public void onClick(View v) {
				startActivity(new Intent(SettingActivity.this, DragViewActivity.class));
			}
		});
	}
}
