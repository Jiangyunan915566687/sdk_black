package com.blacknife.asyncload;

import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.util.HashSet;
import java.util.Set;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.AsyncTask;
import android.os.Handler;
import android.os.Message;
import android.util.LruCache;
import android.widget.ImageView;
import android.widget.ListView;

public class ImageLoader {
	private ImageView mImageView;
	private String mUrl;
	private LruCache<String ,Bitmap> mCaches;
	private ListView mListView;
	private Set<NewsAsyncTask> mTask;
	
	public ImageLoader(ListView listView){
		mListView = listView;
		mTask = new HashSet<NewsAsyncTask>();
		int maxMemory = (int) Runtime.getRuntime().maxMemory();
		int cacheSize = maxMemory / 4;
		mCaches = new LruCache<String, Bitmap>(cacheSize){
			@Override
			protected int sizeOf(String key, Bitmap value) {
				//每次写入缓存的时候调用
				return value.getByteCount();
			}
		};
	}

	private Handler mHandler = new Handler(){
		public void handleMessage(Message msg) {
			super.handleMessage(msg);
			if(mImageView.getTag().equals(mUrl))
			mImageView.setImageBitmap((Bitmap) msg.obj);			
		};
	};
	public void addBitmapToCache(String url,Bitmap bitmap){
		if(getBitmapFromCache(url) == null){
			mCaches.put(url, bitmap);
		}
	}
	public Bitmap getBitmapFromCache(String url){
		return mCaches.get(url);
	}
	
	public void showImageByThread(ImageView imageView,final String url){
		mImageView = imageView;
		mUrl = url;
		new Thread(){
			@Override
			public void run() {
				super.run();
				Bitmap bitmap = getBitmapFromUrl(url);
				Message message = Message.obtain();
				message.obj = bitmap;
				mHandler.sendMessage(message);
			}
		}.start();;
	}
	public Bitmap getBitmapFromUrl(String urlString){
		Bitmap bitmap;
		InputStream is;
		try {
			URL url = new URL(urlString);
			HttpURLConnection connection = (HttpURLConnection) url.openConnection();
			is = new BufferedInputStream(connection.getInputStream());
			bitmap = BitmapFactory.decodeStream(is);
			is.close();
			//Thread.sleep(50);
			return bitmap;
		} catch (MalformedURLException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		} 
		return null;
	}
	public void showImageByAsyncTask(ImageView imageView,final String url){
		Bitmap bitmap = getBitmapFromCache(url);
		if( bitmap == null){
			//new NewsAsyncTask(imageView,url).execute(url);
			imageView.setImageResource(R.drawable.ic_launcher);;
		}else{
			imageView.setImageBitmap(bitmap);
		}
	}
	
	public void loadImages(int start ,int end ){
		for (int i = start; i < end; i++) {
			String url = NewsAdapter.UrlS[i];
			Bitmap bitmap = getBitmapFromCache(url);
			if( bitmap == null){
				NewsAsyncTask task = new NewsAsyncTask(url);
				task.execute(url);
				mTask.add(task);
			}else{
				ImageView imageView = (ImageView) mListView.findViewWithTag(url);
				imageView.setImageBitmap(bitmap);
			}
		}
	}
	private class NewsAsyncTask extends AsyncTask<String, Void, Bitmap>{
		
		private String murl;
		
		private NewsAsyncTask(String url){
			murl = url;
		}
		
		@Override
		protected Bitmap doInBackground(String... params) {		
			String url = params[0];
			Bitmap bitmap = getBitmapFromUrl(url);
			if(bitmap != null){
				addBitmapToCache(url, bitmap);
			}
			return bitmap;
		}
		@Override
		protected void onPostExecute(Bitmap result) {
			super.onPostExecute(result);			
			ImageView imageView = (ImageView) mListView.findViewWithTag(murl);
			if(imageView != null && result != null){
				imageView.setImageBitmap(result);
			}
			mTask.remove(this);
		}
	}
	
	public void cancelAllTasks() {
		if(mTask != null ){
			for (NewsAsyncTask task : mTask) {
				task.cancel(false);
			}
		}
	}
	
}
