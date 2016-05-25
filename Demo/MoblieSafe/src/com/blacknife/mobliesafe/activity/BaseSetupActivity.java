package com.blacknife.mobliesafe.activity;

import android.app.Activity;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.widget.Toast;
import android.view.GestureDetector.SimpleOnGestureListener;

/**
 * ��������ҳ�Ļ���,����Ҫ���嵥�ļ���ע��.��Ϊ����Ҫ����չʾ
 * 
 * @author Blacknife
 *
 */
public abstract class BaseSetupActivity extends Activity {
	private GestureDetector mDetector;

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		// ����ʶ����
		mDetector = new GestureDetector(this, new SimpleOnGestureListener() {
			/**
			 * �������ƻ����¼� e1 ��ʾ��������� e2 ��ʾ�������յ� velocityX ��ʾˮƽ�����ٶ� velocityY
			 * ��ʾ��ֱ�����ٶ�
			 */
			@Override
			public boolean onFling(MotionEvent e1, MotionEvent e2, float velocityX, float velocityY) {
				//�ж����򻬶������Ƿ����.����Ļ��������л�����
				if(Math.abs(e2.getRawY() - e1.getRawY()) > 100){
					Toast.makeText(BaseSetupActivity.this, "����������",Toast.LENGTH_SHORT ).show();
					return true;
				}
				// ���һ������� ,��һҳ
				if (e2.getRawX() - e1.getRawX() > 200 ) {
					showPreviousPage();
					return true;
				}
				// ���󻬶�����,��һҳ
				if (e1.getRawX() - e2.getRawX() > 200) {
					showNextPage();
					return true;
				}
				
				return super.onFling(e1, e2, velocityX, velocityY);
			}
		});
	}

	// btn��ť����¼� ��һҳ
	public void btnNext(View view) {
		showNextPage();
	}

	// btn��ť����¼� ��һҳ
	public void btnPrevious(View view) {
		showPreviousPage();
	}

	@Override
	public boolean onTouchEvent(MotionEvent event) {
		mDetector.onTouchEvent(event);// ί������ʶ�����������¼�
		return super.onTouchEvent(event);
	}

	/**
	 * ����һҳ,ǿ���������ʵ��
	 */
	public abstract void showPreviousPage();
	

	/**
	 * ����һҳ,ǿ���������ʵ��
	 */
	public abstract void showNextPage();
	
}
