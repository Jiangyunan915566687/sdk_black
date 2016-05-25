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
 * 第一个设置向导页
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
		mDPM = (DevicePolicyManager) getSystemService(Context.DEVICE_POLICY_SERVICE);// 获取设备策略服务
		mDeviceAdminSample = new ComponentName(this, AdminReceiver.class);// 设备管理组件
		isActive = SpTools.getBoolean(Setup1Activity.this, MyConstants.ISACTIVE, false);
		cbActiveAdmin = (Button) findViewById(R.id.bt_activeAdmin);
		// sp保存的信息更新
		if (mDPM.isAdminActive(mDeviceAdminSample)) {
			cbActiveAdmin.setText("已激活设备管理器");
		} else {
			cbActiveAdmin.setText("未激活设备管理器");
		}
		cbActiveAdmin.setOnClickListener(new OnClickListener() {

			@Override
			public void onClick(View v) {
				
				if (mDPM.isAdminActive(mDeviceAdminSample)) {// 判断设备管理器是否已经激活
					mDPM.removeActiveAdmin(mDeviceAdminSample);// 取消激活
					cbActiveAdmin.setText("未激活设备管理器");
					System.out.println("取消激活");					
				} else {
					
					System.out.println("开始激活");
					Intent intent = new Intent(DevicePolicyManager.ACTION_ADD_DEVICE_ADMIN);
					intent.putExtra(DevicePolicyManager.EXTRA_DEVICE_ADMIN, mDeviceAdminSample);
					intent.putExtra(DevicePolicyManager.EXTRA_ADD_EXPLANATION, "哈哈哈, 我们有了超级设备管理器, 好NB!");
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
			ToastUtils.showToast(this, "启用防盗功能必须激活设备管理器");
			return;
		} 
		startActivity(new Intent(Setup1Activity.this, Setup2Activity.class));
		finish();
		// 两个界面切换的动画
		overridePendingTransition(R.anim.tran_next_in, R.anim.tran_next_out);
		// 进入动画和退出动画
	}

	@Override
	protected void onActivityResult(int requestCode, int resultCode, Intent data) {
		// TODO 自动生成的方法存根
		if (mDPM.isAdminActive(mDeviceAdminSample)){
			cbActiveAdmin.setText("已激活设备管理器");
			SpTools.putBoolean(Setup1Activity.this, MyConstants.ISACTIVE, mDPM.isAdminActive(mDeviceAdminSample));
		}
		super.onActivityResult(requestCode, resultCode, data);
	}
}
