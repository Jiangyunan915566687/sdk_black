package com.blacknife.mobliesafe.receiver;

import com.blacknife.mobliesafe.db.dao.AddressDao;
import com.blacknife.mobliesafe.utils.ToastUtils;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
/**
 * 监听去电的广播接受者
 * 需要权限 android.permission.PROCESS_OUTGOING_CALLS
 * 动态注册广播接受者
 * @author Blacknife
 *
 */
public class OutCallReceiver extends BroadcastReceiver {

	@Override
	public void onReceive(Context context, Intent intent) {
		//获取去电号码
		String number = getResultData();
		String address = AddressDao.getAddress(number);
		ToastUtils.showToast(context, address);
	}

}
