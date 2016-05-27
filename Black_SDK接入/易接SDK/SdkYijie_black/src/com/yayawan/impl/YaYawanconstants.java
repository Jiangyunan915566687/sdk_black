package com.yayawan.impl;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.HashMap;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.content.DialogInterface.OnClickListener;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import android.widget.Toast;

import com.snowfish.cn.ganga.helper.SFOnlineExitListener;
import com.snowfish.cn.ganga.helper.SFOnlineHelper;
import com.snowfish.cn.ganga.helper.SFOnlineInitListener;
import com.snowfish.cn.ganga.helper.SFOnlineLoginListener;
import com.snowfish.cn.ganga.helper.SFOnlinePayResultListener;
import com.snowfish.cn.ganga.helper.SFOnlineUser;
import com.yayawan.callback.YYWExitCallback;
import com.yayawan.domain.YYWUser;
import com.yayawan.main.YYWMain;
import com.yayawan.sdk.callback.YayaWanCallback;
import com.yayawan.sdk.main.YayaWan;
import com.yayawan.utils.DeviceUtil;
import com.yayawan.utils.Handle;
import com.yayawan.utils.JSONUtil;
/**
 * 闪屏页 接入方式 改为 易接接入所要求
 * 登录验证LoginChack callBackInfo  
 * 如果需要修改，在 LoginHelper.class
 * @author Black
 *
 */
public class YaYawanconstants {

	private static HashMap<String, String> mGoodsid;

	private static Activity mActivity;
	public static final String TAG = "black";

	static LoginHelper helper = null;
	/*
	private static Handler handler = new Handler(){
		public void handleMessage(android.os.Message msg) {
			String[] userinfo = (String[]) msg.obj;
			loginSuce(mActivity, userinfo[0], userinfo[1], userinfo[2]+"||"+userinfo[3]);
			
		};
		
	};
	*/
	/**
	 * 初始化sdk
	 */
	public static void inintsdk(Activity mactivity) {
		mActivity = mactivity;
		Yayalog.loger("初始化sdk");
		SFOnlineHelper.onCreate(mactivity, new SFOnlineInitListener() {
			
			@Override
			public void onResponse(String tag, String value) {
				if( tag.equalsIgnoreCase("success") ){
					//初始化成功的回调
					Log.d(TAG, "SDK_Init_Success!");
				}else if( tag.equalsIgnoreCase("fail") ){
					//初始化失败的回调，value：如果SDK返回了失败的原因，会给value赋值
					Log.d(TAG, "SDK_Init_Fail : " + value);
				}
			}
		});
		//设置登录监听
		setLoginListener(mactivity);
	}
	private static void setLoginListener(final Activity mactivity) {
		SFOnlineHelper.setLoginListener(mactivity, new SFOnlineLoginListener() {
			//登出回调
			@Override
			public void onLogout(Object customParams) {
				logout();
			}
			//登录成功回调
			@Override
			public void onLoginSuccess(SFOnlineUser user, Object customParams) {
				//String appId = user.getProductCode(); //black
				//String channelId = user.getChannelId();
				String uid = user.getChannelUserId();
				String username = uid;
				String session = user.getToken();
				String getChannelid = user.getChannelId();
				Log.d(TAG, "uid="+uid+" username="+username+" session="+session +" getChannelid=" + getChannelid);
				/*
				if(helper != null){
					helper.setOnlineUser(user);
				}
				LoginCheck(user);//登录验证
				*/
				loginSuce(mactivity, uid, username, session+"||"+getChannelid);
			}
			//登录失败回调
			@Override
			public void onLoginFailed(String reason, Object customParams) {
				loginFail();
			}
		});
		//helper = LoginHelper.instance();
	}
	/**
	 * 闪屏
	 */
	public static void logoAnim(final Activity mactivity){
		Yayalog.loger("sdk闪屏");
		//Intent intent = new Intent(mactivity, SplashActivity.class);
		//mactivity.startActivity(intent);
	}
	/**
	 * 登录 
	 */
	public static void login(final Activity mactivity) {
		Yayalog.loger("sdk登录");
		SFOnlineHelper.login(mactivity, "Login");
		//SFOnlineHelper.logout(activity, "LoginOut");//登出接口
	}
	/**
     *  LoginCheck
     *  从服务器端验证用户是否登陆
     * @param user 登陆账户
     */
	public static void LoginCheck(final SFOnlineUser user) {
        if(helper == null){
        	Toast.makeText(mActivity, "Error, helper为null", Toast.LENGTH_SHORT).show();
        	Log.d(TAG, "Error, helper为null");
        	return;
        }
		if (helper.isDebug()) {
			helper.setLogin(true);
			//goChargeView();
			return;
		}
		Log.e(TAG, "LoginCheck user:"+user.toString());
		new Thread(new Runnable() {
			@Override
			public void run() { 
				try {
					//CP服务器地址进行验证
					String url = LoginHelper.CP_LOGIN_CHECK_URL + createLoginURL();
					//if (url == null)
					//	return;

 					String result = LoginHelper.executeHttpGet(url);
 					Log.e(TAG, "LoginCheck result:"+result);
					if (result == null || !result.equalsIgnoreCase("SUCCESS")) {
						if(helper != null){
							helper.setLogin(false);
						}
						//LoginHelper.showMessage("未登录", mActivity);
					} else {
						if(helper != null){
							helper.setLogin(true);
						}
						//LoginHelper.showMessage("已验证成功登录", mActivity);
						String uid = user.getChannelUserId();
						String username = uid;
						String session = user.getToken();
						String getChannelid = user.getChannelId();
						Log.d(TAG, "uid="+uid+" username="+username+" session="+session +" getChannelid=" + getChannelid);
						Message msg = new Message();
						String userinfo[] = {uid,username,session,getChannelid};
						msg.obj = userinfo;
						//handler.sendMessage(msg);
						//loginSuce(mActivity, uid, username, session+"||"+getChannelid);
					}
				} catch (Exception e) {
					Log.e("black", "LoginCheck ERROR:"+e.toString());
				}
			}
		}).start(); 
	}
	private static String createLoginURL() throws UnsupportedEncodingException {
		if (helper == null || helper.getOnlineUser()  == null) {
			Toast.makeText(mActivity, "未登录", Toast.LENGTH_SHORT).show();
			return null;
		}
		SFOnlineUser user = helper.getOnlineUser();
		StringBuilder builder = new StringBuilder();
		builder.append("?app=");
		builder.append(user.getProductCode());
		builder.append("&sdk=");
		builder.append(user.getChannelId());
		builder.append("&uin=");
		builder.append(URLEncoder.encode(user.getChannelUserId(), "utf-8"));
		builder.append("&sess=");
		builder.append(URLEncoder.encode(user.getToken(), "utf-8"));
		return builder.toString();
	}
	/**
	 * 支付
	 * @param mactivity
	 */
	public static void pay(Activity mactivity, String morderid) {
		Yayalog.loger("sdk支付");
		Log.d("black","YYW支付回调地址 ： " + LoginHelper.CP_PAY_SYNC_URL);
		Log.d("black", "有传订单号 = " + morderid);
		SFOnlineHelper.pay(mactivity, Integer.parseInt(YYWMain.mOrder.money+""), 
				YYWMain.mOrder.goods, 1, morderid, LoginHelper.CP_PAY_SYNC_URL,
				new SFOnlinePayResultListener() {
					
					@Override
					public void onSuccess(String remain) {
						//支付成功
						paySuce();
					}
					
					@Override
					public void onOderNo(String orderNo) {
						//订单生成失败
						//LoginHelper.showMessage("订单号:" + orderNo, mActivity);
						Log.d(TAG, "订单号:" + orderNo);
						payFail();
					}
					
					@Override
					public void onFailed(String remain) {
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
			SFOnlineHelper.exit(mActivity, new SFOnlineExitListener() {
				/* onSDKExit
				* @description 当SDK有退出方法及界面，回调该函数
				* @param bool SDK是否退出标志位
				*/
				@Override
				public void onSDKExit(boolean bool) {
					if(bool){
						//SDK已经退出，此处可以调用游戏的退出函数
						Log.d(TAG, "onSDKExit");
						paramActivity.finish();
						callback.onExit();
						System.exit(0);
					}
				}
				/* onNoExiterProvide
				* @description SDK没有退出方法及界面，回调该函数，可在此使用游戏退出界面
				*/
				@Override
				public void onNoExiterProvide() {
					Log.d(TAG, "onNoExiterProvide");
					new AlertDialog.Builder(paramActivity)
					.setTitle("退出游戏提示")
					.setMessage("是否退出游戏？")
					.setPositiveButton("确认", new OnClickListener() {
						
						@Override
						public void onClick(DialogInterface dialog, int which) {
							Log.d(TAG, "确认退出");
							paramActivity.finish();
							callback.onExit();
							System.exit(0);
						}
					})
					.setNegativeButton("返回", new OnClickListener() {
						
						@Override
						public void onClick(DialogInterface dialog, int which) {
							Log.d(TAG, "取消退出");
						}
					})
					.setCancelable(true)
					.setOnCancelListener(new OnCancelListener() {
						
						@Override
						public void onCancel(DialogInterface dialog) {
							Log.d(TAG, "撤销Dialog");
						}
					})
					.create().show();
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
		SFOnlineHelper.setRoleData(paramActivity, 
				YYWMain.mRole.getRoleId(), YYWMain.mRole.getRoleName(), 
				YYWMain.mRole.getRoleLevel(), YYWMain.mRole.getZoneId(), 
				YYWMain.mRole.getZoneName());
	}
	/**
	 * 设置角色数据
	 * 创建角色，角色升级调用的方法
	 * @param activity 游戏上下文  ext 附加内容 roleCTime 角色创建时间 zoneName 游戏区服名称
	 * @param zoneId 游戏区服ID roleLevel 角色等级 roleName 角色名称 roleId 角色ID
	 */
	public static void setData(Activity activity, String roleId, String roleName, 
			String roleLevel, String zoneId, String zoneName, String roleCTime, String ext) {
		Log.d(TAG, "设置角色数据 - setData （此方法暂时无效）");
		/*
		try{
			JSONObject roleInfo = new JSONObject();
			roleInfo.put("roleId", roleId); //当前登录的玩家角色ID，必须为数字
			roleInfo.put("roleName", roleName); //当前登录的玩家角色名，不能为空，不能为null
			roleInfo.put("roleLevel", roleLevel); //当前登录的玩家角色等级，必须为数字，且不能为0，若无，传入1
			roleInfo.put("zoneId", zoneId); //当前登录的游戏区服ID，必须为数字，且不能为0，若无，传入1
			roleInfo.put("zoneName", zoneName);//当前登录的游戏区服名称，不能为空，不能为null
			roleInfo.put("balance", "0"); //用户游戏币余额，必须为数字，若无，传入0
			roleInfo.put("vip", "1"); //当前用户VIP等级，必须为数字，若无，传入1
			roleInfo.put("partyName", "无帮派");//当前角色所属帮派，不能为空，不能为null，若无，传入“无帮派”
			roleInfo.put("roleCTime", roleCTime); //单位为秒，创建角色的时间
			roleInfo.put("roleLevelMTime", System.currentTimeMillis()/1000); //单位为秒，角色等级变化时间
			//"createrole"	角色创建
			//"levelup"		角色升级
			//"enterServer"	角色登录
			SFOnlineHelper.setData(activity,"",roleInfo.toString());
		}catch(JSONException e){
			Log.d(TAG, "JSONException = " + e.toString());
		}
		*/
	}
	/**
	 * 若接入要求重写activity的生命周期,在此处接入
	 * @param paramActivity
	 */
	public static void onPause(Activity paramActivity) {
		SFOnlineHelper.onPause(paramActivity);
	}
	public static void onResume(Activity paramActivity) {
		SFOnlineHelper.onResume(paramActivity);
	}
	public static void onRestart(Activity paramActivity) {
		SFOnlineHelper.onRestart(paramActivity);
	}
	public static void onStop(Activity paramActivity) {
		SFOnlineHelper.onStop(paramActivity);
	}
	public static void onDestroy(Activity paramActivity) {
		SFOnlineHelper.onDestroy(paramActivity);
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
