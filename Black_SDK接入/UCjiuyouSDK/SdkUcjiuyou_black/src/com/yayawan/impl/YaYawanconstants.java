package com.yayawan.impl;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;

import org.json.JSONException;
import org.json.JSONObject;

import android.app.Activity;
import android.os.SystemClock;
import android.util.Log;
import android.widget.Toast;

import cn.uc.gamesdk.GameUserLoginResult;
import cn.uc.gamesdk.IGameUserLogin;
import cn.uc.gamesdk.UCCallbackListener;
import cn.uc.gamesdk.UCCallbackListenerNullException;
import cn.uc.gamesdk.UCFloatButtonCreateException;
import cn.uc.gamesdk.UCGameSDK;
import cn.uc.gamesdk.UCGameSDKStatusCode;
import cn.uc.gamesdk.UCLogLevel;
import cn.uc.gamesdk.UCLoginFaceType;
import cn.uc.gamesdk.UCOrientation;
import cn.uc.gamesdk.info.FeatureSwitch;
import cn.uc.gamesdk.info.GameParamInfo;
import cn.uc.gamesdk.info.OrderInfo;
import cn.uc.gamesdk.info.PaymentInfo;

import com.yayawan.callback.YYWExitCallback;
import com.yayawan.domain.YYWUser;
import com.yayawan.main.YYWMain;
import com.yayawan.sdk.callback.YayaWanCallback;
import com.yayawan.sdk.main.YayaWan;
import com.yayawan.utils.DeviceUtil;
import com.yayawan.utils.Handle;
import com.yayawan.utils.JSONUtil;

/**
 * 版本号 ： 3.5.3.1
 * sdk说明：正常接入版，完全按照UC的接入文档进行对接
 * @author black
 * 
 */
public class YaYawanconstants {

	protected static final String TAG = "black";

	private static HashMap<String, String> mGoodsid;

	private static Activity mActivity;

	/**
	 * 初始化sdk
	 */
	public static void inintsdk(Activity mactivity) {
		mActivity = mactivity;
		Yayalog.loger("初始化sdk");
		// 对于需要支持账户切换/退出账号的游戏，必须在此设置退出侦听器
		try {
			UCGameSDK.defaultSDK().setLogoutNotifyListener(logoutListener);
		} catch (UCCallbackListenerNullException e) {
			e.printStackTrace();
		}
		Log.d("black", "初次进入初始化");
		UCinitSdk();// 初始化 第一次调用放到login函数里面
	}

	public static void UCinitSdk() { // type 0 退出初始化 1 登录初始化
													// 2支付初始化
		GameParamInfo gpi = new GameParamInfo();// 下面的值仅供参考
		gpi.setGameId(Integer.parseInt(DeviceUtil.getGameInfo(mActivity,
				"gameId"))); // 从UC九游开放平台获取自己游戏的参数信息
		gpi.setCpId(Integer.parseInt(DeviceUtil.getGameInfo(mActivity, "cpId")));
		gpi.setServerId(0);
		// 设置是否支持查询充值历史和显示切换账号功能，如果不设置，默认具有查询充值历史记录，不具有切换账户功能
		gpi.setFeatureSwitch(new FeatureSwitch(true, false));
		try {
			// 设置SDK登录界面为竖屏或横屏（"UCOrientation.LANDSCAPE"时为横屏）
			if (DeviceUtil.isLandscape(mActivity)) {
				UCGameSDK.defaultSDK().setOrientation(UCOrientation.LANDSCAPE);
			} else {
				UCGameSDK.defaultSDK().setOrientation(UCOrientation.PORTRAIT);
			}

			// 设置登录界面：
			// USE_WIDGET - 简版登录界面
			// USE_STANDARD - 标准版登录界面
			UCGameSDK.defaultSDK().setLoginUISwitch(UCLoginFaceType.USE_WIDGET);
			// debugMode true为调测模式 false为正式模式
			UCGameSDK.defaultSDK().initSDK(mActivity, UCLogLevel.DEBUG, false,
					gpi, new UCCallbackListener<String>() {
						@Override
						public void callback(int code, String msg) {
							System.out.println("msg:" + msg);// 返回的消息
							switch (code) {
							case UCGameSDKStatusCode.SUCCESS:
								// 初始化成功,可以执行后续的登录充值操作
								Log.d(TAG, "初始化成功,可以执行后续的登录充值操作");
								break;
							case UCGameSDKStatusCode.INIT_FAIL:
								// 初始化失败,不能进行后续操作
								Log.d(TAG, "初始化失败,不能进行后续操作");
								mActivity.runOnUiThread(new Runnable() {

									@Override
									public void run() {
										// TODO Auto-generated method stub
										Toast.makeText(mActivity,
												"初始化失败，请重新启动游戏", 0).show();
									}
								});
								// isNeedInitSdk = true;//初始化失败 需要再次进行初始化
								break;
							default:
								break;
							}
						}
					});
		} catch (UCCallbackListenerNullException e) {
			// 捕获listener为null的异常
			mActivity.runOnUiThread(new Runnable() {

				@Override
				public void run() {
					// TODO Auto-generated method stub
					Toast.makeText(mActivity, "初始化失败，请重新启动游戏", 0).show();
				}
			});
		}
	}

	// 创建退出账号侦听器
	static UCCallbackListener<String> logoutListener = new UCCallbackListener<String>() {
		@Override
		public void callback(int statuscode, String data) {
			switch (statuscode) {
			case UCGameSDKStatusCode.NO_INIT:// 未成功初始化
				// 再次调用初始化SDK
				Log.d("black", "logoutListener 再次调用初始化");
				// isNeedInitSdk = true;
				UCinitSdk();
				break;
			case UCGameSDKStatusCode.NO_LOGIN:// 未成功登录
				loginFail();
				break;
			case UCGameSDKStatusCode.SUCCESS:// 退出帐号成功
				logout();
				break;
			case UCGameSDKStatusCode.FAIL:// 退出帐号失败
				// 退出帐号失败,既不能执行退出帐号操作
				break;
			default:
				break;
			}
		}
	};

	/**
	 * 闪屏
	 */
	public static void logoAnim(final Activity mactivity) {
		Yayalog.loger("sdk闪屏");

	}

	private static boolean islogin = false;
	/**
	 * 登录,需要用sid获取对应的 uid userName
	 */
	public static void login(final Activity mactivity) {
		Yayalog.loger("sdk登录");
		UClogin();
	}

	private static void UClogin() {
		// TODO Auto-generated method stub
		try {
			UCGameSDK.defaultSDK().login(mActivity,
					new UCCallbackListener<String>() {

						@Override
						public void callback(int code, String msg) {
							switch (code) {
							case UCGameSDKStatusCode.SUCCESS:
								// 登录成功，可以执行后续操作

								islogin = true;

								// 获取sid。（注：ucid需要使用sid作为身份标识去SDK的服务器获取）
								final String sid = UCGameSDK.defaultSDK()
										.getSid();
								Log.d("black", "获取sid = " + sid);
								Yibuhttputils yibuhttputils = new Yibuhttputils() {

									@Override
									public void sucee(String str) {
										String uid = "";
										String username = "";
										JSONObject object;
										try {
											object = new JSONObject(str);
											Log.d("black", "获取object = "
													+ object);
											int successInt = object
													.isNull("success") ? null
													: object.getInt("success");
											if (successInt == 0) {
												uid = object
														.isNull("accountId") ? null
														: object.getString("accountId");
												username = object
														.isNull("nickName") ? null
														: object.getString("nickName");
												loginSuce(mActivity, uid, uid,
														sid);
												Log.d("black",
														"登录帐号成功 悬浮框创建并显示");
												// 执行悬浮按钮创建方法
												ucSdkCreateFloatButton();
												// 执行悬浮按钮显示方法
												ucSdkShowFloatButton();

											} else {
												mActivity
														.runOnUiThread(new Runnable() {

															@Override
															public void run() {
																Toast.makeText(
																		mActivity,
																		"登录失败",
																		0)
																		.show();
															}
														});
												loginFail();
											}
										} catch (JSONException e) {
											loginFail();
										}
									}

									@Override
									public void faile(String err, String rescode) {
										loginFail();
									}
								};
								yibuhttputils.runHttp(
										"http://union.yayawan.com/get_userinfo/?union_id="
												+ DeviceUtil.getGameInfo(
														mActivity, "union_id")
												+ "&game_id="
												+ DeviceUtil.getGameInfo(
														mActivity,
														"yayawan_game_id")
												+ "&sid=" + "" + sid, "",
										"GET", "");

								break;
							case UCGameSDKStatusCode.LOGIN_EXIT:
								// 登录界面关闭，游戏需判断此时是否已登录成功进行相应操作
								if (islogin) {
									islogin = false;
								} else {
									loginFail();
								}
								break;
							case UCGameSDKStatusCode.NO_INIT:
								// 没有初始化就进行登录调用，需要游戏调用SDK初始化方法
								SystemClock.sleep(2000);
								Log.d("black", "login 检测未初始化 调用初始化函数");
								// isNeedInitSdk = true;
								UCinitSdk();
								break;

							default:
								break;
							}
						}
					});
		} catch (UCCallbackListenerNullException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			// 登录失败
			loginFail();
		}
	}

	/**
	 * 支付
	 * 
	 * @param mactivity
	 */
	public static void pay(Activity mactivity, String morderid) {
		Yayalog.loger("sdk支付");
		PaymentInfo pInfo = new PaymentInfo(); // 创建Payment对象，用于传递充值信息
		pInfo.setCustomInfo("" + morderid);

		int money = Integer.parseInt("" + (YYWMain.mOrder.money / 100));

		float money2 = money;

		pInfo.setAmount(money2);
		pInfo.setServerId(0);
		pInfo.setRoleId(YYWMain.mUser.uid); // 设置用户的游戏角色的ID，此为必选参数，请根据实际业务数据传入真实数据
		pInfo.setRoleName(YYWMain.mUser.userName); // 设置用户的游戏角色名字，此为必选参数，请根据实际业务数据传入真实数据
		try {
			UCGameSDK.defaultSDK().pay(mActivity, pInfo,
					new UCCallbackListener<OrderInfo>() {

						@Override
						public void callback(int statudcode, OrderInfo orderInfo) {
							switch (statudcode) {
							case UCGameSDKStatusCode.NO_INIT:
								// 没有初始化就进行登录调用，需要游戏调用SDK初始化方法
								SystemClock.sleep(2000);
								Log.d("black", "pay() 检测到未初始化 调用初始化方法");
								// isNeedInitSdk = true;
								UCinitSdk();
								break;
							case UCGameSDKStatusCode.SUCCESS:
								// 订单生成生成，非充值成功，充值结果由服务端回调判断
								if (orderInfo != null) {
									paySuce();
								}
								break;
							case UCGameSDKStatusCode.PAY_USER_EXIT:
								// 用户退出充值界面。
								payCancel();// 充值取消
								// ucSdkShowFloatButton();
								break;

							default:
								break;
							}
						}
					});

		} catch (UCCallbackListenerNullException e) {
			System.out.println("uc++支付失败");
			payFail();
			e.printStackTrace();
		}

	}

	private static void UCpay() {
		// TODO Auto-generated method stub

	}

	/**
	 * 退出游戏
	 * 
	 * @param paramActivity
	 * @param callback
	 */
	public static void exit(final Activity paramActivity,
			final YYWExitCallback callback) {
		Yayalog.loger("sdk退出");
		if (DeviceUtil.getGameInfo(paramActivity, "need_yayaexit").endsWith(
				"yes")) {
			exitgameFromYyw(paramActivity, callback);
		} else {
			// 若SDK有提供退出接口,请在此处调用
			/*
			 * 必接功能 当游戏退出前必须调用该方法，进行清理工作。建议在游戏退出事件中进行调用，必须在游戏退出前执行<br>
			 * 如果游戏直接退出，而不调用该方法，可能会出现未知错误，导致程序崩溃<br>
			 */
			UCGameSDK.defaultSDK().exitSDK(paramActivity,
					new UCCallbackListener<String>() {
						@Override
						public void callback(int code, String msg) {
							if (UCGameSDKStatusCode.SDK_EXIT_CONTINUE == code) {
								// 此加入继续游戏的代码
								Log.d("black", "Exit 继续游戏");

							} else if (UCGameSDKStatusCode.SDK_EXIT == code) {
								// 在此加入退出游戏的代码
								Log.d("black", "Exit 退出游戏");
								ucSdkDestoryFloatButton();// 销毁悬浮窗
								paramActivity.finish();
								callback.onExit();// 调用退出游戏的接口
								System.exit(0);
								// paramActivity.finish();
							}
						}
					});
		}
	}

	/**
	 * 设置角色信息
	 * @param paramActivity
	 */
	public static void setRoleData(Activity paramActivity) {
		if (YYWMain.mRole != null) {
			/*
			try {				
				System.out.println("我在里面");
				JSONObject jsonExData = new JSONObject();
				jsonExData.put("roleId", YYWMain.mRole.getRoleId());// 当前登录的玩家角色ID
				jsonExData.put("roleName", YYWMain.mRole.getRoleName());// 当前登录的玩家角色名
				jsonExData.put("roleLevel", YYWMain.mRole.getRoleLevel());// 当前登录的玩家角色等级
				jsonExData.put("zoneId", YYWMain.mRole.getZoneId());// 当前登录的游戏区服ID
				jsonExData.put("zoneName", YYWMain.mRole.getZoneName());// 当前登录的游戏区服名称
				UCGameSDK.defaultSDK().submitExtendData("loginGameRole",
						jsonExData);
				System.out.println("" + YYWMain.mRole.getRoleId()
						+ YYWMain.mRole.getRoleName()
						+ YYWMain.mRole.getRoleLevel());
				// Log.e("UCGameSDK","提交游戏扩展数据功能调用成功");
			} catch (Exception e) {
				// 处理异常
			}
			*/
		}
	}

	/**
	 * 创建游戏角色，游戏角色升级调用的方法
	 * @param activity  游戏上下文  ext  附加内容   roleCTime  角色创建时间  zoneName 游戏区服名称
	 * @param zoneId  游戏区服ID  roleLevel  角色等级  roleName  角色名称   roleId  角色ID
	 */
	public static void setData(Activity activity, String roleId,
			String roleName, String roleLevel, String zoneId, String zoneName,
			String roleCTime, String ext) {
		Log.d("black", "进入了SetData");
		//if (YYWMain.mRole != null) {
			try {
				Log.d("black", "进入了SetData 有YYWMain.mRole");
				JSONObject jsonExData = new JSONObject();
				jsonExData.put("roleId", roleId);// 当前登录的玩家角色ID
				jsonExData.put("roleName", roleName);// 当前登录的玩家角色名
				jsonExData.put("roleLevel", roleLevel);// 当前登录的玩家角色等级
				jsonExData.put("zoneId", zoneId);// 当前登录的游戏区服ID
				jsonExData.put("zoneName", zoneName);// 当前登录的游戏区服名称
				
				Log.d("black", "CP传进roleCTime值 = " + roleCTime);
				//若传进的值为毫秒，判断为 yes
				if(DeviceUtil.getGameInfo(mActivity, "isMillisecond").equals("yes")){
					//roleCTime = Long.parseLong(roleCTime)/1000 + "" ;
					roleCTime = roleCTime.substring(0, roleCTime.length() - 3);
				}
				Log.d("black", "YY传出roleCTime值 = " + roleCTime);
				//输出毫秒转化成日期格式
				Log.d("black", "创建角色毫秒转化成日期格式" + new SimpleDateFormat("yyyy-MM-dd HH:mm:ss")
				.format(new Date(Long.parseLong(roleCTime + "000"))));
				
				jsonExData.put("roleCTime", Long.parseLong(roleCTime));// 当前登录的角色创建时间
				Log.d("black", "roleCTime值Long类型 = " + roleCTime);
				jsonExData.put("os", "android");
				jsonExData.put("roleLevelMTime", "-1");
				UCGameSDK.defaultSDK().submitExtendData("loginGameRole",
						jsonExData);
				Log.d("black", "提交游戏扩展数据" + jsonExData.toString());
				// Log.e("UCGameSDK","提交游戏扩展数据功能调用成功");
			} catch (Exception e) {
				// 处理异常
				Log.d("black", "SetData 上传异常 :"+e);
				System.out.println("SetData 上传异常 :"+e);
			}
		//}
	}

	/**
	 * 悬浮按钮创建及显示 悬浮按钮必须保证在SDK进行初始化成功之后再进行创建需要在UI线程中调用<br>
	 */
	private static void ucSdkCreateFloatButton() {
		mActivity.runOnUiThread(new Runnable() {
			public void run() {
				try {
					// 创建悬浮按钮。该悬浮按钮将悬浮显示在GameActivity页面上，点击时将会展开悬浮菜单，菜单中含有
					// 创建完成后，并不自动显示，需要调用showFloatButton(Activity,
					// double, double, boolean)方法进行显示或隐藏。
					UCGameSDK.defaultSDK().createFloatButton(mActivity,
							new UCCallbackListener<String>() {

								@Override
								public void callback(int statuscode, String data) {
									Log.d("SelectServerActivity`floatButton Callback",
											"statusCode == " + statuscode
													+ "  data == " + data);
								}
							});

				} catch (UCCallbackListenerNullException e) {
					e.printStackTrace();
				} catch (UCFloatButtonCreateException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		});
	}

	/**
	 * 悬浮按钮显示<br>
	 * 悬浮按钮显示需要在UI线程中调用<br>
	 */
	private static void ucSdkShowFloatButton() {
		mActivity.runOnUiThread(new Runnable() {
			public void run() {
				// 显示悬浮图标，游戏可在某些场景选择隐藏此图标，避免影响游戏体验
				try {
					UCGameSDK.defaultSDK().showFloatButton(mActivity, 100, 50,
							true);
				} catch (UCCallbackListenerNullException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		});
	}

	/**
	 * 悬浮按钮销毁<br>
	 * 悬浮按钮销毁需要在UI线程中调用<br>
	 */
	private static void ucSdkDestoryFloatButton() {
		mActivity.runOnUiThread(new Runnable() {
			public void run() {
				// 悬浮按钮销毁功能
				UCGameSDK.defaultSDK().destoryFloatButton(mActivity);
			}
		});
	}

	/**
	 * 若接入要求重写activity的生命周期,在此处接入
	 * 
	 * @param paramActivity
	 */
	public static void onPause(Activity paramActivity) {

	}

	public static void onResume(Activity paramActivity) {
		Log.d("black", "onResume");
		ucSdkShowFloatButton();
	}

	public static void onRestart(Activity paramActivity) {

	}

	public static void onStop(Activity paramActivity) {

	}

	public static void onDestroy(Activity paramActivity) {
		Log.d("black", "onDestroy ucSdkDestoryFloatButton()");
		ucSdkDestoryFloatButton();
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
					+ username;
		} else {
			YYWMain.mUser.userName = DeviceUtil.getUnionid(mactivity) + "-"
					+ uid;
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
