package com.black.royalwarwallpaper.uilts;

import android.app.AlertDialog;
import android.content.Context;

public abstract class ShowTipsUtils {

	public static void showTips(final Context context,String dialogTitle,String dialogMessage,
			String dialogButtonOk,String dialogButtonCancel,ShowTipsInterface sti){
        AlertDialog.Builder builder = new AlertDialog.Builder(context);
        builder.setIcon(android.R.drawable.ic_dialog_alert);
        builder.setTitle(dialogTitle);
        builder.setMessage(dialogMessage);
        builder.setPositiveButton(dialogButtonOk,sti.onCliceOkListener() );
        builder.setNegativeButton(dialogButtonCancel, sti.onCliceCancleListener());
        builder.create();
        builder.show();
	}
}
