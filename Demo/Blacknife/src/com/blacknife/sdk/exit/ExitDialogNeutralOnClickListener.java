package com.blacknife.sdk.exit;

import com.blacknife.sdk.callback.BKnifeExitCallback;

import android.content.DialogInterface;

public class ExitDialogNeutralOnClickListener implements
		DialogInterface.OnClickListener {
	BKnifeExitCallback callback;

	ExitDialogNeutralOnClickListener(BKnifeExitCallback callback) {
		this.callback = callback;
	}

	@Override
	public void onClick(DialogInterface dialog, int which) {
		callback.onFail();
		dialog.dismiss();
	}

}
