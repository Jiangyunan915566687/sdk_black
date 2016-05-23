package com.yayawan.impl;

import java.util.HashMap;

import org.json.JSONException;
import org.json.JSONObject;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.provider.ContactsContract.CommonDataKinds.Nickname;
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
import com.yayawan.main.YaYaWan;
import com.yayawan.utils.DeviceUtil;
import com.yayawan.utils.Handle;
import com.yayawan.utils.JSONUtil;

public class YaYawanconstants {

	 private static final String TAG = "anzhiTest";

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
	
	
	private static HashMap<String, String> mGoodsid;

	private static Activity mActivity;
	private static String loginName;
	private static String nick;
	private static AnzhiUserCenter mAnzhiCenter;
	static String uid ;
	static Handler mHandler = new Handler() {
        

		@Override
        public void handleMessage(final Message msg) {
            switch (msg.what) {
            case CODE_PAY_RESULT:
                JSONObject payJson = (JSONObject) msg.obj;
                int code = payJson.optInt(JS_CODE);
              
                if (code == 200 || code == 201) {// 当支付的返回码是200时 表示 支付成功， 当支付的返回码是201 时 表示支付中此时需要通过服务端来验证支付结果
                	if (YYWMain.mPayCallBack != null) {
						YYWMain.mPayCallBack.onPaySuccess(YYWMain.mUser,
								YYWMain.mOrder, "success");
					}

                	//showToast("支付结果：" + desc + "\n支付成功 \n订单号: " + orderId + "\n金额: " + price + "\n时间: " + time);
                } else {
                	if (YYWMain.mPayCallBack != null) {
						YYWMain.mPayCallBack.onPayFailed(null, null);
					}

                	// showToast(desc);
                }

                break;
            case CODE_LOGOUT_SUCCESS:
               if (YYWMain.mUserCallBack!=null) {
				YYWMain.mUserCallBack.onLogout(null);
			}
                break;
            case CODE_LOGIN_RESULT:
                JSONObject loginJson = (JSONObject) msg.obj;
                int loginCode = loginJson.optInt(JS_CODE);
                String loginDesc = loginJson.optString(JS_LOGIN_DESC);
                if (loginCode == 200) {
                    
                   uid = loginJson.optString(JS_UID);// uid 是安智平台用户的唯一标示
                    loginName = loginJson.optString(JS_NAME);
                    String session = loginJson.optString(JS_SID);// 获得SID
                    nick = loginJson.optString(JS_NICK);
                   
                    YYWMain.mUser = new YYWUser();

					YYWMain.mUser.uid = DeviceUtil.getUnionid(mActivity) + "-"+ uid
							+ "";
					;
					YYWMain.mUser.userName = DeviceUtil.getUnionid(mActivity) + "-"+ loginName + "";
					// YYWMain.mUser.nick = data.getNickName();
					YYWMain.mUser.token = JSONUtil.formatToken(
							mActivity,
							session,
							YYWMain.mUser.userName);
					
					if (YYWMain.mUserCallBack != null) {
						YYWMain.mUserCallBack.onLoginSuccess(
								YYWMain.mUser, "success");
						Handle.login_handler(mActivity,
								YYWMain.mUser.uid,
								YYWMain.mUser.userName);
					}
					  mAnzhiCenter.showFloaticon();
                   // showToast(loginDesc);
                } else {
                    //showToast(loginDesc);
                	if (YYWMain.mUserCallBack != null) {
						YYWMain.mUserCallBack.onLoginFailed(null, null);
					}
                }
                break;

            }
        }
    };
	
	/**
	 * 初始化sdk
	 */
	public static void inintsdk(Activity mactivity) {
		mActivity = mactivity;
		Yayalog.loger("初始化sdk");

		final CPInfo info = new CPInfo();
		info.setOpenOfficialLogin(false);// 是否开启游戏官方账号登录，默认为关闭
		info.setAppKey(DeviceUtil.getGameInfo(mactivity, "Appkey"));
		info.setSecret(DeviceUtil.getGameInfo(mactivity, "AppSecret"));
		info.setChannel("AnZhi");
		info.setGameName("游戏");
		mAnzhiCenter = AnzhiUserCenter.getInstance();
		mAnzhiCenter.setKeybackCall(keyCall);// 设置返回游戏的通知
		mAnzhiCenter.azinitSDK(mactivity, info, initSDKCallback, gameInter);
		mAnzhiCenter.setCallback(mCallback);// 设置 登录、登出、支付 回调
		
		if (DeviceUtil.isLandscape(mActivity)) {
			mAnzhiCenter.setActivityOrientation(0);
		}else {
			mAnzhiCenter.setActivityOrientation(1);
		}
		// 0横屏,1竖屏,4根据物理感应来选择方向

	}

	/**
	 * 页面返回回调 ，包括登录、支付等；
	 * 
	 * Login 登录界面 / GamePay 支付界面 / UserCenter 个人中心界面 / GameGift 礼包页面 / anzhiBbs
	 * 论坛页面 / Message 消息页面/ Feedback 客服中心页面 / Login 登录页面/ gamePay 充值页面 /
	 * AnzhiCurrent 安智币充值界面
	 * 
	 */
	static KeybackCall keyCall = new KeybackCall() {
		@Override
		public void KeybackCall(String Call) {
			Log.e("xugh", "Call == " + Call);

		}
	};

	/**
	 * 初始化完成后的回调
	 */
	static InitSDKCallback initSDKCallback = new InitSDKCallback() {
		@Override
		public void initSdkCallcack() {
			mAnzhiCenter.login(mActivity, true);

		}
	};

	/**
	 * 退出游戏的接口，开发者在本接口中实现退出游戏的方法。 在安智的退出弹窗页点退出游戏或在三秒内连续两次调用
	 * azoutGame(boolean)方法会调用本接口
	 * 
	 * 根据标示码判读是否退出游戏
	 * 
	 */
	static AzOutGameInter gameInter = new AzOutGameInter() {
		@Override
		public void azOutGameInter(int arg) {

			switch (arg) {
			case AzOutGameInter.KEY_OUT_GAME:// 退出游戏
				//mActivity.finish();
				
				//mActivity.finish();
				if (DeviceUtil.getGameInfo(mActivity, "yayaexitnow").equals("yes")) {
					System.out.println("进来了直接退出");
					mActivity.finish();
					//
				}else {
					System.out.println("进来了游戏退出退出");
					YYWMain.mExitCallback.onExit();
				}
				
				break;
			case AzOutGameInter.KEY_CANCEL: // 取消退出游戏
				Log.e("xugh", "-----");
				break;
			default:
				break;
			}

		}
	};
	
	
	 /**
     * 登录、登出、支付通知
     */
    static AnzhiCallback mCallback = new AnzhiCallback() {

        @Override
        public void onCallback(CPInfo cpInfo, final String result) {
            Log.e(TAG, "result " + result);
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
    };


	/**
	 * 登录
	 */
	public static void login(final Activity mactivity) {
		Yayalog.loger("sdk登录");
		mAnzhiCenter.login(mActivity, true);
	}

	/**
	 * 支付
	 * 
	 * @param mactivity
	 */
	public static void pay(Activity mactivity, String morderid) {

		Yayalog.loger("sdk支付");
		//mAnzhiCenter.pay(mactivity, 0, YYWMain.mOrder.money/100, "购买游戏商品", morderid);
		
		if (TextUtils.isEmpty(YYWMain.mOrder.goods)) {
			mAnzhiCenter.pay(mactivity, 0, YYWMain.mOrder.money/100, "购买游戏商品", morderid);
			
		}else {
			mAnzhiCenter.pay(mactivity, 0, YYWMain.mOrder.money/100, YYWMain.mOrder.goods, morderid);
		
		}
		
	}

	/**
	 * 退出
	 * 
	 * @param paramActivity
	 * @param callback
	 */
	public static void exit(Activity paramActivity,
			final YYWExitCallback callback) {
		Yayalog.loger("sdk退出");

		paramActivity.runOnUiThread(new Runnable() {
			
			@Override
			public void run() {
				// TODO Auto-generated method stub
				mAnzhiCenter.azoutGame(false);
			}
		});
		
	}

	/**
	 * 设置角色信息
	 * @param arg0
	 */
	public static void setRoleData(Activity arg0) {
		// TODO Auto-generated method stub
		 UserGameInfo gameInfo = new UserGameInfo();
         gameInfo.setNickName(nick);
         gameInfo.setUid(uid);
         gameInfo.setAppName(DeviceUtil.getGameInfo(mActivity, "gamename"));
         gameInfo.setGameArea(YYWMain.mRole.getZoneId());// 游戏的服务器区
         gameInfo.setGameLevel(YYWMain.mRole.getRoleLevel());// 游戏角色等级
         gameInfo.setUserRole(YYWMain.mRole.getRoleName());// 角色名称
         gameInfo.setMemo("x");// 备注
         mAnzhiCenter.submitGameInfo(arg0, gameInfo);
	}

	/**
	 * onstop
	 * @param paramActivity
	 */
	public static void onStop(Activity paramActivity) {
		// TODO Auto-generated method stub
		 mAnzhiCenter.dismissFloaticon();
	}

	public static void onResume(Activity paramActivity) {
		// TODO Auto-generated method stub
		 mAnzhiCenter.showFloaticon();
	}

}
