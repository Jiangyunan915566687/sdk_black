package com.yayawan.impl;

import java.net.URL;
import java.util.GregorianCalendar;

import org.json.JSONException;
import org.json.JSONObject;

import android.app.Activity;
import android.app.Dialog;
import android.app.ProgressDialog;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Color;
import android.graphics.drawable.BitmapDrawable;
import android.os.Handler;
import android.os.Looper;
import android.view.Gravity;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.Window;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;

import com.tencent.ysdk.api.YSDKApi;
import com.tencent.ysdk.framework.common.ePlatform;
import com.yayawan.asynchttp.AsyncHttpConnection;
import com.yayawan.asynchttp.StringResponseHandler;
import com.yayawan.asynchttp.support.ParamsWrapper;
import com.yayawan.callback.YYWUserCallBack;
import com.yayawan.domain.YYWUser;
import com.yayawan.main.YYWMain;
import com.yayawan.main.YaYaWan;
import com.yayawan.proxy.YYWLoginer;
import com.yayawan.utils.Handle;
import com.yayawan.utils.JSONUtil;

public class LoginImpl implements YYWLoginer {

	private Dialog dialog;
	private LinearLayout baselin;

	private Activity mActivity;
	private ProgressDialog mAutoLoginWaitingDlg;

	private LoginImpl mloimpl;

	@Override
	public void login(final Activity paramActivity,
			YYWUserCallBack userCallBack, String paramString) {

		mloimpl = this;
		Myconstants.dialog = dialog;

		new Handler(Looper.getMainLooper()).post(new Runnable() {

			private BroadcastReceiver mReceiver;

			@Override
			public void run() {
				mActivity = paramActivity;
				
				logIn(paramActivity);

				// System.err.println("login sttart");

			}

		});

	}

	public void logIn(final Activity paramActivity) {
		createDialog(paramActivity);
		YYWMain.mUser=null;
		qq.setOnClickListener(new OnClickListener() {

			@Override
			public void onClick(View v) {
				// Utilsjf.creDialogpro(paramActivity, "正在启动登陆...");
				
				YSDKApi.login(ePlatform.QQ);
				Logutils.sys("qq登陆的类型值"+ePlatform.QQ);
				Myconstants.platform="qq";
				Myconstants.mpayinfo.opentype = "qq";
				dialog.dismiss();
			}
		});

		weixin.setOnClickListener(new OnClickListener() {

			@Override
			public void onClick(View v) {
				// Utilsjf.creDialogpro(paramActivity, "正在启动登陆...");
				// TODO Auto-generated method stub
				// System.out.println("我要微信登录了");
				YSDKApi.login(ePlatform.WX);
				Logutils.sys("微信登陆的类型值"+ePlatform.WX);
				Myconstants.platform="wx";
				Myconstants.mpayinfo.opentype = "wx";
				dialog.dismiss();
			}
		});

		dialog.show();
	}

	public void createDialog(Activity mContext) {
		dialog = new Dialog(mContext);

		dialog.requestWindowFeature(Window.FEATURE_NO_TITLE);
		baselin = new LinearLayout(mContext);
		baselin.setOrientation(LinearLayout.VERTICAL);
		MachineFactory machineFactory = new MachineFactory(mContext);
		machineFactory.MachineView(baselin, 400, 300, "LinearLayout");
		baselin.setBackgroundColor(Color.TRANSPARENT);

		// 中间内容
		LinearLayout ll_content = new LinearLayout(mContext);
		machineFactory.MachineView(ll_content, 400, 300, 0, "LinearLayout", 0,
				0, 0, 0, 100);
		ll_content.setOrientation(LinearLayout.VERTICAL);
		ll_content.setGravity(Gravity.CENTER_VERTICAL);
		ll_content.setBackgroundColor(Color.TRANSPARENT);

		qq = new ImageView(mContext);
		machineFactory.MachineView(qq, 360, 110, "LinearLayout");
		// qq.setImageResource(R.drawable.qq);
		qq.setImageBitmap(GetAssetsutils.getImageFromAssetsFile("qq.png",
				mContext));
		// qq.setGravity(Gravity.CENTER);
		qq.setClickable(true);

		weixin = new ImageView(mContext);

		machineFactory.MachineView(weixin, 360, 110, 0, "LinearLayout", 0, 60,
				0, 0, 100);
		// weixin.setImageResource(R.drawable.weixin);
		weixin.setImageBitmap(GetAssetsutils.getImageFromAssetsFile(
				"weixin.png", mContext));

		// weixin.setGravity(Gravity.CENTER);
		weixin.setClickable(true);

		ll_content.addView(qq);
		ll_content.addView(weixin);

		baselin.addView(ll_content);
		dialog.setContentView(baselin);
		Window dialogWindow = dialog.getWindow();
		WindowManager.LayoutParams lp = dialogWindow.getAttributes();
		dialogWindow.setGravity(Gravity.CENTER);

		lp.alpha = 0.9f; // 透明度

		lp.dimAmount = 0.6f; // 设置背景色对比度

		// lp.y = 60;

		dialogWindow.setAttributes(lp);

		dialog.setCanceledOnTouchOutside(true);
		dialog.setOnCancelListener(new OnCancelListener() {

			public void onCancel(DialogInterface dialog) {
				// TODO Auto-generated method stub
				if (YYWMain.mUserCallBack != null) {
					YYWMain.mUserCallBack.onLoginFailed(null, null);

				}
			}
		});

		android.widget.RelativeLayout.LayoutParams ap2 = new android.widget.RelativeLayout.LayoutParams(
				android.widget.RelativeLayout.LayoutParams.WRAP_CONTENT,
				android.widget.RelativeLayout.LayoutParams.WRAP_CONTENT);

		dialog.getWindow().setBackgroundDrawable(new BitmapDrawable());

	}

	@Override
	public void relogin(Activity paramActivity, YYWUserCallBack userCallBack,
			String paramString) {

		System.err.println("relogin");
	}
/*
	public void getAccessToken(final Activity paramActivity, String code) {
		progress(paramActivity);
		AsyncHttpConnection http = AsyncHttpConnection.getInstance();
		ParamsWrapper params = new ParamsWrapper();
		if (!"".equalsIgnoreCase(code)) {

			params.put("grant_type", "authorization_code");
			params.put("code", code);
		}

		http.post("token_url", params, new StringResponseHandler() {
			@Override
			public void onResponse(String content, URL url, int code) {
				JSONObject j;
				try {
					j = new JSONObject(content);

				} catch (JSONException e) {
					e.printStackTrace();
					disprogress();
					if (YYWMain.mUserCallBack != null) {
						YYWMain.mUserCallBack.onLoginFailed("", "");
					}
				}
			}

		});
	}

	public void getAccessUserInfo(final Activity paramActivity, String code) {
		progress(paramActivity);
		AsyncHttpConnection http = AsyncHttpConnection.getInstance();
		ParamsWrapper params = new ParamsWrapper();
		if (!"".equalsIgnoreCase(code)) {

			params.put("grant_type", "authorization_code");
			params.put("code", code);
		}

		http.post("token_url", params, new StringResponseHandler() {
			@Override
			public void onResponse(String content, URL url, int code) {
				JSONObject j;
				try {
					j = new JSONObject(content);
					String error = j.optString("error", "");
					if (error == "") {
						YYWMain.mUser = new YYWUser();
						YYWMain.mUser.uid = j.optString("xmw_open_id", "");
						YYWMain.mUser.userName = j.optString("xmw_open_id", "");
						YYWMain.mUser.nick = j.optString("nickname", "");
						YYWMain.mUser.icon = j.optString("avatar", "");
						YYWMain.mUser.body = "";
						YYWMain.mUser.token = JSONUtil.formatToken(
								paramActivity, "access_token=" + "token"
										+ "&refresh_token="
										+ YYWMain.mUser.userName, error);

						if (YYWMain.mUserCallBack != null) {
							YYWMain.mUserCallBack.onLoginSuccess(YYWMain.mUser,
									"success");
							Handle.login_handler(paramActivity,
									YYWMain.mUser.uid, YYWMain.mUser.userName);
						}

					} else {
						if (YYWMain.mUserCallBack != null) {
							YYWMain.mUserCallBack.onLoginFailed("", "");
						}
					}

				} catch (JSONException e) {
					e.printStackTrace();
					disprogress();
					if (YYWMain.mUserCallBack != null) {
						YYWMain.mUserCallBack.onLoginFailed("", "");
					}
				}
			}

		});
	}
*/
	ProgressDialog progressDialog = null;
	private ImageView qq;
	private ImageView weixin;

	private void progress(Activity paramActivity) {
		progressDialog = new ProgressDialog(paramActivity);
		// 设置进度条风格，风格为圆形，旋转的
		progressDialog.setProgressStyle(ProgressDialog.STYLE_SPINNER);
		// 设置ProgressDialog 标题
		// progressDialog.setTitle("提示");
		// 设置ProgressDialog 提示信息
		progressDialog.setMessage("获取游戏数据");
		// 设置ProgressDialog 标题图标
		// progressDialog.setIcon(R.drawable.a);
		// 设置ProgressDialog 的进度条是否不明确
		progressDialog.setIndeterminate(true);
		// 设置ProgressDialog 是否可以按退回按键取消
		progressDialog.setCancelable(false);
		// 设置ProgressDialog 的一个Button
		// progressDialog.setButton("确定", new SureButtonListener());
		// 让ProgressDialog显示
		try {
			progressDialog.show();
		} catch (Exception e) {

		}
	}

	private void disprogress() {
		if (progressDialog != null) {
			if (progressDialog.isShowing())
				progressDialog.dismiss();
		}
	}

}
