package com.blacknife.mobliesafe.view;

import com.blacknife.mobliesafe.R;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.RelativeLayout;
import android.widget.TextView;


/**
 * 设置中心的自定义组合控件
 * 
 * @author Blacknife
 * 
 */
public class SettingClickView extends RelativeLayout {

	private TextView tvTitle;
	private TextView tvDesc;

	public SettingClickView(Context context, AttributeSet attrs, int defStyle) {
		super(context, attrs, defStyle);
		initView();
	}

	public SettingClickView(Context context, AttributeSet attrs) {
		super(context, attrs);
		initView();
	}

	public SettingClickView(Context context) {
		super(context);
		initView();
	}

	/**
	 * ��ʼ������
	 */
	private void initView() {
		// ���Զ���õĲ����ļ����ø���ǰ��SettingClickView
		View.inflate(getContext(), R.layout.setting_view_click, this);
		tvTitle = (TextView) findViewById(R.id.tv_title);
		tvDesc = (TextView) findViewById(R.id.tv_desc);
	}

	public void setTitle(String title) {
		tvTitle.setText(title);
	}

	public void setDesc(String desc) {
		tvDesc.setText(desc);
	}
}
