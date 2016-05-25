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
 * �����绰�Ͷ���
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
	 * ���ż����㲥
	 * 
	 * @author Blacknife
	 *
	 */
	private class SmsReceiver extends BroadcastReceiver {

		@Override
		public void onReceive(Context context, Intent intent) {
			Object[] datas = (Object[]) intent.getExtras().get("pdus");
			for (Object sms : datas) {
				// ��ȡ���ŵ�����
				SmsMessage sm = SmsMessage.createFromPdu((byte[]) sms);
				// ȡ���ŵķ�����
				String address = sm.getOriginatingAddress();
				// �ж��Ƿ���ں�������
				int mode = dao.getMode(address);
				// ��������
				if ((mode & BlackListTable.SMS) != 0) {
					// ���ж�������
					abortBroadcast();// ��ֹ�㲥
				}
			}
		}

	}

	@Override
	public void onCreate() {
		dao = new BlackDao(getApplicationContext());
		receiver = new SmsReceiver();
		// ���Ź㲥��ͼ
		IntentFilter filter = new IntentFilter("android.provider.Telephony.SMS_RECEIVED");
		// ��������ģʽΪ���
		filter.setPriority(Integer.MAX_VALUE);
		// ע��㲥
		registerReceiver(receiver, filter);
		tm = (TelephonyManager) getSystemService(TELEPHONY_SERVICE);
		listener = new PhoneStateListener() {
			/**
			 * �÷������������绰��״̬
			 * ͨ�������aidl���Ҷϵ绰
			 */
			@Override
			public void onCallStateChanged(int state, final String incomingNumber) {
				// state �绰��״̬ incomingNumber ������ĺ���
				switch (state) {
				case TelephonyManager.CALL_STATE_IDLE:// ���е�״̬
					//deleteCalllog(incomingNumber);
					break;
				case TelephonyManager.CALL_STATE_RINGING:// �����״̬
					// ��ȡ�绰��ģʽ
					int mode = dao.getMode(incomingNumber);
					// ��������غ���
					if ((mode & BlackListTable.TEL) != 0) {
						//�Ҷϵ绰��ע�����ݹ۲���
						getContentResolver().registerContentObserver(Uri.parse("content://call_log/calls"),true, 
								new ContentObserver(new Handler()) {

									@Override
									public void onChange(boolean selfChange) {
										//�绰��־�仯�����˷���
										deleteCalllog(incomingNumber);
										//ȡ�����ݹ۲��ߵ�ע��
										getContentResolver().unregisterContentObserver(this);
										super.onChange(selfChange);
									}
									
								});
								
						endCall();
						//ɾ��ͨ����¼
						
					}
					break;
				case TelephonyManager.CALL_STATE_OFFHOOK:// ͨ����״̬

					break;

				default:
					break;
				}
				super.onCallStateChanged(state, incomingNumber);
			}

		};
		// �����绰��״̬
		tm.listen(listener, PhoneStateListener.LISTEN_CALL_STATE);
		super.onCreate();
	}
	
	/**
	 * ��������ɾ�������¼
	 * @param incomingNumber
	 */
	protected void deleteCalllog(String incomingNumber) {
		//ֻ��ͨ�������ṩ����ɾ���绰��־
		Uri uri = Uri.parse("content://call_log/calls");
		getContentResolver().delete(uri, "number=?", new String[]{incomingNumber});
	}

	/**
	 * �ж������غ����ֱ�ӹҶϵ绰
	 */
	protected void endCall() {
		// �������
		// 1.class
		Class clazz;
		try {
			clazz = Class.forName("android.os.ServiceManager");
			// 2.method
			Method method = clazz.getDeclaredMethod("getService", String.class);
			//3.obj ����Ҫ  ��Ϊ���䷽���Ǿ�̬����
			//4.����
			IBinder binder = (IBinder) method.invoke(null, Context.TELEPHONY_SERVICE);
			//5.aidl
			ITelephony iTelephony = ITelephony.Stub.asInterface(binder);
			iTelephony.endCall();//�Ҷϵ绰
		} catch (ClassNotFoundException e) {
			// TODO �Զ����ɵ� catch ��
			e.printStackTrace();
		} catch (NoSuchMethodException e) {
			// TODO �Զ����ɵ� catch ��
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			// TODO �Զ����ɵ� catch ��
			e.printStackTrace();
		} catch (IllegalArgumentException e) {
			// TODO �Զ����ɵ� catch ��
			e.printStackTrace();
		} catch (InvocationTargetException e) {
			// TODO �Զ����ɵ� catch ��
			e.printStackTrace();
		} catch (RemoteException e) {
			// TODO �Զ����ɵ� catch ��
			e.printStackTrace();
		}
	}

	@Override
	public void onDestroy() {
		// ȡ���绰����
		tm.listen(listener, PhoneStateListener.LISTEN_NONE);
		// ȡ�����ż���
		unregisterReceiver(receiver);
		// �رշ���
		super.onDestroy();
	}
}
