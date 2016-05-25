package com.blacknife.mobliesafe.view;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.TextView;
/**
 * 获取焦点的TextView
 * @author Blacknife
 *
 */
public class FocusedTextview extends TextView {
	/**
	 * 
	 * @param context
	 * @param attrs
	 * @param defStyleAttr 有style样式的话会走此方法
	 */
	public FocusedTextview(Context context, AttributeSet attrs, int defStyleAttr) {
		super(context, attrs, defStyleAttr);
	}
	/**
	 * 
	 * @param context
	 * @param attrs 有属性的走此方法
	 */
	public FocusedTextview(Context context, AttributeSet attrs) {
		super(context, attrs);
	}
	/**
	 * 用代码new对象时走此方法
	 * @param context  原始TextView
	 */
	public FocusedTextview(Context context) {
		super(context);
	}
	/**
	 * 表示有没有获取焦点
	 * 跑马灯要运行,首先调用此函数,是否有焦点,是true的话,跑马灯才会有效果
	 * 所以我们不管实际上textview有没有焦点,我们都强制返回true,让跑马灯认为有焦点
	 */
	@Override
	public boolean isFocused() {
		return true;
	}
}
