package com.yayawan.impl;

import java.text.SimpleDateFormat;
import java.util.Date;

import android.app.Activity;
import android.text.LoginFilter;
import android.text.TextUtils;
import android.util.Log;
import android.widget.Toast;

import com.tencent.ysdk.api.YSDKApi;
import com.tencent.ysdk.framework.common.eFlag;
import com.tencent.ysdk.framework.common.ePlatform;
import com.tencent.ysdk.module.bugly.BuglyListener;
import com.tencent.ysdk.module.user.PersonInfo;
import com.tencent.ysdk.module.user.UserListener;
import com.tencent.ysdk.module.user.UserLoginRet;
import com.tencent.ysdk.module.user.UserRelationRet;
import com.tencent.ysdk.module.user.WakeupRet;
import com.yayawan.domain.YYWUser;
import com.yayawan.main.YYWMain;
import com.yayawan.utils.DeviceUtil;
import com.yayawan.utils.Handle;
import com.yayawan.utils.JSONUtil;

public class YSDKCallback implements UserListener, BuglyListener {

	private static final String TAG = "black";
	public static Activity mActivity;
	private int flag;
	private String openId;
	private String payToken;
	private String accessToken;
	private int platform;
	private String msg;
	private String pf;
	private String pf_key;

	public YSDKCallback(Activity activity) {
		mActivity = activity;
	}

	@Override
	public byte[] OnCrashExtDataNotify() {
		return null;
	}

	@Override
	public String OnCrashExtMessageNotify() {
		Date nowTime = new Date();
		SimpleDateFormat time = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
		return "new Upload extra crashing message for bugly on "
				+ time.format(nowTime);
	}

	@Override
	public void OnLoginNotify(UserLoginRet ret) {
		Log.d(TAG, "OnLoginNotify(UserLoginRet ret)");
		//Log.d(TAG, "ret.flag" + ret.flag);
		switch (ret.flag) {
		case eFlag.Succ:
			Log.d(TAG, "OnLoginNotify - Succ");
			if (YYWMain.mUser!=null) {
				return;
			}
			UserLoginRet ret1 = new UserLoginRet();
			int platform = YSDKApi.getLoginRecord(ret1);
			String accessToken = ret1.getAccessToken();
			openId = ret1.open_id;
			payToken = ret1.getPayToken();
			pf = ret1.pf;
			pf_key = ret1.pf_key;
			flag = ret1.flag;
			msg = ret.msg;
			// 支付需要的参数

			// 从手Q登录态或微信登录态中获取的openid的值
			Log.d(TAG, openId);
			Myconstants.mpayinfo.openId = openId;
			//Log.d(TAG, "从手Q登录态或微信登录态中获取的openid的值 = " + openId);
			// 从手Q登录态或微信登录态中获取的access_token 的值
			Myconstants.mpayinfo.openKey = accessToken;

			// 从手Q登录态中获取的pay_token的值; 微信登录时特别注意该参数传空。支付时使用
			Myconstants.mpayinfo.qq_paytoken = ret.getPayToken();

			// 登录获取的pf值
			Myconstants.mpayinfo.pf = pf;

			// 登录获取的pfkey值
			Myconstants.mpayinfo.pfKey = pf_key;
			Myconstants.mpayinfo.sessionId = openId;
			if(!TextUtils.isEmpty(Myconstants.platform)){
				if (Myconstants.platform.equals("qq")) {
					YSDKApi.queryUserInfo(ePlatform.QQ);
				} else {
					YSDKApi.queryUserInfo(ePlatform.WX);
				}
			}
			break;
		// 游戏逻辑，对登陆失败情况分别进行处理
		case eFlag.User_QQ_NetworkErr:
			Toast.makeText(mActivity, "网络连接失败，请检查网络", Toast.LENGTH_SHORT).show();
			break;
		case eFlag.User_WX_UserCancel:
			Toast.makeText(mActivity, "取消登录", Toast.LENGTH_SHORT).show();
			loginCancle();
			break;
		case eFlag.User_WX_NotInstall:
			Toast.makeText(mActivity, "未安装微信", Toast.LENGTH_SHORT).show();
			loginFail();
			break;
		case eFlag.User_WX_NotSupportApi:
			Toast.makeText(mActivity, "不支持微信登录", Toast.LENGTH_SHORT).show();
			loginFail();
			break;
		case eFlag.User_WX_LoginFail:
			Toast.makeText(mActivity, "微信登录失败", Toast.LENGTH_SHORT).show();
			loginFail();
			break;
		case eFlag.User_QQ_LoginFail:
			Toast.makeText(mActivity, "QQ登录失败", Toast.LENGTH_SHORT).show();
			loginFail();
			break;
		case eFlag.User_LocalTokenInvalid:
			loginFail();
			break;
		default:
			// 显示登陆界面
			loginFail();
			break;
		}
	}
	/**
	 * 登录结果
	 */
	@Override
	public void OnRelationNotify(UserRelationRet relationRet) {
		String result = relationRet.toString();
		Log.d(TAG,result);
		PersonInfo mPersonInfo = (PersonInfo) relationRet.persons.get(0);
		loginSuce(mActivity, openId, mPersonInfo.nickName, payToken);
	}
	/**
	 * 游戏需要在这里增加处理异账号的逻辑
	 */
	@Override
	public void OnWakeupNotify(WakeupRet ret) {
		Log.d("yaya", "called");
		Log.d("yaya", ret.toString() + ":flag:" + ret.flag);
		Log.d("yaya", ret.toString() + "msg:" + ret.msg);
		Log.d("yaya", ret.toString() + "platform:" + ret.platform);
		// //mainActivity.platform = ret.platform;
		//  GAME 游戏需要在这里增加处理异账号的逻辑
		if (eFlag.Succ == ret.flag || eFlag.User_NeedSelectAccount == ret.flag) {
			// eFlag_AccountRefresh代表 刷新微信票据成功
			Log.d("yaya", "login success flag:" + ret.flag);
			// //mainActivity.letUserLogin();
		} else if (eFlag.User_UrlLogin == ret.flag) {
			// 用拉起的账号登录，登录结果在OnLoginNotify()中回调
		} else if (ret.flag == eFlag.User_NeedSelectAccount) {
			// 异账号时，游戏需要弹出提示框让用户选择需要登陆的账号
			Log.d("yaya", "diff account");
			// mainActivity.showDiffLogin();
		} else if (ret.flag == eFlag.User_NeedLogin) {
			// 没有有效的票据，登出游戏让用户重新登录
			Log.d("yaya", "need login");
			// mainActivity.letUserLogout();
		} else {
			Log.d("yaya", "logout");
			// mainActivity.letUserLogout();
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

}
