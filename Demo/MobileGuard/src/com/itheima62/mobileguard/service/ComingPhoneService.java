package com.itheima62.mobileguard.service;

import android.app.Service;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.PixelFormat;
import android.os.Handler;
import android.os.IBinder;
import android.os.SystemClock;
import android.telephony.PhoneStateListener;
import android.telephony.TelephonyManager;
import android.view.Gravity;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.view.WindowManager;
import android.widget.TextView;

import com.itheima62.mobileguard.R;
import com.itheima62.mobileguard.engine.PhoneLocationEngine;
import com.itheima62.mobileguard.utils.MyConstants;
import com.itheima62.mobileguard.utils.SpTools;

/**
 * �÷�����Ҫ���ڼ������绰��������ʾ������
 * 
 * @author Administrator
 * 
 */
public class ComingPhoneService extends Service {

	private TelephonyManager tm;
	private PhoneStateListener listener;
	private WindowManager.LayoutParams params;
	private WindowManager wm;
	private View view;

	@Override
	public IBinder onBind(Intent intent) {
		// TODO Auto-generated method stub
		return null;
	}
	
	/**
	 * �Ƿ����Ⲧ�绰
	 */
	private boolean isOutCall = false;
	/**
	 * @author Administrator
	 * �Ⲧ�绰�Ĺ㲥
	 */
	private class OutCallReceiver extends BroadcastReceiver{

		@Override
		public void onReceive(Context context, Intent intent) {
			
			isOutCall = true;//��¼���Ⲧ�绰
			//��ȡ�Ⲧ�ĵ绰����
			String phoneNumber = getResultData();
			
			showLocationToast(phoneNumber);//��ʾ�Ⲧ�绰����˾
		}
		
	}

	@Override
	public void onCreate() {
		
		//����Ⲧ ע��㲥
		outCallReceiver = new OutCallReceiver();
		IntentFilter filter = new IntentFilter("android.intent.action.NEW_OUTGOING_CALL");
		//ע���Ⲧ�绰�㲥
		registerReceiver(outCallReceiver, filter);
		
		
		// ��ʼ�����������
		wm = (WindowManager) getSystemService(WINDOW_SERVICE);

		// ��ʼ����˾�Ĳ���
		initToastParams();

		// ��ʼ���绰״̬����

		// ��ȡ�绰������
		tm = (TelephonyManager) getSystemService(TELEPHONY_SERVICE);

		// �绰״̬������,����������
		listener = new PhoneStateListener() {

			@Override
			public void onCallStateChanged(int state, String incomingNumber) {

				switch (state) {
				case TelephonyManager.CALL_STATE_IDLE:// ���У��Ҷϣ���ʼ����ִ��
					// �ر���˾
					closeLocationToast();
					break;
				case TelephonyManager.CALL_STATE_OFFHOOK:// ͨ��״̬
					// �ر���˾
					closeLocationToast();
					
					break;
				case TelephonyManager.CALL_STATE_RINGING:// ����״̬
					// ��ʾ��˾
					showLocationToast(incomingNumber);// ��ʾ�����ص���˾
					break;

				default:
					break;
				}
				super.onCallStateChanged(state, incomingNumber);
			}

		};

		// ע��绰����
		tm.listen(listener, PhoneStateListener.LISTEN_CALL_STATE);
		super.onCreate();
	}

	private void initToastParams() {
		// TODO Auto-generated method stub
		// XXX This should be changed to use a Dialog, with a Theme.Toast
		// defined that sets up the layout params appropriately.

		// ��˾�ĳ�ʼ������
		params = new WindowManager.LayoutParams();
		;
		params.height = WindowManager.LayoutParams.WRAP_CONTENT;
		params.width = WindowManager.LayoutParams.WRAP_CONTENT;
		
		//���뷽ʽ���Ͻ� 
		params.gravity = Gravity.LEFT | Gravity.TOP;
		params.flags = WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE
		/* | WindowManager.LayoutParams.FLAG_NOT_TOUCHABLE */
		| WindowManager.LayoutParams.FLAG_KEEP_SCREEN_ON;
		params.format = PixelFormat.TRANSLUCENT;
		//��ʼ����˾��λ��
		params.x = (int) Float.parseFloat(SpTools.getString(getApplicationContext(), MyConstants.TOASTX, "0"));
		params.y = (int) Float.parseFloat(SpTools.getString(getApplicationContext(), MyConstants.TOASTY, "0"));
		params.type = WindowManager.LayoutParams.TYPE_PRIORITY_PHONE;// ��˾��������Ӧʱ��,�ı�����
		params.setTitle("Toast");
	}

	private Handler handler = new Handler(){
		public void handleMessage(android.os.Message msg) {
			// ��ʼ��ִ��һ��
			if (view != null) {
				wm.removeView(view);
				view = null;// ɾ���� ��Ϊnull
			}
		};
	};
	/**
	 * �ر���˾
	 */
	protected void closeLocationToast() {
		// TODO Auto-generated method stub
		if (isOutCall) {//�Ⲧ�绰�ӳٹر�
			//�ӳٹر���˾
			new Thread(){
				@Override
				public void run() {
					SystemClock.sleep(6000);//3���ر���˾
					handler.obtainMessage().sendToTarget();// ������Ϣ�ر���˾
				}
			}.start();
			isOutCall = false;
		}  else {//�����绰ֱ�ӹر�
			//
			// ��ʼ��ִ��һ��
			if (view != null) {
				wm.removeView(view);
				view = null;// ɾ���� ��Ϊnull
			}
		}
	}

	int bgStyles[] = new int[]{R.drawable.call_locate_blue,R.drawable.call_locate_gray,R.drawable.call_locate_green,R.drawable.call_locate_orange,R.drawable.call_locate_white};
	private OutCallReceiver outCallReceiver;
	/**
	 * ��ʾ��˾
	 * 
	 * @param incomingNumber
	 *            �绰����
	 */
	protected void showLocationToast(String incomingNumber) {
		if (!isOutCall)//��������Ⲧ�绰��ֱ�ӹر�
			closeLocationToast();
		// ��˾��ʾ��view
		view = View.inflate(getApplicationContext(), R.layout.sys_toast, null);
		int index = Integer.parseInt(SpTools.getString(getApplicationContext(), MyConstants.STYLEBGINDEX, "0"));
		view.setBackgroundResource(bgStyles[index]);
		TextView tv_location = (TextView) view
				.findViewById(R.id.tv_toast_location);
		tv_location.setText(PhoneLocationEngine.locationQuery(incomingNumber,
				getApplicationContext()));

		// ��ʼ��view�Ĵ����¼�
		view.setOnTouchListener(new OnTouchListener() {

			private float startX;
			private float startY;

			@Override
			public boolean onTouch(View v, MotionEvent event) {
				System.out.println(event.getX() + ":" + event.getRawX());
				// �϶���˾
				switch (event.getAction()) {
				case MotionEvent.ACTION_DOWN:// ����
					startX = event.getRawX();
					startY = event.getRawY();
					break;
				case MotionEvent.ACTION_MOVE:// �����ƶ����϶�
					//�µ� x  y����
					float moveX = event.getRawX();//�ƶ����x����
					float moveY = event.getRawY();//�ƶ����x����
					
					//dx x�����λ�ñ仯ֵ dy y�����λ�ñ仯ֵ
					float dx = moveX - startX;
					float dy = moveY - startY;
					//�ı���˾������
					params.x += dx;
					params.y += dy;
					//���»�ȡ�µ�x y����
					startX = moveX;
					startY = moveY;
					
					//������˾��λ��
					wm.updateViewLayout(view, params);
					break;
				case MotionEvent.ACTION_UP:// �ɿ�
					//��¼��ǰ��˾λ��,��x y����ֵ���浽sp��
					if (params.x < 0) {
						params.x = 0;
					} else if (params.x + view.getWidth() > wm.getDefaultDisplay().getWidth()) {
						params.x =  wm.getDefaultDisplay().getWidth() - view.getWidth();
					}
					
					if (params.y < 0) {
						params.y = 0;
					} else if (params.y + view.getHeight() > wm.getDefaultDisplay().getHeight()) {
						params.y = wm.getDefaultDisplay().getHeight() - view.getHeight();
					}
					SpTools.putString(getApplicationContext(), MyConstants.TOASTX, params.x + "");
					SpTools.putString(getApplicationContext(), MyConstants.TOASTY, params.y + "");
					
				default:
					break;
				}
				return false;
			}
		});
		wm.addView(view, params);
	}

	@Override
	public void onDestroy() {
		// ȡ���绰����
		tm.listen(listener, PhoneStateListener.LISTEN_NONE);
		
		//����Ⲧ ȡ��ע��㲥
		unregisterReceiver(outCallReceiver);
		super.onDestroy();
	}

}
