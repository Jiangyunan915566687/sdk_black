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
 * 设置引导页的基类,不需要在清单文件中注册.因为不需要界面展示
 * 
 * @author Blacknife
 *
 */
public abstract class BaseSetupActivity extends Activity {
	private GestureDetector mDetector;

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		// 手势识别器
		mDetector = new GestureDetector(this, new SimpleOnGestureListener() {
			/**
			 * 监听手势滑动事件 e1 表示滑动的起点 e2 表示滑动的终点 velocityX 表示水平滑动速度 velocityY
			 * 表示垂直滑动速度
			 */
			@Override
			public boolean onFling(MotionEvent e1, MotionEvent e2, float velocityX, float velocityY) {
				//判断纵向滑动幅度是否过大.过大的话不允许切换界面
				if(Math.abs(e2.getRawY() - e1.getRawY()) > 100){
					Toast.makeText(BaseSetupActivity.this, "不能这样滑",Toast.LENGTH_SHORT ).show();
					return true;
				}
				// 向右滑动手势 ,上一页
				if (e2.getRawX() - e1.getRawX() > 200 ) {
					showPreviousPage();
					return true;
				}
				// 向左滑动手势,下一页
				if (e1.getRawX() - e2.getRawX() > 200) {
					showNextPage();
					return true;
				}
				
				return super.onFling(e1, e2, velocityX, velocityY);
			}
		});
	}

	// btn按钮点击事件 下一页
	public void btnNext(View view) {
		showNextPage();
	}

	// btn按钮点击事件 上一页
	public void btnPrevious(View view) {
		showPreviousPage();
	}

	@Override
	public boolean onTouchEvent(MotionEvent event) {
		mDetector.onTouchEvent(event);// 委托手势识别器处理触摸事件
		return super.onTouchEvent(event);
	}

	/**
	 * 打开上一页,强制子类必须实现
	 */
	public abstract void showPreviousPage();
	

	/**
	 * 打开下一页,强制子类必须实现
	 */
	public abstract void showNextPage();
	
}
