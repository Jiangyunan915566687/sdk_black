package com.yayawan.impl;

import java.util.HashMap;

import android.app.Activity;

import com.wandoujia.mariosdk.plugin.api.api.WandouGamesApi;
import com.wandoujia.mariosdk.plugin.api.model.callback.OnCheckLoginCompletedListener;
import com.wandoujia.mariosdk.plugin.api.model.callback.OnLoginFinishedListener;
import com.wandoujia.mariosdk.plugin.api.model.callback.OnPayFinishedListener;
import com.wandoujia.mariosdk.plugin.api.model.model.LoginFinishType;
import com.wandoujia.mariosdk.plugin.api.model.model.PayResult;
import com.wandoujia.mariosdk.plugin.api.model.model.UnverifiedPlayer;
import com.wandoujia.mariosdk.plugin.api.model.model.WandouPlayer;
import com.yayawan.callback.YYWExitCallback;
import com.yayawan.domain.YYWUser;
import com.yayawan.main.YYWMain;
import com.yayawan.utils.DeviceUtil;
import com.yayawan.utils.Handle;
import com.yayawan.utils.JSONUtil;

/**
 * 
 * @author zhangjiafan
 * 
 *         注意事项:支付之后token有问题注意此sdk获取token有点特殊..
 * 
 */
public class YaYawanconstants {

	private static HashMap<String, String> mGoodsid;

	private static Activity mActivity;

	private static WandouGamesApi wandouGamesApi;

	private static boolean hadlogin = false;

	/**
	 * 初始化sdk
	 */
	public static void inintsdk(Activity mactivity) {
		mActivity = mactivity;
		wandouGamesApi = YYApplication.getWandouGamesApi();
	}

	/**
	 * 登录
	 */
	public static void login(final Activity mactivity) {

		wandouGamesApi.login(new OnLoginFinishedListener() {

			@Override
			public void onLoginFinished(LoginFinishType type,
					UnverifiedPlayer unverifiedPlayer) {
				// TODO Auto-generated method stub
				System.out.println("我在打印tpye" + type);
				String mtype = type.toString();
				hadlogin = true;
				if (mtype.equals("LOGIN")) {
					// System.out.println("我登录成功了" + type);
					String token = unverifiedPlayer.getToken();
					String uid = unverifiedPlayer.getId();
					WandouPlayer wandouPlayer = wandouGamesApi
							.getCurrentPlayerInfo();
					String username = wandouPlayer.getNick();

					YYWMain.mUser = new YYWUser();

					YYWMain.mUser.uid = DeviceUtil.getUnionid(mactivity) + "-"
							+ uid + "";
					;
					YYWMain.mUser.userName = DeviceUtil.getUnionid(mactivity)
							+ "-" + uid + "";
					// YYWMain.mUser.nick = data.getNickName();
					YYWMain.mUser.token = JSONUtil.formatToken(mactivity,
							token, YYWMain.mUser.userName);

					if (YYWMain.mUserCallBack != null) {
						YYWMain.mUserCallBack.onLoginSuccess(YYWMain.mUser,
								"success");
						Handle.login_handler(mactivity, YYWMain.mUser.uid,
								YYWMain.mUser.userName);
					}
				}
				if (mtype.equals("CANCEL")) {
					Yayalog.loger("取消了");
					if (hadlogin) {
						YYWMain.mUserCallBack.onLogout(null);
					} else {
						YYWMain.mUserCallBack.onLoginFailed("cancel", null);

					}

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

		wandouGamesApi.pay(mactivity, YYWMain.mOrder.goods,
				YYWMain.mOrder.money, morderid, new OnPayFinishedListener() {
					@Override
					public void onPaySuccess(PayResult payResult) {
						if (payResult.getSuccess()) {
							if (YYWMain.mPayCallBack != null) {
								YYWMain.mPayCallBack.onPaySuccess(
										YYWMain.mUser, YYWMain.mOrder,
										"success");
							}
						} else {
							if (YYWMain.mPayCallBack != null) {
								YYWMain.mPayCallBack.onPayFailed(null, null);
							}

						}
					}

					@Override
					public void onPayFail(PayResult payResult) {
						if (YYWMain.mPayCallBack != null) {
							YYWMain.mPayCallBack.onPayFailed(null, null);
						}
					}
				});

		/*
		 * if (mGoodsid==null) { mGoodsid=new HashMap<String, String>(); String
		 * ids=DeviceUtil.getGameInfo(mactivity, "goods_id"); String[]
		 * goodsid=ids.split("-"); for (int i = 0; i < goodsid.length; i++) {
		 * String[] idandgoods=goodsid[i].split("=");
		 * mGoodsid.put(idandgoods[0], idandgoods[1]); }
		 * 
		 * } System.out.println(YYWMain.mOrder.id+"orderid"+morderid); String
		 * money=YYWMain.mOrder.money/100+""; String
		 * goods_id=mGoodsid.get(money); CCPaySdk.getInstance().pay(mactivity,
		 * goods_id, morderid, new PayListener() {
		 * 
		 * @Override public void onComplete(PayResult result) { // TODO
		 * Auto-generated method stub int code =
		 * Integer.parseInt(result.statusCode); switch (code) { case 0000:
		 * 
		 * // 购买成功 if (YYWMain.mPayCallBack != null) {
		 * YYWMain.mPayCallBack.onPaySuccess( YYWMain.mUser, YYWMain.mOrder,
		 * "success"); } break; case 0001:
		 * 
		 * // 购买成功 if (YYWMain.mPayCallBack != null) {
		 * YYWMain.mPayCallBack.onPaySuccess( YYWMain.mUser, YYWMain.mOrder,
		 * "success"); } break; case 0002:
		 * 
		 * // 购买失败
		 * 
		 * if (YYWMain.mPayCallBack != null) {
		 * YYWMain.mPayCallBack.onPayFailed(null, null); }
		 * 
		 * break; case 0003: // 取消购买 if (YYWMain.mPayCallBack != null) {
		 * YYWMain.mPayCallBack.onPayCancel(null, null); } break;
		 * 
		 * default: break; } // Toast.makeText(getApplicationContext(), //
		 * result.statusCode + "-------" + result.trade_no + // "-------" +
		 * result.msg, Toast.LENGTH_LONG).show(); } });
		 */
	}

	/**
	 * 退出
	 * 
	 * @param paramActivity
	 * @param callback
	 */
	public static void exit(Activity paramActivity,
			final YYWExitCallback callback) {
		// TODO Auto-generated method stub
		// Toast.makeText(paramActivity, "退出游戏", Toast.LENGTH_SHORT).show();

		callback.onExit();

	}

}
