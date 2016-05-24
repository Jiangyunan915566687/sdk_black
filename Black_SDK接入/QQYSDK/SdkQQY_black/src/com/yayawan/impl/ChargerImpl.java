package com.yayawan.impl;

import java.net.URL;
import java.net.URLEncoder;

import org.json.JSONException;
import org.json.JSONObject;

import android.app.Activity;
import android.app.ProgressDialog;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.widget.Toast;

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

	@Override
	public void pay(final Activity paramActivity, final YYWOrder order,
			YYWPayCallBack callback) {

		new Handler(Looper.getMainLooper()).post(new Runnable() {

			@Override
			public void run() {
				//避免测试SDK时,未登录帐号进行支付闪退
				if (YYWMain.mUser==null) {
					Toast.makeText(paramActivity, "支付前请登录帐号", Toast.LENGTH_SHORT).show();
					return;
				}
				Log.d("black", "创建支付订单");
				// 设置是第一次支付
				Myconstants.ISFIRSTPAY = true;
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

		//YSDK添加的传参 start
		pay_data.put("openkey", Myconstants.mpayinfo.openKey);
		
		pay_data.put("opentype", Myconstants.mpayinfo.opentype);

		pay_data.put("pay_token", Myconstants.mpayinfo.qq_paytoken);
		pay_data.put("payitem", "123456" + "*" + (YYWMain.mOrder.money / 10)
				+ "*" + "" + 1);
		pay_data.put("goodsmeta", YYWMain.mOrder.goods + "*" + "道具");
		pay_data.put("goodsurl",
				"http://img2.imgtn.bdimg.com/it/u=3188228834,2947524100&fm=21&gp=0.jpg");
		pay_data.put("pf", Myconstants.mpayinfo.pf);
		pay_data.put("pfkey", Myconstants.mpayinfo.pfKey);
		// pay_data.put("pfkey", "pfkey");
		pay_data.put("zoneid", "1");
		pay_data.put("amt", "" + (YYWMain.mOrder.money / 10));
		//YSDK 添加的传参 end
		ParamsWrapper params = new ParamsWrapper();

		String hexString = null;                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              
		try {
			hexString = CryptoUtil.encodeHexString(RSACoder
					.encryptByPublicKey(pay_data.toString().getBytes()));
			hexString = URLEncoder.encode(hexString, "UTF-8");
		} catch (Exception e) {
			e.printStackTrace();
		}

		params.put("data", hexString);

		http.post("http://union.yayawan.com/pay_handler", params,
				new StringResponseHandler() {
					@Override
					public void onResponse(final String content, URL url, int code) {

						disprogress();

						/*try {
							System.out.println(content);
							JSONObject json = new JSONObject(content);
							JSONObject orderString = json.optJSONObject("info");
							orderId = orderString.optString("id", "");

						} catch (JSONException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						}*/
						try {
							Log.d("black","支付回来的结果" + content);

							JSONObject json = new JSONObject(content);

							int success = json.getInt("success");

							if (success == 1) {
								if (Myconstants.ISFIRSTPAY) {
									new Handler(Looper.getMainLooper())
										.post(new Runnable() {

										@Override
										public void run() {
											Log.d("black","支付回来的结果"+ content);
											pay_run(paramActivity);

										}
									});
								} else {
									new Handler(Looper.getMainLooper())
										.post(new Runnable() {
											@Override
											public void run() {
												//支付失败
												YYWMain.mPayCallBack.onPayFailed(null,null);
											}
										});
								}

							} else if (success == 0) {
								Log.d("black","支付成功");
								new Handler(Looper.getMainLooper())
									.post(new Runnable() {
										@Override
										public void run() {
											YYWMain.mPayCallBack.onPaySuccess(YYWMain.mUser,YYWMain.mOrder,"success");

										}
								});
							}

						} catch (JSONException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						}

						if (code != 200) {
							Toast.makeText(paramActivity, "订单处理失败，请重新支付",
									Toast.LENGTH_SHORT).show();
						} else {
							/*
							new Handler(Looper.getMainLooper())
									.post(new Runnable() {

										@Override
										public void run() {
											pay_run(paramActivity);

										}
							});
							*/
						}

					}

				});

	}

	private void pay_run(final Activity paramActivity) {

		YaYawanconstants.pay(paramActivity, orderId);

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
}
