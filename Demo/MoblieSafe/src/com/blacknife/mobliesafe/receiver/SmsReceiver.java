package com.blacknife.mobliesafe.receiver;

import com.blacknife.mobliesafe.R;
import com.blacknife.mobliesafe.service.LocationService;
import com.blacknife.mobliesafe.utils.MyConstants;
import com.blacknife.mobliesafe.utils.SpTools;
import com.blacknife.mobliesafe.utils.ToastUtils;

import android.app.admin.DevicePolicyManager;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.media.MediaPlayer;
import android.telephony.SmsMessage;

public class SmsReceiver extends BroadcastReceiver {
	/**
	 * 拦截短信
	 */
	private DevicePolicyManager mDPM;
	private ComponentName mDeviceAdminSample;

	@Override
	public void onReceive(Context context, Intent intent) {
		Object[] objects = (Object[]) intent.getExtras().get("pdus");
		for (Object object : objects) {

			mDPM = (DevicePolicyManager) context.getSystemService(Context.DEVICE_POLICY_SERVICE);// 获取设备策略服务
			mDeviceAdminSample = new ComponentName(context, AdminReceiver.class);// 设备管理组件
			SmsMessage message = SmsMessage.createFromPdu((byte[]) object, null);
			if (message != null) {
				// System.out.println(message);
				String addressPhone = message.getOriginatingAddress();
				String messageBody = message.getMessageBody();
				// System.out.println(addressPhone + ":" + messageBody);
				if ("#*alarm*#".equals(messageBody)) {
					// 播放报警音乐
					MediaPlayer player = MediaPlayer.create(context, R.raw.alarm);
					player.setVolume(1f, 1f);
					player.setLooping(true);
					player.start();
					abortBroadcast();// 中断短信的传递,从而系统短信app就收不到内容了
				} else if ("#*loction*#".equals(messageBody)) {
					// 获取经纬度坐标
					// 开启定位服务
					context.startActivity(new Intent(context, LocationService.class));
					String location = SpTools.getString(context, MyConstants.LOCATION, "getting location...");// sp.getString("location",
																												// "getting
																												// location...");
					// System.out.println("location:" + location);
					abortBroadcast();// 中断短信的传递,从而系统短信amp就收不到内容了
				} else if ("#*wipedata*#".equals(messageBody)) {
					// 远程清除数据
					if (mDPM.isAdminActive(mDeviceAdminSample)) {// 判断设备管理器是否已经激活
						mDPM.wipeData(0);// 清除数据,恢复出厂设置
					} else {
						ToastUtils.showToast(context, "必须先激活设备管理器!");
					}
					abortBroadcast();// 中断短信的传递,从而系统短信app就收不到内容了
				} else if ("#*lockscreen*#".equals(messageBody)) {
					// 远程锁屏
					if (mDPM.isAdminActive(mDeviceAdminSample)) {// 判断设备管理器是否已经激活
						mDPM.lockNow();// 立即锁屏
						mDPM.resetPassword("123456", 0);
					} else {
						ToastUtils.showToast(context, "必须先激活设备管理器!");
					}
					abortBroadcast();// 中断短信的传递,从而系统短信app就收不到内容了
				}
			}
		}

	}

}
