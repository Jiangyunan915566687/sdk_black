package com.yayawan.impl;

import com.downjoy.CallbackListener;
import com.downjoy.CallbackStatus;
import com.downjoy.Downjoy;
import com.downjoy.LoginInfo;
import com.yayawan.callback.YYWUserCallBack;
import com.yayawan.domain.YYWUser;
import com.yayawan.main.YYWMain;
import com.yayawan.proxy.YYWLoginer;
import com.yayawan.utils.Handle;
import com.yayawan.utils.JSONUtil;
import android.app.Activity;
import android.os.Handler;
import android.os.Looper;
import android.widget.Toast;

public class LoginImpl implements YYWLoginer {

	@Override
	public void login(final Activity paramActivity,
			YYWUserCallBack userCallBack, String paramString) {

		new Handler(Looper.getMainLooper()).post(new Runnable() {

			@Override
			public void run() {
				if (Myconstant.dangle != null) {
					
					Myconstant.dangle.openLoginDialog(paramActivity,
							new CallbackListener<LoginInfo>() {
								@Override
								public void callback(int status, LoginInfo data) {
									if (status == CallbackStatus.SUCCESS
											&& data != null) {
										YYWMain.mUser = new YYWUser();

										YYWMain.mUser.uid = data.getUmid();
										;
										YYWMain.mUser.userName = data
												.getUserName();
										YYWMain.mUser.nick = data.getNickName();
										YYWMain.mUser.token = JSONUtil
												.formatToken(paramActivity,
														data.getToken(),
														YYWMain.mUser.userName);
										if (YYWMain.mUserCallBack != null) {
											YYWMain.mUserCallBack
													.onLoginSuccess(
															YYWMain.mUser,
															"success");
											Handle.login_handler(paramActivity,
													YYWMain.mUser.uid,
													YYWMain.mUser.userName);
										}
										// Util.alert(mContext,
										// data.toString());
									} else if (status == CallbackStatus.FAIL
											&& data != null) {
										if (YYWMain.mUserCallBack != null) {
											YYWMain.mUserCallBack
													.onLoginFailed("failed", "");
										}

									} else if (status == CallbackStatus.CANCEL
											&& data != null) {
										if (YYWMain.mUserCallBack != null) {
											YYWMain.mUserCallBack
													.onLoginFailed("failed", "");
										}
									}
								}
							});
				} else {

				}

			}
		});

	}

	@Override
	public void relogin(Activity paramActivity, YYWUserCallBack userCallBack,
			String paramString) {
		Toast.makeText(paramActivity, "重新登录", Toast.LENGTH_SHORT).show();
	}

	/*
	 * Downjoy.getInstance().openLoginDialog(paramActivity, new
	 * CallbackListener() {
	 * 
	 * @Override public void onLoginError(DownjoyError arg0) { if
	 * (YYWMain.mUserCallBack != null) { YYWMain.mUserCallBack.onLoginFailed(
	 * "failed", ""); } }
	 * 
	 * @Override public void onLoginSuccess(Bundle bundle) { YYWMain.mUser = new
	 * YYWUser();
	 * 
	 * YYWMain.mUser.uid = bundle .getString(Downjoy.DJ_PREFIX_STR + "mid");
	 * YYWMain.mUser.userName = bundle .getString(Downjoy.DJ_PREFIX_STR +
	 * "username"); YYWMain.mUser.nick = bundle .getString(Downjoy.DJ_PREFIX_STR
	 * + "nickname"); YYWMain.mUser.token = JSONUtil.formatToken( paramActivity,
	 * bundle.getString(Downjoy.DJ_PREFIX_STR + "token"),
	 * YYWMain.mUser.userName); if (YYWMain.mUserCallBack != null) {
	 * YYWMain.mUserCallBack.onLoginSuccess( YYWMain.mUser, "success");
	 * Handle.login_handler(paramActivity, YYWMain.mUser.uid,
	 * YYWMain.mUser.userName); } }
	 * 
	 * @Override public void onLogoutSuccess() { if (YYWMain.mUserCallBack !=
	 * null) { YYWMain.mUserCallBack.onLogout("logout"); } }
	 * 
	 * });
	 */

}
