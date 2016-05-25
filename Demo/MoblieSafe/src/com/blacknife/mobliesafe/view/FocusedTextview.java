package com.blacknife.mobliesafe.view;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.TextView;
/**
 * ��ȡ�����TextView
 * @author Blacknife
 *
 */
public class FocusedTextview extends TextView {
	/**
	 * 
	 * @param context
	 * @param attrs
	 * @param defStyleAttr ��style��ʽ�Ļ����ߴ˷���
	 */
	public FocusedTextview(Context context, AttributeSet attrs, int defStyleAttr) {
		super(context, attrs, defStyleAttr);
	}
	/**
	 * 
	 * @param context
	 * @param attrs �����Ե��ߴ˷���
	 */
	public FocusedTextview(Context context, AttributeSet attrs) {
		super(context, attrs);
	}
	/**
	 * �ô���new����ʱ�ߴ˷���
	 * @param context  ԭʼTextView
	 */
	public FocusedTextview(Context context) {
		super(context);
	}
	/**
	 * ��ʾ��û�л�ȡ����
	 * �����Ҫ����,���ȵ��ô˺���,�Ƿ��н���,��true�Ļ�,����ƲŻ���Ч��
	 * �������ǲ���ʵ����textview��û�н���,���Ƕ�ǿ�Ʒ���true,���������Ϊ�н���
	 */
	@Override
	public boolean isFocused() {
		return true;
	}
}
