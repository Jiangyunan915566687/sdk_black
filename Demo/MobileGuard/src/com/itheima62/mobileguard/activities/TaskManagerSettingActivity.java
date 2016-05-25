package com.itheima62.mobileguard.activities;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;

import com.itheima62.mobileguard.R;
import com.itheima62.mobileguard.service.ClearTaskService;
import com.itheima62.mobileguard.utils.MyConstants;
import com.itheima62.mobileguard.utils.ServiceUtils;
import com.itheima62.mobileguard.utils.SpTools;

/**
 * 进程管理的设置界面
 * @author Administrator
 *
 */
public class TaskManagerSettingActivity extends Activity {
	private CheckBox cb_lockscreenClear;
	private CheckBox cb_showsystemapp;

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		super.onCreate(savedInstanceState);
		
		initView();
		
		initEvent();
		
		initData();
	}

	private void initData() {
		
		//通过标记来初始化是否显示系统进程的状态
		cb_showsystemapp.setChecked(SpTools.getBoolean(this, MyConstants.SHOWSYSTEM, false));
		//通过清理进程的服务判断 是否开启
		cb_lockscreenClear.setChecked(ServiceUtils.isServiceRunning(getApplicationContext(), "com.itheima62.mobileguard.service.ClearTaskService"));
	}

	private void initEvent() {
		cb_showsystemapp.setOnCheckedChangeListener(new OnCheckedChangeListener() {
			
			@Override
			public void onCheckedChanged(CompoundButton buttonView, boolean isChecked) {
				// TODO Auto-generated method stub
				//保存是否显示系统进程的标记
				SpTools.putBoolean(getApplicationContext(), MyConstants.SHOWSYSTEM, isChecked);
			}
		});
		//设置锁屏清理进程
		cb_lockscreenClear.setOnCheckedChangeListener(new OnCheckedChangeListener() {
			
			@Override
			public void onCheckedChanged(CompoundButton buttonView, boolean isChecked) {
				//锁屏的广播
				if (isChecked) {
					Intent service = new Intent(TaskManagerSettingActivity.this,ClearTaskService.class);
					startService(service);
				} else {
					Intent service = new Intent(TaskManagerSettingActivity.this,ClearTaskService.class);
					stopService(service);
				}
			}
		});
	}

	private void initView() {
		setContentView(R.layout.activity_taskmanagersettingcenter);
		//锁屏清理进程
		
		cb_lockscreenClear = (CheckBox) findViewById(R.id.cb_taskmanager_settingcenter_lockscree_clear);
	
	    //显示系统进程
		cb_showsystemapp = (CheckBox) findViewById(R.id.cb_taskmanager_settingcenter_lockscree_showsystemapp);
	
	}
}
