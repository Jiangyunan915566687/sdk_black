package com.yayawan.impl;

import java.net.URL;
import java.net.URLEncoder;
import java.util.Properties;

import org.json.JSONException;
import org.json.JSONObject;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.SharedPreferences.Editor;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.RemoteException;
import android.util.Log;
import android.widget.Toast;

import com.tencent.stat.StatService;
import com.tencent.unipay.plugsdk.IUnipayServiceCallBackPro;
import com.tencent.unipay.plugsdk.UnipayPlugAPI;
import com.tencent.unipay.plugsdk.UnipayResponse;
import com.tencent.unipay.request.UnipayGameRequest;
import com.tencent.unipay.request.UnipayGoodsRequest;
import com.umeng.analytics.game.UMGameAgent;
import com.yayawan.asynchttp.AsyncHttpConnection;
import com.yayawan.asynchttp.StringResponseHandler;
import com.yayawan.asynchttp.support.ParamsWrapper;
import com.yayawan.callback.YYWPayCallBack;
import com.yayawan.domain.YYWOrder;
import com.yayawan.domain.YYWUser;
import com.yayawan.main.YYWMain;
import com.yayawan.main.YaYaWan;
import com.yayawan.proxy.YYWCharger;
import com.yayawan.sdktemplate.MainActivity1;
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
				
				//UMGameAgent.pay(100, 10, 1);
			/*	Properties prop = new Properties();
				prop.setProperty("target", "nihao"); // 付费对象
				prop.setProperty("amount", umengpaymoney+""); // 付费金额
				StatService.trackCustomKVEvent(mactivity, "mta_tag_user_pay", prop);
				*/
				
				if (YYWMain.mUser != null) {
					// System.out.println("我要创建订单了");
					// 设置是第一次支付
					Myconstants.ISFIRSTPAY = true;
					createOrder(paramActivity);
					mactivity = paramActivity;
				} else {
					System.out.println("meiyouuser");
				}

			}
		});

	}

	String orderId = null;
	String token_id = null;
	String url_params = null;

	public void createOrder(final Activity paramActivity) {
		progress(paramActivity);

		AsyncHttpConnection http = AsyncHttpConnection.getInstance();
		ParamsWrapper pay_data = new ParamsWrapper();

		pay_data.put("game_id", DeviceUtil.getGameId(paramActivity));

		pay_data.put("uid", YYWMain.mUser.uid);

		System.out.println("支付传的" + YYWMain.mUser.uid);

		pay_data.put("union_id", DeviceUtil.getUnionid(paramActivity));

		pay_data.put("username", YYWMain.mUser.userName);

		pay_data.put("order_id", YYWMain.mOrder.orderId);

		pay_data.put("ext", YYWMain.mOrder.ext);
		pay_data.put("amount", YYWMain.mOrder.money);

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
		//pay_data.put("pfkey", "pfkey");
		pay_data.put("zoneid", "1");
		pay_data.put("amt", "" + (YYWMain.mOrder.money / 10));
		
		umengpaymoney=Integer.parseInt(YYWMain.mOrder.money/100+"");
		
		
		ParamsWrapper params = new ParamsWrapper();
		//System.out.println(pay_data.toString());
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
					public void onResponse(final String content, URL url, int code) {

						disprogress();

						try {
							// System.out.println("支付回来的结果" + content);

							JSONObject json = new JSONObject(content);

							int success = json.getInt("success");

							if (success == 1) {
								// System.out.println("下订单支付失败");
								// Toastutils_jf.toastString(paramActivity,
								// "下订单支付失败");
								// pay_run(paramActivity);
								if (Myconstants.ISFIRSTPAY) {
									new Handler(Looper.getMainLooper())
											.post(new Runnable() {

												@Override
												public void run() {
													System.out.println("支付回来的结果" + content);
													pay_run(paramActivity);

												}
											});
								} else {

									new Handler(Looper.getMainLooper())
											.post(new Runnable() {

												@Override
												public void run() {
													YYWMain.mPayCallBack
															.onPayFailed(null,
																	null);

												}
											});
								}

							} else if (success == 0) {
								System.out.println("支付成功");
								// Toastutils_jf.toastString(paramActivity,
								// "支付成功");
								// YYWMain.mPayCallBack.onPaySuccess(arg0, arg1,
								// arg2);
								new Handler(Looper.getMainLooper())
										.post(new Runnable() {

											@Override
											public void run() {
												YYWMain.mPayCallBack
														.onPaySuccess(
																YYWMain.mUser,
																YYWMain.mOrder,
																"success");
												UMGameAgent.pay(umengpaymoney, 10, 1);
												
												Properties prop = new Properties();
												prop.setProperty("target", YYWMain.mUser.uid); // 付费对象
												prop.setProperty("amount", umengpaymoney+""); // 付费金额
												StatService.trackCustomKVEvent(mactivity, "mta_tag_user_pay", prop);
												
												
												/*Properties prop = new Properties();
												prop.setProperty("scene", "通关"); // 付费场景
												prop.setProperty("amount", "350"); // 付费金额
												prop.setProperty("way", "手机支付"); // 付费方式（可选择上报）
												StatService.trackCustomKVEvent(null, "mta_tag_user_pay", prop);
												*/
												
												Toast.makeText(paramActivity,
														"支付成功"+umengpaymoney+"元",
														Toast.LENGTH_SHORT).show();
											}
										});
							}

						} catch (JSONException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						}

						if (code != 200) {

							new Handler(Looper.getMainLooper())
									.post(new Runnable() {

										@Override
										public void run() {
											Toast.makeText(paramActivity,
													"订单处理失败，请重新支付",
													Toast.LENGTH_SHORT).show();

										}
									});

						} else {

						}

					}

				});

	}

	// 回调接口
	IUnipayServiceCallBackPro.Stub unipayStubCallBack = new IUnipayServiceCallBackPro.Stub() {

		@Override
		public void UnipayNeedLogin() throws RemoteException {
			System.out.println("需要登录");

		}

		@Override
		public void UnipayCallBack(UnipayResponse response)
				throws RemoteException {
			System.out.println("点击支付后回来的resutcode" + response.resultCode);
			if (response.resultCode == 0) {
				// System.out.println("充值游戏币成功");
				// Toastutils_jf.toastString(paramActivity, "充值游戏币成功");
				new Handler(Looper.getMainLooper()).post(new Runnable() {

					@Override
					public void run() {
						Myconstants.ISFIRSTPAY = false;
						createOrder(mactivity);
					}
				});
			} else {
				System.out.println("点击支付后回来的resutcode" + response.resultCode);
				new Handler(Looper.getMainLooper()).post(new Runnable() {

					@Override
					public void run() {
						YYWMain.mPayCallBack.onPayFailed(null, null);

					}
				});
			}

		}
	};
	//支付
	public static int umengpaymoney;
	private void pay_run(final Activity paramActivity) {
		UnipayPlugAPI unipayPlugAPI = new UnipayPlugAPI(paramActivity);
		unipayPlugAPI.setEnv("release");
		UnipayGameRequest request = new UnipayGameRequest();
		request.offerId = DeviceUtil.getGameInfo(paramActivity, "qqAppId");
		request.openId = Myconstants.mpayinfo.openId;

		if (Myconstants.mpayinfo.opentype.equals("wx")) {
			request.sessionId = "hy_gameid";
			request.sessionType = "wc_actoken";
			request.openKey = Myconstants.mpayinfo.openKey;
		} else {
			request.sessionId = "openid";
			request.sessionType = "kp_actoken";
			request.openKey = Myconstants.mpayinfo.qq_paytoken;
		}
		request.zoneId = "1";
		request.pf = Myconstants.mpayinfo.pf;
		request.pfKey = Myconstants.mpayinfo.pfKey;
		request.acctType = UnipayPlugAPI.ACCOUNT_TYPE_COMMON;
		request.saveValue = (YYWMain.mOrder.money / 10) + "";
		
		request.isCanChange = false;
		//开通包月图标..实际上没有包月的
		request.resId = 0x7f020003;
		request.resData = null;
		System.out.println("我开启了qq支付");
		unipayPlugAPI.LaunchPay(request, unipayStubCallBack);

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
