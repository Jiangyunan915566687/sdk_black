package com.yayawan.impl;

import java.util.HashMap;

import org.json.JSONException;
import org.json.JSONObject;

import android.app.Activity;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.util.Log;
import android.widget.Toast;

import com.anzhi.usercenter.sdk.AnzhiUserCenter;
import com.anzhi.usercenter.sdk.inter.AnzhiCallback;
import com.anzhi.usercenter.sdk.inter.AzOutGameInter;
import com.anzhi.usercenter.sdk.inter.InitSDKCallback;
import com.anzhi.usercenter.sdk.inter.KeybackCall;
import com.anzhi.usercenter.sdk.item.CPInfo;
import com.anzhi.usercenter.sdk.item.UserGameInfo;
import com.yayawan.callback.YYWExitCallback;
import com.yayawan.domain.YYWUser;
import com.yayawan.main.YYWMain;
import com.yayawan.sdk.callback.YayaWanCallback;
import com.yayawan.sdk.main.YayaWan;
import com.yayawan.utils.DeviceUtil;
import com.yayawan.utils.Handle;
import com.yayawan.utils.JSONUtil;
/**
 * 版本号  ： V3_5_2
 * @author black
 *
 */
public class YaYawanconstants {

	private static HashMap<String, String> mGoodsid;
	private static final String TAG = "black";
	private static Activity mActivity;
	private static AnzhiUserCenter mAnzhiCenter;
    private static final String JS_LOGIN_DESC = "code_desc";
    private static final String JS_CODE = "code";
    private static final String JS_UID = "uid"; //
    private static final String JS_NICK = "nick_name";//
    private static final String JS_SID = "sid";//
    private static final String JS_NAME = "login_name";
    private static final String JS_CALLBACK_KEY = "callback_key";
    private static final int CODE_LOGIN_RESULT = 0x00;
    private static final int CODE_PAY_RESULT = CODE_LOGIN_RESULT + 1;
    private static final int CODE_LOGOUT_SUCCESS = CODE_PAY_RESULT + 1;
    private static final String KEY_LOGIN = "key_login";// 登录的key
    private static final String KEY_LOGOUT = "key_logout";// 登出的KEY
    private static final String KEY_PAY = "key_pay";// 支付的key
    
    static Handler mHandler = new Handler() {
        @Override
        public void handleMessage(final Message msg) {
            switch (msg.what) {
            case CODE_PAY_RESULT:	//支付结果
                JSONObject payJson = (JSONObject) msg.obj;
                int code = payJson.optInt(JS_CODE);
                /*
                String desc = payJson.optString("desc");// 支付说明
                String orderId = payJson.optString("order_id");//安智支付订单
                String price = payJson.optString("price");// 支付金额
                String time = payJson.optString("time");
                */
                if (code == 200 || code == 201) {// 当支付的返回码是200时 表示 支付成功， 当支付的返回码是201 时 表示支付中此时需要通过服务端来验证支付结果
                    paySuce();
                    Log.d(TAG,"支付成功");
                	//Log.d(TAG,"支付结果：" + desc + "\n支付成功 \n订单号: " + orderId + "\n金额: " + price + "\n时间: " + time);
                } else {
                	payFail();
                	Log.d(TAG,"支付失败");
                	//Log.d(TAG,desc);
                }

                break;
            case CODE_LOGOUT_SUCCESS:	//登出成功
                logout();
                Log.d(TAG,"登出成功");
                break;
            case CODE_LOGIN_RESULT:		//登录结果
                JSONObject loginJson = (JSONObject) msg.obj;
                int loginCode = loginJson.optInt(JS_CODE);
                String loginDesc = loginJson.optString(JS_LOGIN_DESC);
                if (loginCode == 200) {
                    String uid = loginJson.optString(JS_UID);// uid 是安智平台用户的唯一标示
                    String username = loginJson.optString(JS_NAME);// 获得用户名
                    String session = loginJson.optString(JS_SID);// 获得SID
                    String Nick = loginJson.optString(JS_NICK);// 获得昵称
                    loginSuce(mActivity, uid, username,Nick, session);
                    Log.d(TAG, "登录成功 = " + loginDesc);
                } else {
                   loginFail();
                   Log.d(TAG, "登录失败 = " + loginDesc);
                }
                break;

            }
        }
    };
	/**
	 * 初始化sdk
	 */
	public static void inintsdk(final Activity mactivity) {
		mActivity = mactivity;
		Yayalog.loger("sdk初始化");
		Log.d(TAG, "sdk初始化 - inintsdk");
		CPInfo cpInfo = new CPInfo();
		cpInfo.setOpenOfficialLogin(false);// 是否开启游戏官方账号登录，默认为关闭
		cpInfo.setAppKey(DeviceUtil.getGameInfo(mactivity, "Appkey"));
		cpInfo.setSecret(DeviceUtil.getGameInfo(mactivity, "AppSecret"));
		cpInfo.setChannel("AnZhi");
		cpInfo.setGameName(DeviceUtil.getGameInfo(mactivity, "gamename"));
		mAnzhiCenter = AnzhiUserCenter.getInstance(); 
		mAnzhiCenter.setKeybackCall(new KeybackCall() {
			
			@Override
			public void KeybackCall(String call) {
				Log.d(TAG, "KeybackCall = " + call);
			}
		});
		mAnzhiCenter.setActivityOrientation(DeviceUtil.isLandscape(mactivity)?0:1);
		mAnzhiCenter.azinitSDK(mactivity, cpInfo, new InitSDKCallback() {
			
			@Override
			public void initSdkCallcack() {
				//初始化完成后的回调
				Log.d(TAG,"初始化完成");
			}
		}, new AzOutGameInter() {
			
			@Override
			public void azOutGameInter(int code) {
				switch (code) {
	            case AzOutGameInter.KEY_OUT_GAME:// 退出游戏
	            	//移除悬浮窗
	                mAnzhiCenter.removeFloaticon(mactivity);
	                Log.d(TAG,"退出游戏");
	                mactivity.finish();
	                YYWMain.mExitCallback.onExit();
	                System.exit(0);
	                break;
	            case AzOutGameInter.KEY_CANCEL: // 取消退出游戏
	                Toast.makeText(mactivity, "返回游戏", Toast.LENGTH_SHORT).show();
	                Log.d(TAG,"取消退出");
	                break;
	            default:
	                break;
	            }
			}
		});
		mAnzhiCenter.setCallback(new AnzhiCallback() {
			
			@Override
			public void onCallback(CPInfo cpinfo, String result) {
				try {
	                JSONObject json = new JSONObject(result);
	                String key = json.optString(JS_CALLBACK_KEY);
	                if (KEY_PAY.equals(key)) {// 支付结果通知

	                    mHandler.obtainMessage(CODE_PAY_RESULT, json).sendToTarget();

	                } else if (KEY_LOGOUT.equals(key)) {// 切换或退出账号的通知

	                    mHandler.sendEmptyMessage(CODE_LOGOUT_SUCCESS);

	                } else if (KEY_LOGIN.equals(key)) {// 登录游戏的方法

	                    mHandler.obtainMessage(CODE_LOGIN_RESULT, json).sendToTarget();

	                }

	            } catch (JSONException e) {
	                e.printStackTrace();
	            }
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
		mAnzhiCenter.login(mactivity, true);
	}
	/**
	 * 登出
	 */
	public static void logout(final Activity mactivity){
		Yayalog.loger("sdk登出");
		Log.d(TAG, "sdk登出 - logout");
		mAnzhiCenter.logout(mactivity);
	}
	/**
	 * 支付
	 * @param mactivity
	 */
	public static void pay(Activity mactivity, String morderid) {
		Yayalog.loger("sdk支付");
		Log.d(TAG, "sdk支付 - pay");
		if(TextUtils.isEmpty(YYWMain.mOrder.goods)){
			mAnzhiCenter.pay(mactivity, 0, YYWMain.mOrder.money/100, "购买游戏商品", morderid);
		}else{
			mAnzhiCenter.pay(mactivity, 0, YYWMain.mOrder.money/100, YYWMain.mOrder.goods, morderid);
		}
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
			//callback.onExit();
			//true 开启3秒内点击两次->退出游戏    false 点击即刻退出游戏
			mAnzhiCenter.azoutGame(true);
		}
	}

	/**
	 * 设置角色信息
	 * 一般在登录成功开始获取信息的时候，可用于上传用户帐号、游戏角色的信息
	 * @param paramActivity
	 */
	public static void setRoleData(Activity paramActivity) {
		Log.d(TAG, "设置角色信息 - setRoleData");
		UserGameInfo gameInfo = new UserGameInfo();
        gameInfo.setNickName(YYWMain.mUser.nick);
        gameInfo.setUid(YYWMain.mUser.uid);
        gameInfo.setAppName(DeviceUtil.getGameInfo(paramActivity, "gamename"));
        gameInfo.setGameArea(YYWMain.mRole.getZoneId());// 游戏的服务器区
        gameInfo.setGameLevel(YYWMain.mRole.getRoleLevel());// 游戏角色等级
        gameInfo.setUserRole(YYWMain.mRole.getRoleName());// 角色名称
        gameInfo.setMemo("");// 备注
        mAnzhiCenter.submitGameInfo(paramActivity, gameInfo);
        Log.d(TAG, gameInfo.toString());
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
			String username, String nickname, String session) {

		YYWMain.mUser = new YYWUser();

		YYWMain.mUser.uid = DeviceUtil.getUnionid(mactivity) + "-" + uid + "";
		YYWMain.mUser.nick = DeviceUtil.getUnionid(mactivity) + "-"
				+ nickname + "";
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
		loginSuce(mActivity, uid, username,nickname, session);
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
