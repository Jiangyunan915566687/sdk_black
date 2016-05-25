package com.blacknife.mobliesafe.service;

import com.blacknife.mobliesafe.R;
import com.blacknife.mobliesafe.db.dao.AddressDao;
import com.blacknife.mobliesafe.utils.MyConstants;
import com.blacknife.mobliesafe.utils.SpTools;

import android.app.Service;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.graphics.PixelFormat;
import android.os.IBinder;
import android.telephony.PhoneStateListener;
import android.telephony.TelephonyManager;
import android.view.Gravity;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.view.WindowManager;
import android.widget.TextView;

/**
 * �������ѷ���
 * 
 * @author Blacknife
 *
 */
public class AddressService extends Service {

	private MyListener listener;
	private TelephonyManager tm;
	private OutCallRecvier receiver;
	private WindowManager mWM;
	private View view;
	private int startX;
	private int startY;
	private WindowManager.LayoutParams params;
	private int winWidth;
	private int winHeight;

	@Override
	public IBinder onBind(Intent intent) {
		return null;
	}

	@Override
	public void onCreate() {
		super.onCreate();
		// ��ȡ�����ļ�config
		tm = (TelephonyManager) getSystemService(TELEPHONY_SERVICE);
		listener = new MyListener();
		tm.listen(listener, PhoneStateListener.LISTEN_CALL_STATE);// ������绰��״̬

		receiver = new OutCallRecvier();
		IntentFilter filter = new IntentFilter(Intent.ACTION_NEW_OUTGOING_CALL);
		// ��̬ע��㲥
		registerReceiver(receiver, filter);
	}

	class MyListener extends PhoneStateListener {
		@Override
		public void onCallStateChanged(int state, String incomingNumber) {
			switch (state) {
			case TelephonyManager.CALL_STATE_RINGING:
				// ������������ѯ������
				String address = AddressDao.getAddress(incomingNumber);
				// ToastUtils.showToast(AddressService.this, address);
				showToast(address);
				break;
			case TelephonyManager.CALL_STATE_IDLE: // �绰����״̬
				if (mWM != null && view != null) {
					mWM.removeView(view);// ��windows���Ƴ�View
				}
				break;
			default:
				break;
			}
			super.onCallStateChanged(state, incomingNumber);
		}
	}

	class OutCallRecvier extends BroadcastReceiver {
		/**
		 * ����ȥ��Ĺ㲥������ ��ҪȨ�� android.permission.PROCESS_OUTGOING_CALLS ��̬ע��㲥������
		 * 
		 * @author Blacknife
		 *
		 */
		@Override
		public void onReceive(Context context, Intent intent) {
			// ��ȡȥ�����
			String number = getResultData();
			String address = AddressDao.getAddress(number);
			// ToastUtils.showToast(context, address);
			showToast(address);
		}

	}

	@Override
	public void onDestroy() {
		super.onDestroy();
		// ֹͣ��������ӷ���
		tm.listen(listener, PhoneStateListener.LISTEN_NONE);
		// ע���㲥
		unregisterReceiver(receiver);
	}

	/**
	 * �Զ�������ظ���
	 */
	private void showToast(String text) {
		mWM = (WindowManager) this.getSystemService(Context.WINDOW_SERVICE);
		winWidth = mWM.getDefaultDisplay().getWidth();
		winHeight = mWM.getDefaultDisplay().getHeight();
		params = new WindowManager.LayoutParams();
		params.height = WindowManager.LayoutParams.WRAP_CONTENT;
		params.width = WindowManager.LayoutParams.WRAP_CONTENT;
		params.flags = WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE
				// | WindowManager.LayoutParams.FLAG_NOT_TOUCHABLE
				| WindowManager.LayoutParams.FLAG_KEEP_SCREEN_ON;
		params.format = PixelFormat.TRANSLUCENT;
		params.type = WindowManager.LayoutParams.TYPE_PHONE;
		// ������λ������Ϊ���Ϸ�,Ҳ����(0,0)��ʼ,������Ĭ������λ��
		params.gravity = Gravity.LEFT + Gravity.TOP;

		params.setTitle("Toast");
		int lastX = SpTools.getInt(getApplicationContext(), MyConstants.LASTX, 0);
		int lastY = SpTools.getInt(getApplicationContext(), MyConstants.LASTY, 0);
		// ���ø����������Ϸ���ƫ����
		params.x = lastX;
		params.y = lastY;
		// view = new TextView(this);
		view = View.inflate(this, R.layout.toast_address, null);

		int[] bgs = new int[] { R.drawable.call_locate_white, R.drawable.call_locate_orange,
				R.drawable.call_locate_blue, R.drawable.call_locate_gray, R.drawable.call_locate_green };
		int style = SpTools.getInt(getApplicationContext(), MyConstants.ADDRESSSTYLE, 0);

		view.setBackgroundResource(bgs[style]);// ���ݴ洢����ʽ���±���

		TextView tvText = (TextView) view.findViewById(R.id.tv_number);
		tvText.setText(text);

		mWM.addView(view, params);// ��view�������Ļ��(Window)
		view.setOnTouchListener(new OnTouchListener() {

			@Override
			public boolean onTouch(View v, MotionEvent event) {
				switch (event.getAction()) {
				case MotionEvent.ACTION_DOWN:
					startX = (int) event.getRawX();
					startY = (int) event.getRawY();
					break;
				case MotionEvent.ACTION_MOVE:
					int endX = (int) event.getRawX();
					int endY = (int) event.getRawY();

					// �����ƶ�ƫ����
					int dx = endX - startX;
					int dy = endY - startY;
					//���¸���λ��
					params.x += dx;
					params.y += dy;
					//��ֹ����ƫ����Ļ
					if(params.x < 0 ){
						params.x = 0;
					}
					if(params.x > winWidth - view.getWidth() ){
						params.x = winWidth - view.getWidth();
					}
					if(params.y < 0 ){
						params.y = 0;
					}
					if(params.y > winHeight - view.getHeight() ){
						params.y = winHeight - view.getHeight();
					}
					mWM.updateViewLayout(view, params);
					// ���³�ʼ���������
					startX = (int) event.getRawX();
					startY = (int) event.getRawY();
					break;
				case MotionEvent.ACTION_UP:
					// ��¼�����
					SpTools.putInt(getApplicationContext(), MyConstants.LASTX, params.x);
					SpTools.putInt(getApplicationContext(), MyConstants.LASTY, params.y);
					break;

				default:
					break;
				}
				return true;
			}
		});
	}
}
