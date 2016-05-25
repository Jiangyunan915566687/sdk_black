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
 * δ���ٵ�fragment
 * @author Administrator
 *
 */
public class UnlockedFragment extends BaseLockOrUnlockFragment {
	@Override
	public boolean isMyData(String packName) {
		// TODO Auto-generated method stub
		return !allLockedPacks.contains(packName);//���ڴ�Ƚ�
	}
	
	@Override
	protected void setLockNumberTextView() {
		tv_lab.setText("δ�������(" + (unlockedSystemDatas.size() + unlockedUserDatas.size()) + ")");
	}
	
	@Override
	public void setImageViewEventAndBg(ImageView iv_lock, final View convertView,final String packName) {
		// ��ʼ��ͼƬѡ����
		iv_lock.setImageResource(R.drawable.iv_lock_selector);
		// д�¼�
		// д�¼�
		iv_lock.setOnClickListener(new OnClickListener() {

			@Override
			public void onClick(View v) {
				// �����Ĳ���
				// 1,���ݷŵ�db��
				dao.add(packName);

				// 2,������ʵ�� 
				TranslateAnimation ta = new TranslateAnimation(Animation.RELATIVE_TO_SELF, 0, 
						Animation.RELATIVE_TO_SELF, 1, 
						Animation.RELATIVE_TO_SELF, 0, Animation.RELATIVE_TO_SELF, 0);
				ta.setDuration(300);//1�붯��
				convertView.startAnimation(ta);
				
				new Thread(){
					public void run() {
						SystemClock.sleep(300);
						// 3,�����Լ�������
						initData();
					};
				}.start();
				
			}
		});
	}
}
