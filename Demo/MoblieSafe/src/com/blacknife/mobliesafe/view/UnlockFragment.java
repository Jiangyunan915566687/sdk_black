package com.blacknife.mobliesafe.view;

import com.blacknife.mobliesafe.R.color;

import android.app.Fragment;
import android.os.Bundle;
import android.view.Gravity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
/**
 * 未加锁的fragment
 * @author Blacknife
 *
 */
public class UnlockFragment extends Fragment {
	@Override
	public void onCreate(Bundle savedInstanceState) {
		// TODO 自动生成的方法存根
		super.onCreate(savedInstanceState);
	}
	/**
	 * 显示的View
	 */	
	@Override
	public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
		TextView tv = new TextView(getActivity());
		tv.setText("未加锁的fragment");
		tv.setGravity(Gravity.CENTER);
		tv.setTextColor(color.black);
		return tv;
	}
}
