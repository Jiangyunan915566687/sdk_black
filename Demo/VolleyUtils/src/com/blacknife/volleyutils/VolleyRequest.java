package com.blacknife.volleyutils;

import java.util.Map;

import com.android.volley.AuthFailureError;
import com.android.volley.Request.Method;
import com.android.volley.VolleyError;
import com.android.volley.toolbox.StringRequest;

import android.app.Activity;
import android.content.Context;
import android.util.Log;
import android.widget.Toast;

public class VolleyRequest {
	public static StringRequest stringRequest;
	public static Context context;

	public static void RequestGet(Context context, String url, String tag, VolleyInterface vif) {
		MyApplication.getHttpQueues().cancelAll(tag);
		stringRequest = new StringRequest(Method.GET, url, vif.loadingListener(), vif.errorListener());
		stringRequest.setTag(tag);
		MyApplication.getHttpQueues().add(stringRequest);
		MyApplication.getHttpQueues().start();
	}

	public static void RequestGet(final Context context, String url, String tag, final Activity activity) {
		MyApplication.getHttpQueues().cancelAll(tag);
		VolleyInterface vif = new VolleyInterface(context, VolleyInterface.mListener, VolleyInterface.mErrorListener) {

			@Override
			public void onMySuccess(final String result) {
				Log.d("black", "newcome!");
				activity.runOnUiThread(new Runnable() {
					public void run() {
						//Toast.makeText(activity, result, Toast.LENGTH_SHORT).show();
						MainActivity.resuleString = result;
					}
				});
			}

			@Override
			public void onMyError(VolleyError error) {
				Log.d("black", "newnocome!");
			}
		};
		stringRequest = new StringRequest(Method.GET, url, vif.loadingListener(), vif.errorListener());
		stringRequest.setTag(tag);
		MyApplication.getHttpQueues().add(stringRequest);
		MyApplication.getHttpQueues().start();
	}

	public static void RequestPost(Context context, String url, String tag, Map<String, String> params,
			VolleyInterface vif) {
		MyApplication.getHttpQueues().cancelAll(tag);
		stringRequest = new StringRequest(Method.POST, url, vif.loadingListener(), vif.errorListener()) {
			@Override
			protected Map<String, String> getParams() throws AuthFailureError {
				return super.getParams();
			}
		};
		stringRequest.setTag(tag);
		MyApplication.getHttpQueues().add(stringRequest);
		MyApplication.getHttpQueues().start();
	}
}
