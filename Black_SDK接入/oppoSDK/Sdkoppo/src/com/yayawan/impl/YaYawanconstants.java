package com.yayawan.impl;

import java.util.HashMap;

import org.json.JSONException;
import org.json.JSONObject;

import android.app.Activity;
import android.content.Context;
import android.util.Log;
import android.widget.Toast;

import com.nearme.game.sdk.GameCenterSDK;
import com.nearme.game.sdk.callback.ApiCallback;
import com.nearme.game.sdk.callback.GameExitCallback;
import com.nearme.game.sdk.common.model.biz.PayInfo;
import com.nearme.game.sdk.common.model.biz.ReportUserGameInfoParam;
import com.nearme.game.sdk.common.model.biz.ReqUserInfoParam;
import com.nearme.game.sdk.common.util.AppUtil;
import com.yayawan.callback.YYWExitCallback;
import com.yayawan.domain.YYWUser;
import com.yayawan.main.YYWMain;
import com.yayawan.main.YaYaWan;
import com.yayawan.sdktemplate.Exit_dialog;
import com.yayawan.utils.DeviceUtil;
import com.yayawan.utils.Handle;
import com.yayawan.utils.JSONUtil;

public class YaYawanconstants {

	private static HashMap<String, String> mGoodsid;

	private static Activity mActivity;

	/**
	 * 初始化sdk
	 */
	public static void inintsdk(Activity mactivity) {
		mActivity = mactivity;
		Yayalog.loger("初始化sdk");

	}

	/**
	 * 登录
	 */
	public static void login(final Activity mactivity) {
		Yayalog.loger("sdk登录");
		GameCenterSDK.getInstance().doLogin(mactivity, new ApiCallback() {

			@Override
			public void onSuccess(String resultMsg) {

				GameCenterSDK.getInstance().doGetTokenAndSsoid(
						new ApiCallback() {
							@Override
							public void onSuccess(String resultMsg) {

								JSONObject json;
								try {
									json = new JSONObject(resultMsg);
									String token = json.getString("token");
									String ssoid = json.getString("ssoid");
									System.out.println(token);
									loginSuce(mactivity, ssoid, ssoid, token);
								} catch (JSONException e) {
									// TODO Auto-generated catch block
									e.printStackTrace();
									loginFail();
								}

							}

							@Override
							public void onFailure(String resultMsg,
									int resultCode) {
								loginFail();
							}
						});
			}

			@Override
			public void onFailure(String resultMsg, int resultCode) {
				loginFail();
			}
		});
	}

	/**
	 * 支付
	 * 
	 * @param mactivity
	 */
	public static void pay(Activity mactivity, String morderid) {

		Yayalog.loger("sdk支付");
		if (YYWMain.mUser == null) {
			Toast.makeText(mactivity, "请先登录", Toast.LENGTH_SHORT).show();
			return;
		}

		// System.out.println("++++++++++++++"+order.money.toString());
		PayInfo payInfo = new PayInfo(morderid, JSONUtil.formatExt(
				YYWMain.mOrder.ext, DeviceUtil.getGameId(mactivity),
				YYWMain.mUser.userName, YYWMain.mUser.uid),
				Integer.valueOf(YYWMain.mOrder.money.toString()));

		payInfo.setProductDesc(YYWMain.mOrder.goods);
		payInfo.setProductName(YYWMain.mOrder.goods);
		payInfo.setCallbackUrl(DeviceUtil.getGameInfo(mactivity, "CallbackUrl"));
		payInfo.setAmount(Integer.valueOf(YYWMain.mOrder.money.toString()));

		GameCenterSDK.getInstance().doPay(mactivity, payInfo,
				new ApiCallback() {

					@Override
					public void onFailure(String content, int code) {
						if (YYWMain.mPayCallBack != null) {
							YYWMain.mPayCallBack.onPayFailed("", "");
						}
					}

					@Override
					public void onSuccess(String arg0) {
						// TODO Auto-generated method stub
						if (YYWMain.mPayCallBack != null) {
							YYWMain.mPayCallBack.onPaySuccess(YYWMain.mUser,
									YYWMain.mOrder, "");
						}
					}
				});
	}

	/**
	 * 退出
	 * 
	 * @param paramActivity
	 * @param callback
	 */
	public static void exit(final Activity paramActivity,
			final YYWExitCallback callback) {
		Yayalog.loger("sdk退出");

		paramActivity.runOnUiThread(new Runnable() {

			@Override
			public void run() {
				// TODO Auto-generated method stub

				GameCenterSDK.getInstance().onExit(paramActivity,
						new GameExitCallback() {

							@Override
							public void exitGame() {
								// CP 实现游戏退出操作，也可以直接调用
								// AppUtil工具类里面的实现直接强杀进程~
								//paramActivity.finish();
								//AppUtil.exitGameProcess(paramActivity);
								callback.onExit();//black
							}
						});
			}
		});

		//

	}

	/**
	 * 设置角色信息
	 * 
	 * @param arg0
	 */
	public static void setRoleData(Activity arg0) {
		// TODO Auto-generated method stub
		GameCenterSDK.getInstance().doReportUserGameInfoData(
				new ReportUserGameInfoParam(DeviceUtil.getGameInfo(arg0,
						"appid"), YYWMain.mRole.getZoneId(),
						YYWMain.mRole.getRoleName(),
						YYWMain.mRole.getRoleLevel()), new ApiCallback() {

					@Override
					public void onSuccess(String resultMsg) {
						System.out.println("上传角色信息成功");
					}

					@Override
					public void onFailure(String resultMsg, int resultCode) {

					}
				});
	}

	public static void onResume(Activity paramActivity) {
		// TODO Auto-generated method stub
		Log.d("black", "onResume()");
		GameCenterSDK.getInstance().onResume(paramActivity);
	}

	public static void onPause(Activity paramActivity) {
		// TODO Auto-generated method stub
		Log.d("black", "onPause()");
		GameCenterSDK.getInstance().onPause();
	}

	public static void onDestroy(Activity paramActivity) {
		// TODO Auto-generated method stub

	}

	/**
	 * 登录成功调用
	 * 
	 * @param mactivity
	 * @param uid
	 *            唯一id
	 * @param username
	 *            用户名..如果用户名为空.则拿uid作为用户名
	 * @param session
	 *            token验证码
	 */
	public static void loginSuce(Activity mactivity, String uid,
			String username, String session) {

		YYWMain.mUser = new YYWUser();

		YYWMain.mUser.uid = DeviceUtil.getUnionid(mactivity) + "-" + uid + "";
		;
		if (username != null) {
			YYWMain.mUser.userName = DeviceUtil.getUnionid(mactivity) + "-"
					+ username + "";
		} else {
			YYWMain.mUser.userName = DeviceUtil.getUnionid(mactivity) + "-"
					+ uid + "";
		}

		// YYWMain.mUser.nick = data.getNickName();
		YYWMain.mUser.token = JSONUtil.formatToken(mactivity, session,
				YYWMain.mUser.userName);

		if (YYWMain.mUserCallBack != null) {
			YYWMain.mUserCallBack.onLoginSuccess(YYWMain.mUser, "success");
			Handle.login_handler(mactivity, YYWMain.mUser.uid,
					YYWMain.mUser.userName);
		}
	}

	/**
	 * 登录失败
	 */
	public static void loginFail() {
		if (YYWMain.mUserCallBack != null) {
			YYWMain.mUserCallBack.onLoginFailed(null, null);

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
