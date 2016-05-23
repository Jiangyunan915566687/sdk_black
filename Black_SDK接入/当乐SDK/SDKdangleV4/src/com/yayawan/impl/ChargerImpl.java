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

import com.downjoy.CallbackListener;
import com.downjoy.CallbackStatus;
import com.downjoy.Downjoy;
import com.downjoy.util.Util;
import com.yayawan.asynchttp.AsyncHttpConnection;
import com.yayawan.asynchttp.StringResponseHandler;
import com.yayawan.asynchttp.support.ParamsWrapper;
import com.yayawan.callback.YYWPayCallBack;
import com.yayawan.domain.YYWOrder;
import com.yayawan.main.YYWMain;
import com.yayawan.proxy.YYWCharger;
import com.yayawan.utils.CryptoUtil;
import com.yayawan.utils.DeviceUtil;
import com.yayawan.utils.JSONUtil;
import com.yayawan.utils.RSACoder;

public class ChargerImpl implements YYWCharger {

    @Override
    public void charge(Activity paramActivity, YYWOrder order,
            YYWPayCallBack callback) {
        // TODO Auto-generated method stub
        Toast.makeText(paramActivity, "不定额支付", Toast.LENGTH_SHORT).show();
    }

    @Override
    public void pay(final Activity paramActivity, final YYWOrder order,
            YYWPayCallBack callback) {
        new Handler(Looper.getMainLooper()).post(new Runnable() {

            @Override
            public void run() {
                float price = order.money / 100;

                if (YYWMain.mUser!=null) {
					createOrder(paramActivity);
					
				}
                
              /*  Downjoy.getInstance().openPaymentDialog(
                        paramActivity,
                        price,
                        order.goods,
                        JSONUtil.formatExt(order.ext, order.orderId,
                                YYWMain.mUser.userName, YYWMain.mUser.uid),
                        new CallbackListener() {

                            @Override
                            public void onPaymentError(DownjoyError error,
                                    String arg1) {
                                if (YYWMain.mPayCallBack != null) {
                                    YYWMain.mPayCallBack.onPayFailed(
                                            error.getMessage(), "");
                                }
                            }

                            @Override
                            public void onPaymentSuccess(String orderNo) {

                                YYWMain.mOrder.id = orderNo;

                                if (YYWMain.mPayCallBack != null) {
                                    YYWMain.mPayCallBack.onPaySuccess(
                                            YYWMain.mUser, YYWMain.mOrder,
                                            "success");
                                }
                            }

                        });*/
            }
        });

    }
    private String orderId;
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

    	 // 打开支付界面,获得订单号
        Myconstant.dangle.openPaymentDialog(paramActivity, YYWMain.mOrder.money/100, YYWMain.mOrder.goods, YYWMain.mOrder.ext,
                orderId, "Serer001", YYWMain.mUser.userName, new CallbackListener<String>() {
                    @Override
                    public void callback(int status, String data) {
                        if (status == CallbackStatus.SUCCESS) {
                        	if (YYWMain.mPayCallBack!=null) {
                        		YYWMain.mPayCallBack.onPaySuccess(YYWMain.mUser,
            							YYWMain.mOrder, "success");
							}
                        
                        } else if (status == CallbackStatus.FAIL) {
                        	if (YYWMain.mPayCallBack!=null) {
                        		YYWMain.mPayCallBack.onPayFailed(null, null);
							}
                        	
                        }
                    }
                });

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
