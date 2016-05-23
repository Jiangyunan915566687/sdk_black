package com.yayawan.sdktemplate;


import com.yayawan.callback.YYWExitCallback;
import com.yayawan.main.YYWMain;
import com.yayawan.sdktemplate.oppo.R;

import android.app.Activity;
import android.app.AlertDialog;
import android.view.View;
import android.view.Window;
import android.widget.ImageButton;

public class Exit_dialog {

	public static void showExitGameAlert(Activity mactivity,final YYWExitCallback callback) {
		final AlertDialog dlg = new AlertDialog.Builder(mactivity).create();
		dlg.show();
		Window window = dlg.getWindow();
	        // *** 主要就是在这里实现这种效果的.
	        // 设置窗口的内容页面,shrew_exit_dialog.xml文件中定义view内容
		window.setContentView(R.layout.shrew_exit_dialog);
	        // 为确认按钮添加事件,执行退出应用操作
		ImageButton ok = (ImageButton) window.findViewById(R.id.btn_ok);
		ok.setOnClickListener(new View.OnClickListener() {
			public void onClick(View v) {
				//exitApp(); // 退出应用...
				callback.onExit();
			}
		});
	 
	        // 关闭alert对话框架
	        ImageButton cancel = (ImageButton) window.findViewById(R.id.btn_cancel);
	        cancel.setOnClickListener(new View.OnClickListener() {
		  public void onClick(View v) {
			//  dlg.cancel();
			  dlg.dismiss();
			}
		  });
	}
}
