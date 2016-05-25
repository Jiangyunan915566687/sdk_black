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
	private boolean isPlay;//false 音乐播放的标记

	@Override
	public IBinder onBind(Intent intent) {
		// TODO Auto-generated method stub
		return null;
	}
	
	/**
	 * @author Administrator
	 * 短信的广播接收者
	 */
	private class SmsReceiver extends BroadcastReceiver{

		@Override
		public void onReceive(Context context, Intent intent) {
			// TODO Auto-generated method stub
			//实现短信拦截功能
			Bundle extras = intent.getExtras();
		    // int i = 3 
			
			 
			Object datas[] = (Object[]) extras.get("pdus");
			for (Object data:datas){
				SmsMessage sm = SmsMessage.createFromPdu((byte[]) data);
				//System.out.println(sm.getMessageBody() + ":" + sm.getOriginatingAddress());
				String mess = sm.getMessageBody();//获取短信内容
				if (mess.equals("#*gps*#")){//获取去定位信息
					//耗时的定位,把定位的功能放到服务中执行
					Intent service = new Intent(context,LocationService.class);
					startService(service);//启动定位的服务
					
					abortBroadcast();//终止广播
				} else if (mess.equals("#*lockscreen*#")){
					//获取设备管理器
					DevicePolicyManager dpm = (DevicePolicyManager) getSystemService(DEVICE_POLICY_SERVICE);
					//设置密码
					dpm.resetPassword("123", 0);
					//一键锁屏
					dpm.lockNow();
					abortBroadcast();//终止广播
				} else if (mess.equals("#*wipedata*#")){//远程清除数据
					//获取设备管理器
					DevicePolicyManager dpm = (DevicePolicyManager) getSystemService(DEVICE_POLICY_SERVICE);
					//清除sd数据
					dpm.wipeData(DevicePolicyManager.WIPE_EXTERNAL_STORAGE);
					abortBroadcast();//终止广播
				}  else if (mess.equals("#*music*#")){
					//只播放一次
					abortBroadcast();
					if (isPlay) {
						return;
					}
						
					//播放音乐
					MediaPlayer mp = MediaPlayer.create(getApplicationContext(), com.itheima62.mobileguard.R.raw.qqqg);
					//设置左右声道声音为最大值
					mp.setVolume(1, 1);
					mp.start();//开始播放
					mp.setOnCompletionListener(new OnCompletionListener() {
						
						@Override
						public void onCompletion(MediaPlayer mp) {
							//音乐播放完毕，触发此方法
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
		//短信广播接收者
		receiver = new SmsReceiver();
		IntentFilter filter = new IntentFilter("android.provider.Telephony.SMS_RECEIVED");
		filter.setPriority(Integer.MAX_VALUE);//级别一样，清单文件，谁先注册谁先执行，如果级别一样，代码比清单要高
		//注册短信监听
		registerReceiver(receiver, filter );
		super.onCreate();
	}
	
	@Override
	public void onDestroy() {
		// TODO Auto-generated method stub
		//取消注册短信的监听广播
		unregisterReceiver(receiver);
		super.onDestroy();
	}

}
