package com.itheima62.mobileguard.receiver;

import com.itheima62.mobileguard.activities.Setup4Activity;
import com.itheima62.mobileguard.service.LostFindService;
import com.itheima62.mobileguard.utils.EncryptTools;
import com.itheima62.mobileguard.utils.MyConstants;
import com.itheima62.mobileguard.utils.SpTools;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.telephony.SmsManager;
import android.telephony.TelephonyManager;

/**
 * @author Administrator
 * ���������Ĺ㲥������
 *
 */
public class BootReceiver extends BroadcastReceiver {

	@Override
	public void onReceive(Context context, Intent intent) {
		//�ֻ�������ɣ����SIM���Ƿ�仯
		//ȡ��ԭ�������sim����Ϣ
		String oldsim = SpTools.getString(context, MyConstants.SIM, "");
		
		//��ȡ��ǰ�ֻ���sim����Ϣ
		TelephonyManager tm = (TelephonyManager) context.getSystemService(Context.TELEPHONY_SERVICE);
		String simSerialNumber = tm.getSimSerialNumber();
		
		//�ж��Ƿ�仯 + "1"ֻ�ǲ��Դ���
		if (!oldsim.equals(simSerialNumber + "1")){
			//sim���仯�����ͱ�������
			//ȡ����ȫ����,�϶��е�
			String safeNumber = SpTools.getString(context, MyConstants.SAFENUMBER, "");
			safeNumber = EncryptTools.decryption(safeNumber);
			//���Ͷ��Ÿ���ȫ����
		   SmsManager sm = SmsManager.getDefault();
		   sm.sendTextMessage(safeNumber, "", "wo shi xiao tou ", null, null);
		}
		
		//�Զ�������������
		
		if (SpTools.getBoolean(context, MyConstants.LOSTFIND, false)){
			// true  �����Զ�������������
			Intent service = new Intent(context,LostFindService.class);
			//�������������ķ���
			context.startService(service);
		}
	}

}
