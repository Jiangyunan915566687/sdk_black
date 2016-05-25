package com.blacknife.mobliesafe.activity;

import com.blacknife.mobliesafe.R;
import com.blacknife.mobliesafe.view.LockedFragment;
import com.blacknife.mobliesafe.view.UnlockFragment;

import android.app.Activity;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.app.FragmentManager;
import android.app.FragmentTransaction;
import android.widget.FrameLayout;
import android.widget.TextView;
/**
 * 程序锁的界面 fragment
 * @author Blacknife
 *
 */
public class LockedActivity extends Activity {
	private TextView tv_lock;
	private TextView tv_unlock;
	private FrameLayout fl_content;
	private LockedFragment lockFragment;
	private UnlockFragment unLockFragment;
	private FragmentManager fragmentManager;

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		initView();//初始化界面
		initData();//初始化数据
		initEvent();//初始化事件
	}

	private void initEvent() {
		OnClickListener listener = new OnClickListener() {
			
			@Override
			public void onClick(View v) {
				FragmentTransaction transaction = fragmentManager.beginTransaction();
				
				if(v.getId() == R.id.tv_lockedActivity_locked){
					//已加锁
					transaction.replace(R.id.fl_lockActivity_content, lockFragment);
					tv_lock.setBackgroundResource(R.drawable.tab_right_pressed);
					tv_unlock.setBackgroundResource(R.drawable.tab_left_default);
				}else{
					//未加锁
					transaction.replace(R.id.fl_lockActivity_content, unLockFragment);
					tv_lock.setBackgroundResource(R.drawable.tab_right_default);
					tv_unlock.setBackgroundResource(R.drawable.tab_left_pressed);
				}
				//提交事物
				transaction.commit();
				
			}
		};
		tv_lock.setOnClickListener(listener);
		tv_unlock.setOnClickListener(listener);
	}

	private void initData() {
		fragmentManager = getFragmentManager();
		//fragment替换叼framlayout
		FragmentTransaction transaction = fragmentManager.beginTransaction();
		transaction.replace(R.id.fl_lockActivity_content, unLockFragment);
		//提交事物
		transaction.commit();
	}

	private void initView() {
		setContentView(R.layout.activity_lock);
		tv_lock = (TextView) findViewById(R.id.tv_lockedActivity_locked);
		tv_unlock = (TextView) findViewById(R.id.tv_lockedActivity_unlock);
		//要替换成fragment的组件
		fl_content = (FrameLayout) findViewById(R.id.fl_lockActivity_content);
		lockFragment = new LockedFragment();//已加锁
		unLockFragment = new UnlockFragment();//未加锁
	}
	
	
	
	
	
	
}
