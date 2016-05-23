package com.yayawan.impl;

import java.net.URL;

import org.json.JSONException;
import org.json.JSONObject;

import android.app.Activity;
import android.app.ProgressDialog;
import android.os.Handler;
import android.os.Looper;
import android.widget.Toast;

import com.xmwsdk.asynchttp.AsyncHttpConnection;
import com.xmwsdk.asynchttp.StringResponseHandler;
import com.xmwsdk.asynchttp.support.ParamsWrapper;
import com.xmwsdk.control.XmwMatrix;
import com.xmwsdk.inface.XmwIDispatcherCallback;
import com.xmwsdk.model.PayInfo;
import com.xmwsdk.util.MD5Ecnrypt;
import com.yayawan.callback.YYWPayCallBack;
import com.yayawan.domain.YYWOrder;
import com.yayawan.main.YYWMain;
import com.yayawan.proxy.YYWCharger;
import com.yayawan.utils.DeviceUtil;
import com.yayawan.utils.JSONUtil;

public class ChargerImpl implements YYWCharger {

    public String notify_url = "http://union.yayawan.com/pay/notify/1246603097/1043348637/";

    public String purchases_url = "http://open.xmwan.com/v2/purchases";

    private PayInfo payinfo;

    @Override
    public void charge(Activity paramActivity, YYWOrder order,
            YYWPayCallBack callback) {
        // TODO Auto-generated method stub
        Toast.makeText(paramActivity, "不定额支付", Toast.LENGTH_SHORT).show();
    }

    @Override
    public void pay(final Activity paramActivity, final YYWOrder order, YYWPayCallBack callback) {

    	notify_url = DeviceUtil.getGameInfo(paramActivity, "notifyAddress");

        new Handler(Looper.getMainLooper()).post(new Runnable() {

            @Override
            public void run() {

                if (YYWMain.mUser == null) {
                    Toast.makeText(paramActivity, "请先登录", Toast.LENGTH_SHORT)
                            .show();
                    return;
                }

                getpurchases(paramActivity, order);
            }
        });
    }

    public void getpurchases(final Activity paramActivity, YYWOrder order) {

        progress(paramActivity);
        AsyncHttpConnection http = AsyncHttpConnection.getInstance();
        ParamsWrapper params = new ParamsWrapper();

        params.put("amount", order.money / 100);
        params.put("app_ext1", JSONUtil.formatExt(order.ext,
                DeviceUtil.getGameId(paramActivity), YYWMain.mUser.userName,
                YYWMain.mUser.uid));
        params.put("app_order_id", order.orderId);
        params.put("app_subject", order.goods);
        params.put("app_user_id", YYWMain.mUser.uid);

        params.put("notify_url", notify_url);
        params.put("timestamp", System.currentTimeMillis() / 1000);
        params.put("client_secret", LoginImpl.CLIENTSECRET);
        try {

            String string = new StringBuffer("amount=")
                    .append(order.money / 100)
                    .append("&app_ext1=")
                    .append(JSONUtil.formatExt(order.ext,
                            DeviceUtil.getGameId(paramActivity),
                            YYWMain.mUser.userName, YYWMain.mUser.uid))
                    .append("&app_order_id=").append(order.orderId)
                    .append("&app_subject=").append(order.goods)
                    .append("&app_user_id=").append(YYWMain.mUser.uid)
                    .append("&notify_url=").append(notify_url)
                    .append("&timestamp=")
                    .append(System.currentTimeMillis() / 1000)
                    .append("&client_secret=").append(LoginImpl.CLIENTSECRET)
                    .toString();

            String sign = MD5Ecnrypt.EncodeMD5Hex(string);
            params.put("sign", sign);
        } catch (Exception e1) {
            e1.printStackTrace();
        }
        params.put("access_token", YYWMain.mUser.body);
        params.put("client_id", LoginImpl.CLIENTID);

        http.post(purchases_url, params, new StringResponseHandler() {
            @Override
            public void onResponse(String content, URL url, int code) {
                JSONObject j;
                try {
                	Yayalog.loger("返回来的信息"+content+"url:"+url+"code:"+code);
                    j = new JSONObject(content);
                    String error = j.optString("error_description", "");
                    if (error.equalsIgnoreCase("")) {
                        String serial = j.optString("serial");
                        String amount = j.optString("amount");
                        String app_order_id = j.optString("app_order_id");
                        String app_user_id = j.optString("app_user_id");
                        String app_subject = j.optString("app_subject");
                        String app_description = j.optString("app_description");
                        String app_ext1 = j.optString("app_ext1");
                        String app_ext2 = j.optString("app_ext2");

                        YYWMain.mOrder.id = serial;
                        payinfo = new PayInfo();
                        payinfo.setPurchase_serial(serial);
                        payinfo.setAmount(amount);// 金额
                        payinfo.setApp_subject(app_subject);// 商品名称
                        payinfo.setApp_description(app_description);// 商品描述
                        payinfo.setApp_ext1(app_ext1);//
                        payinfo.setApp_ext2(app_ext2);//
                        payinfo.setApp_order_id(app_order_id);// 订单号
                        payinfo.setApp_user_id(app_user_id);

                        doPay(paramActivity);
                    } else {
                        disprogress();
                        Yayalog.loger("这里订单失败了"+content+"url:"+url+"code:"+code);
                        if (YYWMain.mPayCallBack != null) {
                            YYWMain.mPayCallBack
                                    .onPayFailed("failed", "创建订单失败");
                        }
                    }
                    disprogress();
                } catch (JSONException e) {
                    // TODO Auto-generated catch block
                    e.printStackTrace();
                    disprogress();
                    if (YYWMain.mPayCallBack != null) {
                        YYWMain.mPayCallBack.onPayFailed("failed", "创建订单失败");
                    }
                }
            }

        });
    }

    public void doPay(Activity paramActivity) {
        XmwMatrix.invokePay(paramActivity, new XmwIDispatcherCallback() {

            @Override
            public void onFinished(int code, String data) {
                if (code == 99) {
                	//System.out.println("支付失败sdk内打印的"+code+data);
                	Yayalog.loger("支付失败");
                    // 用户取消支付或支付失败
                    if (YYWMain.mPayCallBack != null) {
                        YYWMain.mPayCallBack.onPayFailed("", "");
                    }
                    return;
                } else if (code == 1) {
                    // 支付正在处理，充值卡重置可能比较慢 支付完成后会向服务器返回充值结果
                    return;
                } else if (code == 0) {
                    // 支付成功
                    if (YYWMain.mPayCallBack != null) {
                        YYWMain.mPayCallBack.onPaySuccess(YYWMain.mUser,
                                YYWMain.mOrder, "success");
                    }
                    return;
                }

            }
        }, payinfo);
    }

    ProgressDialog progressDialog = null;

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
