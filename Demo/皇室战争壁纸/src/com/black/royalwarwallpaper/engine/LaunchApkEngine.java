package com.black.royalwarwallpaper.engine;

import java.io.File;

import com.black.royalwarwallpaper.activity.MainActivity;
import com.black.royalwarwallpaper.service.DownloadService;
import com.black.royalwarwallpaper.uilts.ToastUtils;
import com.lidroid.xutils.HttpUtils;
import com.lidroid.xutils.exception.HttpException;
import com.lidroid.xutils.http.ResponseInfo;
import com.lidroid.xutils.http.callback.RequestCallBack;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Environment;
import android.util.Log;

public class LaunchApkEngine {
	/**
	 * 下载apk文件
	 */
	public static boolean downloadApk(final Activity activity,String mDownloadUrl) {
		if (Environment.getExternalStorageState().equals(Environment.MEDIA_MOUNTED)) {
			final String target = Environment.getExternalStorageDirectory() + "/NewApk.apk";
			//getApplicationContext().getFilesDir().getAbsolutePath() + "/NewApk.apk";
			Log.d(MainActivity.TAG, target);
			File file = new File(target);
			if (file.exists()) {
				Log.d(MainActivity.TAG, "Apk已存在");
				installApk(activity,target);
				return false;
			}
			Log.d(MainActivity.TAG, "Apk不存在，正在下载");
			// xUtils
			HttpUtils utils = new HttpUtils();
			utils.download(mDownloadUrl, target, new RequestCallBack<File>() {
				@Override
				public void onSuccess(ResponseInfo<File> file) {
					System.out.println("下载成功!");
					DownloadService.UpdataNotitfSuccess();
					// 跳转到系统下载页面
					installApk(activity,target);
				}

				/**
				 * 文件下载的进度
				 * 
				 * @param total
				 *            文件大小
				 * @param current
				 *            已下载进度
				 * @param isUploading
				 *            是否在上传
				 */
				@Override
				public void onLoading(long total, long current, boolean isUploading) {
					super.onLoading(total, current, isUploading);
					System.out.println("下载进度:" + current + "/" + total);
					float progress = (float) (current * 1.0 /total);
					DownloadService.UpdataNotitfProgress(progress*100);
				}

				@Override
				public void onFailure(HttpException arg0, String stringError) {
					ToastUtils.showToast(activity, "下载失败");
					DownloadService.UpdataNotitfFail(stringError);
				}

			});
		} else {
			ToastUtils.showToast(activity, "没有SD卡");
		}
		return true;
	}

	private static void installApk(Activity activity ,String target) {
		Intent intent = new Intent(Intent.ACTION_VIEW);
		intent.addCategory(Intent.CATEGORY_DEFAULT);
		String type = "application/vnd.android.package-archive";
		intent.setDataAndType(Uri.fromFile(new File(target)), type);
		activity.startActivityForResult(intent, 0);
	}
	// 判断当前是否使用的是 WIFI网络
	public static boolean isWifiActive(Context icontext) {
		Context context = icontext.getApplicationContext();
		ConnectivityManager connectivity = (ConnectivityManager) context.getSystemService(Context.CONNECTIVITY_SERVICE);
		NetworkInfo[] info;
		if (connectivity != null) {
			info = connectivity.getAllNetworkInfo();
			if (info != null) {
				for (int i = 0; i < info.length; i++) {
					Log.d(MainActivity.TAG, info[i].getTypeName());
					if (info[i].getTypeName().equals("WIFI") && info[i].isConnected()) {
						return true;
					}
				}
			}
		}
		return false;
	}
}
