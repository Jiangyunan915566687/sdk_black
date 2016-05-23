package com.yayawan.impl;

import android.app.Activity;
import android.text.LoginFilter;
import android.util.Log;
import android.widget.Toast;

import com.tencent.ysdk.api.YSDKApi;
import com.tencent.ysdk.framework.common.eFlag;
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
	private String openid;
	private String payToken;
	private String accessToken;
	private int platform;
	private String msg;
	private String pf;
	private String pf_key;

	public YSDKCallback(Activity activity) {
		mActivity = (Activity) activity;
	}

	@Override
	public byte[] OnCrashExtDataNotify() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String OnCrashExtMessageNotify() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void OnLoginNotify(UserLoginRet ret) {
		Log.d(TAG, "called");
		Log.d(TAG, "ret.flag" + ret.flag);
		switch (ret.flag) {
		case eFlag.Succ:
			//mActivity.letUserLogin();
			if (YYWMain.mUser!=null) {
				return;
			}
			platform = YSDKApi.getLoginRecord(ret);
			accessToken = ret.getAccessToken();
			payToken = ret.getPayToken();
			openid = ret.open_id;
			flag = ret.flag;
			msg = ret.msg;
			pf = ret.pf;
			pf_key = ret.pf_key;
			
			break;
		// 游戏逻辑，对登陆失败情况分别进行处理
		case eFlag.User_QQ_NetworkErr:
			Toast.makeText(mActivity, "网络连接失败，请检查网络", 0).show();
			break;
		case eFlag.User_WX_UserCancel:
			Toast.makeText(mActivity, "取消登录", 0).show();
			loginCancle();
			break;
		case eFlag.User_WX_NotInstall:
			Toast.makeText(mActivity, "未安装微信", 0).show();
			loginFail();
			break;
		case eFlag.User_WX_NotSupportApi:
			Toast.makeText(mActivity, "不支持微信登录", 0).show();
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
		PersonInfo mPersonInfo = (PersonInfo) relationRet.persons.get(0);
		loginSuce(mActivity, openid, mPersonInfo.nickName, payToken);
	}
	/**
	 * 游戏需要在这里增加处理异账号的逻辑
	 */
	@Override
	public void OnWakeupNotify(WakeupRet arg0) {
		// TODO Auto-generated method stub

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
