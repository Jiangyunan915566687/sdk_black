package com.blacknife.mobliesafe.activity;

import com.blacknife.mobliesafe.R;
import com.blacknife.mobliesafe.utils.MyConstants;
import com.blacknife.mobliesafe.utils.SpTools;

import android.app.Activity;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Bundle;
import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnTouchListener;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;

/**
 * 修改归属地显示位置
 * 
 * @author Blacknife
 * 
 */
public class DragViewActivity extends Activity {

	private TextView tvTop;
	private TextView tvBottom;

	private ImageView ivDrag;

	private int startX;
	private int startY;
	long[] mHits = new long[2];// 数组长度表示要点击的次数

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_drag_view);

		tvTop = (TextView) findViewById(R.id.tv_top);
		tvBottom = (TextView) findViewById(R.id.tv_bottom);
		ivDrag = (ImageView) findViewById(R.id.iv_drag);

		int lastX = SpTools.getInt(DragViewActivity.this, MyConstants.LASTX, 0);
		int lastY = SpTools.getInt(DragViewActivity.this, MyConstants.LASTY, 0);

		// onMeasure(测量view), onLayout(安放位置), onDraw(绘制)
		// ivDrag.layout(lastX, lastY, lastX + ivDrag.getWidth(),
		// lastY + ivDrag.getHeight());//不能用这个方法,因为还没有测量完成,就不能安放位置
		final int winWidth = getWindowManager().getDefaultDisplay().getWidth();
		final int winHeight = getWindowManager().getDefaultDisplay().getHeight() - 40;
		// 上边显示,下边隐藏
		if (lastY > winHeight / 2) {
			tvTop.setVisibility(View.VISIBLE);
			tvBottom.setVisibility(View.INVISIBLE);
		} else {
			tvTop.setVisibility(View.INVISIBLE);
			tvBottom.setVisibility(View.VISIBLE);
		}
		RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) ivDrag.getLayoutParams();// 获取布局对象
		layoutParams.leftMargin = lastX;// 设置左边距
		layoutParams.topMargin = lastY;// 设置top边距

		ivDrag.setLayoutParams(layoutParams);// 重新设置位置
		ivDrag.setOnClickListener(new OnClickListener() {

			@Override
			public void onClick(View v) {
				System.arraycopy(mHits, 1, mHits, 0, mHits.length - 1);
				mHits[mHits.length - 1] = SystemClock.uptimeMillis();// 获取开机后开始计算的时间
				if (mHits[0] >= (SystemClock.uptimeMillis() - 500)) {
					// 双击响应,把图片居中
					ivDrag.layout(winWidth / 2 - ivDrag.getWidth() / 2, ivDrag.getTop(),
							winWidth / 2 + ivDrag.getWidth() / 2, ivDrag.getBottom());
				}
			}
		});
		// 设置触摸监听
		ivDrag.setOnTouchListener(new OnTouchListener() {

			@Override
			public boolean onTouch(View v, MotionEvent event) {
				switch (event.getAction()) {
				case MotionEvent.ACTION_DOWN:
					// 初始化起点坐标
					startX = (int) event.getRawX();
					startY = (int) event.getRawY();
					break;
				case MotionEvent.ACTION_MOVE:
					int endX = (int) event.getRawX();
					int endY = (int) event.getRawY();

					// 计算移动偏移量
					int dx = endX - startX;
					int dy = endY - startY;

					// 更新左上右下距离
					int l = ivDrag.getLeft() + dx;
					int r = ivDrag.getRight() + dx;

					int t = ivDrag.getTop() + dy;
					int b = ivDrag.getBottom() + dy;

					if (l < 0 || r > winWidth || t < 0 || b > winHeight) {
						break;
					}
					// 上边显示,下边隐藏
					if (t > winHeight / 2) {
						tvTop.setVisibility(View.VISIBLE);
						tvBottom.setVisibility(View.INVISIBLE);
					} else {
						tvTop.setVisibility(View.INVISIBLE);
						tvBottom.setVisibility(View.VISIBLE);
					}
					// 更新界面
					ivDrag.layout(l, t, r, b);

					// 重新初始化起点坐标
					startX = (int) event.getRawX();
					startY = (int) event.getRawY();
					break;
				case MotionEvent.ACTION_UP:
					// 记录坐标点
					SpTools.putInt(DragViewActivity.this, MyConstants.LASTX, ivDrag.getLeft());
					SpTools.putInt(DragViewActivity.this, MyConstants.LASTY, ivDrag.getTop());
					break;

				default:
					break;
				}
				// 事件要往下传递,让双击事件可以响应
				return false;
			}
		});
	}
}
