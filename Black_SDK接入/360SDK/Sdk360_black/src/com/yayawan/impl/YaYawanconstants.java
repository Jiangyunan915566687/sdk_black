package com.yayawan.impl;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;

import org.json.JSONException;
import org.json.JSONObject;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import android.widget.Toast;

import com.qihoo.gamecenter.sdk.activity.ContainerActivity;
import com.qihoo.gamecenter.sdk.common.IDispatcherCallback;
import com.qihoo.gamecenter.sdk.matrix.Matrix;
import com.qihoo.gamecenter.sdk.protocols.ProtocolConfigs;
import com.qihoo.gamecenter.sdk.protocols.ProtocolKeys;
import com.yayawan.callback.YYWExitCallback;
import com.yayawan.domain.YYWUser;
import com.yayawan.main.YYWMain;
import com.yayawan.sdk.callback.YayaWanCallback;
import com.yayawan.sdk.main.YayaWan;
import com.yayawan.utils.DeviceUtil;
import com.yayawan.utils.Handle;
import com.yayawan.utils.JSONUtil;

/**
 * 已解决退出问题
 * 版本号 ：360SDK_1.3.0_468
 * @author Administrator
 * 
 */
public class YaYawanconstants {

	private static HashMap<String, String> mGoodsid;
	private static final String TAG = "black";
	private static Activity mActivity;
	public static String mAccessToken;
	static Boolean isLandScape;
	/**
	 * 初始化sdk
	 */
	public static void inintsdk(Activity mactivity) {
		mActivity = mactivity;
		Yayalog.loger("sdk初始化");
		Log.d(TAG, "sdk初始化 - inintsdk");
		copyAssets("bg_exit.png");
		Matrix.init(mactivity);
		isLandScape = DeviceUtil.isLandscape(mactivity);
	}

	private static void copyAssets(String PicName) {
		File destFile = new File(mActivity.getFilesDir(), PicName);
		if(destFile.exists()){
			Log.d(TAG, "bg_exit.png已存在");
			return;
		}
		FileOutputStream out = null;
		InputStream in = null;
		try {
			in = mActivity.getAssets().open(PicName);
			out = new FileOutputStream(destFile);
			int len = 0;
			byte[] buffer = new byte[1024];
			while((len = in.read(buffer))!= -1){
				out.write(buffer, 0 , len);
			}
		} catch (IOException e) {
			e.printStackTrace();
		}finally{
			try {
				in.close();
				out.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
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
		//Boolean isLandScape = DeviceUtil.isLandscape(mactivity);
		Boolean isSwich = DeviceUtil.getGameInfo(mactivity, "need_account")
				.equals("yes");
		Matrix.execute(mactivity,
				getLoginIntent(isLandScape, mactivity, isSwich),
				new IDispatcherCallback() {

					@Override
					public void onFinished(String data) {
						// press back
						if (isCancelLogin(data)) {
							Log.d(TAG, "登录返回");
							loginCancle();
							return;
						}
						Log.d(TAG, "显示登录结果"+ data);
						// 显示一下登录结果
						//Toast.makeText(mactivity, data, Toast.LENGTH_LONG).show();
						// 解析access_token
						mAccessToken = parseAccessTokenFromLoginResult(data);
						Log.d(TAG, mAccessToken);
						if (!TextUtils.isEmpty(mAccessToken)) {
							// 需要去应用的服务器获取用access_token获取一下带qid的用户信息
							Log.d(TAG, "Token不为Null");
							getUserInfo(mactivity, mAccessToken);
						} else {
							//Toast.makeText(mactivity,"get access_token failed!",Toast.LENGTH_LONG).show();
							Log.d(TAG,"get access_token failed!" );
						}
					}
				});
	}

	/**
	 * 生成调用360登录接口的Intent
	 * 
	 * @param isLandScape
	 * @param mActivity
	 * @param isswich
	 * @return Intent
	 */
	public static Intent getLoginIntent(boolean isLandScape,
			Activity mActivity, boolean isswich) {

		Intent intent = new Intent(mActivity, ContainerActivity.class);

		// 必需参数，使用360SDK的登录模块
		intent.putExtra(ProtocolKeys.FUNCTION_CODE,
				ProtocolConfigs.FUNC_CODE_LOGIN);
		if (isswich) {
			intent.putExtra(ProtocolKeys.FUNCTION_CODE,
					ProtocolConfigs.FUNC_CODE_SWITCH_ACCOUNT);
		}

		// 可选参数，360SDK界面是否以横屏显示，默认为true，横屏
		intent.putExtra(ProtocolKeys.IS_SCREEN_ORIENTATION_LANDSCAPE,
				isLandScape);

		// 是否显示关闭按钮
		intent.putExtra(ProtocolKeys.IS_LOGIN_SHOW_CLOSE_ICON, false);
		//intent.putExtra(ProtocolKeys.UI_BACKGROUND_PICTRUE, mActivity.getFilesDir()+"/bg_exit.png");
		//mActivity.getFilesDir()+"/bg_exit.png" black
		return intent;
	}

	public static boolean isCancelLogin(String data) {
		try {
			JSONObject joData = new JSONObject(data);
			int errno = joData.optInt("errno", -1);
			if (-1 == errno) {
				// Toast.makeText(mActivity, data, Toast.LENGTH_LONG).show();
				Log.d(TAG,"error" + data);
				return true;
			}
		} catch (Exception e) {
		}
		return false;
	}

	private static String parseAccessTokenFromLoginResult(String loginRes) {
		try {
			JSONObject joRes = new JSONObject(loginRes);
			JSONObject joData = joRes.getJSONObject("data");
			return joData.getString("access_token");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	public static void getUserInfo(final Activity mactivity, final String token) {
		// 设置Yibuhttputils
		Yibuhttputils yibuhttputils = new Yibuhttputils() {

			@Override
			public void sucee(String str) {
				System.out.println(str);
				Log.d(TAG, "登录sucee");
				try {
					JSONObject object = new JSONObject(str);
					// object.getLong(name)
					String id = object.isNull("id") ? null : object
							.getLong("id") + "";
					String name = object.isNull("name") ? null : object
							.getString("name");
					// 登录成功
					loginSuce(mactivity, id, name, token);
					Log.d(TAG, "登录成功");
					// doSdkAntiAddictionQuery(YYWMain.mUser.token,
					// YYWMain.mUser.uid, mactivity);

				} catch (JSONException e) {
					// 登录失败
					loginFail();
				}
			}

			@Override
			public void faile(String err, String rescode) {
				// 登录失败
				loginFail();
			}
		};
		// Yibuhttputils进行访问
		yibuhttputils.runHttp("https://openapi.360.cn/user/me?access_token="
				+ token, "", "GET", "");
	}

	/**
	 * 支付
	 * 
	 * @param mactivity
	 */
	public static void pay(final Activity mactivity, String morderid) {
		Yayalog.loger("sdk支付");
		Log.d(TAG, "sdk支付 - pay");
		//Boolean isLandScape = DeviceUtil.isLandscape(mactivity);
		String callback = DeviceUtil.getGameInfo(mactivity, "callback");
		String gameName = DeviceUtil.getGameInfo(mactivity, "gamename");
		// 支付基础参数
		Intent intent = getPayIntent(mactivity, isLandScape, callback,
				morderid, gameName);
		// 必需参数，使用360SDK的支付模块。
		intent.putExtra(ProtocolKeys.FUNCTION_CODE,
				ProtocolConfigs.FUNC_CODE_PAY);
		// 可选参数，登录界面的背景图片路径，必须是本地图片路径
		intent.putExtra(ProtocolKeys.UI_BACKGROUND_PICTRUE, mActivity.getFilesDir()+"/bg_exit.png");
		Matrix.invokeActivity(mactivity, intent, new IDispatcherCallback() {

			@Override
			public void onFinished(String data) {
				Log.d(TAG, "mPayCallback, data is " + data);
				if (TextUtils.isEmpty(data)) {
					return;
				}
				JSONObject jsonRes;
				try {
					jsonRes = new JSONObject(data);
					// error_code 状态码： 0 支付成功， -1 支付取消， 1 支付失败， -2 支付进行中。
					// error_msg 状态描述
					int errorCode = jsonRes.optInt("error_code");
					switch (errorCode) {
					case 0: // 支付成功
						paySuce();
						break;
					case 1: // 支付失败
						payFail();
						break;
					case -1:// 支付取消
						payCancel();
						break;
					case -2: // 支付正在进行
						mactivity.runOnUiThread(new Runnable() {

							@Override
							public void run() {
								Toast.makeText(mactivity, "正在支付中...稍后确认支付结果~",
										Toast.LENGTH_SHORT).show();
							}
						});
						payCancel();
						break;
					case 4010201: // Token失效,需要重新登录
						mactivity.runOnUiThread(new Runnable() {

							@Override
							public void run() {
								Toast.makeText(mactivity, "登陆过期.请退出重新登录",
										Toast.LENGTH_LONG).show();
							}
						});
						logout();
						break;
					case 4009911: // 登录失效,需要重新登录
						mactivity.runOnUiThread(new Runnable() {

							@Override
							public void run() {
								Toast.makeText(mactivity, "登陆过期.请退出重新登录",
										Toast.LENGTH_LONG).show();
							}
						});
						logout();
						break;
					default:
						payCancel();
						break;
					}
				} catch (JSONException e) {
					e.printStackTrace();
				}
			}

		});
	}

	protected static Intent getPayIntent(Activity activity,
			boolean isLandScape, String callback, String morderid,
			String gameName) {
		Bundle bundle = new Bundle();
		// QihooPayInfo pay = getQihooPayInfo(isFixed);
		// 界面相关参数，360SDK界面是否以横屏显示。
		bundle.putBoolean(ProtocolKeys.IS_SCREEN_ORIENTATION_LANDSCAPE,
				isLandScape);

		String[] userids = YYWMain.mUser.uid.split("-");
		Log.d(TAG,YYWMain.mUser.uid);
		String userid = userids[1];
		Log.d(TAG,userid);
		// 必需参数，360账号id。
		bundle.putString(ProtocolKeys.QIHOO_USER_ID, userid);

		// 必需参数，用户access token，要使用注意过期和刷新问题，最大64字符。
		bundle.putString(ProtocolKeys.ACCESS_TOKEN, mAccessToken);

		// 必需参数，所购买商品金额, 以分为单位。
		// 金额大于等于100分，360SDK运行定额支付流程； 金额数为0，360SDK运行不定额支付流程。
		bundle.putString(ProtocolKeys.AMOUNT, YYWMain.mOrder.money + "");
		// 必需参数，所购买商品名称，应用指定，建议中文，最大10个中文字。
		bundle.putString(ProtocolKeys.PRODUCT_NAME, YYWMain.mOrder.goods);
		// 必需参数，购买商品的商品id，应用指定，最大16字符。
		bundle.putString(ProtocolKeys.PRODUCT_ID, morderid);
		// 必需参数，应用方提供的支付结果通知uri，最大255字符。
		// 360服务器将把支付接口回调给该uri，具体协议请查看文档中，支付结果通知接口–应用服务器提供接口。
		bundle.putString(ProtocolKeys.NOTIFY_URI, callback);
		// 必需参数，游戏或应用名称，最大16中文字。
		bundle.putString(ProtocolKeys.APP_NAME, gameName);
		// 必需参数，应用内的用户名，如游戏角色名。
		// 若应用内绑定360账号和应用账号，则可用360用户名，最大16中文字。
		// （充值不分区服，充到统一的用户账户，各区服角色均可使用）。
		bundle.putString(ProtocolKeys.APP_USER_NAME, YYWMain.mUser.userName);
		// 必需参数，应用内的用户id。
		// 若应用内绑定360账号和应用账号，充值不分区服，充到统一的用户账户，各区服角色均可使用，则可用360用户ID最大32字符。
		bundle.putString(ProtocolKeys.APP_USER_ID, YYWMain.mUser.uid);
		// 必需参数，应用订单号，应用内必须唯一，最大32字符。
		bundle.putString(ProtocolKeys.APP_ORDER_ID, morderid);
		// 可选参数，应用扩展信息1，原样返回，最大255字符。
		// bundle.putString(ProtocolKeys.APP_EXT_1, pay.getAppExt1());
		// 可选参数，应用扩展信息2，原样返回，最大255字符。
		// bundle.putString(ProtocolKeys.APP_EXT_2, pay.getAppExt2());
		Intent intent = new Intent(activity, ContainerActivity.class);
		intent.putExtras(bundle);
		return intent;
	}

	/**
	 * 退出游戏
	 * 
	 * @param paramActivity
	 * @param callback
	 */
	public static void exit(final Activity paramActivity, final YYWExitCallback callback) {
		Yayalog.loger("sdk退出");
		Log.d(TAG, "sdk退出 - exit");
		if (DeviceUtil.getGameInfo(paramActivity, "need_yayaexit").endsWith(
				"yes")) {
			exitgameFromYyw(paramActivity, callback);
		} else {
			// 若SDK有提供退出接口,请在此处调用
			Bundle bundle = new Bundle(); 
			// 界面相关参数，360SDK界面是否以横屏显示。 
			bundle.putBoolean(ProtocolKeys.IS_SCREEN_ORIENTATION_LANDSCAPE, isLandScape); 
			// 可选参数，登录界面的背景图片路径，必须是本地图片路径 
			//black mActivity.getFilesDir()+"/bg_exit.png"
			//Log.d(TAG, mActivity.getFilesDir()+"/bg_exit.png");
			bundle.putString(ProtocolKeys.UI_BACKGROUND_PICTRUE, mActivity.getFilesDir()+"/bg_exit.png"); 
			// 必需参数，使用360SDK的退出模块。 
			bundle.putInt(ProtocolKeys.FUNCTION_CODE, ProtocolConfigs.FUNC_CODE_QUIT); 
			Intent intent = new Intent(paramActivity, ContainerActivity.class); 
			intent.putExtras(bundle); 
			Matrix.invokeActivity(paramActivity, intent, new IDispatcherCallback() {
				
				@Override
				public void onFinished(String data) {
					JSONObject json;
		            try {
		                json = new JSONObject(data);
		                int which = json.optInt("which", -1);
		                String label = json.optString("label");

		                switch (which) {
		                    case 1: //	进入论坛
		                    	Log.d(TAG, "1 :"+label);
		                    	break;
		                    case 2: // 	退出游戏
		                    	Log.d(TAG, "2 :"+label);
		                    	paramActivity.runOnUiThread(new Runnable() {
									
									@Override
									public void run() {
										paramActivity.finish();	//关闭游戏
										Log.d(TAG, "callback");
										callback.onExit();		//游戏退出回调
										Log.d(TAG, "System.exit(0)");
										System.exit(0);			//适配单机游戏
										// 部分游戏的退出回调处理得不好，推荐直接关闭 System.exit(0);
										// 若是单机游戏，则需要添加上退出回调，以免退出操作没有对游戏进行本地保存
										
									}
								});
		    					
		    					break;
		                    case 0: // 	用户关闭退出界面		                    	
		                    default:
		                    	Log.d(TAG, "0 :"+label);
		                    	paramActivity.runOnUiThread(new Runnable() {
									
									@Override
									public void run() {
										Toast.makeText(paramActivity, "返回游戏", Toast.LENGTH_SHORT).show();
										
									}
								});
		                        //return;
		                }
		            } catch (Exception e) {
		                e.printStackTrace();
		            }
				}
			});
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

	}

	public static void onResume(Activity paramActivity) {

	}

	public static void onRestart(Activity paramActivity) {

	}

	public static void onStop(Activity paramActivity) {

	}

	public static void onDestroy(Activity paramActivity) {
		Matrix.destroy(paramActivity);
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
