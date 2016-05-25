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
 * @author Administrator �����绰�Ͷ���
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
	 * @author Administrator ���ż����㲥
	 */
	private class SmsReceiver extends BroadcastReceiver {

		@Override
		public void onReceive(Context context, Intent intent) {
			Object[] datas = (Object[]) intent.getExtras().get("pdus");
			for (Object sms : datas) {
				// ��ȡ���ŵ�����
				SmsMessage sm = SmsMessage.createFromPdu((byte[]) sms);

				// ȡ���ŵķ����˺���
				String address = sm.getOriginatingAddress();

				// �ж��Ƿ���ں�������
				int mode = dao.getMode(address);

				// ��������
				if ((mode & BlackTable.SMS) != 0) {
					// ���ж�������
					// if (mode == ���� || mode == ȫ��)
					// ���ش˶���
					abortBroadcast();// ��ֹ�㲥����
				}
			}
		}

	}

	@Override
	public void onCreate() {

		//�ṩ�������м���
		Notification noti = new Notification();
		noti.icon = R.drawable.ic_launcher;
		Intent intent = new Intent();
		intent.setAction("com.itheima62.homeactivity");
		PendingIntent contentIntent = PendingIntent.getActivity(getApplicationContext(), 0, intent, 0);
		noti.setLatestEventInfo(getApplicationContext(), "hmws", "szhmws", contentIntent );
		//���ó�ǰ̨����
		startForeground(110,noti);
		// ��ʼ����������ҵ����
		dao = new BlackDao(getApplicationContext());

		// ע����ż���
		// ע����ŵĹ㲥
		receiver = new SmsReceiver();
		// ���Ź㲥��ͼ
		IntentFilter filter = new IntentFilter(
				"android.provider.Telephony.SMS_RECEIVED");
		// ��������ģʽΪ���
		filter.setPriority(Integer.MAX_VALUE);
		// ע����Ź㲥
		registerReceiver(receiver, filter);

		// ע��绰����
		// ͨ���绰������TelephoneManager
		tm = (TelephonyManager) getSystemService(TELEPHONY_SERVICE);
		
		// �����绰��״̬
		listener = new PhoneStateListener() {

			/*
			 * (non-Javadoc) �÷������������绰��״̬
			 * 
			 * @see android.telephony.PhoneStateListener#onCallStateChanged(int,
			 * java.lang.String)
			 */
			@Override
			public void onCallStateChanged(int state, final String incomingNumber) {
				// TODO Auto-generated method stub
				// state �绰��״̬ incomingNumber ������ĺ���
				switch (state) {
				case TelephonyManager.CALL_STATE_IDLE:// �Ҷϵ�״̬�����е�״̬
					System.out.println("CALL_STATE_IDLE");
					break;
				case TelephonyManager.CALL_STATE_RINGING://����״̬
					System.out.println("CALL_STATE_RINGING");
					//�ж��Ƿ��Ǻ���������
					//��ȡ�绰��ģʽ
					int mode = dao.getMode(incomingNumber);
					
					//��������غ���
					if ((mode & BlackTable.TEL) != 0) {
						//�绰����
						System.out.println("�Ҷϵ绰");
						//�Ҷϵ绰֮ǰ��ע�����ݹ۲���
						getContentResolver().registerContentObserver(Uri.parse("content://call_log/calls"), true,
								new ContentObserver(new Handler()) {

									@Override
									public void onChange(boolean selfChange) {
										//�绰��־�仯 �����˷�������
										deleteCalllog(incomingNumber);//ɾ���绰��־
										//ȡ�����ݹ۲���ע��
										getContentResolver().unregisterContentObserver(this);
										super.onChange(selfChange);
									}
							
						});
						endCall();
						
					}
					break;
				case TelephonyManager.CALL_STATE_OFFHOOK:// ͨ����״̬
					System.out.println("CALL_STATE_OFFHOOK");
					break;

				default:
					break;
				}
				super.onCallStateChanged(state, incomingNumber);
			}

		};

		// ע��绰�ļ���
		tm.listen(listener, PhoneStateListener.LISTEN_CALL_STATE);
		super.onCreate();
	}

	/**
	 * ɾ���绰��־
	 * @param incomingNumber
	 *     Ҫɾ����־�ĺ���
	 */
	protected void deleteCalllog(String incomingNumber) {
		//ֻ�������ṩ����ɾ���绰��־
		Uri uri = Uri.parse("content://call_log/calls");
		//ɾ����־
		getContentResolver().delete(uri, "number=?", new String[]{incomingNumber});
		
	}

	/**
	 * �Ҷϵ绰
	 */
	protected void endCall() {
		//tm.endCall(); 1.5�汾�󣬰Ѹ÷����˸����
		//���øù��ܣ�ʵ�ַ���
		//ServiceManager.getService();
		//�������
		//1.class  
		try {
			Class clazz = Class.forName("android.os.ServiceManager");
			//2. method
			Method method = clazz.getDeclaredMethod("getService", String.class);
			
			//3.obj ����Ҫ ��̬����
			//4. ����
			IBinder binder = (IBinder) method.invoke(null, Context.TELEPHONY_SERVICE);
			
			//5.aidl 
			ITelephony iTelephony = ITelephony.Stub.asInterface(binder);
			iTelephony.endCall();//�Ҷϵ绰
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

		// ȡ���绰���� ״̬��LISTEN_NONE
		tm.listen(listener, PhoneStateListener.LISTEN_NONE);
		// ȡ�����ż���
		unregisterReceiver(receiver);
		super.onDestroy();
	}

}
