package com.example.asynctask;

import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;

import android.app.Activity;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.AsyncTask;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.ImageView;
import android.widget.ProgressBar;

public class AsyncTaskActivity extends Activity {
	private ImageView mImageView;
	private ProgressBar mProgressBar;
	private static final String url = "http://img.my.csdn.net/uploads/201504/12/1428806103_9476.png";
	public static final String TAG = "black";
	private MyAsyncTask mTask;
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.asynctask_activity);
		mImageView = (ImageView) findViewById(R.id.iv);
		mProgressBar = (ProgressBar) findViewById(R.id.pb);
		mTask = new MyAsyncTask();
		//启动AsyncTask
		mTask.execute(url);
	}
	@Override
	protected void onPause() {
		super.onPause();
		if(mTask != null && mTask.getStatus() == AsyncTask.Status.RUNNING){
			mTask.cancel(true);
		}
	}
	class MyAsyncTask extends AsyncTask<String , Integer, Bitmap >{
		@Override
		protected void onPreExecute() {
			super.onPreExecute();
			Log.d(TAG, "onPreExecute");
			mImageView.setVisibility(View.GONE);
			mProgressBar.setVisibility(View.VISIBLE);
		}
		/**
		 * 操作UI，设置图片
		 */
		@Override
		protected void onPostExecute(Bitmap bitmap) {
			super.onPostExecute(bitmap);
			Log.d(TAG, "onPostExecute");
			mProgressBar.setVisibility(View.GONE);
			mImageView.setVisibility(View.VISIBLE);
			mImageView.setImageBitmap(bitmap);
		}
		@Override
		protected Bitmap doInBackground(String... params) {
			Bitmap bitmap = null;
			String url = params[0];
			URLConnection connection;
			InputStream is;
			Log.d(TAG, "doInBackground");
			try {
				connection = new URL(url).openConnection();
				is = connection.getInputStream();
				BufferedInputStream bis = new BufferedInputStream(is);
				bitmap = BitmapFactory.decodeStream(is);
				is.close();
				bis.close();
			} catch (MalformedURLException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
			for (int i = 0; i < 100; i++) {
				if (isCancelled()) {
					break;
				}
				publishProgress(i);
				try {
					Thread.sleep(50);
				} catch (InterruptedException e) {
					e.printStackTrace();
				}
			}
			return bitmap;
		}
		@Override
		protected void onProgressUpdate(Integer... values) {
			super.onProgressUpdate(values);
			if(values[0] == 1||values[0] == 99)
				Log.d(TAG, "onProgressUpdate");
			if (isCancelled()) {
				return;
			}
			mProgressBar.setProgress(values[0]);
		}
		
	}
}

