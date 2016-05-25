package com.blacknife.mobliesafe.view;

import com.blacknife.mobliesafe.R;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.CheckBox;
import android.widget.RelativeLayout;
import android.widget.TextView;
/**
 * 设置中心的view自定义
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
		//根据属性名称，获取属性的值
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
	 * 初始化布局
	 */
	private void initView(){
		//将自定义好的布局文件设置给当前的SettingItemView
		View.inflate(getContext(),R.layout.setting_view_item, this);
		tvTitle = (TextView) findViewById(R.id.tv_title);
		tvDesc = (TextView) findViewById(R.id.tv_desc);
		cbStatus = (CheckBox) findViewById(R.id.cb_status);
		setTitle(mTitle);//设置子标题
	}
	/**
	 * 返回勾选状态
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
		//根据选择的状态，更新textview的文字
		if(check){
			setDesc(mDescOn);
		}else{
			setDesc(mDescOff);
		}
	}
}
