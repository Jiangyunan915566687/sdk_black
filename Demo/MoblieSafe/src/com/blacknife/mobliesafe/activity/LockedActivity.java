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
 * �������Ľ��� fragment
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
		initView();//��ʼ������
		initData();//��ʼ������
		initEvent();//��ʼ���¼�
	}

	private void initEvent() {
		OnClickListener listener = new OnClickListener() {
			
			@Override
			public void onClick(View v) {
				FragmentTransaction transaction = fragmentManager.beginTransaction();
				
				if(v.getId() == R.id.tv_lockedActivity_locked){
					//�Ѽ���
					transaction.replace(R.id.fl_lockActivity_content, lockFragment);
					tv_lock.setBackgroundResource(R.drawable.tab_right_pressed);
					tv_unlock.setBackgroundResource(R.drawable.tab_left_default);
				}else{
					//δ����
					transaction.replace(R.id.fl_lockActivity_content, unLockFragment);
					tv_lock.setBackgroundResource(R.drawable.tab_right_default);
					tv_unlock.setBackgroundResource(R.drawable.tab_left_pressed);
				}
				//�ύ����
				transaction.commit();
				
			}
		};
		tv_lock.setOnClickListener(listener);
		tv_unlock.setOnClickListener(listener);
	}

	private void initData() {
		fragmentManager = getFragmentManager();
		//fragment�滻��framlayout
		FragmentTransaction transaction = fragmentManager.beginTransaction();
		transaction.replace(R.id.fl_lockActivity_content, unLockFragment);
		//�ύ����
		transaction.commit();
	}

	private void initView() {
		setContentView(R.layout.activity_lock);
		tv_lock = (TextView) findViewById(R.id.tv_lockedActivity_locked);
		tv_unlock = (TextView) findViewById(R.id.tv_lockedActivity_unlock);
		//Ҫ�滻��fragment�����
		fl_content = (FrameLayout) findViewById(R.id.fl_lockActivity_content);
		lockFragment = new LockedFragment();//�Ѽ���
		unLockFragment = new UnlockFragment();//δ����
	}
	
	
	
	
	
	
}
