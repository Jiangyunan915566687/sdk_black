package com.yayawan.impl;

import java.net.URL;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Map;

import org.json.JSONException;
import org.json.JSONObject;

import android.app.Activity;
import android.app.ProgressDialog;
import android.os.Handler;
import android.os.Looper;
import android.widget.Toast;



import com.android.huawei.pay.plugin.IHuaweiPay;
import com.android.huawei.pay.plugin.IPayHandler;
import com.android.huawei.pay.plugin.MobileSecurePayHelper;
import com.android.huawei.pay.plugin.PayParameters;
import com.android.huawei.pay.util.HuaweiPayUtil;
import com.android.huawei.pay.util.Rsa;
import com.huawei.gamebox.buoy.sdk.util.DebugConfig;
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

    }

    @Override
    public void pay(final Activity paramActivity, final YYWOrder order, YYWPayCallBack callback) {

        new Handler(Looper.getMainLooper()).post(new Runnable() {

            @Override
            public void run() {
            	System.err.println("pay start");
            	createOrder(paramActivity);
            }
        });

    }


    String orderId = null;

    String private_keyString = null;



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
        pay_data.put("goods", YYWMain.mOrder.goods);


        ParamsWrapper params = new ParamsWrapper();


        String hexString = null;
		try {
			hexString = CryptoUtil.encodeHexString(RSACoder.encryptByPublicKey(pay_data.toString().getBytes()));
			hexString =  URLEncoder.encode(hexString, "UTF-8");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}


        params.put("data", hexString);



        http.post("http://union.yayawan.com/pay_handler", params, new StringResponseHandler() {
            @Override
            public void onResponse(String content, URL url, int code) {

            	disprogress();

            	try {
					JSONObject json = new JSONObject(content);
                    JSONObject orderString = json.optJSONObject("info");
                    orderId = orderString.optString("id", "");
                    private_keyString = orderString.optString("private_key", "");

				} catch (JSONException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}


            	if (code != 200) {
            		Toast.makeText(paramActivity,"订单处理失败，请重新支付", Toast.LENGTH_SHORT).show();
				}else {
					//pay_run(paramActivity);


					new Handler(Looper.getMainLooper()).post(new Runnable() {

			            @Override
			            public void run() {
			            	System.err.println("pay start");
			            	pay_run(paramActivity);
			            }
			        });


				}

            }

        });


    }

    private void pay_run(final Activity paramActivity) {

    	 Map<String, String> params = new HashMap<String, String>();
         // 必填字段，不能为null或者""，请填写从联盟获取的支付ID
         params.put("userID", DeviceUtil.getGameInfo(paramActivity, "PAY_ID"));
         // 必填字段，不能为null或者""，请填写从联盟获取的应用ID
         params.put("applicationID", DeviceUtil.getGameInfo(paramActivity, "APP_ID"));
         // 必填字段，不能为null或者""，单位是元，精确到小数点后两位，如1.00
         params.put("amount", Long.toString(YYWMain.mOrder.money/100)+".00");
         // 必填字段，不能为null或者""，道具名称
         params.put("productName", YYWMain.mOrder.goods);
         // 必填字段，不能为null或者""，道具描述
         params.put("productDesc", YYWMain.mOrder.goods);
         // 必填字段，不能为null或者""，最长30字节，不能重复，否则订单会失败
         params.put("requestId", orderId);
        // Yayalog.loger(" YYWMain.mOrder.goods"+ params.toString());

         String noSign = HuaweiPayUtil.getSignData(params);
         //DebugConfig.d("startPay", "签名参数noSign：" + noSign);
       //  Yayalog.loger("private_keyString"+private_keyString);
         // CP必须把参数传递到服务端，在服务端进行签名，然后把sign传递下来使用；服务端签名的代码和客户端一致
         String sign = Rsa.sign(noSign,private_keyString);
         
        // Yayalog.loger("sign"+sign);
         //D//ebugConfig.d("startPay", "签名： " + sign);

         Map<String, Object> payInfo = new HashMap<String, Object>();
         // 必填字段，不能为null或者""
         payInfo.put("amount", Long.toString(YYWMain.mOrder.money/100)+".00");
         // 必填字段，不能为null或者""
         payInfo.put("productName", YYWMain.mOrder.goods);
         // 必填字段，不能为null或者""
         payInfo.put("requestId", orderId);
         // 必填字段，不能为null或者""
         payInfo.put("productDesc", YYWMain.mOrder.goods);
         // 必填字段，不能为null或者""，请填写自己的公司名称
         payInfo.put("userName", "广州千骐动漫科技有限公司");
         // 必填字段，不能为null或者""
         payInfo.put("applicationID", DeviceUtil.getGameInfo(paramActivity, "APP_ID"));
         // 必填字段，不能为null或者""
         payInfo.put("userID", DeviceUtil.getGameInfo(paramActivity, "PAY_ID"));
         payInfo.put("sign", sign);
         payInfo.put("notifyUrl", null);

         // 必填字段，不能为null或者""，此处写死X6
         payInfo.put("serviceCatalog", "X6");

         // 调试期可打开日志，发布时注释掉
         payInfo.put("showLog", true);

         // 设置支付界面横竖屏，默认竖屏
         payInfo.put("screentOrient", DeviceUtil.isLandscape(paramActivity) == true ? 2 : 1);

         DebugConfig.d("startPay", "支付请求参数 : " + payInfo.toString());
         Yayalog.loger( "支付请求参数 : " + payInfo.toString());
         IHuaweiPay payHelper = new MobileSecurePayHelper();


         IPayHandler handler = new IPayHandler() {

			@Override
			public void onFinish(Map<String, String> payResp) {
				// TODO Auto-generated method stub
				if ("0".equals(payResp.get(PayParameters.returnCode)))
	            {
	                if ("success".equals(payResp.get(PayParameters.errMsg)))
	                {
	                	YYWMain.mPayCallBack.onPaySuccess(YYWMain.mUser, YYWMain.mOrder, "true");
	                }
	            }else {
					YYWMain.mPayCallBack.onPayFailed("等待支付", null);
				}




			}
         };
         /**
          * 开始支付
          */
         payHelper.startPay(paramActivity, payInfo, handler);


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
