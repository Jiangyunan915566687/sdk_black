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
 * 开机启动的广播接收者
 *
 */
public class BootReceiver extends BroadcastReceiver {

	@Override
	public void onReceive(Context context, Intent intent) {
		//手机启动完成，检测SIM卡是否变化
		//取出原来保存的sim卡信息
		String oldsim = SpTools.getString(context, MyConstants.SIM, "");
		
		//获取当前手机的sim卡信息
		TelephonyManager tm = (TelephonyManager) context.getSystemService(Context.TELEPHONY_SERVICE);
		String simSerialNumber = tm.getSimSerialNumber();
		
		//判断是否变化 + "1"只是测试代码
		if (!oldsim.equals(simSerialNumber + "1")){
			//sim卡变化，发送报警短信
			//取出安全号码,肯定有的
			String safeNumber = SpTools.getString(context, MyConstants.SAFENUMBER, "");
			safeNumber = EncryptTools.decryption(safeNumber);
			//发送短信给安全号码
		   SmsManager sm = SmsManager.getDefault();
		   sm.sendTextMessage(safeNumber, "", "wo shi xiao tou ", null, null);
		}
		
		//自动启动防盗服务
		
		if (SpTools.getBoolean(context, MyConstants.LOSTFIND, false)){
			// true  开机自动启动防盗服务
			Intent service = new Intent(context,LostFindService.class);
			//启动防盗保护的服务
			context.startService(service);
		}
	}

}
