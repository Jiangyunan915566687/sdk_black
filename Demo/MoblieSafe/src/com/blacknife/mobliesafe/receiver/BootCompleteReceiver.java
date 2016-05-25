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
	 * 监听手机开机启动的广播
	 */
	@Override
	public void onReceive(Context context, Intent intent) {
		 boolean isProtect = SpTools.getBoolean(context, MyConstants.ISLOSTFIND, false);
		//只有在防盗保护开启的前提下才进行sim卡的保护判断
		if(isProtect){
			//获取绑定的sim卡序列号
			String sim = SpTools.getString(context, MyConstants.SIM, null);
			if(!TextUtils.isEmpty(sim)){
				//获取当前手机的sim卡
				TelephonyManager tm = (TelephonyManager) context.getSystemService(Context.TELEPHONY_SERVICE);
				//获取SIM卡序列号
				String currentSim = tm.getSimSerialNumber();
				if(sim.equals(currentSim)){
					System.out.println("手机安全!");
				}else{
					System.out.println("SIM卡已经变化,发送报警短信!!");
					//读取安全号码
					String safePhone = SpTools.getString(context, MyConstants.SAFENUMBER, "");
					//发送短信给安全号码
					SmsManager smsManager = SmsManager.getDefault();
					String smsText = "SIM card changed!!";
					smsManager.sendTextMessage(safePhone, null, smsText, null, null);
				}
			}
		}
	}

}
