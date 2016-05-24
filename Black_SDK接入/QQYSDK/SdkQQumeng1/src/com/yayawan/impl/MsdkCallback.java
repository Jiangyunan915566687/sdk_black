package com.yayawan.impl;

import android.app.Activity;
import android.content.Intent;
import android.os.Handler;
import android.os.Looper;
import android.support.v4.content.LocalBroadcastManager;
import android.widget.Toast;

import com.tencent.mm.sdk.constants.ConstantsAPI.Token;
import com.tencent.msdk.WeGame;
import com.tencent.msdk.api.LoginRet;
import com.tencent.msdk.api.ShareRet;
import com.tencent.msdk.api.TokenRet;
import com.tencent.msdk.api.WGPlatform;
import com.tencent.msdk.api.WGPlatformObserver;
import com.tencent.msdk.api.WakeupRet;
import com.tencent.msdk.consts.CallbackFlag;
import com.tencent.msdk.consts.TokenType;
import com.tencent.msdk.remote.api.RelationRet;
import com.tencent.msdk.tools.Logger;
import com.yayawan.domain.YYWUser;
import com.yayawan.main.YYWMain;
import com.yayawan.main.YaYaWan;
import com.yayawan.proxy.GameProxy;
import com.yayawan.utils.DeviceUtil;
import com.yayawan.utils.Handle;
import com.yayawan.utils.JSONUtil;

/**
 * TODO GAME 游戏需要根据自己的逻辑实现自己的MsdkCallback对象。
 * MSDK通过WGPlatformObserver抽象类中的方法将授权、分享或查询结果回调给游戏。
 * 游戏根据回调结果调整UI等。只有设置回调，游戏才能收到MSDK的响应。 这里是Java层回调(设置了Java层回调会优先调用Java层回调,
 * 如果要使用C++层回调则不能设置Java层回调)
 */
public class MsdkCallback implements WGPlatformObserver {
	public static Activity mainActivity;
	private static LocalBroadcastManager lbm;
	public static final String LOCAL_ACTION = "com.example.wegame";

	MsdkCallback(Activity activity) {
		mainActivity = activity;

	}

	public void OnLoginNotify(LoginRet ret) {
		//Logger.d("called");
		//Logger.d("ret.flag" + ret.flag);
		
		Utilsjf.stopDialog();

		switch (ret.flag) {
		case CallbackFlag.eFlag_Succ:
			//System.out.println("登录成功");
			String openId = ret.open_id;
			String pf = ret.pf;
			String pfKey = ret.pf_key;
			// MainActivity.platform = ret.platform;
			String wxAccessToken = "";
			long wxAccessTokenExpire = 0;
			String wxRefreshToken = "";
			long wxRefreshTokenExpire = 0;
			for (TokenRet tr : ret.token) {
				switch (tr.type) {
				case TokenType.eToken_WX_Access:
					wxAccessToken = tr.value;
					wxAccessTokenExpire = tr.expiration;
					break;
				case TokenType.eToken_WX_Refresh:
					wxRefreshToken = tr.value;
					wxRefreshTokenExpire = tr.expiration;
					break;
				default:
					break;
				}
			}

			Myconstants.mpayinfo = new Payinfo();
			Myconstants.mpayinfo.openId = openId;
			Myconstants.mpayinfo.pf = pf;
			Myconstants.mpayinfo.pfKey = pfKey;
			System.out.println("登录成功");
			Myconstants.mpayinfo.sessionType = "openkey";
			Myconstants.mpayinfo.sessionId = openId;
			Myconstants.mpayinfo.openKey = ret.getAccessToken();
			// ret.token.get(0).value

			for (int i = 0; i < ret.token.size(); i++) {
				if (ret.token.get(i).type == TokenType.eToken_QQ_Pay) {
					Myconstants.mpayinfo.qq_paytoken = ret.token.get(i).value;
				}
				if (ret.token.get(i).type == TokenType.eToken_WX_Access) {
					Myconstants.mpayinfo.wx_paytoken = ret.token.get(i).value;
				}
			}

			YYWMain.mUser = new YYWUser();
			YYWMain.mUser.uid = DeviceUtil.getUnionid(mainActivity) + "-"
					+ ret.open_id + "";

			// yywUser.token = tokenVerifyModel.getAccess_token();
			YYWMain.mUser.token = JSONUtil.formatToken(mainActivity,
					ret.getAccessToken(), YYWMain.mUser.userName);

			if (ret.platform == WeGame.QQPLATID) {
				WGPlatform.WGQueryQQMyInfo();
				Myconstants.mpayinfo.opentype = "qq";
				System.out.println("我保存了opentype为qq");
			} else if (ret.platform == WeGame.WXPLATID) {
				WGPlatform.WGQueryWXMyInfo();
				Myconstants.mpayinfo.opentype = "wx";
				System.out.println("我保存了opentype为wx");
			}

			break;
		// 游戏逻辑，对登陆失败情况分别进行处理
		case CallbackFlag.eFlag_WX_UserCancel:

			System.out.println("登录取消");

			if (Myconstants.ISFASTLOGIN && Myconstants.mloImpl != null) {
				Myconstants.mloImpl.logIn(mainActivity);
				Myconstants.ISFASTLOGIN = false;
			} else {
				if (YYWMain.mUserCallBack != null) {
					YYWMain.mUserCallBack.onLoginFailed(null, null);
					
				}
				
			}
			break;

		case CallbackFlag.eFlag_WX_NotInstall:

			System.out.println("没安装");
			mainActivity.runOnUiThread(new Runnable() {
				
				@Override
				public void run() {
					// TODO Auto-generated method stub
					Toast.makeText(mainActivity, "未安装微信", Toast.LENGTH_LONG).show();
				}
			});
			
				if (YYWMain.mUserCallBack != null) {
					YYWMain.mUserCallBack.onLoginFailed(null, null);
					
				}
			
			break;

		case CallbackFlag.eFlag_WX_NotSupportApi:

			System.out.println("不支持api");

			
				if (YYWMain.mUserCallBack != null) {
					YYWMain.mUserCallBack.onLoginFailed(null, null);
					
				}
			
			break;
		case CallbackFlag.eFlag_WX_LoginFail:
			System.out.println("登录失败");

			if (Myconstants.ISFASTLOGIN && Myconstants.mloImpl != null) {
				Myconstants.mloImpl.logIn(mainActivity);
				Myconstants.ISFASTLOGIN = false;
			} else {
				if (YYWMain.mUserCallBack != null) {
					YYWMain.mUserCallBack.onLoginFailed(null, null);
					
				}
			}
			break;
		case CallbackFlag.eFlag_Local_Invalid:
			System.out.println("从未登录过");
			if (Myconstants.ISFASTLOGIN && Myconstants.mloImpl != null) {
				Myconstants.mloImpl.logIn(mainActivity);
				Myconstants.ISFASTLOGIN = false;
			} else {
				if (YYWMain.mUserCallBack != null) {
					YYWMain.mUserCallBack.onLoginFailed(null, null);
					
				}
			}
			break;
		default:
			System.out.println("登录失败:"+ret.flag);
			if (YYWMain.mUserCallBack != null) {
				YYWMain.mUserCallBack.onLoginFailed(null, null);
				
			}

			break;
		}
	}

	@Override
	public void OnRelationNotify(RelationRet relationRet) {
		String result = relationRet.toString();
		Logger.d("OnRelationNotify" + result);
		System.out
				.println("得到perso的size" + relationRet.persons.get(0).nickName);
		// 发送结果到结果展示界面
		// System.out.println("你懂得" + relationRet.persons.get(0).nickName);

		if (YYWMain.mUser != null) {

			YYWMain.mUser.userName = DeviceUtil.getUnionid(mainActivity) + "-"
					+ relationRet.persons.get(0).nickName + "";

			// yywUser.token = tokenVerifyModel.getAccess_token();

			YYWMain.mUserCallBack.onLoginSuccess(YYWMain.mUser, "success");
			Handle.login_handler(mainActivity, YYWMain.mUser.uid,
					YYWMain.mUser.userName);
			System.out.println("登录传的uid" + YYWMain.mUser.uid);
		}

		if (Myconstants.mpayinfo.opentype.equals("wx")) {
			Myconstants.mpayinfo.openId = relationRet.persons.get(0).openId;
		} else {

		}
	}

	public void OnWakeupNotify(WakeupRet ret) {
		Logger.d("called");
		Logger.d(ret.toString() + ":flag:" + ret.flag);
		Logger.d(ret.toString() + "desc:" + ret.desc);
		Logger.d(ret.toString() + "platform:" + ret.platform);

		// MainActivity.platform = ret.platform;
		// TODO GAME 游戏需要在这里增加处理异账号的逻辑
		if (CallbackFlag.eFlag_Succ == ret.flag
				|| CallbackFlag.eFlag_AccountRefresh == ret.flag) {
			// eFlag_AccountRefresh代表 刷新微信票据成功
			Logger.d("login success flag:" + ret.flag);
			// mainActivity.letUserLogin();
		} else if (CallbackFlag.eFlag_UrlLogin == ret.flag) {
			// 用拉起的账号登录，登录结果在OnLoginNotify()中回调
		} else if (ret.flag == CallbackFlag.eFlag_NeedSelectAccount) {
			// 异账号时，游戏需要弹出提示框让用户选择需要登陆的账号
			Logger.d("diff account");
			// mainActivity.showDiffLogin();
		} else if (ret.flag == CallbackFlag.eFlag_NeedLogin) {
			// 没有有效的票据，登出游戏让用户重新登录
			Logger.d("need login");
			// mainActivity.letUserLogout();
		} else {
			Logger.d("logout");
			// mainActivity.letUserLogout();
		}
	}
}
