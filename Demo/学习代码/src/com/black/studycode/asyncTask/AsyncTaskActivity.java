package com.black.studycode.asyncTask;

import com.blacknife.studycode.R;

import android.R.integer;
import android.app.Activity;
import android.graphics.Bitmap;
import android.os.AsyncTask;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.ProgressBar;

public class AsyncTaskActivity extends Activity {
	private Button bt;
	private ImageView iv;
	private ProgressBar pb;

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		super.onCreate(savedInstanceState);
		initView();
	}

	public void imagetest(View v) {
		bt.setVisibility(View.GONE);
		
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
