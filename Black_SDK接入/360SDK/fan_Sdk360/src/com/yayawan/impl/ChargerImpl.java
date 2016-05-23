package com.yayawan.impl;

import java.net.URL;
import java.net.URLEncoder;
import java.util.logging.Logger;

import org.json.JSONException;
import org.json.JSONObject;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Intent;
import android.content.SharedPreferences.Editor;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.widget.Toast;

import com.qihoo.gamecenter.sdk.activity.ContainerActivity;
import com.qihoo.gamecenter.sdk.common.IDispatcherCallback;
import com.qihoo.gamecenter.sdk.matrix.Matrix;
import com.qihoo.gamecenter.sdk.protocols.ProtocolConfigs;
import com.qihoo.gamecenter.sdk.protocols.ProtocolKeys;
import com.yayawan.asynchttp.AsyncHttpConnection;
import com.yayawan.asynchttp.StringResponseHandler;
import com.yayawan.asynchttp.support.ParamsWrapper;
import com.yayawan.callback.YYWPayCallBack;
import com.yayawan.domain.YYWOrder;
import com.yayawan.domain.YYWUser;
import com.yayawan.main.YYWMain;
import com.yayawan.main.YaYaWan;
import com.yayawan.proxy.YYWCharger;
import com.yayawan.sdktemplate.MainActivity;
import com.yayawan.utils.CryptoUtil;
import com.yayawan.utils.DeviceUtil;
import com.yayawan.utils.RSACoder;

public class ChargerImpl implements YYWCharger {

	@Override
	public void charge(Activity paramActivity, YYWOrder order,
			YYWPayCallBack callback) {

	}

	private Activity mactivity;

	@Override
	public void pay(final Activity paramActivity, final YYWOrder order,
			YYWPayCallBack callback) {

		new Handler(Looper.getMainLooper()).post(new Runnable() {

			@Override
			public void run() {
				mactivity = paramActivity;
				if (YYWMain.mUser==null) {
					return;
				}
				createOrder(paramActivity);
				// System.err.println("pay start");

			}
		});

	}

	String orderId = null;

	public void createOrder(final Activity paramActivity) {
		progress(paramActivity);

		AsyncHttpConnection http = AsyncHttpConnection.getInstance();
		ParamsWrapper pay_data = new ParamsWrapper();

		pay_data.put("game_id", DeviceUtil.getGameId(paramActivity));

		pay_data.put("uid", YYWMain.mUser.uid);

		pay_data.put("union_id", DeviceUtil.getUnionid(paramActivity));

		pay_data.put("username", YYWMain.mUser.userName);

		pay_data.put("order_id", YYWMain.mOrder.orderId);

		pay_data.put("ext", YYWMain.mOrder.ext);
		pay_data.put("amount", YYWMain.mOrder.money);

		ParamsWrapper params = new ParamsWrapper();

		String hexString = null;
		try {
			hexString = CryptoUtil.encodeHexString(RSACoder
					.encryptByPublicKey(pay_data.toString().getBytes()));
			hexString = URLEncoder.encode(hexString, "UTF-8");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		params.put("data", hexString);

		http.post("http://union.yayawan.com/pay_handler", params,
				new StringResponseHandler() {
					@Override
					public void onResponse(String content, URL url, int code) {

						disprogress();

						try {
							//System.out.println(content);
							Yayalog.loger(content);
							JSONObject json = new JSONObject(content);
							JSONObject orderString = json.optJSONObject("info");
							orderId = orderString.optString("id", "");

						} catch (JSONException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						}

						if (code != 200) {
							Toast.makeText(paramActivity, "订单处理失败，请重新支付",
									Toast.LENGTH_SHORT).show();
						} else {
							new Handler(Looper.getMainLooper())
									.post(new Runnable() {

										@Override
										public void run() {
											pay_run(paramActivity);

										}
									});
						}

					}

				});

	}

	private void pay_run(final Activity paramActivity) {
		Intent intent = getPayIntent(paramActivity);

		// 必需参数，使用360SDK的支付模块。
		intent.putExtra(ProtocolKeys.FUNCTION_CODE,
				ProtocolConfigs.FUNC_CODE_PAY);
		Matrix.invokeActivity(paramActivity, intent, mPayCallback);
	}

	protected Intent getPayIntent(Activity mactivity) {

		Bundle bundle = new Bundle();
		// 界面相关参数，360SDK界面是否以横屏显示。
		bundle.putBoolean(ProtocolKeys.IS_SCREEN_ORIENTATION_LANDSCAPE,
				DeviceUtil.isLandscape(mactivity));
		
		String[] userids=YYWMain.mUser.uid.split("-");
		String userid=userids[1];
		// 必需参数，360账号id。
		bundle.putString(ProtocolKeys.QIHOO_USER_ID,userid);
		System.out.println("userid"+userid);
		// 必需参数，用户access token，要使用注意过期和刷新问题，最大64字符。 
		bundle.putString(ProtocolKeys.ACCESS_TOKEN, LoginImpl.mAccessToken);
		System.out.println("LoginImpl.mAccessToken"+LoginImpl.mAccessToken);
		
		bundle.putString(ProtocolKeys.AMOUNT, YYWMain.mOrder.money + "");
		System.out.println("YYWMain.mOrder.money"+YYWMain.mOrder.money);
		// 必需参数，所购买商品名称，应用指定，建议中文，最大10个中文字。
		bundle.putString(ProtocolKeys.PRODUCT_NAME, YYWMain.mOrder.goods);
		System.out.println("YYWMain.mOrder.goods"+YYWMain.mOrder.goods);
		
		// 必需参数，购买商品的商品id，应用指定，最大16字符。
		bundle.putString(ProtocolKeys.PRODUCT_ID, orderId);
		System.out.println("orderId:"+orderId);
		
		bundle.putString(ProtocolKeys.NOTIFY_URI,
				DeviceUtil.getGameInfo(mactivity, "callback"));
		// http://union.yayawan.com/pay/notify/1990796034/1774865554/
		System.out.println("ProtocolKeys.NOTIFY_URI:"+DeviceUtil.getGameInfo(mactivity, "callback"));
		bundle.putString(ProtocolKeys.APP_NAME,
				DeviceUtil.getGameInfo(mactivity, "gamename"));
		System.out.println("ProtocolKeys.APP_NAME:"+DeviceUtil.getGameInfo(mactivity, "gamename"));
		bundle.putString(ProtocolKeys.APP_USER_NAME, YYWMain.mUser.userName);
		System.out.println("YYWMain.mUser.userName:"+YYWMain.mUser.userName);
		bundle.putString(ProtocolKeys.APP_USER_ID, YYWMain.mUser.uid);
		System.out.println("YYWMain.mUser.uid:"+YYWMain.mUser.uid);
		bundle.putString(ProtocolKeys.APP_ORDER_ID, orderId);
		System.out.println("orderId:"+orderId);
		Intent intent = new Intent(mactivity, ContainerActivity.class);
		intent.putExtras(bundle);
		return intent;

	}

	ProgressDialog progressDialog = null;

	private void progress(Activity paramActivity) {
		progressDialog = new ProgressDialog(paramActivity);
		// 设置进度条风格，风格为圆形，旋转的
		progressDialog.setProgressStyle(ProgressDialog.STYLE_SPINNER);
		// 设置ProgressDialog 标题
		// progressDialog.setTitle("提示");
		// 设置ProgressDialog 提示信息
		progressDialog.setMessage("订单处理中");
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

	// 支付的回调
	protected IDispatcherCallback mPayCallback = new IDispatcherCallback() {

		@Override
		public void onFinished(String data) {
			// Log.d(TAG, "mPayCallback, data is " + data);
			if (TextUtils.isEmpty(data)) {
				return;
			}

			boolean isCallbackParseOk = false;
			JSONObject jsonRes;
			try {
				jsonRes = new JSONObject(data);
				// error_code 状态码： 0 支付成功， -1 支付取消， 1 支付失败， -2 支付进行中,
				// 4010201和4009911 登录状态已失效，引导用户重新登录
				// error_msg 状态描述
				int errorCode = jsonRes.optInt("error_code");
				System.out.println(errorCode);
				isCallbackParseOk = true;
				switch (errorCode) {
				case 0:
					if (YYWMain.mPayCallBack != null) {
						YYWMain.mPayCallBack.onPaySuccess(YYWMain.mUser,
								YYWMain.mOrder, "success");
					}
					break;

				case 1:

					if (YYWMain.mPayCallBack != null) {
						YYWMain.mPayCallBack.onPayFailed(null, null);
					}
					break;

				case -1:
					if (YYWMain.mPayCallBack != null) {
						YYWMain.mPayCallBack.onPayCancel(null, null);
					}
					break;

				case -2:
					Myconstant.jfToast("正在支付中...稍后确认支付结果~", mactivity);
					if (YYWMain.mPayCallBack != null) {
						YYWMain.mPayCallBack.onPayCancel(null, null);
					}

					break;
				case 4010201:
					Myconstant.jfToast("登陆过期.请退出重新登录", mactivity);
					break;
				case 4009911:
					Myconstant.jfToast("登陆过期.请退出重新登录", mactivity);
					break;
				default:
					if (YYWMain.mPayCallBack != null) {
						YYWMain.mPayCallBack.onPayCancel(null, null);
					}
					break;
				}
			} catch (JSONException e) {
				e.printStackTrace();
			}

		}
	};

}
