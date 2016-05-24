package com.yayawan.impl;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.net.URLEncoder;

import org.json.JSONException;
import org.json.JSONObject;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.SharedPreferences.Editor;
import android.content.res.AssetManager;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.RemoteException;
import android.util.Log;
import android.widget.Toast;

import com.tencent.unipay.plugsdk.IUnipayServiceCallBackPro;
import com.tencent.unipay.plugsdk.UnipayPlugAPI;
import com.tencent.unipay.plugsdk.UnipayResponse;
import com.tencent.unipay.request.UnipayGameRequest;
import com.tencent.unipay.request.UnipayGoodsRequest;
import com.tencent.ysdk.api.YSDKApi;
import com.tencent.ysdk.framework.common.eFlag;
import com.tencent.ysdk.module.pay.PayListener;
import com.tencent.ysdk.module.pay.PayRet;
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
				mactivity = paramActivity;
				if (YYWMain.mUser != null) {
					// System.out.println("我要创建订单了");
					// 设置是第一次支付
					Myconstants.ISFIRSTPAY = true;
					createOrder(paramActivity);
					mactivity = paramActivity;
					System.out.println(Myconstants.mpayinfo.toString());
				} else {
					System.out.println("meiyouuser");
				}
				// pay_run(mactivity);

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
		
		System.out.println("支付传的openKey"+Myconstants.mpayinfo.openKey);
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

		ParamsWrapper params = new ParamsWrapper();
		// System.out.println(pay_data.toString());
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
					public void onResponse(final String content, URL url,
							int code) {

						disprogress();

						try {
							System.out.println("支付回来的结果" + content);

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
													System.out
															.println("支付回来的结果"
																	+ content);
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

	private void pay_run(final Activity paramActivity) {

		String zoneId = "1";
		String saveValue = "" + YYWMain.mOrder.money / 10;
		boolean isCanChange = false;
		
		AssetManager assetManager = paramActivity.getAssets();
		InputStream istr = null;
		try {
			istr = assetManager.open("sample_yuanbao.png");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		Bitmap bmp = BitmapFactory.decodeStream(istr);
		ByteArrayOutputStream baos = new ByteArrayOutputStream();
		bmp.compress(Bitmap.CompressFormat.PNG, 100, baos);
		byte[] appResData = baos.toByteArray();
		String ysdkExt = "ysdkExt";
		YSDKApi.recharge(zoneId, saveValue, isCanChange, appResData, ysdkExt,
				new PayListener() {
					@Override
					public void OnPayNotify(PayRet ret) {
						if (PayRet.RET_SUCC == ret.ret) {
							// 支付流程成功
							switch (ret.payState) {
							// 支付成功
							case PayRet.PAYSTATE_PAYSUCC:
								System.out.println("用户支付成功，支付金额"
										+ ret.realSaveNum + ";" + "使用渠道："
										+ ret.payChannel + ";" + "发货状态："
										+ ret.provideState + ";" + "业务类型："
										+ ret.extendInfo + ";建议查询余额："
										+ ret.toString());
								new Handler(Looper.getMainLooper())
										.post(new Runnable() {

									@Override
									public void run() {
										Myconstants.ISFIRSTPAY = false;
										createOrder(mactivity);
									}
								});

								break;
							// 取消支付
							case PayRet.PAYSTATE_PAYCANCEL:
								System.out.println("用户取消支付：" + ret.toString());
								payFail();
								break;
							// 支付结果未知
							case PayRet.PAYSTATE_PAYUNKOWN:
								System.out.println("用户支付结果未知，建议查询余额："
										+ ret.toString());
								payFail();
								break;
							// 支付失败
							case PayRet.PAYSTATE_PAYERROR:
								payFail();
								System.out.println("支付异常" + ret.toString());
								break;
							}
						} else {
							switch (ret.flag) {
							case eFlag.User_LocalTokenInvalid:
								// 用户取消支付
								System.out.println("登陆态过期，请重新登陆："
										+ ret.toString());
								// mMainActivity.letUserLogout();
								Toast.makeText(mactivity, "登陆时间过长，请新登陆游戏进行支付",
										0).show();
								break;
							case eFlag.Pay_User_Cancle:
								// 用户取消支付
								payFail();
								System.out.println("用户取消支付：" + ret.toString());
								break;
							case eFlag.Pay_Param_Error:
								payFail();
								System.out.println("支付失败，参数错误" + ret.toString());
								break;
							case eFlag.Error:
							default:
								payFail();
								System.out.println("支付异常" + ret.toString());
								break;
							}
						}
					}
				});

	}

	ProgressDialog progressDialog = null;
	private UnipayPlugAPI unipayPlugAPI;
	private UnipayGameRequest request;

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

	/*
	 * 支付成功
	 */
	public static void paySuce() {
		// 支付成功
		if (YYWMain.mPayCallBack != null) {
			YYWMain.mPayCallBack.onPaySuccess(YYWMain.mUser, YYWMain.mOrder,
					"success");
		}
	}

	public static void payFail() {
		// 支付成功
		if (YYWMain.mPayCallBack != null) {
			YYWMain.mPayCallBack.onPayFailed(null, null);
		}
	}
}
