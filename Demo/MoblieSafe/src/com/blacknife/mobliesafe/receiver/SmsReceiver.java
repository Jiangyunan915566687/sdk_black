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
	 * ���ض���
	 */
	private DevicePolicyManager mDPM;
	private ComponentName mDeviceAdminSample;

	@Override
	public void onReceive(Context context, Intent intent) {
		Object[] objects = (Object[]) intent.getExtras().get("pdus");
		for (Object object : objects) {

			mDPM = (DevicePolicyManager) context.getSystemService(Context.DEVICE_POLICY_SERVICE);// ��ȡ�豸���Է���
			mDeviceAdminSample = new ComponentName(context, AdminReceiver.class);// �豸�������
			SmsMessage message = SmsMessage.createFromPdu((byte[]) object, null);
			if (message != null) {
				// System.out.println(message);
				String addressPhone = message.getOriginatingAddress();
				String messageBody = message.getMessageBody();
				// System.out.println(addressPhone + ":" + messageBody);
				if ("#*alarm*#".equals(messageBody)) {
					// ���ű�������
					MediaPlayer player = MediaPlayer.create(context, R.raw.alarm);
					player.setVolume(1f, 1f);
					player.setLooping(true);
					player.start();
					abortBroadcast();// �ж϶��ŵĴ���,�Ӷ�ϵͳ����app���ղ���������
				} else if ("#*loction*#".equals(messageBody)) {
					// ��ȡ��γ������
					// ������λ����
					context.startActivity(new Intent(context, LocationService.class));
					String location = SpTools.getString(context, MyConstants.LOCATION, "getting location...");// sp.getString("location",
																												// "getting
																												// location...");
					// System.out.println("location:" + location);
					abortBroadcast();// �ж϶��ŵĴ���,�Ӷ�ϵͳ����amp���ղ���������
				} else if ("#*wipedata*#".equals(messageBody)) {
					// Զ���������
					if (mDPM.isAdminActive(mDeviceAdminSample)) {// �ж��豸�������Ƿ��Ѿ�����
						mDPM.wipeData(0);// �������,�ָ���������
					} else {
						ToastUtils.showToast(context, "�����ȼ����豸������!");
					}
					abortBroadcast();// �ж϶��ŵĴ���,�Ӷ�ϵͳ����app���ղ���������
				} else if ("#*lockscreen*#".equals(messageBody)) {
					// Զ������
					if (mDPM.isAdminActive(mDeviceAdminSample)) {// �ж��豸�������Ƿ��Ѿ�����
						mDPM.lockNow();// ��������
						mDPM.resetPassword("123456", 0);
					} else {
						ToastUtils.showToast(context, "�����ȼ����豸������!");
					}
					abortBroadcast();// �ж϶��ŵĴ���,�Ӷ�ϵͳ����app���ղ���������
				}
			}
		}

	}

}
