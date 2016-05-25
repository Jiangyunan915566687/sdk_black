package com.example.volleyload;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONStringer;

import com.android.volley.Request.Method;
import com.android.volley.Response.Listener;
import com.android.volley.toolbox.StringRequest;

import android.app.Activity;
import android.graphics.Bitmap;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.Parcelable;
import android.util.Log;
import android.widget.ListView;
import android.widget.Toast;

public class MainActivity extends Activity {
	
	private ListView mListView;
	private static String url = "http://www.imooc.com/api/teacher?type=4&num=30";
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);
		mListView = (ListView) findViewById(R.id.lv_main);
		Log.d("black", "开始运行");
		getJsonDataVolley(url);
		//new MyAsyncTask().execute(url);
	}
	/*
	class MyAsyncTask extends AsyncTask<String, Void, List<NewsBean>>{

		@Override
		protected List<NewsBean> doInBackground(String... params) {
			
			return getJsonData(params[0]);
		}
		@Override
		protected void onPostExecute(List<NewsBean> result) {
			super.onPostExecute(result);
			Log.d("black", "adapter配置");
			NewsAdapter adapter = new NewsAdapter(MainActivity.this, result,mListView);
			mListView.setAdapter(adapter);
		}
		
	}
	*/
	private Handler mHandler = new Handler(){
		public void handleMessage(Message msg) {
			super.handleMessage(msg);
			Log.d("balck", "我来到了handler");
			Toast.makeText(getApplicationContext(), "我来到了handler", Toast.LENGTH_SHORT).show();
			List<NewsBean> result = (List<NewsBean>) msg.obj;
			
			NewsAdapter adapter = new NewsAdapter(MainActivity.this, result ,mListView);
			mListView.setAdapter(adapter);
		};
	};
	private void getJsonDataVolley(String url) {
		StringRequest request = new StringRequest(Method.GET, url, new Listener<String>() {
			@Override
			public void onResponse(String response) {
				List<NewsBean> newsBeanList = new ArrayList<NewsBean>();
				JSONObject jsonObject;
				NewsBean newsBean;
				try {
					jsonObject = new JSONObject(response);				
					JSONArray jsonArray = new JSONObject(response).getJSONArray("data");
					for(int i = 0; i < jsonArray.length(); i++){
						jsonObject = jsonArray.getJSONObject(i);
						newsBean = new NewsBean();
						newsBean.setNewIconUrl(jsonObject.getString("picSmall"));
						newsBean.setNewTitle(jsonObject.getString("name"));
						newsBean.setNewContent(jsonObject.getString("description"));
						newsBeanList.add(newsBean);
					}
					Message msg = new Message();
		            msg.obj = newsBeanList;
					mHandler.sendMessage(msg);
				} catch (JSONException e) {
					e.printStackTrace();
				}				
			}
		}, null);
		MyApplication.getHttpQueues().add(request);
	}
	/*
	private String readStream(InputStream is){
		InputStreamReader isr;
		String result = "";
		try {
			String line = "";
			isr = new InputStreamReader(is, "utf-8");
			BufferedReader br = new BufferedReader(isr);
			while((line = br.readLine()) != null ){
				result += line;
			}
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return result;
	}
	*/
}
