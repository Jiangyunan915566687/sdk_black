package com.yayawan.impl;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Intent;
import android.support.v4.view.PagerAdapter;
import android.widget.LinearLayout;

import com.tencent.msdk.api.MsdkBaseInfo;
import com.tencent.msdk.api.WGPlatform;
import com.tencent.msdk.api.WGQZonePermissions;
import com.tencent.msdk.tools.Logger;
import com.tencent.stat.MtaSDkException;
import com.tencent.stat.StatConfig;
import com.tencent.stat.StatService;
import com.tencent.tauth.Tencent;
import com.tencent.unipay.plugsdk.UnipayPlugAPI;
import com.tencent.unipay.plugsdk.UnipayPlugTools;
import com.umeng.analytics.game.UMGameAgent;
import com.yayawan.proxy.YYWActivityStub;
import com.yayawan.sdk.jfutils.Yayalog;
import com.yayawan.utils.DeviceUtil;
import com.yayawan.utils.Handle;

public class ActivityStubImpl implements YYWActivityStub {

	@Override
	public void applicationInit(Activity paramActivity) {
		// TODO Auto-generated method stub

	}

	private Activity mActivity;
	public static ProgressDialog mAutoLoginWaitingDlg;

	@Override
	public void onCreate(Activity paramActivity) {
		// TODO Auto-generated method stub

		Handle.active_handler(paramActivity);

		mActivity = paramActivity;
		 UMGameAgent.init( paramActivity );
		// UMGameAgent.setDebugMode( true );
		 
		 //mta的key
		 String mt_key=DeviceUtil.getGameInfo(paramActivity, "TA_APPKEY");
		 
		 //应用宝id
		 String aqckey="Aqc"+DeviceUtil.getGameInfo(paramActivity, "qqAppId");
		 StatConfig.setAppKey(paramActivity, aqckey);
		 //StatConfig.setDebugEnable(true);
		 try {
				StatService.startStatService(paramActivity, mt_key, com.tencent.stat.common.StatConstants.VERSION);
			} catch (MtaSDkException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				System.out.println("启动mta失败");
			}
		 
		 
		 StatService.trackCustomEvent(paramActivity, "oncreate", "");
		 
	
			// TODO GAME 游戏需自行检测自身是否重复, 检测到吃重复的Activity则要把自己finish掉
			// 注意：游戏需要加上去重判断finish重复的实例，否则可能发生重复拉起游戏的问题。游戏可自行决定重复的判定。
			/*if (WGPlatform.IsDifferentActivity(paramActivity)) {
				// Logger.d("Warning!Reduplicate game activity was detected.Activity will finish immediately.");
				paramActivity.finish();
				return;
			}
	*/
		// TODO GAME 初始化MSDK
		/***********************************************************
		 * TODO GAME 接入必须要看， baseInfo值因游戏而异，填写请注意以下说明: baseInfo值游戏填写错误将导致
		 * QQ、微信的分享，登录失败 ，切记 ！！！ 只接单一平台的游戏请勿随意填写其余平台的信息，否则会导致公告获取失败 offerId
		 * 为必填，一般为手QAppId
		 ***********************************************************/
		MsdkBaseInfo baseInfo = new MsdkBaseInfo();
		//baseInfo.qqAppId = "1104749520";
		
		baseInfo.qqAppId = DeviceUtil.getGameInfo(paramActivity, "qqAppId");
		
		baseInfo.qqAppKey = DeviceUtil.getGameInfo(paramActivity, "qqAppKey");
		baseInfo.wxAppId = DeviceUtil.getGameInfo(paramActivity, "wxAppId");
		baseInfo.wxAppKey = DeviceUtil.getGameInfo(paramActivity, "wxAppKey");
		// 订阅型测试用offerId
		baseInfo.offerId =DeviceUtil.getGameInfo(paramActivity, "qqAppId");

		//System.out.println("qqAppId:"+baseInfo.qqAppId+"  qqAppKey:"+baseInfo.qqAppKey+"  wxAppId:"+baseInfo.wxAppId+"  wxAppKey:"+baseInfo.wxAppKey);
		// 注意：传入Initialized的activity即this，在游戏运行期间不能被销毁，否则会产生Crash
		WGPlatform.Initialized(paramActivity, baseInfo);
		
		WGPlatform.handleCallback(paramActivity.getIntent());
		
		// 设置拉起QQ时候需要用户授权的项
		WGPlatform.WGSetPermission(WGQZonePermissions.eOPEN_ALL);

		// 全局回调类，游戏自行实现
		WGPlatform.WGSetObserver(new MsdkCallback(paramActivity));

		
		//String duanye_channel=DeviceUtil.getGameInfo(paramActivity, "duanye_channel");
		
	}

	@Override
	public void onStop(Activity paramActivity) {
		// TODO Auto-generated method stub
		 WGPlatform.onStop();
	}

	@Override
	public void onResume(Activity paramActivity) {
		// TODO Auto-generated method stub
		WGPlatform.onResume();
		UMGameAgent.onResume(paramActivity);
		StatService.onResume(paramActivity);
	}

	@Override
	public void onPause(Activity paramActivity) {
		// TODO Auto-generated method stub
		//Utilsjf.stopDialog();
		 UMGameAgent.onPause(paramActivity);
		WGPlatform.onPause();
		StatService.onPause(paramActivity);
	}

	@Override
	public void onRestart(Activity paramActivity) {
		// TODO Auto-generated method stub
		WGPlatform.onRestart();
		
	}

	@Override
	public void onDestroy(Activity paramActivity) {
		WGPlatform.onDestory(paramActivity);
	}

	@Override
	public void applicationDestroy(Activity paramActivity) {
		// TODO Auto-generated method stub

	}

	@Override
	public void onActivityResult(Activity paramActivity, int paramInt1,
			int paramInt2, Intent paramIntent) {
		// TODO Auto-generated method stub
		WGPlatform.onActivityResult(paramInt1, paramInt2, paramIntent);
	}

	@Override
	public void onNewIntent(Intent paramIntent) {
		
		// TODO Auto-generated method stub
		//Logger.d("onNewIntent");
		System.out.println("onNewIntent");
		// TODO GAME 处理游戏被拉起的情况
		// launchActivity的onCreat()和onNewIntent()中必须调用
		// WGPlatform.handleCallback()。否则会造成微信登录无回调
		if (WGPlatform.wakeUpFromHall(paramIntent)) {
			Logger.d("LoginPlatform is Hall");
			Logger.d(paramIntent);
			WGPlatform.handleCallback(paramIntent);
		} else {
			Logger.d("LoginPlatform is not Hall");
			Logger.d(paramIntent);
			WGPlatform.handleCallback(paramIntent);
		}
		
	}

	@Override
	public void initSdk(Activity arg0) {
		// TODO Auto-generated method stub
		
	}
	//友盟。。支付成功后调用
	public void payumenSucceed(String money){
		Yayalog.loger("Sdkqqumeng1：payumenSucceed");
		UMGameAgent.pay(Integer.parseInt(money), 10, 1);
	};

}
