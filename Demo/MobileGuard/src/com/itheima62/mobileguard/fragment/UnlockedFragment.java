package com.itheima62.mobileguard.fragment;

import java.util.ArrayList;
import java.util.List;

import android.graphics.Color;
import android.os.Bundle;
import android.os.Handler;
import android.os.SystemClock;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.TranslateAnimation;
import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;

import com.itheima62.mobileguard.R;
import com.itheima62.mobileguard.dao.LockedDao;
import com.itheima62.mobileguard.domain.AppBean;
import com.itheima62.mobileguard.engine.AppManagerEngine;

/**
 * 未加速的fragment
 * @author Administrator
 *
 */
public class UnlockedFragment extends BaseLockOrUnlockFragment {
	@Override
	public boolean isMyData(String packName) {
		// TODO Auto-generated method stub
		return !allLockedPacks.contains(packName);//从内存比较
	}
	
	@Override
	protected void setLockNumberTextView() {
		tv_lab.setText("未加锁软件(" + (unlockedSystemDatas.size() + unlockedUserDatas.size()) + ")");
	}
	
	@Override
	public void setImageViewEventAndBg(ImageView iv_lock, final View convertView,final String packName) {
		// 初始化图片选择器
		iv_lock.setImageResource(R.drawable.iv_lock_selector);
		// 写事件
		// 写事件
		iv_lock.setOnClickListener(new OnClickListener() {

			@Override
			public void onClick(View v) {
				// 加锁的操作
				// 1,数据放到db中
				dao.add(packName);

				// 2,动画的实现 
				TranslateAnimation ta = new TranslateAnimation(Animation.RELATIVE_TO_SELF, 0, 
						Animation.RELATIVE_TO_SELF, 1, 
						Animation.RELATIVE_TO_SELF, 0, Animation.RELATIVE_TO_SELF, 0);
				ta.setDuration(300);//1秒动画
				convertView.startAnimation(ta);
				
				new Thread(){
					public void run() {
						SystemClock.sleep(300);
						// 3,更新自己的数据
						initData();
					};
				}.start();
				
			}
		});
	}
}
