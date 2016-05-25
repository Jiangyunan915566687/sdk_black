package com.blacknife.mobliesafe.activity;

import com.blacknife.mobliesafe.R;
import com.blacknife.mobliesafe.utils.MyConstants;
import com.blacknife.mobliesafe.utils.SpTools;

import android.app.Activity;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;

/**
 * �ֻ���������
 * 
 * @author Blacknife
 *
 */
public class LostFindActivity extends Activity {
	private ImageView ivLock;
	private TextView tvSafenumber;
	private boolean islock;
	private String safePhone;

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		// �ж��Ƿ������ֻ�����������,Ĭ��Ϊfalse
		boolean configed = SpTools.getBoolean(LostFindActivity.this, MyConstants.ISSETUP, false);
		islock = SpTools.getBoolean(LostFindActivity.this, MyConstants.ISLOSTFIND, false);
		safePhone = SpTools.getString(LostFindActivity.this, MyConstants.SAFENUMBER, "");
		if (configed) {
			setContentView(R.layout.activity_lostfind);
		} else {
			// ��ת������ҳ
			startActivity(new Intent(this, Setup1Activity.class));
			finish();
			return;
		}
		ivLock = (ImageView) findViewById(R.id.iv_lock);
		tvSafenumber = (TextView) findViewById(R.id.tv_safenumber);
		if(!TextUtils.isEmpty(safePhone)){
			tvSafenumber.setText(safePhone);
		}
		//����spȥ���±�������ʾͼƬ
		if(islock){
			ivLock.setImageResource(R.drawable.lock);			
		}else{
			ivLock.setImageResource(R.drawable.unlock);
		}
	}

	/**
	 * ʵ�����½���������
	 * 
	 * @param view
	 */
	public void reEenter(View view) {
		startActivity(new Intent(LostFindActivity.this, Setup1Activity.class));
		finish();
	}

	public void islock(View view) {
		islock = !islock;
		if(islock){
			ivLock.setImageResource(R.drawable.lock);
		}else{
			ivLock.setImageResource(R.drawable.unlock);	
		}
		SpTools.putBoolean(LostFindActivity.this, MyConstants.ISLOSTFIND, islock);		
	}
}
