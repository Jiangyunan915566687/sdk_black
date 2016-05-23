package com.yayawan.impl;

import java.util.HashMap;

import android.app.Activity;
import android.util.Log;
import android.widget.Toast;

import com.downjoy.CallbackListener;
import com.downjoy.CallbackStatus;
import com.downjoy.Downjoy;
import com.downjoy.InitListener;
import com.downjoy.LoginInfo;
import com.downjoy.LogoutListener;
import com.yayawan.callback.YYWExitCallback;
import com.yayawan.domain.YYWUser;
import com.yayawan.main.YYWMain;
import com.yayawan.sdk.callback.YayaWanCallback;
import com.yayawan.sdk.main.YayaWan;
import com.yayawan.utils.DeviceUtil;
import com.yayawan.utils.Handle;
import com.yayawan.utils.JSONUtil;
/**
 * 版本号 ：sdk4.2.3_160427
 * @author black
 *
 */
public class YaYawanconstants {

	private static HashMap<String, String> mGoodsid;
	private static final String TAG = "black";
	private static Activity mActivity;
	private static Downjoy downjoy;
	/**
	 * 初始化sdk
	 */
	public static void inintsdk(Activity mactivity) {
		mActivity = mactivity;
		Yayalog.loger("sdk初始化");
		Log.d(TAG, "sdk初始化 - inintsdk");
		String merchantId = DeviceUtil.getGameInfo(mactivity, "MERCHANT_ID"); // 当乐分配的MERCHANT_ID
		String appId = DeviceUtil.getGameInfo(mactivity, "APP_ID"); // 当乐分配的APP_ID
		String serverSeqNum = DeviceUtil.getGameInfo(mactivity, "SERVER_SEQ_NUM"); // 进入CP后台，添加服务器选项中进行填写，其中服务器序号即SERVER_SEQ_NUM，由CP自己指定，一般从1开始即可，
		String appKey = DeviceUtil.getGameInfo(mactivity, "APP_KEY"); // 当乐分配的 APP_KEY
		downjoy = Downjoy.getInstance(mactivity, merchantId, appId, serverSeqNum, appKey,
				new InitListener() {
			
			@Override
			public void onInitComplete() {
				//初始化成功的回调 downjoyLogin()demo 登录
				downjoy.showDownjoyIconAfterLogined(true);
				downjoy.setInitLocation(Downjoy.LOCATION_RIGHT_CENTER_VERTICAL);
				downjoy.setLogoutListener(new LogoutListener() {
					
					@Override
					public void onLogoutSuccess() {
						logout();
						Log.d(TAG, "注销成功");
					}
					
					@Override
					public void onLogoutError(String error) {
						Log.d(TAG, "注销失败");
					}
				});
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
		 if (null == downjoy){
	     	return;
		 }
	     downjoy.openLoginDialog(mactivity, new CallbackListener<LoginInfo>() {
			
			@Override
			public void callback(int status, LoginInfo data) {
				if (status == CallbackStatus.SUCCESS && data != null) {
					loginSuce(mactivity, data.getUmid(), data.getUserName(),
							data.getNickName(), data.getToken());
					downjoy.showDownjoyIconAfterLogined(true);
					Log.d(TAG, "登录成功");
					
                } else if (status == CallbackStatus.FAIL && data != null) {
                	loginFail();
                	Log.d(TAG, "登录失败");
                } else if (status == CallbackStatus.CANCEL && data != null) {
                	loginCancle();
                	Log.d(TAG, "登录取消");
                }

			}
		});
	}
	/**
	 *  登出 退出登录
	 */
	public static void logout(Activity mActivity){
		if(downjoy != null){
			downjoy.logout(mActivity);
			Log.d(TAG, "登出帐号");
		}
	}
	/**
	 * 支付
	 * @param mactivity
	 */
	public static void pay(Activity mactivity, String morderid) {
		Yayalog.loger("sdk支付");
		Log.d(TAG, "sdk支付 - pay");
		downjoy.openPaymentDialog(mactivity, YYWMain.mOrder.money/100, YYWMain.mOrder.goods, 
				YYWMain.mOrder.ext, morderid, "Serer001", YYWMain.mUser.userName, 
				new CallbackListener<String>() {
					
					@Override
					public void callback(int status, String data) {
						if (status == CallbackStatus.SUCCESS) {
                        	paySuce();   
                        	Log.d(TAG, "支付成功");
                        } else if (status == CallbackStatus.FAIL) {
                        	payFail();
                        	Log.d(TAG, "支付失败");
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
			downjoy.openExitDialog(paramActivity, new CallbackListener<String>() {
				
				@Override
				public void callback(int status, String data) {
					if (CallbackStatus.SUCCESS == status) {
						paramActivity.finish();
						Log.d(TAG, "callback");
						callback.onExit();	
						Log.d(TAG, "System.exit(0)");
						System.exit(0);
						Log.d(TAG, "退出游戏");
				    } else if (CallbackStatus.CANCEL == status) {
				        Toast.makeText(paramActivity, "返回游戏", Toast.LENGTH_SHORT).show();
				        Log.d(TAG, "返回游戏");
				    }

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
		if (downjoy != null) {
	        downjoy.pause();
	    }
	}
	public static void onResume(Activity paramActivity) {
		if (downjoy != null) {
	        downjoy.resume(paramActivity);
	    }
	}
	public static void onRestart(Activity paramActivity) {
		
	}
	public static void onStop(Activity paramActivity) {
		
	}
	public static void onDestroy(Activity paramActivity) {
		if (downjoy != null) {
	        downjoy.destroy();
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
			String username,String nickname, String session) {

		YYWMain.mUser = new YYWUser();

		YYWMain.mUser.uid = DeviceUtil.getUnionid(mactivity) + "-" + uid + "";
		YYWMain.mUser.nick = DeviceUtil.getUnionid(mactivity) + "-" + nickname + "";
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
			String username,String nickname, String session){
		//切换登录第一步 :退出原有的帐号
		logout();
		//第二步:再次使用新的登录信息进行登录操作
		loginSuce(mActivity, uid, username, nickname,session);
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
						paramActivity.finish();
						callback.onExit();
					}
				});
			}
		});
	}


}
