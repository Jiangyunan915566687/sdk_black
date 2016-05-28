package com.example.volleyload;


import java.util.List;

import android.content.Context;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.TextView;

public class NewsAdapter extends BaseAdapter implements OnScrollListener{
	private static final String TAG = "black";
	private List<NewsBean> mList;
	private LayoutInflater mInflater;
	private ImageLoader mImageLoader;
	private int mStart,mEnd;
	public static String[] UrlS;
	private boolean mFirstIn;
	
	public NewsAdapter(Context context,List<NewsBean> data,ListView listView){
		mList = data;
		mInflater = LayoutInflater.from(context);
		mImageLoader = new ImageLoader(listView);
		UrlS = new String[data.size()];
		for (int i = 0; i < data.size(); i++) {
			UrlS[i] = data.get(i).getNewIconUrl();			
		}
		mFirstIn = true;
		listView.setOnScrollListener(this);
	}
	@Override
	public int getCount() {
		return mList.size();
	}

	@Override
	public Object getItem(int position) {
		return mList.get(position);
	}

	@Override
	public long getItemId(int position) {
		return position;
	}

	@Override
	public View getView(int position, View convertView, ViewGroup parent) {
		ViewHolder viewHolder = null;
		if(convertView == null){
			viewHolder = new ViewHolder();
			convertView = mInflater.inflate(R.layout.item_listview, null);
			viewHolder.ivIcon = (ImageView) convertView.findViewById(R.id.iv_icon);
			viewHolder.tvTitle = (TextView) convertView.findViewById(R.id.tv_title);
			viewHolder.tvContent = (TextView) convertView.findViewById(R.id.tv_content);
			convertView.setTag(viewHolder);
		}else{
			viewHolder = (ViewHolder) convertView.getTag();
		}		
		viewHolder.ivIcon.setImageResource(R.drawable.ic_launcher);
		String url = mList.get(position).getNewIconUrl();
		viewHolder.ivIcon.setTag(url);
		//new ImageLoader().showImageByThread(viewHolder.ivIcon, url);
		mImageLoader.showImageByAsyncTask(viewHolder.ivIcon, url);
		viewHolder.tvTitle.setText(mList.get(position).getNewTitle());
		viewHolder.tvContent.setText(mList.get(position).getNewContent());
		return convertView;
	}
	class ViewHolder{
		public TextView tvTitle;
		public TextView tvContent;
		public ImageView ivIcon;
		
	}
	/**
	 * 按下滚动之后调用
	 */
	@Override
	public void onScroll(AbsListView view, int fristVisibleItem, int visibleItemCount, int totalItem) {
		mStart = fristVisibleItem;
		mEnd = fristVisibleItem + visibleItemCount;
		//Log.d(TAG, "onScroll ->"+ "visibleItemCount= " +visibleItemCount);
		//判断为进入界面，立即进行下载图片
		if(mFirstIn && visibleItemCount > 0 ){
			mImageLoader.loadImages(mStart, mEnd);
			mFirstIn = false;
		}
	}
	/**
	 * 释放滚动之后调用
	 */
	@Override
	public void onScrollStateChanged(AbsListView view, int scrollState) {
		if(scrollState == SCROLL_STATE_IDLE){//是否为停止状态 0  运动状态 1		
			mImageLoader.loadImages(mStart, mEnd);
		}else{
			mImageLoader.cancelAllTasks();
		}
		Log.d(TAG, "onScrollStateChanged - " + scrollState);	
	}
	
}
