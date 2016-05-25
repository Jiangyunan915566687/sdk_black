package com.blacknife.mobliesafe.view;

import com.blacknife.mobliesafe.R;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.CheckBox;
import android.widget.RelativeLayout;
import android.widget.TextView;
/**
 * �������ĵ�view�Զ���
 * @author Blacknife
 *
 */
public class SettingItemView extends RelativeLayout {

	private static final String NAMESPACE = "http://schemas.android.com/apk/res/com.blacknife.mobliesafe";
	private TextView tvTitle;
	private TextView tvDesc;
	private CheckBox cbStatus;
	private String mDescOff;
	private String mDescOn;
	private String mTitle;
	public SettingItemView(Context context) {
		super(context);
		initView();
	}

	public SettingItemView(Context context, AttributeSet attrs) {
		super(context, attrs);		
		//�����������ƣ���ȡ���Ե�ֵ
		mTitle = attrs.getAttributeValue(NAMESPACE, "title");
		mDescOn = attrs.getAttributeValue(NAMESPACE, "desc_on");
		mDescOff = attrs.getAttributeValue(NAMESPACE, "desc_off");	
		initView();
		
	}

	public SettingItemView(Context context, AttributeSet attrs, int defStyleAttr) {
		super(context, attrs, defStyleAttr);
		initView();
	}
	/**
	 * ��ʼ������
	 */
	private void initView(){
		//���Զ���õĲ����ļ����ø���ǰ��SettingItemView
		View.inflate(getContext(),R.layout.setting_view_item, this);
		tvTitle = (TextView) findViewById(R.id.tv_title);
		tvDesc = (TextView) findViewById(R.id.tv_desc);
		cbStatus = (CheckBox) findViewById(R.id.cb_status);
		setTitle(mTitle);//�����ӱ���
	}
	/**
	 * ���ع�ѡ״̬
	 * @return
	 */
	public boolean isChecked(){
		return cbStatus.isChecked();
	}
	
	public void setTitle(String title){
		tvTitle.setText(title);
	}
	public void setDesc(String desc){
		tvDesc.setText(desc);
	}
	public void setChecked(boolean check){
		cbStatus.setChecked(check);
		//����ѡ���״̬������textview������
		if(check){
			setDesc(mDescOn);
		}else{
			setDesc(mDescOff);
		}
	}
}
