package com.yayawan.impl;

import android.app.Activity;
import android.content.Intent;

import com.downjoy.Downjoy;
import com.downjoy.InitListener;
import com.downjoy.LogoutListener;
import com.downjoy.util.Util;
import com.yayawan.main.YYWMain;
import com.yayawan.proxy.YYWActivityStub;
import com.yayawan.utils.DeviceUtil;
import com.yayawan.utils.Handle;

public class ActivityStubImpl implements YYWActivityStub {
	// 初始化当乐游戏中心
	static String merchantId = "1072"; // 当乐分配的MERCHANT_ID

	static String appId = "2719"; // 当乐分配的APP_ID

	static String serverSeqNum = "1"; // 进入CP后台，添加服务器选项中进行填写，其中服务器序号即SERVER_SEQ_NUM，由CP自己指定，一般从1开始即可，
										// 不同服务器序列号可使用不同计费通知地址

	static String appKey = "pXEXARxZ"; // 当乐分配的 APP_KEY

	private Downjoy downjoy;

	@Override
	public void applicationInit(Activity paramActivity) {
		// TODO Auto-generated method stub

	}

	@Override
	public void onCreate(final Activity paramActivity) {
		// TODO Auto-generated method stub
		merchantId = DeviceUtil.getGameInfo(paramActivity, "MERCHANT_ID");
		appId = DeviceUtil.getGameInfo(paramActivity, "APP_ID");
		serverSeqNum = DeviceUtil.getGameInfo(paramActivity, "SERVER_SEQ_NUM");
		appKey = DeviceUtil.getGameInfo(paramActivity, "APP_KEY");

		  // 不同服务器序列号可使用不同计费通知地址
	/*   merchantId = "101"; // 当乐分配的MERCHANT_ID
	     appId = "195"; // 当乐分配的APP_ID
	    appKey = "j5VEvxhc"; // 当乐分配的 APP_KEY
	     serverSeqNum = "1"; // 此参数自定义，需登录CP后台配置支付通知回调，其中的服务器序号就是serverSeqNum

		*/
		downjoy = Downjoy.getInstance(paramActivity, merchantId, appId,
				serverSeqNum, appKey, new InitListener() {

					@Override
					public void onInitComplete() {
						// TODO Auto-generated method stub
						Myconstant.dangle = downjoy;
						downjoy.showDownjoyIconAfterLogined(true);
						downjoy.setInitLocation(Downjoy.LOCATION_RIGHT_CENTER_VERTICAL);
						downjoy.setLogoutListener(new

                                LogoutListener() {

                                    @Override
                                    public void onLogoutSuccess() {
                                     System.out.println("tuichu");
                                    	YYWMain.mUserCallBack.onLogout(paramActivity);
                                   
                                    }

                                    @Override
                                    public void onLogoutError(String msg) {
                                       // Util.alert(DemoActivity.this, "注销失败：" + msg);
                                    	System.out.println("tuichuerror");
                                    }
                                }

);
					}
				});
		Handle.active_handler(paramActivity);
	}

	@Override
	public void onStop(Activity paramActivity) {
		// TODO Auto-generated method stub

	}

	@Override
	public void onResume(Activity paramActivity) {
		if (Myconstant.dangle != null) {
			Myconstant.dangle.resume(paramActivity);
		}
	}

	@Override
	public void onPause(Activity paramActivity) {
		if (Myconstant.dangle != null) {
			Myconstant.dangle.pause();
		}
	}

	@Override
	public void onRestart(Activity paramActivity) {
		// TODO Auto-generated method stub

	}

	@Override
	public void onDestroy(Activity paramActivity) {
		if (Myconstant.dangle != null) {
			Myconstant.dangle.destroy();
			Myconstant.dangle = null;
		}
	}

	@Override
	public void applicationDestroy(Activity paramActivity) {
		// TODO Auto-generated method stub

	}

	@Override
	public void onActivityResult(Activity paramActivity, int paramInt1,
			int paramInt2, Intent paramIntent) {
		// TODO Auto-generated method stub

	}

	@Override
	public void onNewIntent(Intent paramIntent) {
		// TODO Auto-generated method stub

	}

	@Override
	public void initSdk(Activity arg0) {
		// TODO Auto-generated method stub
		
	}
	
	

}
