package com.yayawan.impl;

import java.util.HashMap;

import android.app.Activity;
import android.content.pm.ActivityInfo;
import android.util.Log;

import cn.m4399.operate.OperateCenter;
import cn.m4399.operate.OperateCenter.OnLoginFinishedListener;
import cn.m4399.operate.OperateCenter.OnQuitGameListener;
import cn.m4399.operate.OperateCenter.OnRechargeFinishedListener;
import cn.m4399.operate.OperateCenterConfig;
import cn.m4399.operate.OperateCenterConfig.PopLogoStyle;
import cn.m4399.operate.OperateCenterConfig.PopWinPosition;
import cn.m4399.operate.User;

import com.yayawan.callback.YYWExitCallback;
import com.yayawan.domain.YYWOrder;
import com.yayawan.domain.YYWUser;
import com.yayawan.main.YYWMain;
import com.yayawan.sdk.callback.YayaWanCallback;
import com.yayawan.sdk.main.YayaWan;
import com.yayawan.utils.DeviceUtil;
import com.yayawan.utils.Handle;
import com.yayawan.utils.JSONUtil;
/**
 * 版本号： SDK v2.7.0.3
 * 
 * @author black
 *
 */
public class YaYawanconstants {

	private static HashMap<String, String> mGoodsid;
	private static final String TAG = "black";
	private static Activity mActivity;
	static OperateCenter mOpeCenter; //4399sdk接入对象
	/**
	 * 初始化sdk
	 */
	public static void inintsdk(Activity mactivity) {
		mActivity = mactivity;
		Yayalog.loger("sdk初始化");
		Log.d(TAG, "sdk初始化 - inintsdk");
		//游戏SDK接入
		mOpeCenter = OperateCenter.getInstance();
		String appkey = DeviceUtil.getGameInfo(mactivity, "appkey");
		boolean isLandscape = DeviceUtil.isLandscape(mactivity);
		OperateCenterConfig mOpeConfig = new OperateCenterConfig.Builder(mactivity)
		    .setGameKey(appkey)     //设置AppKey
		    .setDebugEnabled(false)     //设置DEBUG模式,用于接入过程中开关日志输出，发布前必须设置为false或删除该行。默认为false。
		    // 0-横屏 1-竖屏 6-180横屏  7-180竖屏
		    .setOrientation(isLandscape == true ? 0 : 1 )  //设置横竖屏方向，默认为横屏
		    .setSupportExcess(false)     //设置服务端是否支持处理超出部分金额，默认为false
		    .setPopLogoStyle(PopLogoStyle.POPLOGOSTYLE_TWO) //设置悬浮窗样式，现有四种可选
		    .setPopWinPosition(PopWinPosition.POS_LEFT) //设置悬浮窗默认显示位置，现有四种可选
		    .build();
		mOpeCenter.setConfig(mOpeConfig);
		mOpeCenter.init(mactivity,new OperateCenter.OnInitGloabListener() {
		    // 初始化结束执行后回调
		    @Override
		    public void onInitFinished(boolean isLogin, User userInfo) {
		    	//注：登录后如果未注销，登录状态将一直保持直至登录凭证过期或失效（若用户修改平台账户密码，所有游戏授权凭证将失效，需重新登录）。 
		    	//建议游戏在初始化完成后调用登录状态查询接口查询用户当前登录状态。
		    	//判断用户是否登录
		    	assert(isLogin == mOpeCenter.isLogin());
		    }

		    // 注销帐号的回调， 包括个人中心里的注销和logout()注销方式
		    // fromUserCenter区分是否是从个人中心注销的，若是则为true，不是为false
		    @Override
		    public void onUserAccountLogout(boolean fromUserCenter, int resultCode) {
		    	logout();
		    }

		    // 个人中心里切换帐号的回调
		    @Override
		    public void onSwitchUserAccountFinished(User userInfo) {
		    	String uid = userInfo.getUid();
		    	String username = userInfo.getName();
		    	String session = userInfo.getState();
		    	loginSwitch(uid, username, session);
		    }

		
		});
		
		
	}
	/**
	 * 闪屏
	 */
	public static void logoAnim(final Activity mactivity){
		Yayalog.loger("sdk闪屏");
		Log.d(TAG, "sdk闪屏 - logoAnim");
		
	}
	/**
	 * 登录 
	 */
	public static void login(final Activity mactivity) {
		Yayalog.loger("sdk登录");
		Log.d(TAG, "sdk登录 - login");
		mOpeCenter.login(mactivity, new OnLoginFinishedListener() {
			
			@Override
			public void onLoginFinished(boolean success, int resultCode, User userInfo) {
				if(success){
					String uid = userInfo.getUid();
			    	String username = userInfo.getName();
			    	String session = userInfo.getState();
			    	loginSuce(mactivity, uid, username, session);
			    	Log.d(TAG, "用户登录成功:" + "resultCode=" + resultCode + "UserInfo = " + userInfo);
				}else{
					loginFail();
					Log.d(TAG, "用户登录失败:" + "resultCode=" + resultCode);
				}
			}
		});
		//切换登录的监听
		/*
		mOpeCenter.switchAccount(mactivity, new OnLoginFinishedListener() {
			
			@Override
			public void onLoginFinished(boolean success, int resultCode, User userInfo) {
				//logout();
				if(success){
					String uid = userInfo.getUid();
			    	String username = userInfo.getName();
			    	String session = userInfo.getState();
			    	loginSuce(mactivity, uid, username, session);
			    	Log.d(TAG, "用户登录成功:" + "resultCode=" + resultCode + "UserInfo = " + userInfo);
				}else{
					loginFail();
					Log.d(TAG, "用户登录失败:" + "resultCode=" + resultCode);
				}
			}
		});
		*/
	}
	/**
	 * 登出 退出登录
	 * @param mactivity
	 */
	public static void logout(final Activity mactivity){
		mOpeCenter.logout();
		logout();
	}
	/**
	 * 支付
	 * @param mactivity
	 */
	public static void pay(Activity mactivity, String morderid) {
		Yayalog.loger("sdk支付");
		Log.d(TAG, "sdk支付 - pay");
		/*
		 * 上下文-充值金额(元)-游戏方订单号-商品名称-回调
		 */
		mOpeCenter.recharge(mactivity,
			Integer.parseInt(YYWMain.mOrder.money/100+""),	//充值金额（元）
			morderid,           							//游戏方订单号
			YYWMain.mOrder.goods,    						//商品名称
			new OnRechargeFinishedListener() {
				
				@Override
				public void onRechargeFinished(boolean success, int resultCode, String msg) {
					if(success){
						//请求游戏服，获取充值结果
						Log.d(TAG, "充值成功:" + YYWMain.mOrder.money/100);
						paySuce();
					}else{
						//充值失败逻辑
						Log.d(TAG, "支付失败");
						payFail();
					}
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
		Log.d(TAG, "sdk退出 - exit");
		if(DeviceUtil.getGameInfo(paramActivity, "need_yayaexit").endsWith("yes")){
			exitgameFromYyw(paramActivity,callback);
		}else{
			//若SDK有提供退出接口,请在此处调用
			paramActivity.runOnUiThread(new Runnable() {
				
				@Override
				public void run() {					
					mOpeCenter.shouldQuitGame(paramActivity, new OnQuitGameListener() {
						
						@Override
						public void onQuitGame(boolean shouldQuit) {
							// 点击“退出游戏”时，shouldQuit为true，游戏处理自己的退出业务逻辑
							// 点击“前往游戏圈”时，shouldQuit为false，SDK会进入游戏圈或者下载
							//  游戏盒子界面，游戏可以不做处理。
							// 点击“留在游戏”时，shouldQuit为false，SDK和游戏都不做任何处理
							// 点击右上角的关闭图标，shouldQuit为false，SDK和游戏都不做任何处理
							if(shouldQuit){
								paramActivity.finish();
								callback.onExit();
								System.exit(0);
							}
						}
					});
				}
			});
			
		}
	}

	/**
	 * 设置角色信息
	 * 一般在登录成功开始获取信息的时候，可用于上传用户帐号、游戏角色的信息
	 * @param paramActivity
	 */
	public static void setRoleData(Activity paramActivity) {
		Log.d(TAG, "设置角色信息 - setRoleData");
	}

	/**
	 * 设置角色数据
	 * 创建角色，角色升级调用的方法
	 * @param activity 游戏上下文  ext 附加内容 roleCTime 角色创建时间 zoneName 游戏区服名称
	 * @param zoneId 游戏区服ID roleLevel 角色等级 roleName 角色名称 roleId 角色ID
	 */
	public static void setData(Activity activity, String roleId, String roleName, 
			String roleLevel, String zoneId, String zoneName, String roleCTime, String ext) {
		Log.d(TAG, "设置角色数据 - setData");
		if (YYWMain.mRole != null) {
			
		}		
	}
	/**
	 * 若接入要求重写activity的生命周期,在此处接入
	 * @param paramActivity
	 */
	public static void onPause(Activity paramActivity) {
		
	}
	public static void onResume(Activity paramActivity) {

	}
	public static void onRestart(Activity paramActivity) {
		
	}
	public static void onStop(Activity paramActivity) {
		
	}
	public static void onDestroy(Activity paramActivity) {
		if (mOpeCenter != null) {
            mOpeCenter.destroy();
            mOpeCenter = null;
        }
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
						paramActivity.finish();
					}
				});
			}
		});
	}


}
