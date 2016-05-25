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
 * 设置中心 界面类
 * 
 * @author Blacknife
 *
 */
public class SettingActivity extends Activity {
	private SettingItemView sivUpdate;
	private SettingItemView sivAddress;
	private SettingClickView scvAddressStyle;// 修改风格
	private SettingClickView scvAddressLocation;// 修改归属地位置
	private SettingItemView sivBlackNumber;//修改黑名单开关

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_setting);
		// 读取设置文件config
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
	 * 自动更新开关
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
				// 判断当前的勾选状态
				if (sivUpdate.isChecked()) {
					sivUpdate.setChecked(false);
					// 更新设置文件config
					SpTools.putBoolean(SettingActivity.this, MyConstants.SERVICEAUTOUPDATE, false);
				} else {
					sivUpdate.setChecked(true);
					// 更新设置文件config
					SpTools.putBoolean(SettingActivity.this, MyConstants.SERVICEAUTOUPDATE, true);
				}
			}
		});
	}
	private void initBlackNumberView(){
		// 根据黑名单服务是否运行来更新checkbox
		
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
					// 更新设置文件config
					SpTools.putBoolean(SettingActivity.this, MyConstants.SERVICEBLACKNUMBER, false);
					// 停止黑名单拦截服务
					stopService(new Intent(SettingActivity.this, TelSmsBlackService.class));
				} else {
					sivBlackNumber.setChecked(true);
					// 更新设置文件config
					SpTools.putBoolean(SettingActivity.this, MyConstants.SERVICEBLACKNUMBER, true);
					// 开启黑名单拦截服务
					startService(new Intent(SettingActivity.this, TelSmsBlackService.class));
				}
			}
		});
	}
	/**
	 * 初始化归属地开关
	 */
	private void initAddressView() {
		// 根据归属地服务是否运行来更新checkbox
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
					// 更新设置文件config
					SpTools.putBoolean(SettingActivity.this, MyConstants.SERVICEADDRESS, false);
					// 停止归属地服务
					stopService(new Intent(SettingActivity.this, AddressService.class));
				} else {
					sivAddress.setChecked(true);
					// 更新设置文件config
					SpTools.putBoolean(SettingActivity.this, MyConstants.SERVICEADDRESS, true);
					// 开启归属地服务
					startService(new Intent(SettingActivity.this, AddressService.class));
				}
			}
		});
	}

	final String[] items = new String[] { "半透明", "活力橙", "卫士蓝", "金属灰", "苹果绿" };

	/**
	 * 修改提示框显示风格
	 */
	private void initAddressStyle() {
		scvAddressStyle = (SettingClickView) findViewById(R.id.scv_address_style);

		scvAddressStyle.setTitle("归属地提示框风格");

		int style = SpTools.getInt(SettingActivity.this, MyConstants.ADDRESSSTYLE, 0);// 读取保存的style
		scvAddressStyle.setDesc(items[style]);

		scvAddressStyle.setOnClickListener(new OnClickListener() {

			@Override
			public void onClick(View v) {
				showSingleChooseDailog();
			}
		});
	}

	/**
	 * 弹出选择风格的单选框
	 */
	protected void showSingleChooseDailog() {
		AlertDialog.Builder builder = new AlertDialog.Builder(this);
		// builder.setIcon(R.drawable.ic_launcher);
		builder.setTitle("归属地提示框风格");

		int style = SpTools.getInt(SettingActivity.this, MyConstants.ADDRESSSTYLE, 0);// 读取保存的style

		builder.setSingleChoiceItems(items, style, new DialogInterface.OnClickListener() {

			@Override
			public void onClick(DialogInterface dialog, int which) {
				SpTools.putInt(SettingActivity.this, MyConstants.ADDRESSSTYLE, 0);
				dialog.dismiss();// 让dialog消失

				scvAddressStyle.setDesc(items[which]);// 更新组合控件的描述信息
			}
		});

		builder.setNegativeButton("取消", null);
		builder.show();
	}

	/**
	 * 修改归属地显示位置
	 */
	private void initAddressLocation() {
		scvAddressLocation = (SettingClickView) findViewById(R.id.scv_address_location);
		scvAddressLocation.setTitle("归属地提示框显示位置");
		scvAddressLocation.setDesc("设置归属地提示框的显示位置");

		scvAddressLocation.setOnClickListener(new OnClickListener() {

			@Override
			public void onClick(View v) {
				startActivity(new Intent(SettingActivity.this, DragViewActivity.class));
			}
		});
	}
}
