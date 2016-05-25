package com.blacknife.sdk.exit;

import android.app.AlertDialog;
import android.content.Context;

import com.blacknife.sdk.callback.BKnifeExitCallback;

public class ExitDialog {
	public static void launch(Context context,BKnifeExitCallback exitcallback){
		new AlertDialog.Builder(context)
		.setTitle("退出游戏提示")
		.setMessage("是否退出游戏？")//paramYayaWanCallback
		.setPositiveButton("确定", new ExitDialogPositiveOnClickListener(exitcallback))
		.setNeutralButton("取消", new ExitDialogNeutralOnClickListener(exitcallback))
		.create()
		.show();
	}
}
