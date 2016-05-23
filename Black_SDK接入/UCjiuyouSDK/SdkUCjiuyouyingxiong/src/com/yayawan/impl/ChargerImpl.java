package com.yayawan.impl;

import java.net.URL;
import java.net.URLEncoder;

import org.json.JSONException;
import org.json.JSONObject;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.SharedPreferences.Editor;
import android.os.Handler;
import android.os.Looper;
import android.widget.Toast;
import cn.uc.gamesdk.UCCallbackListener;
import cn.uc.gamesdk.UCCallbackListenerNullException;
import cn.uc.gamesdk.UCGameSDK;
import cn.uc.gamesdk.UCGameSDKStatusCode;
import cn.uc.gamesdk.info.OrderInfo;
import cn.uc.gamesdk.info.PaymentInfo;

import com.yayawan.asynchttp.AsyncHttpConnection;
import com.yayawan.asynchttp.StringResponseHandler;
import com.yayawan.asynchttp.support.ParamsWrapper;
import com.yayawan.callback.YYWPayCallBack;
import com.yayawan.domain.YYWOrder;
import com.yayawan.domain.YYWUser;
import com.yayawan.main.YYWMain;
import com.yayawan.main.YaYaWan;
import com.yayawan.proxy.YYWCharger;
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
				//YYWUser mUser = new YYWUser("fdsf", "fsfs", "fdsfs", 0, "",
				//		0 + "");
				//YYWMain.mUser = mUser;
				System.out.println("uc++开始创建订单");
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
		System.out.println("uc++开始支付");
		PaymentInfo pInfo = new PaymentInfo(); // 创建Payment对象，用于传递充值信息
		pInfo.setCustomInfo(""+orderId);
		
		int money = Integer.parseInt("" + (YYWMain.mOrder.money / 100));
		
		float money2=money;
		
		
		pInfo.setAmount(money2);
		pInfo.setServerId(0);
		pInfo.setRoleId(YYWMain.mUser.uid); // 设置用户的游戏角色的ID，此为必选参数，请根据实际业务数据传入真实数据
		pInfo.setRoleName(YYWMain.mUser.userName); // 设置用户的游戏角色名字，此为必选参数，请根据实际业务数据传入真实数据
		try {
			UCGameSDK.defaultSDK().pay(paramActivity, pInfo,
					new UCCallbackListener<OrderInfo>() {

						@Override
						public void callback(int statudcode, OrderInfo orderInfo) {
							// TODO Auto-generated method stub
							if (statudcode == UCGameSDKStatusCode.NO_INIT) {
								// 没有初始化就进行登录调用，需要游戏调用SDK初始化方法
							}
							if (statudcode == UCGameSDKStatusCode.SUCCESS) {

								// 订单生成生成，非充值成功，充值结果由服务端回调判断
								if (orderInfo != null) {
									if (YYWMain.mPayCallBack != null) {
										YYWMain.mPayCallBack.onPaySuccess(YYWMain.mUser,
												YYWMain.mOrder, "success");
									}
								}

							}
							if (statudcode == UCGameSDKStatusCode.PAY_USER_EXIT) {
								// 用户退出充值界面。
								if (YYWMain.mPayCallBack != null) {
									YYWMain.mPayCallBack.onPayCancel(null, null);
								}
							}
						}
					});

		} catch (UCCallbackListenerNullException e) {
			System.out.println("uc++支付失败");
			// TODO Auto-generated catch block
			if (YYWMain.mPayCallBack != null) {
				YYWMain.mPayCallBack.onPayFailed(null, null);
			}
			e.printStackTrace();
		}

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
