package com.black.Utils;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.Intent;
import android.content.DialogInterface.OnCancelListener;
import android.content.DialogInterface.OnClickListener;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.net.Uri;
import android.os.SystemClock;
import android.widget.Toast;

public class MarketUtlis {
	/**
	 * 弹窗对话框
	 * 
	 * @param activity
	 *            上下文
	 * @param DailogTitle
	 *            对话框的标题信息
	 * @param DailogMessage
	 *            对话框的内容信息
	 * @param PositiveButtonName
	 *            对话框确认按钮的名称
	 * @param NegativeButtonName
	 *            对话框取消按钮的名称
	 * @param OkListener
	 *            对话框确认按钮的监听
	 * @param NoListener
	 *            对话框取消按钮的监听
	 * @param isCancelable
	 *            对话框是否可以响应返回按钮
	 * @param CancelListener
	 *            对话框返回按钮的监听
	 */
	public static void showDailog(Activity activity, String DailogTitle,
			String DailogMessage, final String PositiveButtonName,
			final String NegativeButtonName, OnClickListener OkListener,
			OnClickListener NoListener, Boolean isCancelable,
			OnCancelListener CancelListener) {
		AlertDialog.Builder builder = new AlertDialog.Builder(activity);
		builder.setTitle(DailogTitle);
		builder.setMessage(DailogMessage);
		builder.setCancelable(isCancelable);// 设置对话框可撤销或不。默认是可以的。可撤销 即返回键可以响应
		builder.setPositiveButton(PositiveButtonName, OkListener);
		// 设置对话框 取消按钮的名称
		builder.setNegativeButton(NegativeButtonName, NoListener);
		// 设置取消对话框的监听,用户点击返回的时候 触发事件
		builder.setOnCancelListener(CancelListener);
		builder.show();
	}

	/**
	 * 弹出吐丝Toast
	 * 
	 * @param context
	 *            上下文
	 * @param ToastText
	 *            Toast的文本内容
	 */
	public static void showToast(Context context, String ToastText) {
		Toast.makeText(context, ToastText, Toast.LENGTH_SHORT).show();
	}

	/**
	 * MD5加密算法
	 * 
	 * @param unEncrypt
	 *            原始未加密的数据
	 * @return 完成MD5加密算法的数据
	 */
	public static String MD5Encode(String unEncrypt) {
		try {
			MessageDigest instance = MessageDigest.getInstance("MD5");
			byte[] digest = instance.digest(unEncrypt.getBytes());

			StringBuffer sb = new StringBuffer();
			for (byte b : digest) {
				int i = b & 0xff;
				String hexString = Integer.toHexString(i);// 将整数转为16进制
				if (hexString.length() < 2) {
					hexString = "0" + hexString;// 如果是1位的话,补0
				}
				sb.append(hexString);
			}
			return sb.toString();

		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
			// 没有该算法时,抛出异常,不会走到这里
		}
		return "";
	}

	/**
	 * 获取包的信息
	 * 
	 * @param activity
	 *            上下文
	 * @param flge
	 *            0 = PackageName 1 = VersionName 2 = VersionCode
	 * @return
	 */
	public static String getPackageInfo(Context context, int flge) {
		// 获得包管理
		PackageManager packageManager = context.getPackageManager();
		try {
			// 获取包信息
			PackageInfo packageInfo = packageManager.getPackageInfo(
					context.getPackageName(), 0);
			String Info = "";
			switch (flge) {
			case 0:
				Info = packageInfo.packageName;
				break;
			case 1:
				Info = packageInfo.versionName;
				break;
			case 2:
				Info = packageInfo.versionCode + "";
				break;
			}
			return Info;
		} catch (NameNotFoundException e) {
			// 没有找到包名的时候会走此异常
			e.printStackTrace();
		}
		return "";
	}

	/**
	 * 复制文件至文件系统
	 * 
	 * @param activity
	 *            上下文
	 * @param fileName
	 *            文件名称(带后缀名)<文件须放在项目assets文件夹下>
	 * @throws IOException
	 *             抛出IO异常
	 */
	public static void copyFile(Activity activity, String fileName)
			throws IOException {
		File file = new File(activity.getFilesDir(), fileName);
		if (file.exists()) {
			return;
		}
		InputStream in = null;
		FileOutputStream out = null;
		in = activity.getAssets().open(fileName);
		out = new FileOutputStream(file);
		int lenght = 0;
		byte[] buffer = new byte[1024];
		while ((lenght = in.read(buffer)) != -1) {
			out.write(buffer, 0, lenght);
		}
		in.close();
		out.close();
	}


	/**
	 * 获取双击点击事件
	 * 
	 * @param interval
	 *            双击点击间隔时间
	 * @return true = 获取双击 false = 获取单击
	 */
	static long[] mHits = new long[2];// 数组长度表示要点击的次数
	public static Boolean doubleOnClik(long interval) {

		System.arraycopy(mHits, 1, mHits, 0, mHits.length - 1);
		mHits[mHits.length - 1] = SystemClock.uptimeMillis();// 获取系统时间(单位:毫秒)
		if (mHits[0] >= (SystemClock.uptimeMillis() - interval)) {
			// 双击响应确认
			return true;
		}
		return false;
	}
	/**
	 * 卸载APK
	 * @param activity 上下文
	 * @param packName 卸载APK包名
	 */
	public void removeApk(Activity activity ,String packName) {
		Intent intent = new Intent("android.intent.action.DELETE");
		intent.addCategory("android.intent.category.DEFAULT");
		intent.setData(Uri.parse("package:" + packName));
		activity.startActivity(intent);
	}
}
