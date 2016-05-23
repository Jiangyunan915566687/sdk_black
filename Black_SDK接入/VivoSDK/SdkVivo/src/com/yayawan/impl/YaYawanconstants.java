package com.yayawan.impl;

import java.util.HashMap;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import android.widget.Toast;

import com.bbk.payment.PaymentActionDetailsInit;
import com.bbk.payment.PaymentActivity;
import com.vivo.account.base.accounts.OnVivoAccountChangedListener;
import com.vivo.account.base.accounts.VivoAccountManager;
import com.vivo.account.base.activity.LoginActivity;
import com.yayawan.callback.YYWExitCallback;
import com.yayawan.domain.YYWUser;
import com.yayawan.main.YYWMain;
import com.yayawan.main.YaYaWan;
import com.yayawan.utils.DeviceUtil;
import com.yayawan.utils.Handle;
import com.yayawan.utils.JSONUtil;

public class YaYawanconstants {

	private static HashMap<String, String> mGoodsid;

	private static Activity mActivity;

	public static VivoAccountManager mVivoAccountManager;

	/**
	 * 初始化sdk
	 */
	public static void inintsdk(Activity mactivity) {
		mActivity = mactivity;
		Yayalog.loger("初始化sdk");
		mVivoAccountManager = VivoAccountManager.getInstance(mactivity);
		mVivoAccountManager.registeListener(mOnVivoAccountChangedListener);
		VivoAccountManager.vivoAccountStartAssistView(mactivity);
	}

	/**
	 * 登录
	 */
	public static void login(final Activity mactivity) {
		Yayalog.loger("sdk登录");
		Intent loginIntent = new Intent(mactivity, LoginActivity.class);
		// loginIntent.putExtra(KEY_SHOW_TEMPLOGIN, false);
		mactivity.startActivity(loginIntent);
		
	}

	/**
	 * 支付
	 * 
	 * @param mactivity
	 * @param accessKey 
	 * @param orderNumber 
	 */
	public static void pay(Activity mactivity, String morderid, String orderNumber, String accessKey) {

		Yayalog.loger("sdk支付");
		String goods=TextUtils.isEmpty(YYWMain.mOrder.goods)? "商品":YYWMain.mOrder.goods;
		String ext=TextUtils.isEmpty(YYWMain.mOrder.ext)? "商品":YYWMain.mOrder.ext;
		
		Bundle localBundle = new Bundle();
    	localBundle.putString("transNo", orderNumber);// 交易流水号，由订单推送接口返回
    	localBundle.putString("accessKey", accessKey);// 由订单推送接口返回
    	localBundle.putString("productName", goods);//商品名称
    	localBundle.putString("productDes", ext);//商品描述
    	localBundle.putLong("price", YYWMain.mOrder.money);//价格,单位为分（1000即10.00元）
    	localBundle.putString("appId", DeviceUtil.getGameInfo(mactivity, "appId"));// appid为vivo开发者平台中生成的App ID
    	Yayalog.loger(orderNumber+"accesskey:"+accessKey+"goods:"+goods+"ext:"+ext);
    	
    	// 以下为可选参数，能收集到务必填写，如未填写，掉单、用户密码找回等问题可能无法解决。
    	localBundle.putString("blance", YYWMain.mOrder.money.toString());
    	localBundle.putString("extInfo", YYWMain.mOrder.ext);
    	localBundle.putBoolean("logOnOff", false);
    	Intent target = new Intent(mactivity, PaymentActivity.class);
    	target.putExtra("payment_params", localBundle);
    	mactivity.startActivityForResult(target, 1);
	}

	/**
	 * 退出
	 * 
	 * @param paramActivity
	 * @param callback
	 */
	public static void exit(Activity paramActivity,
			final YYWExitCallback callback) {
		Yayalog.loger("sdk退出");
		VivoAccountManager.vivoAccountonDestroy (paramActivity);
		callback.onExit();

	}

	public static OnVivoAccountChangedListener mOnVivoAccountChangedListener = new OnVivoAccountChangedListener() {
		@Override
		public void onAccountLogin(String name, String openid, String authtoken) {
			// TODO Auto-generated method stub
			// nameVal.setText(name);
			// openidVal.setText(openid);
			// authtokenVal.setText(authtoken);
			/*
			 * Log.d(TAG, "name=" + name + ", openid=" + openid + ", authtoken="
			 * + authtoken);
			 */

			YYWMain.mUser = new YYWUser();

			YYWMain.mUser.uid =   openid
					+ "";
			;
			//System.out.println("++++++++++++"+openid);
			YYWMain.mUser.userName = 
					 name + "";
			// YYWMain.mUser.nick = data.getNickName();
			YYWMain.mUser.token = JSONUtil.formatToken(mActivity, authtoken,
					YYWMain.mUser.userName);

			if (YYWMain.mUserCallBack != null) {
				YYWMain.mUserCallBack.onLoginSuccess(YYWMain.mUser, "success");
				Handle.login_handler(mActivity, YYWMain.mUser.uid,
						YYWMain.mUser.userName);
				new PaymentActionDetailsInit(mActivity, DeviceUtil.getGameInfo(mActivity, "appId"));
			}

		}

		// 第三方游戏不需要使用此回调
		@Override
		public void onAccountRemove(boolean isRemoved) {
			// TODO Auto-generated method stub
			// if(isRemoved){
			// Log.d(TAG, "remove success");
			// }
		}

		@Override
		public void onAccountLoginCancled() {
			// Log.d(TAG, "onAccountLoginCancled");
			// TODO Auto-generated method stub

			if (YYWMain.mUserCallBack != null) {
				YYWMain.mUserCallBack.onLoginFailed(null, null);

			}
		}

	};

	public static void setRoledata(Activity arg0) {
		// TODO Auto-generated method stub
		VivoAccountManager.vivoAccountreportRoleInfo(YYWMain.mRole.getRoleId(), 
				YYWMain.mRole.getRoleLevel(), YYWMain.mRole.getZoneId(), 
				YYWMain.mRole.getRoleName(), arg0, YYWMain.mRole.getZoneName());
	}

}
