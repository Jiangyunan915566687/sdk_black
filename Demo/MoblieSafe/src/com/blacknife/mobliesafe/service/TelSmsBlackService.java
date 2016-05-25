package com.blacknife.mobliesafe.service;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

import com.android.internal.telephony.ITelephony;
import com.blacknife.mobliesafe.db.dao.BlackDao;
import com.blacknife.mobliesafe.domain.BlackListTable;
import android.R.integer;
import android.app.Service;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.database.ContentObservable;
import android.database.ContentObserver;
import android.net.Uri;
import android.os.Handler;
import android.os.IBinder;
import android.os.RemoteException;
import android.os.SystemClock;
import android.telephony.PhoneStateListener;
import android.telephony.SmsMessage;
import android.telephony.TelephonyManager;

/**
 * 监听电话和短信
 * 
 * @author Blacknife
 *
 */
public class TelSmsBlackService extends Service {

	private BlackDao dao;
	private PhoneStateListener listener;
	private TelephonyManager tm;
	private SmsReceiver receiver;

	@Override
	public IBinder onBind(Intent intent) {
		return null;
	}

	/**
	 * 短信监听广播
	 * 
	 * @author Blacknife
	 *
	 */
	private class SmsReceiver extends BroadcastReceiver {

		@Override
		public void onReceive(Context context, Intent intent) {
			Object[] datas = (Object[]) intent.getExtras().get("pdus");
			for (Object sms : datas) {
				// 获取短信的数据
				SmsMessage sm = SmsMessage.createFromPdu((byte[]) sms);
				// 取短信的发件人
				String address = sm.getOriginatingAddress();
				// 判断是否存在黑名单中
				int mode = dao.getMode(address);
				// 短信拦截
				if ((mode & BlackListTable.SMS) != 0) {
					// 具有短信拦截
					abortBroadcast();// 终止广播
				}
			}
		}

	}

	@Override
	public void onCreate() {
		dao = new BlackDao(getApplicationContext());
		receiver = new SmsReceiver();
		// 短信广播意图
		IntentFilter filter = new IntentFilter("android.provider.Telephony.SMS_RECEIVED");
		// 设置拦截模式为最高
		filter.setPriority(Integer.MAX_VALUE);
		// 注册广播
		registerReceiver(receiver, filter);
		tm = (TelephonyManager) getSystemService(TELEPHONY_SERVICE);
		listener = new PhoneStateListener() {
			/**
			 * 该方法用来监听电话的状态
			 * 通过反射和aidl来挂断电话
			 */
			@Override
			public void onCallStateChanged(int state, final String incomingNumber) {
				// state 电话的状态 incomingNumber 打进来的号码
				switch (state) {
				case TelephonyManager.CALL_STATE_IDLE:// 空闲的状态
					//deleteCalllog(incomingNumber);
					break;
				case TelephonyManager.CALL_STATE_RINGING:// 响铃的状态
					// 获取电话的模式
					int mode = dao.getMode(incomingNumber);
					// 如果是拦截号码
					if ((mode & BlackListTable.TEL) != 0) {
						//挂断电话先注册内容观察者
						getContentResolver().registerContentObserver(Uri.parse("content://call_log/calls"),true, 
								new ContentObserver(new Handler()) {

									@Override
									public void onChange(boolean selfChange) {
										//电话日志变化触发此方法
										deleteCalllog(incomingNumber);
										//取消内容观察者的注册
										getContentResolver().unregisterContentObserver(this);
										super.onChange(selfChange);
									}
									
								});
								
						endCall();
						//删除通话记录
						
					}
					break;
				case TelephonyManager.CALL_STATE_OFFHOOK:// 通话的状态

					break;

				default:
					break;
				}
				super.onCallStateChanged(state, incomingNumber);
			}

		};
		// 监听电话的状态
		tm.listen(listener, PhoneStateListener.LISTEN_CALL_STATE);
		super.onCreate();
	}
	
	/**
	 * 根据来电删除来点记录
	 * @param incomingNumber
	 */
	protected void deleteCalllog(String incomingNumber) {
		//只能通过内容提供者来删除电话日志
		Uri uri = Uri.parse("content://call_log/calls");
		getContentResolver().delete(uri, "number=?", new String[]{incomingNumber});
	}

	/**
	 * 判断是拦截号码就直接挂断电话
	 */
	protected void endCall() {
		// 反射调用
		// 1.class
		Class clazz;
		try {
			clazz = Class.forName("android.os.ServiceManager");
			// 2.method
			Method method = clazz.getDeclaredMethod("getService", String.class);
			//3.obj 不需要  因为反射方法是静态方法
			//4.调用
			IBinder binder = (IBinder) method.invoke(null, Context.TELEPHONY_SERVICE);
			//5.aidl
			ITelephony iTelephony = ITelephony.Stub.asInterface(binder);
			iTelephony.endCall();//挂断电话
		} catch (ClassNotFoundException e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
		} catch (NoSuchMethodException e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
		} catch (IllegalArgumentException e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
		} catch (InvocationTargetException e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
		} catch (RemoteException e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
		}
	}

	@Override
	public void onDestroy() {
		// 取消电话监听
		tm.listen(listener, PhoneStateListener.LISTEN_NONE);
		// 取消短信监听
		unregisterReceiver(receiver);
		// 关闭服务
		super.onDestroy();
	}
}
