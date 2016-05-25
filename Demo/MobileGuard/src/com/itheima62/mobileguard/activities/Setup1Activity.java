package com.itheima62.mobileguard.activities;

import android.app.Activity;
import android.os.Bundle;
import android.view.View;

import com.itheima62.mobileguard.R;

/**
 * @author Administrator
 * 第一个设置向导界面
 */
public class Setup1Activity extends BaseSetupActivity {
	
	
	/**
	 * 子类需要覆盖此方法，来完成界面的显示
	 */
	public void initView() {
		setContentView(R.layout.activity_setup1);
	}

	@Override
	public void nextActivity() {
		// TODO Auto-generated method stub
		// 跳转到第二个设置向导界面
		startActivity(Setup2Activity.class);
	}

	@Override
	public void prevActivity() {
		// TODO Auto-generated method stub
		
	}
	
}
