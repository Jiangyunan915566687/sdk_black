package com.blacknife.volleyutils;

import com.android.volley.Response.ErrorListener;
import com.android.volley.Response.Listener;
import com.android.volley.VolleyError;

import android.content.Context;
/**
 * VolleyListener的抽象类，实现volley访问的返回监听
 * @author Blacknife
 *
 */
public abstract class VolleyInterface {
	public Context mContext;
	public static Listener<String> mListener;
	public static ErrorListener mErrorListener;
	/**
	 * 构造方法进行初始化
	 * @param context 上下文
	 * @param listener volley成功返回的listener
	 * @param errorListener	volley失败返回的listener
	 */
	public VolleyInterface(Context context,Listener<String> listener,
			ErrorListener errorListener){
		this.mContext = context;
		this.mListener = listener;
		this.mErrorListener = errorListener;
	}	
	/**
	 * 抽象方法，volley成功的回调方法
	 * @param result volley成功返回的String
	 */
	public abstract void onMySuccess(String result);
	/**
	 * 抽象方法，volley失败的回调方法
	 * @param error volley失败返回的错误类型
	 */
	public abstract void onMyError(VolleyError error);
	/**
	 * volley返回成功的监听
	 * @return 监听成功的对象
	 */
	public Listener<String> loadingListener(){
		mListener = new Listener<String>() {

			@Override
			public void onResponse(String response) {
				onMySuccess(response);
			}
		};
		return mListener;		
	}
	/**
	 * volley返回失败的监听
	 * @return 监听失败的对象
	 */
	public ErrorListener errorListener(){
		mErrorListener = new ErrorListener() {

			@Override
			public void onErrorResponse(VolleyError error) {
				onMyError(error);
			}
		};
		return mErrorListener;		
	}
}
