package com.itheima62.mobileguard.service;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

import android.app.Notification;
import android.app.PendingIntent;
import android.app.Service;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.database.ContentObserver;
import android.net.Uri;
import android.os.Handler;
import android.os.IBinder;
import android.os.RemoteException;
import android.telephony.PhoneStateListener;
import android.telephony.SmsMessage;
import android.telephony.TelephonyManager;

import com.android.internal.telephony.ITelephony;
import com.itheima62.mobileguard.R;
import com.itheima62.mobileguard.dao.BlackDao;
import com.itheima62.mobileguard.domain.BlackTable;

/**
 * @author Administrator 监听电话和短信
 */
public class TelSmsBlackService extends Service {

	private SmsReceiver receiver;
	private BlackDao dao;
	private PhoneStateListener listener;
	private TelephonyManager tm;

	@Override
	public IBinder onBind(Intent intent) {
		// TODO Auto-generated method stub
		return null;
	}

	/**
	 * @author Administrator 短信监听广播
	 */
	private class SmsReceiver extends BroadcastReceiver {

		@Override
		public void onReceive(Context context, Intent intent) {
			Object[] datas = (Object[]) intent.getExtras().get("pdus");
			for (Object sms : datas) {
				// 获取短信的数据
				SmsMessage sm = SmsMessage.createFromPdu((byte[]) sms);

				// 取短信的发件人号码
				String address = sm.getOriginatingAddress();

				// 判断是否存在黑名单中
				int mode = dao.getMode(address);

				// 短信拦截
				if ((mode & BlackTable.SMS) != 0) {
					// 具有短信拦截
					// if (mode == 短信 || mode == 全部)
					// 拦截此短信
					abortBroadcast();// 终止广播传递
				}
			}
		}

	}

	@Override
	public void onCreate() {

		//提供服务运行级别
		Notification noti = new Notification();
		noti.icon = R.drawable.ic_launcher;
		Intent intent = new Intent();
		intent.setAction("com.itheima62.homeactivity");
		PendingIntent contentIntent = PendingIntent.getActivity(getApplicationContext(), 0, intent, 0);
		noti.setLatestEventInfo(getApplicationContext(), "hmws", "szhmws", contentIntent );
		//设置成前台进程
		startForeground(110,noti);
		// 初始化黑名单的业务类
		dao = new BlackDao(getApplicationContext());

		// 注册短信监听
		// 注册短信的广播
		receiver = new SmsReceiver();
		// 短信广播意图
		IntentFilter filter = new IntentFilter(
				"android.provider.Telephony.SMS_RECEIVED");
		// 设置拦截模式为最高
		filter.setPriority(Integer.MAX_VALUE);
		// 注册短信广播
		registerReceiver(receiver, filter);

		// 注册电话监听
		// 通过电话管理类TelephoneManager
		tm = (TelephonyManager) getSystemService(TELEPHONY_SERVICE);
		
		// 监听电话的状态
		listener = new PhoneStateListener() {

			/*
			 * (non-Javadoc) 该方法用来监听电话的状态
			 * 
			 * @see android.telephony.PhoneStateListener#onCallStateChanged(int,
			 * java.lang.String)
			 */
			@Override
			public void onCallStateChanged(int state, final String incomingNumber) {
				// TODO Auto-generated method stub
				// state 电话的状态 incomingNumber 打进来的号码
				switch (state) {
				case TelephonyManager.CALL_STATE_IDLE:// 挂断的状态，空闲的状态
					System.out.println("CALL_STATE_IDLE");
					break;
				case TelephonyManager.CALL_STATE_RINGING://响铃状态
					System.out.println("CALL_STATE_RINGING");
					//判断是否是黑名单号码
					//获取电话的模式
					int mode = dao.getMode(incomingNumber);
					
					//如果是拦截号码
					if ((mode & BlackTable.TEL) != 0) {
						//电话拦截
						System.out.println("挂断电话");
						//挂断电话之前先注册内容观察者
						getContentResolver().registerContentObserver(Uri.parse("content://call_log/calls"), true,
								new ContentObserver(new Handler()) {

									@Override
									public void onChange(boolean selfChange) {
										//电话日志变化 触发此方法调用
										deleteCalllog(incomingNumber);//删除电话日志
										//取消内容观察者注册
										getContentResolver().unregisterContentObserver(this);
										super.onChange(selfChange);
									}
							
						});
						endCall();
						
					}
					break;
				case TelephonyManager.CALL_STATE_OFFHOOK:// 通话的状态
					System.out.println("CALL_STATE_OFFHOOK");
					break;

				default:
					break;
				}
				super.onCallStateChanged(state, incomingNumber);
			}

		};

		// 注册电话的监听
		tm.listen(listener, PhoneStateListener.LISTEN_CALL_STATE);
		super.onCreate();
	}

	/**
	 * 删除电话日志
	 * @param incomingNumber
	 *     要删除日志的号码
	 */
	protected void deleteCalllog(String incomingNumber) {
		//只能内容提供者来删除电话日志
		Uri uri = Uri.parse("content://call_log/calls");
		//删除日志
		getContentResolver().delete(uri, "number=?", new String[]{incomingNumber});
		
	}

	/**
	 * 挂断电话
	 */
	protected void endCall() {
		//tm.endCall(); 1.5版本后，把该方法阉割掉了
		//想用该功能，实现方法
		//ServiceManager.getService();
		//反射调用
		//1.class  
		try {
			Class clazz = Class.forName("android.os.ServiceManager");
			//2. method
			Method method = clazz.getDeclaredMethod("getService", String.class);
			
			//3.obj 不需要 静态方法
			//4. 调用
			IBinder binder = (IBinder) method.invoke(null, Context.TELEPHONY_SERVICE);
			
			//5.aidl 
			ITelephony iTelephony = ITelephony.Stub.asInterface(binder);
			iTelephony.endCall();//挂断电话
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (NoSuchMethodException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IllegalArgumentException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (RemoteException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

	@Override
	public void onDestroy() {

		// 取消电话监听 状态：LISTEN_NONE
		tm.listen(listener, PhoneStateListener.LISTEN_NONE);
		// 取消短信监听
		unregisterReceiver(receiver);
		super.onDestroy();
	}

}
