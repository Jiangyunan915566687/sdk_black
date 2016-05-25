package com.black.royalwarwallpaper.uilts;

import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

public abstract class ShowTipsInterface {
	public Context context;
	public static OnClickListener mOkListence;
	public static OnClickListener mCancleListence;
	public ShowTipsInterface(Context context,OnClickListener mOkListence,OnClickListener mCancleListence) {
		this.context = context;
		this.mOkListence = mOkListence;
		this.mCancleListence = mCancleListence;
	}
	public abstract void onOkClick();
	public abstract void onCancleClick();
	public OnClickListener onCliceOkListener(){
		mOkListence = new OnClickListener(){

			@Override
			public void onClick(DialogInterface dialog, int which) {
				onOkClick();
			}
			
		};
		return mOkListence;		
	}
	public OnClickListener onCliceCancleListener(){
		mCancleListence = new OnClickListener() {
			
			@Override
			public void onClick(DialogInterface dialog, int which) {
				onCancleClick();
				dialog.cancel();
			}
		};
		return mCancleListence;		
	}
}
