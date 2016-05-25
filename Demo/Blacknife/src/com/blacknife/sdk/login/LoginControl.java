package com.blacknife.sdk.login;

import android.content.Context;

public class LoginControl {
	private Context context;

	public LoginControl(Context context) {
		this.context = context;
	}
	public void login(){
		LoginActivity.launch(context);
	}
}
