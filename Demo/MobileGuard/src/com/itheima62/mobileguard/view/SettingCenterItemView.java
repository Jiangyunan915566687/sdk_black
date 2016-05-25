package com.itheima62.mobileguard.view;

import android.content.Context;
import android.graphics.Color;
import android.util.AttributeSet;
import android.view.View;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.itheima62.mobileguard.R;

/**
 * @author Administrator
 * 自定义组合控件
 */
public class SettingCenterItemView extends LinearLayout {

	

	private TextView tv_title;
	private TextView tv_content;
	private CheckBox cb_check;
	private String[] contents;
	private View item;
	private View blackitem;
	/**
	 * 配置文件中，反射实例化设置属性参数
	 * @param context
	 * @param attrs
	 */
	public SettingCenterItemView(Context context, AttributeSet attrs) {
		super(context, attrs);
		initView();
		initEvent();
		String content = attrs.getAttributeValue("http://schemas.android.com/apk/res/com.itheima62.mobileguard", "content");
		
		String title = attrs.getAttributeValue("http://schemas.android.com/apk/res/com.itheima62.mobileguard", "title");
		
		tv_title.setText(title);
		
		contents = content.split("-");
		//初始化设置未选中的颜色为红色
		tv_content.setTextColor(Color.RED);
		tv_content.setText(contents[0]);
		
	}
	
	/**
	 * 黑名单item根布局设置点击事件
	 * @param listener
	 */
	public void setBlackItemClickListener(OnClickListener listener){
		//通过自定义组合控制，把事件传递给子组件
		blackitem.setOnClickListener(listener);
	}
	
	/**
	 * item根布局设置点击事件
	 * @param listener
	 */
	public void setItemClickListener(OnClickListener listener){
		//通过自定义组合控制，把事件传递给子组件
		item.setOnClickListener(listener);
	}
	
	
	/**
	 * 设置item里的checkbox的状态
	 * @param isChecked
	 */
	public void setChecked(boolean isChecked){
		cb_check.setChecked(isChecked);
	}
	
	/**
	 * @return
	 *     item里的checkbox的状态
	 */
	public boolean isChecked(){
		return cb_check.isChecked();
	}

	/**
	 * 初始化复选框事件
	 */
	private void initEvent() {
		//item 相对布局
		item.setOnClickListener(new OnClickListener() {
			
			@Override
			public void onClick(View v) {
				//sciv_autoupdate.setChecked(!sciv_autoupdate.isChecked());
				cb_check.setChecked(!cb_check.isChecked());
			}
		});
		
		// TODO Auto-generated method stub
		cb_check.setOnCheckedChangeListener(new OnCheckedChangeListener() {
			
			@Override
			public void onCheckedChanged(CompoundButton buttonView, boolean isChecked) {
				// TODO Auto-generated method stub
				if (isChecked) {
					//设置选中的颜色为绿色
					tv_content.setTextColor(Color.GREEN);
					tv_content.setText(contents[1]);
				} else {
					//设置未选中的颜色为红色
					tv_content.setTextColor(Color.RED);
					tv_content.setText(contents[0]);
				}
			}
		});
	}



	/**
	 * 初始化LinearLayout的子组件
	 */
	private void initView(){
		item = View.inflate(getContext(), R.layout.item_settingcenter_view, null);
		//显示标题
		tv_title = (TextView) item.findViewById(R.id.tv_settingcenter_autoupdate_title);
		//显示的内容
		tv_content = (TextView) item.findViewById(R.id.tv_settingcenter_autoupdate_content);
		//设置复选框
		cb_check = (CheckBox) item.findViewById(R.id.cb_settingcenter_autoupdate_checked);
		
		addView(item,0);//设置中心item
		
		/*//黑名单item
		blackitem = View.inflate(getContext(), R.layout.item_telsmssafe_listview, null);
		addView(blackitem,1);//黑名单item
*/	}
	/**
	 * 代码实例化调用该构造函数
	 * @param context
	 */
	public SettingCenterItemView(Context context) {
		super(context);
		initView();
	}

}
