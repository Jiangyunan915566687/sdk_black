package com.example.volleyload;


import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
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
		//获取运行内存的最大值
		int maxMemory = (int) Runtime.getRuntime().maxMemory();
		//定义最大缓存空间的大小
		int cacheSize = maxMemory / 4;
		mCaches = new LruCache<String, Bitmap>(cacheSize){
			@Override
			protected int sizeOf(String key, Bitmap value) {
				//每次写入缓存的时候调用，获取缓存的剩余值
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
	/**
	 * 添加Bitmap到Cache中
	 * @param url		bitmap的url作为数据的key
	 * @param bitmap	Bitmap对象数据
	 */
	public void addBitmapToCache(String url,Bitmap bitmap){
		if(getBitmapFromCache(url) == null){
			//将key、bitmap 放到 mCaches中保存
			mCaches.put(url, bitmap);
		}
	}
	
	/**
	 * 从Cache中获取缓存的bitmap
	 * @param url		bitmap对应的url
	 * @return
	 */
	public Bitmap getBitmapFromCache(String url){
		//通过key 从mCaches中 获取对应的 Bitmap对象
		return mCaches.get(url);
	}
	
	/**
	 * 用Thread来下载Bitmap对象
	 * @param imageView	bitmap设置的imageView控件
	 * @param url		bitmap下载url
	 */
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
	/**
	 * 用AsyncTask来下载Bitmap对象
	 * @param imageView	bitmap设置的imageView控件
	 * @param url		bitmap下载url
	 */
	public void showImageByAsyncTask(ImageView imageView,final String url){
		Bitmap bitmap = getBitmapFromCache(url);
		if( bitmap == null){
			//通过AsyncTask来下载bitmap
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
		//private ImageView mImageV;
		private String murl;
		
		private NewsAsyncTask(/*ImageView imageView,*/String url){
			//mImageV = imageView;
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
	public Bitmap getBitmapFromUrl(String urlString){
		Bitmap bitmap;
		InputStream is;
		try {
			URL url = new URL(urlString);
			HttpURLConnection connection = (HttpURLConnection) url.openConnection();
			is = new BufferedInputStream(connection.getInputStream());
			bitmap = BitmapFactory.decodeStream(is);
			is.close();
			Thread.sleep(50);
			return bitmap;
		} catch (MalformedURLException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		} catch (InterruptedException e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
		} 
		return null;
	}
	
	public void cancelAllTasks() {
		if(mTask != null ){
			for (NewsAsyncTask task : mTask) {
				task.cancel(false);
			}
		}
	}
}
