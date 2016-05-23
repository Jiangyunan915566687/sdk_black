package com.yayawan.impl;

import java.util.HashMap;

import android.app.Activity;

import com.dataeye.DCAccount;
import com.lion.ccpay.CCPaySdk;
import com.lion.ccpay.login.LoginListener;
import com.lion.ccpay.pay.PayListener;
import com.lion.ccpay.pay.vo.PayResult;
import com.lion.ccpay.user.vo.LoginResult;
import com.yayawan.domain.YYWUser;
import com.yayawan.main.YYWMain;
import com.yayawan.utils.DeviceUtil;
import com.yayawan.utils.Handle;
import com.yayawan.utils.JSONUtil;

public class YaYawanconstants {

	private static HashMap<String, String> mGoodsid;
	/**
	 * 初始化sdk
	 */
	public static void inintsdk(Activity mactivity) {
		CCPaySdk.getInstance().init(mactivity);
	}

	/**
	 * 登录
	 */
	public static void login(final Activity mactivity) {
		CCPaySdk.getInstance().login(mactivity, new LoginListener() {

			@Override
			public void onComplete(LoginResult result) {
				//System.out.println(result.toString());
				if (result != null && result.isSuccess) {

					System.out.println(result.toString());

					YYWMain.mUser = new YYWUser();

					YYWMain.mUser.uid = DeviceUtil.getUnionid(mactivity) + "-"
							+ result.userId + "";
					;
					YYWMain.mUser.userName = DeviceUtil.getUnionid(mactivity)
							+ "-" + result.displayName + "";
					// YYWMain.mUser.nick = data.getNickName();
					
					  YYWMain.mUser.token = JSONUtil.formatToken( mactivity,
							  YYWMain.mUser.uid+"", YYWMain.mUser.userName);
					 
					if (YYWMain.mUserCallBack != null) {
						YYWMain.mUserCallBack.onLoginSuccess(YYWMain.mUser,
								"success");
						Handle.login_handler(mactivity, YYWMain.mUser.uid,
								YYWMain.mUser.userName);
						DCAccount.login(YYWMain.mUser.uid);
					}

					// Toast.makeText(getApplicationContext(), "结果：" +
					// result.toString(), Toast.LENGTH_SHORT).show();
				} else {
					YYWMain.mUserCallBack.onLoginFailed(null, null);
					// Toast.makeText(getApplicationContext(), "结果：" +
					// result.toString(), Toast.LENGTH_SHORT).show();
				}
			}
		});
	}

	/**
	 * 支付
	 * 
	 * @param mactivity
	 */
	public static void pay(Activity mactivity, String morderid) {

		
		//System.out.println(YYWMain.mOrder.id+"orderid"+morderid);
		String money=YYWMain.mOrder.money/100+"";
		//String goods_id=mGoodsid.get(money);
		CCPaySdk.getInstance().pay(mactivity, ""+DeviceUtil.getGameInfo(mactivity, "goodid"), money,morderid,
				new PayListener() {

					@Override
					public void onComplete(PayResult result) {
						// TODO Auto-generated method stub
						int code = Integer.parseInt(result.statusCode);
						switch (code) {
						case 0000:

							// 购买成功
							if (YYWMain.mPayCallBack != null) {
								YYWMain.mPayCallBack.onPaySuccess(
										YYWMain.mUser, YYWMain.mOrder,
										"success");
							}
							break;
						case 0001:

							// 购买成功
							if (YYWMain.mPayCallBack != null) {
								YYWMain.mPayCallBack.onPaySuccess(
										YYWMain.mUser, YYWMain.mOrder,
										"success");
							}
							break;
						case 0002:

							// 购买失败

							if (YYWMain.mPayCallBack != null) {
								YYWMain.mPayCallBack.onPayFailed(null, null);
							}

							break;
						case 0003:
							// 取消购买
							if (YYWMain.mPayCallBack != null) {
								YYWMain.mPayCallBack.onPayCancel(null, null);
							}
							break;

						default:
							break;
						}
						// Toast.makeText(getApplicationContext(),
						// result.statusCode + "-------" + result.trade_no +
						// "-------" + result.msg, Toast.LENGTH_LONG).show();
					}
				});
	}

}
