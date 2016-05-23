package com.yayawan.impl;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;

import org.json.JSONObject;

import android.app.Activity;
import android.util.Log;
import android.widget.Toast;
import cn.uc.gamesdk.UCCallbackListener;
import cn.uc.gamesdk.UCCallbackListenerNullException;
import cn.uc.gamesdk.UCGameSDK;
import cn.uc.gamesdk.UCGameSDKStatusCode;

import com.yayawan.callback.YYWExitCallback;
import com.yayawan.callback.YYWUserManagerCallBack;
import com.yayawan.main.YYWMain;
import com.yayawan.proxy.YYWUserManager;

public class UserManagerImpl implements YYWUserManager {

	@Override
	public void manager(Activity paramActivity) {

		Toast.makeText(paramActivity, "个人中心", Toast.LENGTH_SHORT).show();
	}

	@Override
	public void login(Activity paramActivity, String paramString,
			Object paramObject) {
		// TODO Auto-generated method stub

	}

	@Override
	public void logout(Activity paramActivity, String paramString,
			Object paramObject) {

		try {
			UCGameSDK.defaultSDK().logout();
		} catch (UCCallbackListenerNullException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	@Override
	public void setUserListener(Activity paramActivity,
			YYWUserManagerCallBack paramXMUserListener) {
		// TODO Auto-generated method stub

	}

	@Override
	public void exit(final Activity paramActivity,
			final YYWExitCallback callback) {
		// TODO Auto-generated method stub
		// Toast.makeText(paramActivity, "退出游戏", Toast.LENGTH_SHORT).show();
		// callback.onExit();
		paramActivity.runOnUiThread(new Runnable() {

			@Override
			public void run() {
				// TODO Auto-generated method stub
				ucSdkExit(paramActivity, callback);
			}
		});

	}

	/**
	 * 必接功能<br>
	 * 当游戏退出前必须调用该方法，进行清理工作。建议在游戏退出事件中进行调用，必须在游戏退出前执行<br>
	 * 如果游戏直接退出，而不调用该方法，可能会出现未知错误，导致程序崩溃<br>
	 * 
	 * @param callback
	 */
	private void ucSdkExit(final Activity paramActivity,
			final YYWExitCallback callback) {
		UCGameSDK.defaultSDK().exitSDK(paramActivity,
				new UCCallbackListener<String>() {
					@Override
					public void callback(int code, String msg) {
						if (UCGameSDKStatusCode.SDK_EXIT_CONTINUE == code) {
							// 此加入继续游戏的代码

						} else if (UCGameSDKStatusCode.SDK_EXIT == code) {
							// 在此加入退出游戏的代码
							ucSdkDestoryFloatButton(paramActivity);

							callback.onExit();
							// paramActivity.finish();
						}
					}
				});
	}

	/**
	 * 必接功能<br>
	 * 悬浮按钮销毁<br>
	 * 悬浮按钮销毁需要在UI线程中调用<br>
	 */
	private void ucSdkDestoryFloatButton(final Activity paramActivity) {
		paramActivity.runOnUiThread(new Runnable() {
			public void run() {
				// 悬浮按钮销毁功能
				UCGameSDK.defaultSDK().destoryFloatButton(paramActivity);
			}
		});
	}

	@Override
	public void setRoleData(Activity arg0) {
		// TODO Auto-generated method stub
		System.out.println("我在外面");
		if (YYWMain.mRole != null) {
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
				System.out.println(jsonExData.toString());
				// Log.e("UCGameSDK",
				// "提交游戏扩展数据功能调用成功");
			} catch (Exception e) {
				// 处理异常
			}
		}
	}

	// 3.15版兼容角色信息接口
	public void setData(Activity paramActivity, String roleId, String roleName,
			String roleLevel, String zoneId, String zoneName, String roleCTime,
			String ext) {
		System.out.println("11调用了impl中的usermanagerimpl中的setdata方法");

		if (YYWMain.mRole != null) {
			try {
				System.out.println("我在里面");
				JSONObject jsonExData = new JSONObject();
				jsonExData.put("roleId", roleId);// 当前登录的玩家角色ID
				jsonExData.put("roleName", roleName);// 当前登录的玩家角色名
				jsonExData.put("roleLevel", roleLevel);// 当前登录的玩家角色等级
				jsonExData.put("zoneId", zoneId);// 当前登录的游戏区服ID
				jsonExData.put("zoneName", zoneName);// 当前登录的游戏区服名称

				Log.d("black", roleCTime);
				// roleCTime = Integer.parseInt(roleCTime)/1000 + "" ;
				roleCTime = roleCTime.substring(0, roleCTime.length() - 3);
				Log.d("black", roleCTime);
				jsonExData.put("roleCTime", roleCTime);// 当前登录的游戏区服名称
				jsonExData.put("os", "android");
				jsonExData.put("roleLevelMTime", "-1");
				UCGameSDK.defaultSDK().submitExtendData("loginGameRole",
						jsonExData);
				Log.d("black", "提交游戏扩展数据" + jsonExData.toString());
				// Log.e("UCGameSDK",
				// "提交游戏扩展数据功能调用成功");
			} catch (Exception e) {
				// 处理异常
			}
		}
	}

}
