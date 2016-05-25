package com.itheima62.mobileguard.service;

import android.app.Service;
import android.app.admin.DevicePolicyManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.media.MediaPlayer;
import android.media.MediaPlayer.OnCompletionListener;
import android.os.Bundle;
import android.os.IBinder;
import android.telephony.SmsMessage;

public class LostFindService extends Service {

	private SmsReceiver receiver;
	private boolean isPlay;//false ���ֲ��ŵı��

	@Override
	public IBinder onBind(Intent intent) {
		// TODO Auto-generated method stub
		return null;
	}
	
	/**
	 * @author Administrator
	 * ���ŵĹ㲥������
	 */
	private class SmsReceiver extends BroadcastReceiver{

		@Override
		public void onReceive(Context context, Intent intent) {
			// TODO Auto-generated method stub
			//ʵ�ֶ������ع���
			Bundle extras = intent.getExtras();
		    // int i = 3 
			
			 
			Object datas[] = (Object[]) extras.get("pdus");
			for (Object data:datas){
				SmsMessage sm = SmsMessage.createFromPdu((byte[]) data);
				//System.out.println(sm.getMessageBody() + ":" + sm.getOriginatingAddress());
				String mess = sm.getMessageBody();//��ȡ��������
				if (mess.equals("#*gps*#")){//��ȡȥ��λ��Ϣ
					//��ʱ�Ķ�λ,�Ѷ�λ�Ĺ��ܷŵ�������ִ��
					Intent service = new Intent(context,LocationService.class);
					startService(service);//������λ�ķ���
					
					abortBroadcast();//��ֹ�㲥
				} else if (mess.equals("#*lockscreen*#")){
					//��ȡ�豸������
					DevicePolicyManager dpm = (DevicePolicyManager) getSystemService(DEVICE_POLICY_SERVICE);
					//��������
					dpm.resetPassword("123", 0);
					//һ������
					dpm.lockNow();
					abortBroadcast();//��ֹ�㲥
				} else if (mess.equals("#*wipedata*#")){//Զ���������
					//��ȡ�豸������
					DevicePolicyManager dpm = (DevicePolicyManager) getSystemService(DEVICE_POLICY_SERVICE);
					//���sd����
					dpm.wipeData(DevicePolicyManager.WIPE_EXTERNAL_STORAGE);
					abortBroadcast();//��ֹ�㲥
				}  else if (mess.equals("#*music*#")){
					//ֻ����һ��
					abortBroadcast();
					if (isPlay) {
						return;
					}
						
					//��������
					MediaPlayer mp = MediaPlayer.create(getApplicationContext(), com.itheima62.mobileguard.R.raw.qqqg);
					//����������������Ϊ���ֵ
					mp.setVolume(1, 1);
					mp.start();//��ʼ����
					mp.setOnCompletionListener(new OnCompletionListener() {
						
						@Override
						public void onCompletion(MediaPlayer mp) {
							//���ֲ�����ϣ������˷���
							isPlay = false;
						}
					});;
					isPlay = true;
					
				}
			}
		}
		
	}
	
	@Override
	public void onCreate() {
		//���Ź㲥������
		receiver = new SmsReceiver();
		IntentFilter filter = new IntentFilter("android.provider.Telephony.SMS_RECEIVED");
		filter.setPriority(Integer.MAX_VALUE);//����һ�����嵥�ļ���˭��ע��˭��ִ�У��������һ����������嵥Ҫ��
		//ע����ż���
		registerReceiver(receiver, filter );
		super.onCreate();
	}
	
	@Override
	public void onDestroy() {
		// TODO Auto-generated method stub
		//ȡ��ע����ŵļ����㲥
		unregisterReceiver(receiver);
		super.onDestroy();
	}

}
