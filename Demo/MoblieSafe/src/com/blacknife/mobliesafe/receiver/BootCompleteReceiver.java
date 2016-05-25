package com.blacknife.mobliesafe.receiver;

import com.blacknife.mobliesafe.utils.MyConstants;
import com.blacknife.mobliesafe.utils.SpTools;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.telephony.SmsManager;
import android.telephony.TelephonyManager;
import android.text.TextUtils;

public class BootCompleteReceiver extends BroadcastReceiver {
	/**
	 * �����ֻ����������Ĺ㲥
	 */
	@Override
	public void onReceive(Context context, Intent intent) {
		 boolean isProtect = SpTools.getBoolean(context, MyConstants.ISLOSTFIND, false);
		//ֻ���ڷ�������������ǰ���²Ž���sim���ı����ж�
		if(isProtect){
			//��ȡ�󶨵�sim�����к�
			String sim = SpTools.getString(context, MyConstants.SIM, null);
			if(!TextUtils.isEmpty(sim)){
				//��ȡ��ǰ�ֻ���sim��
				TelephonyManager tm = (TelephonyManager) context.getSystemService(Context.TELEPHONY_SERVICE);
				//��ȡSIM�����к�
				String currentSim = tm.getSimSerialNumber();
				if(sim.equals(currentSim)){
					System.out.println("�ֻ���ȫ!");
				}else{
					System.out.println("SIM���Ѿ��仯,���ͱ�������!!");
					//��ȡ��ȫ����
					String safePhone = SpTools.getString(context, MyConstants.SAFENUMBER, "");
					//���Ͷ��Ÿ���ȫ����
					SmsManager smsManager = SmsManager.getDefault();
					String smsText = "SIM card changed!!";
					smsManager.sendTextMessage(safePhone, null, smsText, null, null);
				}
			}
		}
	}

}
