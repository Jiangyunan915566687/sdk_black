package com.yayawan.impl;

import java.util.HashMap;

import android.app.Activity;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;

import com.yayawan.callback.YYWExitCallback;
import com.yayawan.domain.YYWUser;
import com.yayawan.main.YYWMain;
import com.yayawan.sdk.callback.YayaWanCallback;
import com.yayawan.sdk.main.YayaWan;
import com.yayawan.utils.DeviceUtil;
import com.yayawan.utils.Handle;
import com.yayawan.utils.JSONUtil;
import com.vivo.account.base.accounts.OnVivoAccountChangedListener;
//在调用登录接口的Activity中import 相关类并声明对象
import com.vivo.account.base.aidl.VivoUnionManager;
//在调支付接口的Activity中import 相关类
import com.bbk.payment.payment.OnVivoPayResultListener;
/**
 * 版本号 ： 20160419V1.2.2
 * @author Black
 *
 */
public class YaYawanconstants {

	private static HashMap<String, String> mGoodsid;

	private static Activity mActivity;

	//登录管理者
	private static VivoUnionManager mVivoUnionManager;
	/**
	 * 初始化sdk
	 */
	public static void inintsdk(Activity mactivity) {
		mActivity = mactivity;
		Yayalog.loger("初始化sdk");
		//在activity的onCreate方法中初始化“VivoUnionManager”对象
		mVivoUnionManager = new VivoUnionManager(mactivity);
		//设置登录监听
		mVivoUnionManager.registVivoAccountChangeListener(accountListener);
		mVivoUnionManager.bindUnionService();
		mVivoUnionManager.initVivoPaymentAndRecharge(mactivity, payResultListener);

	}
	static OnVivoAccountChangedListener accountListener = new OnVivoAccountChangedListener() {
		//第三方游戏不需要使用此回调方法
		@Override
		public void onAccountRemove(boolean isRemoved) {
			
		}
		//用户登录取消的回调
		@Override
		public void onAccountLoginCancled() {
			loginFail();
		}
		//通过该方法获取用户信息
		@Override
		public void onAccountLogin(String username, String uid, String token) {
			loginSuce(mActivity, uid, username, token);
		}
	};
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
		//使用如下方法调用登录接口
		String appid = DeviceUtil.getGameInfo(mactivity, "appId");
		mVivoUnionManager.startLogin(appid);

	}

	/**
	 * 支付
	 * @param mactivity
	 * @param accessKey 
	 * @param orderNumber 
	 */
	public static void pay(Activity mactivity, String morderid, String orderNumber, String accessKey) {
		Yayalog.loger("sdk支付");
		String goods=TextUtils.isEmpty(YYWMain.mOrder.goods)? "商品":YYWMain.mOrder.goods;
		String ext=TextUtils.isEmpty(YYWMain.mOrder.ext)? "商品":YYWMain.mOrder.ext;
		//组织调用支付接口需要的参数，参考附录“启动vivo支付中心参数表”
		Bundle localBundle = new Bundle();
		localBundle.putString("transNo", orderNumber); //订单推送接口返回的vivo订单号
		localBundle.putString("accessKey", accessKey); //订单推送接口返回的accessKey
		localBundle.putString("productName", goods); //商品名称
		localBundle.putString("productDes", ext);//商品描述
		localBundle.putLong("price", YYWMain.mOrder.money);//商品价格，单位为分（1000即10.00元）
		localBundle.putString("appId", DeviceUtil.getGameInfo(mactivity, "appId")); //在vivo开发者平台注册应用后获取到的appId

		// 以下为可选参数，能收集到务必填写，如未填写，掉单、用户密码找回等问题可能无法解决。
		localBundle.putString("blance", YYWMain.mOrder.money.toString());
		//localBundle.putInt("level", Integer.parseInt(YYWMain.mRole.getRoleLevel()));
		//localBundle.putString("roleId", YYWMain.mRole.getRoleId());
		//localBundle.putString("roleName", YYWMain.mRole.getRoleName());
		//localBundle.putString("serverName", YYWMain.mRole.getZoneName());
		localBundle.putString("extInfo", YYWMain.mOrder.ext);
		localBundle.putBoolean("logOnOff", false); // CP在接入过程请传true值,接入完成后在改为false, 传true会在支付SDK打印大量日志信息	
		//localBundle.putString("vip", "vip2");
		//localBundle.putString("party", "工会");
		//调用支付接口进行支付
		mVivoUnionManager.payment(mactivity, localBundle);
		
	}
	static OnVivoPayResultListener payResultListener = new OnVivoPayResultListener() {
		
		@Override
		public void rechargeResult(String transNo, boolean pay_result, String result_code,
				String pay_msg) {
			//第三方游戏不需要使用此回调方法
		}
		/**
		 * transNo: 交易编号
         * pay_result:交易结果
         * result_code：状态码
		 * pay_msg : 交易描述
		 */
		@Override
		public void payResult(String transNo, boolean pay_result, 
				String result_code, String pay_msg) {
			
			Log.d("black", Integer.parseInt(result_code)+"");
			switch (Integer.parseInt(result_code)) {
			case 9000: //支付成功
				Log.d("black", "paySuce()");
				paySuce();
				break;
			case 6001: //支付取消
				Log.d("black", "payCancel()");
				payCancel();
				break;

			default:
				Log.d("black", "payFail()");
				payFail();
				break;
			}
		}
	};
	/**
	 * 退出游戏
	 * @param paramActivity
	 * @param callback
	 */
	public static void exit(Activity paramActivity,
			YYWExitCallback callback) {
		Yayalog.loger("sdk退出");
		if(DeviceUtil.getGameInfo(paramActivity, "need_yayaexit").endsWith("yes")){
			exitgameFromYyw(paramActivity,callback);
		}else{
			//若SDK有提供退出接口,请在此处调用
			paramActivity.finish();
			callback.onExit();
			System.exit(0);
			
		}
	}

	/**
	 * 设置角色信息
	 * 
	 * @param paramActivity
	 */
	public static void setRoleData(Activity paramActivity) {
		VivoUnionManager.vivoAccountreportRoleInfo(YYWMain.mRole.getRoleId(), 
				YYWMain.mRole.getRoleLevel(), YYWMain.mRole.getZoneId(), 
				YYWMain.mRole.getRoleName(), paramActivity, YYWMain.mRole.getZoneName());
	}
	/**
	 * 若接入要求重写activity的生命周期,在此处接入
	 * @param paramActivity
	 */
	public static void onPause(Activity paramActivity) {
		
	}
	public static void onResume(Activity paramActivity) {
		//设置悬浮窗
		mVivoUnionManager.showVivoAssitView(paramActivity);
	}
	public static void onRestart(Activity paramActivity) {
		
	}
	public static void onStop(Activity paramActivity) {
		
	}
	public static void onDestroy(Activity paramActivity) {
		//请在activity的onDestroy方法中调用如下方法，释放登录相关资源、
		mVivoUnionManager.unRegistVivoAccountChangeListener(accountListener);
		//调用悬浮窗关闭接口
		mVivoUnionManager.hideVivoAssitView(paramActivity);
		//调用支付关闭
		mVivoUnionManager.cancelVivoPaymentAndRecharge(payResultListener);

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
