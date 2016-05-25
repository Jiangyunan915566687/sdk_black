package com.blacknife.asyncload;

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

import com.android.volley.Request.Method;
import com.android.volley.Response.Listener;
import com.android.volley.toolbox.JsonObjectRequest;

import android.app.Activity;
import android.os.AsyncTask;
import android.os.Bundle;
import android.util.Log;
import android.widget.ListView;

public class MainActivity extends Activity {
	
	private ListView mListView;
	private static String url = "http://www.imooc.com/api/teacher?type=4&num=30";
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);
		mListView = (ListView) findViewById(R.id.lv_main);
		Log.d("black", "开始运行");
		new MyAsyncTask().execute(url);
	}
	class MyAsyncTask extends AsyncTask<String, Void, List<NewsBean>>{

		@Override
		protected List<NewsBean> doInBackground(String... params) {
			
			//return getJsonData(params[0]);
			return getJsonDataVolley(params[0]);
		}
		@Override
		protected void onPostExecute(List<NewsBean> result) {
			super.onPostExecute(result);
			Log.d("black", "adapter配置");
			NewsAdapter adapter = new NewsAdapter(MainActivity.this, result,mListView);
			mListView.setAdapter(adapter);
		}
		
	}
	private List<NewsBean> getJsonDataVolley(String url) {
		List<NewsBean> newsBeanList = new ArrayList<NewsBean>();
		JsonObjectRequest request = new JsonObjectRequest(Method.GET, url, null, new Listener<JSONObject>() {

			@Override
			public void onResponse(JSONObject response) {
				
			}
		}, null);
		
		return newsBeanList;
	}
	private List<NewsBean> getJsonData(String url) {
		List<NewsBean> newsBeanList = new ArrayList<NewsBean>();
		try {
			String jsonString = readStream(new URL(url).openStream());
			//Log.d("black", jsonString);
			JSONObject jsonObject;
			NewsBean newsBean;
			jsonObject = new JSONObject(jsonString);
			JSONArray jsonArray = new JSONObject(jsonString).getJSONArray("data");
			for(int i = 0; i < jsonArray.length(); i++){
				jsonObject = jsonArray.getJSONObject(i);
				newsBean = new NewsBean();
				newsBean.setNewIconUrl(jsonObject.getString("picSmall"));
				newsBean.setNewTitle(jsonObject.getString("name"));
				newsBean.setNewContent(jsonObject.getString("description"));
				newsBeanList.add(newsBean);
			}
			Log.d("black", newsBeanList.size()+"");
		} catch (MalformedURLException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		} catch (JSONException e) {
			e.printStackTrace();
		}
		return newsBeanList;
	}
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
}
