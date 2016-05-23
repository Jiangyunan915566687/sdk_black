package com.yayawan.impl;

import java.util.HashMap;
import java.util.UUID;

import android.app.Activity;
import android.text.TextUtils;
import android.util.Log;
import android.widget.Toast;

import com.xiaomi.gamecenter.sdk.MiCommplatform;
import com.xiaomi.gamecenter.sdk.MiErrorCode;
import com.xiaomi.gamecenter.sdk.OnExitListner;
import com.xiaomi.gamecenter.sdk.OnLoginProcessListener;
import com.xiaomi.gamecenter.sdk.OnPayProcessListener;
import com.xiaomi.gamecenter.sdk.entry.MiAccountInfo;
import com.xiaomi.gamecenter.sdk.entry.MiBuyInfo;
import com.yayawan.callback.YYWExitCallback;
import com.yayawan.domain.YYWUser;
import com.yayawan.main.YYWMain;
import com.yayawan.sdk.callback.YayaWanCallback;
import com.yayawan.sdk.main.YayaWan;
import com.yayawan.utils.DeviceUtil;
import com.yayawan.utils.Handle;
import com.yayawan.utils.JSONUtil;
/**
 * 版本号 ： 4.6.11
 * @author black
 *
 */
public class YaYawanconstants {

	private static HashMap<String, String> mGoodsid;

	private static Activity mActivity;
	private static final String TAG = "black";
	private static String session;

	/**
	 * 初始化sdk
	 */
	public static void inintsdk(Activity mactivity) {
		mActivity = mactivity;
		Yayalog.loger("初始化sdk");
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
		MiCommplatform.getInstance().miLogin(mactivity,
				new OnLoginProcessListener() {
					@Override
					public void finishLoginProcess(int code, MiAccountInfo info) {
						// TODO Auto-generated method stub
						switch (code) {
						case MiErrorCode.MI_XIAOMI_PAYMENT_SUCCESS:
							// 登陆成功
							// 获取用户的登陆后的UID（即用户唯一标识）
							long uid = info.getUid();

							/** 以下为获取session并校验流程，如果是网络游戏必须校验，如果是单机游戏或应用可选 **/
							// 获取用户的登陆的Session（请参考5.3.3流程校验Session有效性）
							session = info.getSessionId();							
							// 请开发者完成将uid和session提交给开发者自己服务器进行session验证
							loginSuce(mactivity, uid + "", null , session);
							break;
						case MiErrorCode.MI_XIAOMI_PAYMENT_ERROR_LOGIN_FAIL:
							// 登陆失败
							loginFail();
							break;
						case MiErrorCode.MI_XIAOMI_PAYMENT_ERROR_CANCEL:
							// 取消登录
							loginCancle();
							break;
						case MiErrorCode.MI_XIAOMI_PAYMENT_ERROR_ACTION_EXECUTED:
							// 登录操作正在进行中
							Toast.makeText(mactivity, "登录操作正在进行中",
									Toast.LENGTH_SHORT).show();
							break;
						default:
							// 登录失败
							loginFail();
							break;
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
		Yayalog.loger("sdk支付");
		MiBuyInfo miBuyInfo = new MiBuyInfo();
		miBuyInfo.setCpOrderId(morderid);// 订单号唯一（不为空）
		miBuyInfo.setCpUserInfo(morderid); // 此参数在用户支付成功后会透传给CP的服务器
		miBuyInfo.setAmount((int) (YYWMain.mOrder.money / 100)); // 必须是大于1的整数，10代表10米币，即10元人民币（不为空）
		MiCommplatform.getInstance().miUniPay(mactivity, miBuyInfo,
				new OnPayProcessListener() {
					@Override
					public void finishPayProcess(int code) {
						switch (code) {
						case MiErrorCode.MI_XIAOMI_PAYMENT_SUCCESS:
							// 购买成功
							paySuce();
							break;
						case MiErrorCode.MI_XIAOMI_PAYMENT_ERROR_PAY_CANCEL:
							// 取消购买
							payCancel();
							break;
						case MiErrorCode.MI_XIAOMI_PAYMENT_ERROR_PAY_FAILURE:
							// 购买失败
							payFail();
							break;
						case MiErrorCode.MI_XIAOMI_PAYMENT_ERROR_ACTION_EXECUTED:
							// 支付操作正在进行中
							Toast.makeText(mActivity, "支付操作正在进行中", Toast.LENGTH_SHORT).show();
							break;
						default:
							// 购买失败
							payFail();
							break;
						}
					}
				});
	}

	/**
	 * 退出游戏
	 * 
	 * @param paramActivity
	 * @param callback
	 */
	public static void exit(final Activity paramActivity,
			final YYWExitCallback callback) {
		Yayalog.loger("sdk退出");
		if (DeviceUtil.getGameInfo(paramActivity, "need_yayaexit").endsWith(
				"yes")) {
			exitgameFromYyw(paramActivity, callback);
		} else {
			// 若SDK有提供退出接口,请在此处调用
			// 当小米用户已登录时,弹出小米的退出对话框
			if(!TextUtils.isEmpty(session)){
				MiCommplatform.getInstance().miAppExit(paramActivity, new OnExitListner() {
					
					@Override
					public void onExit(int code) {
						if ( code == MiErrorCode.MI_XIAOMI_EXIT )
						{
							Log.d("black", "点击了退出游戏");
							mActivity.runOnUiThread(new Runnable() {
								
								@Override
								public void run() {
									Log.d("black", "来到主线程Exit");
									paramActivity.finish();
									callback.onExit();
									System.exit(0);
								}
							});
							Log.d("black", "来到runOnUiThread");
							//android.os.Process.killProcess( android.os.Process.myPid() );
							
						}
					}
				});
			}else{
				// 当小米用户未登录时,不会弹出小米的退出对话框
				callback.onExit();
			}
			
		}
	}

	/**
	 * 设置角色信息
	 * 
	 * @param paramActivity
	 */
	public static void setRoleData(Activity paramActivity) {

	}

	/**
	 * 若接入要求重写activity的生命周期,在此处接入
	 * 
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

	}

	/**
	 * 登录成功调用
	 * 
	 * @param mactivity
	 * @param uid
	 *            唯一识别id
	 * @param username
	 *            用户名(昵称) 如果用户名为空.则拿uid作为用户名
	 * @param session
	 *            token验证码 ticket用户令牌 等类似的用户识别码
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
	 * 
	 * @param mactivity
	 * @param uid
	 *            唯一id
	 * @param username
	 *            用户名(昵称)如果用户名为空.则拿uid作为用户名
	 * @param session
	 *            token验证码 或 ticket 用户令牌
	 */
	public static void loginSwitch(String uid, String username, String session) {
		// 切换登录第一步 :退出原有的帐号
		logout();
		// 第二步:再次使用新的登录信息进行登录操作
		loginSuce(mActivity, uid, username, session);
	}

	/**
	 * 退出登录
	 */
	public static void logout() {
		if (YYWMain.mUserCallBack != null) {
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
	public static void payCancel() {
		if (YYWMain.mPayCallBack != null) {
			YYWMain.mPayCallBack.onPayCancel(null, null);
		}
	}

	/**
	 * YYW提供的退出接口
	 * 
	 * @param paramActivity
	 *            activity
	 * @param callback
	 *            YYW退出回调
	 */
	public static void exitgameFromYyw(final Activity paramActivity,
			final YYWExitCallback callback) {
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
