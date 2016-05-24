package com.yayawan.impl;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.res.AssetManager;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.util.Log;
import android.view.View;
import android.widget.ImageView;
import android.widget.Toast;

import com.tencent.tmgp.xjxzzgzlc.R;
import com.tencent.ysdk.api.YSDKApi;
import com.tencent.ysdk.framework.common.eFlag;
import com.tencent.ysdk.framework.common.ePlatform;
import com.tencent.ysdk.module.pay.PayListener;
import com.tencent.ysdk.module.pay.PayRet;
import com.yayawan.callback.YYWExitCallback;
import com.yayawan.domain.YYWUser;
import com.yayawan.main.YYWMain;
import com.yayawan.utils.DeviceUtil;
import com.yayawan.utils.Handle;
import com.yayawan.utils.JSONUtil;

public class YaYawanconstants {

	private static HashMap<String, String> mGoodsid;
	private static final String TAG = "black";
	private static Activity mActivity;

	/**
	 * 初始化sdk
	 */
	public static void inintsdk(Activity mactivity) {
		mActivity = mactivity;
		Yayalog.loger("sdk初始化");
		Log.d(TAG, "sdk初始化 - inintsdk");
		YSDKApi.onCreate(mactivity);
		//Myconstants.mpayinfo=new Payinfo();
		YSDKApi.handleIntent(mactivity.getIntent());
		YSDKApi.setUserListener(new YSDKCallback(mactivity));
		YSDKApi.setBuglyListener(new YSDKCallback(mactivity));
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
		showQQAndWeiXinDialog(mactivity);
	}
	public static void showQQAndWeiXinDialog(Activity mactivity){
		AlertDialog.Builder builder = new AlertDialog.Builder(mactivity,R.style.dialog);
		final AlertDialog dialog = builder.create();
		// 将自定义的布局文件设置给dialog
		View view = View.inflate(mactivity, R.layout.login_qqweixin_dailog, null);
		dialog.setView(view, 0, 0, 0, 0);// 设置弹窗边距为0
		ImageView iv_loginQQ = (ImageView) view.findViewById(R.id.iv_loginQQ);
		ImageView iv_loginWX = (ImageView) view.findViewById(R.id.iv_loginWX);
		iv_loginQQ.setOnClickListener(new View.OnClickListener() {
			
			@Override
			public void onClick(View v) {
				Log.d(TAG, "iv_loginQQ");
				Myconstants.mpayinfo=null;
				Myconstants.mpayinfo=new Payinfo();
				YSDKApi.login(ePlatform.QQ);
				Myconstants.platform="qq";
				Myconstants.mpayinfo.opentype = "qq";
				dialog.dismiss();
			}
		});
		iv_loginWX.setOnClickListener(new View.OnClickListener() {
			
			@Override
			public void onClick(View v) {
				Log.d(TAG, "iv_loginWX");
				Myconstants.mpayinfo=null;
				Myconstants.mpayinfo=new Payinfo();
				YSDKApi.login(ePlatform.WX);
				Myconstants.platform="wx";
				Myconstants.mpayinfo.opentype = "wx";
				dialog.dismiss();
			}
		});
		dialog.setCanceledOnTouchOutside(true);
		dialog.setOnCancelListener(new OnCancelListener() {

			public void onCancel(DialogInterface dialog) {
				loginFail();
				Log.d(TAG, "Dialog onCancel");
			}
		});
		dialog.show();
	}

	/**
	 * 登出
	 */
	public static void logout(final Activity mactivity) {
		Yayalog.loger("sdk登出");
		Log.d(TAG, "sdk登出 - logout");
		//YSDKApi.logout();
	}

	/**
	 * 支付
	 * 
	 * @param mactivity
	 */
	public static void pay(final Activity mactivity, String morderid) {
		Yayalog.loger("sdk支付");
		Log.d(TAG, "sdk支付 - pay");
		String zoneId = "1";
		String saveValue = "" + YYWMain.mOrder.money / 10;;
		boolean isCanChange = false;
		/*AssetManager assetManager = mactivity.getAssets();
		InputStream istr = null;
		try {
			istr = assetManager.open("sample_yuanbao.png");
		} catch (IOException e) {
			e.printStackTrace();
		}*/
		
		Bitmap bmp = BitmapFactory.decodeResource(mactivity.getResources(), R.drawable.sample_yuanbao);
		ByteArrayOutputStream baos = new ByteArrayOutputStream();
		bmp.compress(Bitmap.CompressFormat.PNG, 100, baos);
		byte[] appResData = baos.toByteArray();
		String ysdkExt = "ysdkExt";
		YSDKApi.recharge(zoneId, saveValue, isCanChange, appResData, ysdkExt,
				new PayListener() {
				@Override
				public void OnPayNotify(PayRet ret) {
					if (PayRet.RET_SUCC == ret.ret) {
						// 支付流程成功
						switch (ret.payState) {
						// 支付成功
						case PayRet.PAYSTATE_PAYSUCC:
							Log.d(TAG, "用户支付成功，支付金额"
								+ ret.realSaveNum + ";" + "使用渠道："
								+ ret.payChannel + ";" + "发货状态："
								+ ret.provideState + ";" + "业务类型："
								+ ret.extendInfo + ";建议查询余额："
								+ ret.toString());
							break;
						// 取消支付
						case PayRet.PAYSTATE_PAYCANCEL:
							Log.d(TAG, "用户取消支付：" + ret.toString());
							payCancel();
							break;
						// 支付结果未知
						case PayRet.PAYSTATE_PAYUNKOWN:
							Log.d(TAG, "用户支付结果未知，建议查询余额："
								+ ret.toString());
							payFail();
							break;
						// 支付失败
						case PayRet.PAYSTATE_PAYERROR:
							Log.d(TAG, "支付异常" + ret.toString());
							payFail();
							break;
						}
					} else {
						switch (ret.flag) {
						case eFlag.User_LocalTokenInvalid:
							// 用户取消支付
							Log.d(TAG, "登陆态过期，请重新登陆："+ ret.toString());
							Toast.makeText(mactivity, "登陆时间过长，请新登陆游戏进行支付",
									0).show();
							//login(mactivity);
							break;
						case eFlag.Pay_User_Cancle:
							// 用户取消支付
							Log.d(TAG, "用户取消支付：" + ret.toString());
							payCancel();
							break;
						case eFlag.Pay_Param_Error:
							Log.d(TAG, "支付失败，参数错误"+ ret.toString());
							payFail();
							break;
						case eFlag.Error:
						default:
							Log.d(TAG, "支付异常" + ret.toString());
							payFail();
							break;
						}
					}
				}
			});
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
		YSDKApi.onPause(paramActivity);
	}

	public static void onResume(Activity paramActivity) {
		YSDKApi.onResume(paramActivity);
	}

	public static void onRestart(Activity paramActivity) {
		YSDKApi.onRestart(paramActivity);
	}

	public static void onStop(Activity paramActivity) {
		YSDKApi.onStop(paramActivity);
	}

	public static void onDestroy(Activity paramActivity) {
		YSDKApi.logout();
		YSDKApi.onDestroy(paramActivity);
	}

	public static void onNewIntent(Intent paramIntent) {
		YSDKApi.handleIntent(paramIntent);
	}

	public static void onActivityResult(Activity paramActivity, int paramInt1,
			int paramInt2, Intent paramIntent) {
		YSDKApi.onActivityResult(paramInt1, paramInt2, paramIntent);
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
		Log.d(TAG, "退出弹窗");
		new AlertDialog.Builder(paramActivity)
		.setTitle("退出游戏提示")
		.setMessage("是否退出游戏？")// paramYayaWanCallback
		.setPositiveButton("确定", new OnClickListener() {
			@Override
			public void onClick(DialogInterface dialog, int which) {
				paramActivity.finish(); // 关闭游戏
				Log.d(TAG, "callback");
				callback.onExit(); // 游戏退出回调
				Log.d(TAG, "System.exit(0)");
				System.exit(0); // 适配单机游戏
				// 部分游戏的退出回调处理得不好，推荐直接关闭 System.exit(0);
				// 若是单机游戏，则需要添加上退出回调，以免退出操作没有对游戏进行本地保存
			}
		}).setNeutralButton("取消", null)
		.create()
		.show();
	}


}
