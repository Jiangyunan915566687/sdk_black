package com.yayawan.impl;

import org.json.JSONObject;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.util.Log;

import com.yayawan.proxy.YYWActivityStub;
import com.yayawan.utils.Handle;

public class ActivityStubImpl implements YYWActivityStub {
	private static final String TAG = "black";
	static String orderId;
	static String Id;
	static SdkBroadcastReceiver receiver = null;
	public static final String SDK_PAYEND_ACTION = "com.yayawan.impl.pay";
	@Override
	public void applicationInit(Activity paramActivity) {

	}

	@Override
	public void onCreate(Activity paramActivity) {
		Handle.active_handler(paramActivity);
		YaYawanconstants.inintsdk(paramActivity);
		//注册消息接收
		receiver = new SdkBroadcastReceiver();
		IntentFilter intentFilter = new IntentFilter(SDK_PAYEND_ACTION);  
		intentFilter.setPriority(Integer.MAX_VALUE);  
		paramActivity.registerReceiver(receiver, intentFilter);
	}
	class SdkBroadcastReceiver extends BroadcastReceiver {
        @Override
        public void onReceive(Context context, Intent intent)
        {
                String action = intent.getAction();
                if (SDK_PAYEND_ACTION.equals(action)) {
                        String data = intent.getExtras().getString("data");
                        System.out.println("pay_result data="+data);
                        try {
                                JSONObject parse = new JSONObject(data);
                                Log.d(TAG, "Pay Log = "+parse.toString());
                                //Toast.makeText(getApplicationContext(), "method" + parse.getString("method")+":"+ data,Toast.LENGTH_LONG).show();  
                                if ("pay_result".equals(parse.getString("method"))) {
                                        orderId = parse.getJSONObject("data").getString("order");
                                        Id = parse.getJSONObject("data").getString("id");
                                        if (parse.getJSONObject("data").getInt("ret") == 0) {
                                                //Toast.makeText(getApplicationContext(), "支付成功", Toast.LENGTH_LONG).show();
                                        	YaYawanconstants.paySuce();
                                        } else {
                                               //Toast.makeText(getApplicationContext(), "支付失败", Toast.LENGTH_LONG).show();
                                        	YaYawanconstants.payFail();
                                        }
                                }
                        } catch (Exception e) {
                                System.out.println("sdk on receive"+e);
                                YaYawanconstants.payFail();
                        }
                }
        }
   }

	@Override
	public void onStop(Activity paramActivity) {
		YaYawanconstants.onStop(paramActivity);
	}

	@Override
	public void onResume(Activity paramActivity) {
		YaYawanconstants.onResume(paramActivity);
	}

	@Override
	public void onPause(Activity paramActivity) {
		YaYawanconstants.onPause(paramActivity);
	}

	@Override
	public void onRestart(Activity paramActivity) {
		YaYawanconstants.onRestart(paramActivity);
	}

	@Override
	public void onDestroy(Activity paramActivity) {
		YaYawanconstants.onDestroy(paramActivity);
	}

	@Override
	public void applicationDestroy(Activity paramActivity) {

	}

	@Override
	public void onActivityResult(Activity paramActivity, int paramInt1,
			int paramInt2, Intent paramIntent) {

	}

	@Override
	public void onNewIntent(Intent paramIntent) {

	}

	@Override
	public void initSdk(Activity arg0) {
		
	}

}
