package com.yayawan.impl;

import android.app.Activity;
import android.util.Log;
import android.widget.Toast;

import com.tencent.ysdk.api.YSDKApi;
import com.tencent.ysdk.framework.common.eFlag;
import com.tencent.ysdk.framework.common.ePlatform;
import com.tencent.ysdk.module.bugly.BuglyListener;
import com.tencent.ysdk.module.pay.PayListener;
import com.tencent.ysdk.module.pay.PayRet;
import com.tencent.ysdk.module.user.PersonInfo;
import com.tencent.ysdk.module.user.UserListener;
import com.tencent.ysdk.module.user.UserLoginRet;
import com.tencent.ysdk.module.user.UserRelationRet;
import com.tencent.ysdk.module.user.UserToken;
import com.tencent.ysdk.module.user.WakeupRet;
import com.yayawan.domain.YYWUser;
import com.yayawan.main.YYWMain;
import com.yayawan.sdk.utils.ToastUtil;
import com.yayawan.utils.DeviceUtil;
import com.yayawan.utils.Handle;
import com.yayawan.utils.JSONUtil;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

/**
 * TODO GAME 游戏需要根据自己的逻辑实现自己的YSDKCallback对象。
 * YSDK通过UserListener抽象类中的方法将授权或查询结果回调给游戏。 游戏根据回调结果调整UI等。只有设置回调，游戏才能收到YSDK的响应。
 * 这里是Java层回调(设置了Java层回调会优先调用Java层回调, 如果要使用C++层回调则不能设置Java层回调)
 */
public class YSDKCallback implements UserListener, BuglyListener {
	public static Activity mainActivity;
	private String openId;
	private String pf;
	private String pfKey;
	private String token;
	private String payToken;

	public YSDKCallback(Activity activity) {
		mainActivity = activity;
	}

	public void OnLoginNotify(UserLoginRet ret) {

		Logutils.sys("OnLoginNotify:ret"+ret.toString());
		
		
		
		switch (ret.flag) {
		
		
		case eFlag.Succ:
			
			
			if (YYWMain.mUser!=null) {
				return;
			}
			
			UserLoginRet ret1 = new UserLoginRet();
			int platform = YSDKApi.getLoginRecord(ret1);
			String accessToken = ret1.getAccessToken();
			Logutils.sys("scccessstoken:"+accessToken);
			
			System.out.println("OnLoginNotify:登录成功");
			
			Logutils.sys("2OnLoginNotify:ret"+ret.toString());
			openId = ret1.open_id;
			pf = ret1.pf;
			pfKey = ret1.pf_key;
			//token = ret.getAccessToken();
			payToken = ret1.getPayToken();
			
			// 支付需要的参数
			
			// 从手Q登录态或微信登录态中获取的openid的值
			Myconstants.mpayinfo.openId = openId;

			// 从手Q登录态或微信登录态中获取的access_token 的值
			Myconstants.mpayinfo.openKey = accessToken;
			
			
			// 从手Q登录态中获取的pay_token的值; 微信登录时特别注意该参数传空。
			Myconstants.mpayinfo.qq_paytoken = ret.getPayToken();

			// 登录获取的pf值
			Myconstants.mpayinfo.pf = pf;

			// 登录获取的pfkey值
			Myconstants.mpayinfo.pfKey = pfKey;
			Myconstants.mpayinfo.sessionId = openId;
			if (Myconstants.platform.equals("qq")) {
				YSDKApi.queryUserInfo(ePlatform.QQ);
			} else {
				YSDKApi.queryUserInfo(ePlatform.WX);
			}

			//
			break;
		// 游戏逻辑，对登陆失败情况分别进行处理
		case eFlag.User_QQ_NetworkErr:
			Toast.makeText(mainActivity, "网络连接失败，请检查网络", 0).show();
			break;
		case eFlag.User_WX_UserCancel:
			Toast.makeText(mainActivity, "取消登录", 0).show();
			loginFail();
			break;
		case eFlag.User_WX_NotInstall:
			Toast.makeText(mainActivity, "未安装微信", 0).show();
			loginFail();
		case eFlag.User_WX_NotSupportApi:
			Toast.makeText(mainActivity, "不支持微信登录", 0).show();
			loginFail();
			break;
		case eFlag.User_WX_LoginFail:
			Toast.makeText(mainActivity, "微信登录失败", 0).show();
			loginFail();
			break;
		case eFlag.User_QQ_LoginFail:
			Toast.makeText(mainActivity, "手q登录失败", 0).show();
			loginFail();
			break;
		case eFlag.User_LocalTokenInvalid:
			// Toast.makeText(//mainActivity.getApplicationContext(),
			// "login error : ret=" + ret.flag + " msg=" + ret.msg,
			// Toast.LENGTH_LONG).show();
			// Log.d("yaya",ret.toString());
			// 显示登陆界面
			// //mainActivity.letUserLogout();
			loginFail();
			break;
		default:
			// 显示登陆界面
			loginFail();
			// //mainActivity.letUserLogout();
			break;
		}
	}

	public void OnWakeupNotify(WakeupRet ret) {
		Log.d("yaya", "called");
		Log.d("yaya", ret.toString() + ":flag:" + ret.flag);
		Log.d("yaya", ret.toString() + "msg:" + ret.msg);
		Log.d("yaya", ret.toString() + "platform:" + ret.platform);
		// //mainActivity.platform = ret.platform;
		// TODO GAME 游戏需要在这里增加处理异账号的逻辑
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

	@Override
	public void OnRelationNotify(UserRelationRet relationRet) {
		String result = relationRet.toString();
		// relationRet.persons
		System.out.println("OnRelationNotify:登录成功");
		PersonInfo mPersonInfo = (PersonInfo) relationRet.persons.get(0);
		Log.d("yaya登陆成功等到的结果",
				"OnRelationNotify" + relationRet.persons.toString());
		
		System.out.println("得到的openKey"+Myconstants.mpayinfo.openKey);
		
		loginSuce(mainActivity, openId, mPersonInfo.nickName, payToken);

		// 发送结果到结果展示界面
		// mainActivity.sendResult(result);
	}

	@Override
	public String OnCrashExtMessageNotify() {
		// 此处游戏补充crash时上报的额外信息
		Log.d("yaya",
				String.format(Locale.CHINA, "OnCrashExtMessageNotify called"));
		Date nowTime = new Date();
		SimpleDateFormat time = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
		return "new Upload extra crashing message for bugly on "
				+ time.format(nowTime);
	}

	@Override
	public byte[] OnCrashExtDataNotify() {
		// TODO Auto-generated method stub
		return null;
	}

	/**
	 * 登录成功调用
	 * 
	 * @param mactivity
	 * @param uid
	 *            唯一id
	 * @param username
	 *            用户名..如果用户名为空.则拿uid作为用户名
	 * @param session
	 *            token验证码
	 */
	public static void loginSuce(Activity mactivity, String uid,
			String username, String session) {

		YYWMain.mUser = new YYWUser();

		YYWMain.mUser.uid = DeviceUtil.getUnionid(mactivity) + "-" + uid + "";
		;
		if (username != null) {
			YYWMain.mUser.userName = DeviceUtil.getUnionid(mactivity) + "-"
					+ username + "";
		} else {
			YYWMain.mUser.userName = DeviceUtil.getUnionid(mactivity) + "-"
					+ uid + "";
		}

		// YYWMain.mUser.nick = data.getNickName();
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

	/*
	 * 支付成功
	 */
	public static void paySuce() {
		// 支付成功
		if (YYWMain.mPayCallBack != null) {
			YYWMain.mPayCallBack.onPaySuccess(YYWMain.mUser, YYWMain.mOrder,
					"success");
		}
	}

	public static void payFail() {
		// 支付成功
		if (YYWMain.mPayCallBack != null) {
			YYWMain.mPayCallBack.onPayFailed(null, null);
		}
	}

	public static void onActivityResult(Activity paramActivity) {
		// TODO Auto-generated method stub

	}

}
