package com.blacknife.mobliesafe.receiver;

import com.blacknife.mobliesafe.db.dao.AddressDao;
import com.blacknife.mobliesafe.utils.ToastUtils;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
/**
 * ����ȥ��Ĺ㲥������
 * ��ҪȨ�� android.permission.PROCESS_OUTGOING_CALLS
 * ��̬ע��㲥������
 * @author Blacknife
 *
 */
public class OutCallReceiver extends BroadcastReceiver {

	@Override
	public void onReceive(Context context, Intent intent) {
		//��ȡȥ�����
		String number = getResultData();
		String address = AddressDao.getAddress(number);
		ToastUtils.showToast(context, address);
	}

}
