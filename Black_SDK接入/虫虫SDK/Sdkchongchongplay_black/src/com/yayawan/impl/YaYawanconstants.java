package com.yayawan.impl;

import java.util.HashMap;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.util.Log;

import com.lion.ccpay.sdk.CCPaySdk;
import com.lion.ccpay.sdk.OnAccountPwdChangeListener;
import com.lion.ccpay.sdk.OnChangeAccountListener;
import com.lion.ccpay.sdk.OnLoginCallBack;
import com.lion.ccpay.sdk.OnPayListener;
import com.lion.ccpay.sdk.Stats;
import com.yayawan.callback.YYWExitCallback;
import com.yayawan.domain.YYWUser;
import com.yayawan.main.YYWMain;
import com.yayawan.utils.DeviceUtil;
import com.yayawan.utils.Handle;
import com.yayawan.utils.JSONUtil;
/**
 * 生成后台SDK时，切记把AndroidManifest中所要求填入游戏包名的位置处理好
 * @author Administrator
 *
 */
public class YaYawanconstants {

	private static HashMap<String, String> mGoodsid;
	private static final String TAG = "black";
	private static Activity mActivity;
	
	/**
	 * 初始化sdk
	 */
	public static void inintsdk(Activity mactivity) {
		mActivity = mactivity;
		Yayalog.loger("sdk初始化");
		Log.d(TAG, "sdk初始化 - inintsdk");
		CCPaySdk.getInstance().init(mactivity);
		initChangeAccount();//切换账号监听
		initCCPaySDKChangePwd();//虫虫助手个人中心修改密码监听
		
	}
	/**
	 * 初始化登录虫虫个人中心切换账号监听
	 */
	private static void initChangeAccount() {
		CCPaySdk.getInstance().setOnChangeAccountListener(
				new OnChangeAccountListener() {

					@Override
					public void onLoginSuccess(String uid, String token, String userName) {
						loginSuce(mActivity, uid, userName, token);
						Log.d(TAG, "切换账号 登录成功");
					}
					
					@Override
					public void onLoginFail() {
						loginFail();
						Log.d(TAG, "切换账号 登录失败");
					}
					
					@Override
					public void onLoginCancel() {
						if(!CCPaySdk.getInstance().isLogined()){//注意,如果要进行反复弹出登录框,请判断是否已经登录了,否则会有BUG
							//游戏内切换账号
							CCPaySdk.getInstance().changeAccount(mActivity, null);
						}
						Log.d(TAG, "切换账号 登录取消");
					}
				});
	}

	/**
	 * 修改密码监听
	 */
	private static void initCCPaySDKChangePwd() {
		CCPaySdk.getInstance().setOnAccountPwdChangeListener(new OnAccountPwdChangeListener() {
			
			@Override
			public void onAccountPwdChange() {
				CCPaySdk.getInstance().onOffline();
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
		//CCPaySdk.getInstance().isLogined(); //判断是否已经登录成功
		CCPaySdk.getInstance().login(new OnLoginCallBack() {
			
			@Override
			public void onLoginSuccess(String uid, String token, String username) {
				loginSuce(mactivity, uid, username, token);
				Log.d(TAG, "登录成功 = " + uid + ":" + username);
			}
			
			@Override
			public void onLoginFail() {
				loginFail();
				Log.d(TAG, "登录失败");
			}
			
			@Override
			public void onLoginCancel() {
				loginCancle();
				Log.d(TAG, "登录取消");
			}
		});
	}
	/**
	 * 登出 
	 */
	public static void logout(final Activity mactivity) {
		Yayalog.loger("sdk登出");
		Log.d(TAG, "sdk登出 - logout");
		//游戏内下线、切换账号、退出
		CCPaySdk.getInstance().onOffline();
	}

	/**
	 * 支付
	 * @param mactivity
	 */
	public static void pay(Activity mactivity, String morderid) {
		Yayalog.loger("sdk支付");
		Log.d(TAG, "sdk支付 - pay");
		String money = YYWMain.mOrder.money/100+"";
		String productId = DeviceUtil.getGameInfo(mactivity, "goodid");
		CCPaySdk.getInstance().pay(productId,morderid,money,
				new OnPayListener() {
			
			@Override
			public void onPayResult(int status, String tn, String money) {
				switch (status) {
				case OnPayListener.CODE_SUCCESS:
					paySuce();
					Log.d(TAG,"支付成功");
					break;
				case OnPayListener.CODE_FAIL:
					payFail();
					Log.d(TAG,"支付失败");
					break;
				case OnPayListener.CODE_CANCEL:
					payCancel();
					Log.d(TAG,"支付取消");
					break;
				case OnPayListener.CODE_UNKNOW:
					payFail();
					Log.d(TAG,"支付结果未知");
					break;

				default:
					break;
				}
			}
		});
	}

	/**
	 * 退出游戏
	 * @param paramActivity
	 * @param callback
	 */
	public static void exit(Activity paramActivity,
			YYWExitCallback callback) {
		Yayalog.loger("sdk退出");
		Log.d(TAG, "sdk退出 - exit");
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
		Stats.onPause(paramActivity);
	}
	public static void onResume(Activity paramActivity) {
		Stats.onResume(paramActivity);
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
		new AlertDialog.Builder(paramActivity)
		.setTitle("退出游戏提示")
		.setMessage("是否退出游戏？")//paramYayaWanCallback
		.setPositiveButton("确定", new OnClickListener() {
			@Override
			public void onClick(DialogInterface dialog, int which) {
				CCPaySdk.getInstance().onLogOutApp();//虫虫游戏 退出应用接口
				paramActivity.finish();	//关闭游戏
				Log.d(TAG, "callback");
				callback.onExit();		//游戏退出回调
				Log.d(TAG, "System.exit(0)");
				System.exit(0);			//适配单机游戏
			}
		})
		.setNeutralButton("取消", null)
		.create()
		.show();
		/*paramActivity.runOnUiThread(new Runnable() {
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
		});*/
	}


}
