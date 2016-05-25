package com.itheima62.mobileguard.activities;

import java.util.List;

import android.database.ContentObserver;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.FrameLayout;
import android.widget.TextView;

import com.itheima62.mobileguard.R;
import com.itheima62.mobileguard.dao.LockedDao;
import com.itheima62.mobileguard.domain.LockedTable;
import com.itheima62.mobileguard.fragment.LockedFragment;
import com.itheima62.mobileguard.fragment.UnlockedFragment;

/**
 * 程序锁的界面 fragment
 * 
 * @author Administrator
 * 
 */
public class LockedActivity extends FragmentActivity {
	private TextView tv_unlock;
	private TextView tv_locked;
	private FrameLayout fl_content;
	private FragmentManager fm;
	private LockedFragment lockedFragment;
	private UnlockedFragment unlockedFragment;

	@Override
	protected void onCreate(Bundle arg0) {
		// TODO Auto-generated method stub
		super.onCreate(arg0);

		initView();// 初始化界面

		initData();// 初始化数据

		initEvent();// 初始化事件
		
		

	}

	private void initEvent() {
		
		//注册内容观察者
		ContentObserver observer = new ContentObserver(new Handler()) {

			@Override
			public void onChange(boolean selfChange) {
				new Thread(){
					public void run() {
						LockedDao dao = new LockedDao(getApplicationContext());
						//读取dao层读取数据
						List<String> allLockedDatas = dao.getAllLockedDatas();
						
						lockedFragment.setAllLockedPacks(allLockedDatas);
						unlockedFragment.setAllLockedPacks(allLockedDatas);
					};
				
				}.start();
				super.onChange(selfChange);
			}
			
		};
		getContentResolver().registerContentObserver(LockedTable.uri, true, observer);
		OnClickListener listener = new OnClickListener() {

			@Override
			public void onClick(View v) {
				FragmentTransaction transaction = fm.beginTransaction();

				// 2,替换,默认显示未加锁的界面,把未加锁的fragment替换掉framelayout
				if (v.getId() == R.id.tv_lockedactivity_locked) {
					//已加锁
					transaction.replace(R.id.fl_lockedactivity_content, lockedFragment);
					tv_locked.setBackgroundResource(R.drawable.tab_right_pressed);//按下
					tv_unlock.setBackgroundResource(R.drawable.tab_left_default);//默认 不按下
				} else {
					//未加锁
					transaction.replace(R.id.fl_lockedactivity_content, unlockedFragment);
					tv_locked.setBackgroundResource(R.drawable.tab_right_default);//不按下
					tv_unlock.setBackgroundResource(R.drawable.tab_left_pressed);//按下
				}

				// 3,提交事物
				transaction.commit();
				/*switch (v.getId()) {
				case R.id.tv_lockedactivity_locked:// 已加锁
					// 1，获取事物
					FragmentTransaction transaction = fm.beginTransaction();

					// 2,替换,默认显示未加锁的界面,把未加锁的fragment替换掉framelayout
					transaction.replace(R.id.fl_lockedactivity_content, lockedFragment);

					// 3,提交事物
					transaction.commit();
					break;
				case R.id.tv_lockedactivity_unlock:// 未加锁
					// 1，获取事物
					FragmentTransaction transaction = fm.beginTransaction();

					// 2,替换,默认显示未加锁的界面,把未加锁的fragment替换掉framelayout
					transaction.replace(R.id.fl_lockedactivity_content, unlockedFragment);

					// 3,提交事物
					transaction.commit();
					break;
				default:
					break;
				}*/
			}
		};
		
		tv_unlock.setOnClickListener(listener);
		tv_locked.setOnClickListener(listener);
	}

	private void initData() {
		new Thread(){
			public void run() {
				LockedDao dao = new LockedDao(getApplicationContext());
				//读取dao层读取数据
				List<String> allLockedDatas = dao.getAllLockedDatas();
				
				lockedFragment.setAllLockedPacks(allLockedDatas);
				unlockedFragment.setAllLockedPacks(allLockedDatas);
			};
		
		}.start();
		// fragment的管理器

		fm = getSupportFragmentManager();

		// fragment替换掉framlayout

		// 1，获取事物
		FragmentTransaction transaction = fm.beginTransaction();

		// 2,替换,默认显示未加锁的界面,把未加锁的fragment替换掉framelayout
		transaction.replace(R.id.fl_lockedactivity_content, unlockedFragment);

		// 3,提交事物
		transaction.commit();
		System.out.println("initData");

	}

	private void initView() {
		setContentView(R.layout.activity_lock);
		// 加锁的textview
		tv_locked = (TextView) findViewById(R.id.tv_lockedactivity_locked);

		// 加锁的textview
		tv_unlock = (TextView) findViewById(R.id.tv_lockedactivity_unlock);

		// 要替换成fragment的组件
		fl_content = (FrameLayout) findViewById(R.id.fl_lockedactivity_content);

		// 已加锁的fragment
		lockedFragment = new LockedFragment();

		// 未加锁的fragment
		unlockedFragment = new UnlockedFragment();
		
		

	}
}
