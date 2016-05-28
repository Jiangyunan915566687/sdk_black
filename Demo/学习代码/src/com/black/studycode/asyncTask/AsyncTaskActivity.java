package com.black.studycode.asyncTask;

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
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.ProgressBar;

import com.blacknife.studycode.R;

public class AsyncTaskActivity extends Activity {
	private static final String Url = "http://img.my.csdn.net/uploads/201504/12/1428806103_9476.png";
	private Button bt;
	private ImageView iv;
	private ProgressBar pb;
	private MyAsyncTask mTask;
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		super.onCreate(savedInstanceState);
		initView();
	}

	public void imagetest(View v) {
		bt.setVisibility(View.GONE);

		mTask = new MyAsyncTask();
		mTask.execute(Url);
	}

	private void initView() {
		setContentView(R.layout.asynctask_activity);
		bt = (Button) findViewById(R.id.bt);
		iv = (ImageView) findViewById(R.id.iv);
		pb = (ProgressBar) findViewById(R.id.pb);
	}
	class MyAsyncTask extends AsyncTask<String, Integer, Bitmap>{
		@Override
		protected void onPreExecute() {
			super.onPreExecute();
			iv.setVisibility(View.GONE);
			pb.setVisibility(View.VISIBLE);
		}
		
		@Override
		protected Bitmap doInBackground(String... params) {
			Bitmap bitmap = null;
			String url = params[0];
			URLConnection connection;
			InputStream is;
			try {
				connection = new URL(url).openConnection();
				is = connection.getInputStream();
				bitmap = BitmapFactory.decodeStream(is);
				is.close();
			} catch (MalformedURLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
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
			if (isCancelled()) {
				return;
			}
			pb.setProgress(values[0]);
		}
		
		@Override
		protected void onPostExecute(Bitmap result) {
			// TODO Auto-generated method stub
			super.onPostExecute(result);
			iv.setVisibility(View.VISIBLE);
			pb.setVisibility(View.GONE);
			iv.setImageBitmap(result);
		}
	}
}
