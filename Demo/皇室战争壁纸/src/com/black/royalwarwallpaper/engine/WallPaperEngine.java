package com.black.royalwarwallpaper.engine;

import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;

import com.black.royalwarwallpaper.R;
import com.black.royalwarwallpaper.uilts.ToastUtils;

import android.app.Activity;
import android.app.WallpaperManager;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.util.DisplayMetrics;
import android.util.Log;

public class WallPaperEngine {
	private static final String TAG = "black";
	public static void setWallPaper(Activity activity) {
		try {
			WallpaperManager wallpaperManager = WallpaperManager.getInstance(activity);
			InputStream is = new BufferedInputStream(activity.getResources().openRawResource(R.drawable.background));
			Bitmap bitmap = BitmapFactory.decodeStream(is);
			// WindowManager wm = (WindowManager)
			// this.getSystemService(Context.WINDOW_SERVICE);
			DisplayMetrics dm = new DisplayMetrics();
			activity.getWindowManager().getDefaultDisplay().getMetrics(dm);
			int screenWidth = dm.widthPixels;// 获取屏幕的宽度
			int screenHeight = dm.heightPixels;// 获取屏幕的高度
			// int width = wm.getDefaultDisplay().getWidth();// 屏幕宽度
			// int height = wm.getDefaultDisplay().getHeight();
			Log.d(TAG, "Pwidth :" + screenWidth + "Pheight :" + screenHeight);
			bitmap = zoomImg(bitmap, screenWidth, screenHeight);
			bitmap = toConformBitmap(bitmap, bitmap);
			Log.d(TAG, "TNwidth :" + bitmap.getWidth() + "TNheight :" + bitmap.getHeight());
			wallpaperManager.setBitmap(bitmap);
		} catch (IOException e) {
			e.printStackTrace();
		}
		ToastUtils.showToast(activity, "设置成功");
	}
	private static Bitmap zoomImg(Bitmap bitmap, int newWidth, int newHeight) {
		// 获得图片的宽高
		int width = bitmap.getWidth();
		int height = bitmap.getHeight();
		Log.d(TAG, "Twidth :" + width + "Theight :" + height);
		// 计算缩放比例
		float scaleWidth = ((float) 1 * newWidth) / width;
		float scaleHeight = ((float) newHeight) / height;
		// 取得想要缩放的matrix参数
		Matrix matrix = new Matrix();
		matrix.postScale(scaleWidth, scaleHeight);
		// 得到新的图片
		Bitmap newbitmap = Bitmap.createBitmap(bitmap, 0, 0, width, height, matrix, true);
		return newbitmap;
	}

	/**
	 * 合并bitmap
	 * 
	 * @param leftBitmap
	 *            合并的左边bitmap
	 * @param RightBitmap
	 *            合并的右边bitmap
	 * @return
	 */
	private static Bitmap toConformBitmap(Bitmap leftBitmap, Bitmap RightBitmap) {
		if (leftBitmap == null) {
			return null;
		}

		int leftWidth = leftBitmap.getWidth();
		int RightWidth = RightBitmap.getWidth();
		int Height = leftBitmap.getHeight();
		// 创建一个新的位图,供图片拼接
		Bitmap newBitmap = Bitmap.createBitmap(leftWidth + RightWidth, Height, Config.ARGB_4444);
		Canvas cv = new Canvas(newBitmap);
		// 在 0，0坐标开始画入leftBitmap
		cv.drawBitmap(leftBitmap, 0, 0, null);
		// 在 leftWidth，0坐标开始画入RightBitmap
		cv.drawBitmap(RightBitmap, leftWidth, 0, null);
		cv.save(Canvas.ALL_SAVE_FLAG);// 保存
		cv.restore();// 存储
		return newBitmap;
	}

}
