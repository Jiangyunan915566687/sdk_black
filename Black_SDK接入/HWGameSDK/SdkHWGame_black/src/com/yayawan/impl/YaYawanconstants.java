package com.yayawan.impl;

import java.util.HashMap;
import java.util.Map;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.util.Log;
import android.widget.Toast;

import com.android.huawei.pay.plugin.IHuaweiPay;
import com.android.huawei.pay.plugin.IPayHandler;
import com.android.huawei.pay.plugin.MobileSecurePayHelper;
import com.android.huawei.pay.plugin.PayParameters;
import com.android.huawei.pay.util.HuaweiPayUtil;
import com.android.huawei.pay.util.Rsa;
import com.huawei.gamebox.buoy.sdk.impl.BuoyOpenSDK;
import com.huawei.gamebox.buoy.sdk.inter.UserInfo;
import com.huawei.gamebox.buoy.sdk.util.RoleInfo;
import com.huawei.hwid.openapi.OpenHwID;
import com.huawei.opensdk.OpenSDK;
import com.huawei.opensdk.RetCode;
import com.yayawan.callback.YYWExitCallback;
import com.yayawan.domain.YYWUser;
import com.yayawan.main.YYWMain;
import com.yayawan.sdk.callback.YayaWanCallback;
import com.yayawan.sdk.main.YayaWan;
import com.yayawan.utils.DeviceUtil;
import com.yayawan.utils.Handle;
import com.yayawan.utils.JSONUtil;

/**
 * 版本号 ： SDK_v7.0.2.301
 * @author black
 *
 */
public class YaYawanconstants {

	private static HashMap<String, String> mGoodsid;
	private static final String TAG = "black";
	private static Activity mActivity;
	static int retCode;

	/**
	 * 初始化sdk
	 */
	public static void inintsdk(final Activity mactivity) {
		mActivity = mactivity;
		Yayalog.loger("sdk初始化");
		Log.d(TAG, "sdk初始化 - inintsdk");
		String appID = DeviceUtil.getGameInfo(mactivity, "APP_ID");
		String payID = DeviceUtil.getGameInfo(mactivity, "PAY_ID");
		String privateKey = DeviceUtil.getGameInfo(mactivity, "privateKey");
		// 浮标初始化
        retCode = OpenSDK.init(mactivity, appID, payID, privateKey, 
        		new UserInfo() {
			
			@Override
			public void dealUserInfo(HashMap<String, String> userInfo) {
				if(null == userInfo){
					Toast.makeText(mactivity, "用户信息不能为null", Toast.LENGTH_SHORT).show();
					return;
				}
				Log.d(TAG, userInfo.toString());
				int loginStatus = Integer.parseInt(userInfo.get("loginStatus"));
				switch (loginStatus) {
				case 0:	//登录取消
					loginCancle();
					break;
				case 1:	//登录成功
					String uid = userInfo.get("userID");
					String token = userInfo.get("accesstoken");
					loginSuce(mactivity, uid, uid, token);
					mactivity.runOnUiThread(new Runnable() {
						//UI线程中显示悬浮窗口
						@Override
						public void run() {
							BuoyOpenSDK.getIntance().showSmallWindow(mactivity);
						}
					});
					break;
				case 2:	//使用游戏账号登录，用户点击“使用已有游戏账号登录”的返回值
					loginCancle();//取消使用华为帐号登录
					break;
				case 3:	//SDK内部异常
					Toast.makeText(mactivity, "游戏异常,请重新进入游戏", Toast.LENGTH_LONG).show();
					break;
				default:
					break;
				}
				
			}
		});
	}

	/**
	 * 闪屏
	 */
	public static void logoAnim(final Activity mactivity) {
		Yayalog.loger("sdk闪屏");
		Log.d(TAG, "sdk闪屏 - logoAnim");

	}

	/**
	 * 登录
	 */
	public static void login(final Activity mactivity) {
		Yayalog.loger("sdk登录");
		Log.d(TAG, "sdk登录 - login");
		if (RetCode.SUCCESS == retCode) {
			OpenSDK.start();
		}
	}

	/**
	 * 支付
	 * @param mactivity
	 */
	public static void pay(Activity mactivity, String morderid,String private_keyString) {
		Yayalog.loger("sdk支付");
		Log.d(TAG, "sdk支付 - pay");
		//Log.d(TAG, private_keyString);
		Map<String, Object> payInfo = new HashMap<String, Object>();
        // 必填字段，不能为null或者""
        payInfo.put(PayParameters.amount, Long.toString(YYWMain.mOrder.money/100)+".00");
        // 必填字段，不能为null或者""
        payInfo.put(PayParameters.productName, YYWMain.mOrder.goods);
        // 必填字段，不能为null或者""
        payInfo.put(PayParameters.productDesc, YYWMain.mOrder.goods);
        payInfo.put(PayParameters.requestId, morderid);
        // 必填字段，不能为null或者""
        // 必填字段，不能为null或者""，请填写自己的公司名称
        payInfo.put(PayParameters.userName, "" + DeviceUtil.getGameInfo(mactivity, "companyname"));
        // 必填字段，不能为null或者""
        payInfo.put(PayParameters.applicationID, DeviceUtil.getGameInfo(mactivity, "APP_ID"));
        // 必填字段，不能为null或者""
        payInfo.put(PayParameters.userID, DeviceUtil.getGameInfo(mactivity, "PAY_ID"));
        // 必填字段，不能为null或者""
        payInfo.put(PayParameters.sign, getSign(mactivity,morderid,private_keyString));
        payInfo.put(PayParameters.notifyUrl, null);
        // 必填字段，不能为null或者""，此处写死X6
        payInfo.put(PayParameters.serviceCatalog, "X6");
        // 设置支付界面横竖屏，默认竖屏
        payInfo.put("screentOrient", DeviceUtil.isLandscape(mactivity) == true ? 2 : 1);
        // 调试期可打开日志，发布时注释掉
        //payInfo.put("showLog", true);
		
		IHuaweiPay payHelper = new MobileSecurePayHelper(); 
		/** * 开始支付 */ 
		payHelper.startPay(mactivity, payInfo, payHandler);
	}
	static IPayHandler payHandler = new IPayHandler() {
		
		@Override
		public void onFinish(Map<String, String> payResp) {
			int returnCode = Integer.parseInt(payResp.get(PayParameters.returnCode));
			switch (returnCode) {
			case 0:		//支付成功
				if ("success".equals(payResp.get(PayParameters.errMsg))){
					paySuce();
				}else{
					payFail();
				}
				break;
			case -1:	//支付失败
				payFail();
				break;
			case 30000:	//用户中途取消支付
				payCancel();
				break;
			case 30002:	//支付结果查询超时（建议此时客户端去服务器查询订单是否支付成功）
				
				break;
			case 30008:	//登录帐号失败
				mActivity.runOnUiThread(new Runnable() {
					
					@Override
					public void run() {
						Toast.makeText(mActivity, "帐号失效,重新登录",Toast.LENGTH_LONG).show();
						logout();
					}
				});
				break;
			case 30099:	//系统错误
				mActivity.runOnUiThread(new Runnable() {
					
					@Override
					public void run() {
						Toast.makeText(mActivity, "系统错误,重新操作",Toast.LENGTH_LONG).show();
					}
				});
				break;

			default:
				payFail();
				break;
			}
		}
	};
	public static String getSign(Activity mactivity, String morderid,String private_keyString){
		Map<String, String> params = new HashMap<String, String>();
        // 必填字段，不能为null或者""，请填写从联盟获取的支付ID
        params.put(PayParameters.userID, DeviceUtil.getGameInfo(mactivity, "PAY_ID"));
        // 必填字段，不能为null或者""，请填写从联盟获取的应用ID
        params.put(PayParameters.applicationID, DeviceUtil.getGameInfo(mactivity, "APP_ID"));
        // 必填字段，不能为null或者""，单位是元，精确到小数点后两位，如1.00
        params.put(PayParameters.amount, Long.toString(YYWMain.mOrder.money/100)+".00");
        // 必填字段，不能为null或者""，道具名称
        params.put(PayParameters.productName, YYWMain.mOrder.goods);
        // 必填字段，不能为null或者""，道具描述
        params.put(PayParameters.productDesc, YYWMain.mOrder.goods);
        // 必填字段，不能为null或者""，最长30字节，不能重复，否则订单会失败
        params.put(PayParameters.requestId, morderid);

        String noSign = HuaweiPayUtil.getSignData(params);
        //DebugConfig.d("startPay", "签名参数noSign：" + noSign);
        //Yayalog.loger("private_keyString"+private_keyString);
        //CP必须把参数传递到服务端，在服务端进行签名，然后把sign传递下来使用；服务端签名的代码和客户端一致
        //String sign = Rsa.sign(noSign,null);
		return Rsa.sign(noSign,private_keyString);
	}
	/**
	 * 退出游戏
	 * 
	 * @param paramActivity
	 * @param callback
	 */
	public static void exit(Activity paramActivity, YYWExitCallback callback) {
		Yayalog.loger("sdk退出");
		Log.d(TAG, "sdk退出 - exit");
		if (DeviceUtil.getGameInfo(paramActivity, "need_yayaexit").endsWith(
				"yes")) {
			exitgameFromYyw(paramActivity, callback);
		} else {
			// 若SDK有提供退出接口,请在此处调用
			paramActivity.finish();
			callback.onExit();
			System.exit(0);
		}
	}

	/**
	 * 设置角色信息 一般在登录成功开始获取信息的时候，可用于上传用户帐号、游戏角色的信息
	 * 
	 * @param paramActivity
	 */
	public static void setRoleData(Activity paramActivity) {
		Log.d(TAG, "设置角色信息 - setRoleData");
		HashMap<String, String> role = new HashMap<String, String>();
		/**
		 * 将用户的等级等信息保存起来，必须的参数为RoleInfo.GAME_RANK(等级)/RoleInfo.GAME_ROLE(角色名称)
		 * /RoleInfo.GAME_AREA(角色所属区)/RoleInfo.GAME_SOCIATY(角色所属公会名称)
		 * 全部使用String类型存放
		 */
		role.put(RoleInfo.GAME_RANK, YYWMain.mRole.getRoleLevel());
		role.put(RoleInfo.GAME_ROLE, YYWMain.mRole.getRoleName());
		role.put(RoleInfo.GAME_AREA, YYWMain.mRole.getZoneName());
		role.put(RoleInfo.GAME_SOCIATY, YYWMain.mRole.getZoneName());
		// 存储用户当前的角色信息
		BuoyOpenSDK.getIntance().saveRoleInfo(role, paramActivity);
		// 获得已存储的用户角色信息
		// BuoyOpenSDK.getIntance().getRoleInfo(paramActivity);
	}

	/**
	 * 设置角色数据 创建角色，角色升级调用的方法
	 * 
	 * @param activity
	 *            游戏上下文 ext 附加内容 roleCTime 角色创建时间 zoneName 游戏区服名称
	 * @param zoneId
	 *            游戏区服ID roleLevel 角色等级 roleName 角色名称 roleId 角色ID
	 */
	public static void setData(Activity activity, String roleId,
			String roleName, String roleLevel, String zoneId, String zoneName,
			String roleCTime, String ext) {
		Log.d(TAG, "设置角色数据 - setData");
		if (YYWMain.mRole != null) {

		}
	}

	/**
	 * 若接入要求重写activity的生命周期,在此处接入
	 * 
	 * @param paramActivity
	 */
	public static void onPause(Activity paramActivity) {
		// 在界面暂停的时候，隐藏浮标，和onResume配合使用
		// 优先隐藏浮标展开的窗口
		BuoyOpenSDK.getIntance().hideBigWindow(paramActivity);
		// 隐藏浮标
		BuoyOpenSDK.getIntance().hideSmallWindow(paramActivity);
	}

	public static void onResume(Activity paramActivity) {
		// 在界面恢复的时候又显示浮标，和onPause配合使用
		// 显示浮标
		BuoyOpenSDK.getIntance().showSmallWindow(paramActivity);
	}

	public static void onRestart(Activity paramActivity) {

	}

	public static void onStop(Activity paramActivity) {

	}

	public static void onDestroy(Activity paramActivity) {
		// 清空帐号资源
		OpenHwID.releaseResouce();
		// 在退出的时候销毁浮标
		BuoyOpenSDK.getIntance().destroy(paramActivity);
	}

	/**
	 * 登录成功调用
	 * 
	 * @param mactivity
	 * @param uid
	 *            唯一识别id
	 * @param username
	 *            用户名(昵称) 如果用户名为空.则拿uid作为用户名
	 * @param session
	 *            token验证码 ticket用户令牌 等类似的用户识别码
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
	 * 
	 * @param mactivity
	 * @param uid
	 *            唯一id
	 * @param username
	 *            用户名(昵称)如果用户名为空.则拿uid作为用户名
	 * @param session
	 *            token验证码 或 ticket 用户令牌
	 */
	public static void loginSwitch(String uid, String username, String session) {
		// 切换登录第一步 :退出原有的帐号
		logout();
		// 第二步:再次使用新的登录信息进行登录操作
		loginSuce(mActivity, uid, username, session);
	}

	/**
	 * 退出登录
	 */
	public static void logout() {
		if (YYWMain.mUserCallBack != null) {
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
	public static void payCancel() {
		if (YYWMain.mPayCallBack != null) {
			YYWMain.mPayCallBack.onPayCancel(null, null);
		}
	}

	/**
	 * YYW提供的退出接口
	 * 
	 * @param paramActivity
	 *            activity
	 * @param callback
	 *            YYW退出回调
	 */
	public static void exitgameFromYyw(final Activity paramActivity,
			final YYWExitCallback callback) {
		new AlertDialog.Builder(paramActivity)
		.setTitle("退出游戏提示")
		.setMessage("是否退出游戏？")
		.setPositiveButton("确定", new OnClickListener() {
			
			@Override
			public void onClick(DialogInterface dialog, int which) {
				paramActivity.finish();	//关闭游戏
				Log.d(TAG, "callback");
				callback.onExit();		//游戏退出回调
				Log.d(TAG, "System.exit(0)");
				System.exit(0);			//适配单机游戏
				// 部分游戏的退出回调处理得不好，推荐直接关闭 System.exit(0);
				// 若是单机游戏，则需要添加上退出回调，以免退出操作没有对游戏进行本地保存
			}
		})
		.setNegativeButton("取消", null)
		.create()
		.show();
		/*
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
		*/
	}

}
