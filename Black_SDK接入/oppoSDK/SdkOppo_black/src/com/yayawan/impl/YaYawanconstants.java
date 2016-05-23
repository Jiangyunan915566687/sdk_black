package com.yayawan.impl;

import java.util.HashMap;

import org.json.JSONException;
import org.json.JSONObject;

import android.app.Activity;
import android.util.Log;

import com.nearme.game.sdk.GameCenterSDK;
import com.nearme.game.sdk.callback.ApiCallback;
import com.nearme.game.sdk.callback.GameExitCallback;
import com.nearme.game.sdk.common.model.biz.PayInfo;
import com.nearme.game.sdk.common.model.biz.ReportUserGameInfoParam;
import com.nearme.game.sdk.common.model.biz.ReqUserInfoParam;
import com.yayawan.callback.YYWExitCallback;
import com.yayawan.domain.YYWUser;
import com.yayawan.main.YYWMain;
import com.yayawan.sdk.callback.YayaWanCallback;
import com.yayawan.sdk.main.YayaWan;
import com.yayawan.utils.DeviceUtil;
import com.yayawan.utils.Handle;
import com.yayawan.utils.JSONUtil;
/**
 * 版本号 ： SDK_2.0.0
 * @author Administrator
 *
 */
public class YaYawanconstants {

	private static HashMap<String, String> mGoodsid;

	private static Activity mActivity;

	/**
	 * 初始化sdk
	 */
	public static void inintsdk(Activity mactivity) {
		mActivity = mactivity;
		Yayalog.loger("初始化sdk");
		//OPPOSDK 初始化方法写在Application
		
	}
	/**
	 * 闪屏
	 */
	public static void logoAnim(final Activity mactivity){
		Yayalog.loger("sdk闪屏");
		
	}
	/**
	 * 登录 
	 */
	public static void login(final Activity mactivity) {
		Yayalog.loger("sdk登录");
		GameCenterSDK.getInstance().doLogin(mactivity, new ApiCallback() { 
			@Override 
			public void onSuccess(String resultMsg){ 
				// 登录成功 
				GameCenterSDK.getInstance().doGetTokenAndSsoid(new ApiCallback() {
					
					@Override
					public void onSuccess(String resultMsg) {
						//获取用户token ssoid 成功
						try { 
							JSONObject json = new JSONObject(resultMsg); 
							String token = json.getString("token"); 
							String ssoid = json.getString("ssoid"); 
							loginSuce(mactivity, ssoid, ssoid, token);
						} catch (JSONException e) {
							e.printStackTrace(); 
						}
					}
					
					@Override
					public void onFailure(String resultMsg, int resultCode) {
						//获取用户token ssoid  失败
						loginFail();
					}
				});
			} 
			@Override 
			public void onFailure(String resultMsg, int resultCode) { 
				// 登录失败 
				loginFail();
			} 
		});			
	}

	/**
	 * 支付
	 * @param mactivity
	 */
	public static void pay(Activity mactivity, String morderid) {
		Yayalog.loger("sdk支付");
		PayInfo payInfo = new PayInfo(morderid,
				JSONUtil.formatExt(YYWMain.mOrder.ext, 
						DeviceUtil.getGameId(mactivity),
						YYWMain.mUser.userName, 
						YYWMain.mUser.uid), 
				Integer.parseInt(YYWMain.mOrder.money+"")); 
		payInfo.setProductDesc(YYWMain.mOrder.goods); 
		payInfo.setProductName(YYWMain.mOrder.goods); 
		payInfo.setCallbackUrl(DeviceUtil.getGameInfo(mactivity, "CallbackUrl"));
		GameCenterSDK.getInstance().doPay(mactivity, payInfo, new ApiCallback() {
			
			@Override
			public void onSuccess(String arg0) {
				//支付成功
				paySuce();
			}
			
			@Override
			public void onFailure(String arg0, int arg1) {
				//支付失败
				payFail();
			}
		});
	}

	/**
	 * 退出游戏
	 * @param paramActivity
	 * @param callback
	 */
	public static void exit(final Activity paramActivity,
			final YYWExitCallback callback) {
		Yayalog.loger("sdk退出");
		if(DeviceUtil.getGameInfo(paramActivity, "need_yayaexit").endsWith("yes")){
			exitgameFromYyw(paramActivity,callback);
		}else{
			//若SDK有提供退出接口,请在此处调用
			GameCenterSDK.getInstance().onExit(mActivity, new GameExitCallback() {
				
				@Override
				public void exitGame() {
					paramActivity.finish();
					callback.onExit();
					System.exit(0);
				}
			});
		}
	}

	/**
	 * 设置角色信息
	 * 
	 * @param paramActivity
	 */
	public static void setRoleData(Activity paramActivity) {
		//上传角色信息
		String gameId = DeviceUtil.getGameInfo(paramActivity, "appid");
		String service = YYWMain.mRole.getZoneId(); //角色所在服务器
		String role = YYWMain.mRole.getRoleName(); //角色名称
		String grade = YYWMain.mRole.getRoleLevel(); //角色等级
		GameCenterSDK.getInstance().doReportUserGameInfoData(
				new ReportUserGameInfoParam(gameId, service, role, grade), 
				new ApiCallback() {
					
					@Override
					public void onSuccess(String resultMsg) {
						Log.d("black", "上传角色信息成功");
					}
					
					@Override
					public void onFailure(String resultMsg, int resultCode) {
						Log.d("black", "上传角色信息失败");
					}
				});
	}
	/**
	 * 若接入要求重写activity的生命周期,在此处接入
	 * @param paramActivity
	 */
	public static void onPause(Activity paramActivity) {
		GameCenterSDK.getInstance().onPause();
	}
	public static void onResume(Activity paramActivity) {
		GameCenterSDK.getInstance().onResume(paramActivity);
	}
	public static void onRestart(Activity paramActivity) {
		
	}
	public static void onStop(Activity paramActivity) {
		
	}
	public static void onDestroy(Activity paramActivity) {

	}

	/**
	 * 登录成功调用
	 * 
	 * @param mactivity 
	 * @param uid 唯一识别id
	 * @param username 用户名(昵称) 如果用户名为空.则拿uid作为用户名
	 * @param session token验证码 ticket用户令牌 等类似的用户识别码
	 */
	public static void loginSuce(Activity mactivity, String uid,
			String username, String session) {

		YYWMain.mUser = new YYWUser();

		YYWMain.mUser.uid = DeviceUtil.getUnionid(mactivity) + "-" + uid + "";

		if (username != null) {
			YYWMain.mUser.userName = DeviceUtil.getUnionid(mactivity) + "-"
					+ username + "";
		} else {
			YYWMain.mUser.userName = DeviceUtil.getUnionid(mactivity) + "-"
					+ uid + "";
		}

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
	/**
	 * 登录取消
	 */
	public static void loginCancle() {
		if (YYWMain.mUserCallBack != null) {
			YYWMain.mUserCallBack.onCancel();
		}
	}
	/**
	 * 切换登录 切换帐号
	 * @param mactivity
	 * @param uid 唯一id
	 * @param username 用户名(昵称)如果用户名为空.则拿uid作为用户名
	 * @param session token验证码 或 ticket 用户令牌
	 */
	public static void loginSwitch(String uid,
			String username, String session){
		//切换登录第一步 :退出原有的帐号
		logout();
		//第二步:再次使用新的登录信息进行登录操作
		loginSuce(mActivity, uid, username, session);
	}
	/**
	 * 退出登录
	 */
	public static void logout(){
		if(YYWMain.mUserCallBack != null){
			YYWMain.mUserCallBack.onLogout(null);
		}
	}
	/**
	 * 支付成功
	 */
	public static void paySuce() {
		if (YYWMain.mPayCallBack != null) {
			YYWMain.mPayCallBack.onPaySuccess(YYWMain.mUser, YYWMain.mOrder,
					"success");
		}
	}
	/**
	 * 支付失败
	 */
	public static void payFail() {
		if (YYWMain.mPayCallBack != null) {
			YYWMain.mPayCallBack.onPayFailed(null, null);
		}
	}
	/**
	 * 支付取消
	 */
	public static void payCancel(){
		if(YYWMain.mPayCallBack != null){
			YYWMain.mPayCallBack.onPayCancel(null, null);
		}
	}
	/**
	 * YYW提供的退出接口
	 * @param paramActivity activity
	 * @param callback YYW退出回调
	 */
	public static void exitgameFromYyw(final Activity paramActivity,final YYWExitCallback callback){
		paramActivity.runOnUiThread(new Runnable() {
			@Override
			public void run() {
				YayaWan.Exitgame(paramActivity, new YayaWanCallback() {
					
					@Override
					public void onSuccess() {
						callback.onExit();
						//paramActivity.finish();
					}
				});
			}
		});
	}


}
