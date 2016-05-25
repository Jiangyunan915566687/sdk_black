package com.blacknife.sdk.exit;

import com.blacknife.sdk.callback.BKnifeExitCallback;

import android.content.DialogInterface;

public class ExitDialogPositiveOnClickListener implements
		DialogInterface.OnClickListener {
	BKnifeExitCallback callback;

	ExitDialogPositiveOnClickListener(BKnifeExitCallback callback) {
		this.callback = callback;
	}

	@Override
	public void onClick(DialogInterface dialog, int which) {
		callback.onSuccess();
		dialog.dismiss();
	}

}
