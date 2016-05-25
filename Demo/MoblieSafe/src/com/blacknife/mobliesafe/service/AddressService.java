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
 * 来电提醒服务
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
		// 读取设置文件config
		tm = (TelephonyManager) getSystemService(TELEPHONY_SERVICE);
		listener = new MyListener();
		tm.listen(listener, PhoneStateListener.LISTEN_CALL_STATE);// 监听打电话的状态

		receiver = new OutCallRecvier();
		IntentFilter filter = new IntentFilter(Intent.ACTION_NEW_OUTGOING_CALL);
		// 动态注册广播
		registerReceiver(receiver, filter);
	}

	class MyListener extends PhoneStateListener {
		@Override
		public void onCallStateChanged(int state, String incomingNumber) {
			switch (state) {
			case TelephonyManager.CALL_STATE_RINGING:
				// 根据来电号码查询归属地
				String address = AddressDao.getAddress(incomingNumber);
				// ToastUtils.showToast(AddressService.this, address);
				showToast(address);
				break;
			case TelephonyManager.CALL_STATE_IDLE: // 电话闲置状态
				if (mWM != null && view != null) {
					mWM.removeView(view);// 从windows中移除View
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
		 * 监听去电的广播接受者 需要权限 android.permission.PROCESS_OUTGOING_CALLS 动态注册广播接受者
		 * 
		 * @author Blacknife
		 *
		 */
		@Override
		public void onReceive(Context context, Intent intent) {
			// 获取去电号码
			String number = getResultData();
			String address = AddressDao.getAddress(number);
			// ToastUtils.showToast(context, address);
			showToast(address);
		}

	}

	@Override
	public void onDestroy() {
		super.onDestroy();
		// 停止来电监听子服务
		tm.listen(listener, PhoneStateListener.LISTEN_NONE);
		// 注销广播
		unregisterReceiver(receiver);
	}

	/**
	 * 自定义归属地浮窗
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
		// 将重心位置设置为左上方,也就是(0,0)开始,而不是默认重心位置
		params.gravity = Gravity.LEFT + Gravity.TOP;

		params.setTitle("Toast");
		int lastX = SpTools.getInt(getApplicationContext(), MyConstants.LASTX, 0);
		int lastY = SpTools.getInt(getApplicationContext(), MyConstants.LASTY, 0);
		// 设置浮窗基于左上方的偏移量
		params.x = lastX;
		params.y = lastY;
		// view = new TextView(this);
		view = View.inflate(this, R.layout.toast_address, null);

		int[] bgs = new int[] { R.drawable.call_locate_white, R.drawable.call_locate_orange,
				R.drawable.call_locate_blue, R.drawable.call_locate_gray, R.drawable.call_locate_green };
		int style = SpTools.getInt(getApplicationContext(), MyConstants.ADDRESSSTYLE, 0);

		view.setBackgroundResource(bgs[style]);// 根据存储的样式更新背景

		TextView tvText = (TextView) view.findViewById(R.id.tv_number);
		tvText.setText(text);

		mWM.addView(view, params);// 将view添加在屏幕上(Window)
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

					// 计算移动偏移量
					int dx = endX - startX;
					int dy = endY - startY;
					//更新浮窗位置
					params.x += dx;
					params.y += dy;
					//防止坐标偏离屏幕
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
					// 重新初始化起点坐标
					startX = (int) event.getRawX();
					startY = (int) event.getRawY();
					break;
				case MotionEvent.ACTION_UP:
					// 记录坐标点
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
