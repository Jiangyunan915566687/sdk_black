package com.itheima62.mobileguard.fragment;

import java.util.ArrayList;
import java.util.List;

import com.itheima62.mobileguard.R;
import com.itheima62.mobileguard.dao.LockedDao;
import com.itheima62.mobileguard.domain.AppBean;
import com.itheima62.mobileguard.engine.AppManagerEngine;


import android.graphics.Color;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.app.Fragment;
import android.view.Gravity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.View.OnClickListener;
import android.widget.AbsListView;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.AbsListView.OnScrollListener;

/**
 * 已加速的fragment
 * 
 * @author Administrator
 * 
 */
public class BaseLockOrUnlockFragment extends Fragment {
	protected static final int LOADING = 1;
	protected static final int FINISH = 2;
	protected TextView tv_lab;
	protected ListView lv_datas;
	protected MyAdapter  adapter = new MyAdapter(); ;
	protected List<String> allLockedPacks;//所有加锁的app的包名
	
	
	public List<String> getAllLockedPacks() {
		return allLockedPacks;
	}

	public void setAllLockedPacks(List<String> allLockedPacks) {
		this.allLockedPacks = allLockedPacks;
	}

	@Override
	public void onCreate(Bundle savedInstanceState) {
		//程序锁的业务类对象
		dao = new LockedDao(getActivity());
		System.out.println("root:" + root);
		
		super.onCreate(savedInstanceState);
	}
	
	private void initEvent() {
		lv_datas.setOnScrollListener(new OnScrollListener() {
			
			@Override
			public void onScrollStateChanged(AbsListView view, int scrollState) {
				// TODO Auto-generated method stub
				
			}
			
			@Override
			public void onScroll(AbsListView view, int firstVisibleItem,
					int visibleItemCount, int totalItemCount) {
				if (firstVisibleItem <= unlockedUserDatas.size()) {
					//用户软件
					tv_listview_tag.setText("用户软件(" + unlockedUserDatas.size() + ")");
				} else {
					tv_listview_tag.setText("系统软件(" + unlockedSystemDatas.size() + ")");
				}
			}
		});
	}

	//存放未加锁的app  系统
	protected List<AppBean> unlockedSystemDatas = new ArrayList<AppBean>();
	//存放未加锁的app  用户
	protected List<AppBean> unlockedUserDatas = new ArrayList<AppBean>();

	/* (non-Javadoc)
	 * 显示的view 
	 * @see android.support.v4.app.Fragment#getView()
	 */
	@Override
	public View onCreateView(LayoutInflater inflater, ViewGroup container,
			Bundle savedInstanceState) {

       
		root = inflater.inflate(R.layout.fragment_unlocked, null);
	    
	    //显示未加锁软件的个数
	    tv_lab = (TextView) root.findViewById(R.id.tv_fragment_unlocked_lab);
	    
	    //显示所有未加锁的软件
	    lv_datas = (ListView) root.findViewById(R.id.lv_fragment_unlocked_datas);
	    
	    //listview的tag
	    tv_listview_tag = (TextView) root.findViewById(R.id.tv_fragment_unlocked_listview_tag);
	    
	    //加载数据进度
	    pb_loading = (ProgressBar) root.findViewById(R.id.pb_fragment_loading);
	    
	   
	    lv_datas.setAdapter(adapter);
	    
		return root;
	}
	
	@Override
	public void onResume() {
		//listview的适配器
	   
	    
	    
		initData();//初始化数据
		initEvent();//初始化事件
		super.onResume();
	}
	
	private Handler handler = new Handler(){
		public void handleMessage(android.os.Message msg) {
			switch (msg.what) {
			case LOADING://加载数据
				pb_loading.setVisibility(View.VISIBLE);
				tv_listview_tag.setVisibility(View.GONE);
				lv_datas.setVisibility(View.GONE);
				
				break;
				
			case FINISH://加载数据完成
				pb_loading.setVisibility(View.GONE);
				tv_listview_tag.setVisibility(View.VISIBLE);
				lv_datas.setVisibility(View.VISIBLE);
				
				
				
				//设置未加锁app个数
				setLockNumberTextView();
				
				tv_listview_tag.setText("用户软件(" + unlockedUserDatas.size() + ")");
				adapter.notifyDataSetChanged();//通知界面更新数据
				
				break;
			default:
				break;
			}
		}

		
	};
	protected void setLockNumberTextView() {
		
	};
	private TextView tv_listview_tag;
	private ProgressBar pb_loading;
	protected LockedDao dao;
	private View root;
	
	protected void initData() {
		new Thread(){
			public void run() {
				synchronized (new Object()) {
					handler.obtainMessage(LOADING).sendToTarget();//发送加载数据的消息
					
					
					//取所有的app数据
					List<AppBean> allApks = AppManagerEngine.getAllApks(getActivity());
					//判断是否加锁
					//先清空容器中的数据
					unlockedSystemDatas.clear();
					unlockedUserDatas.clear();
					for (AppBean appBean : allApks) {
						if (isMyData(appBean.getPackName())) {
							//加锁
							
							if (appBean.isSystem()) {//判断
								//系统app
								unlockedSystemDatas.add(appBean);
							} else {
								//用户的app
								unlockedUserDatas.add(appBean);
							}
						}
					}
					
					handler.obtainMessage(FINISH).sendToTarget();//发送数据加载完成
					
				}
				
			};
		}.start();
	}
	
	public boolean isMyData(String packName){
		return false;
	}

	private class MyAdapter extends BaseAdapter{

		@Override
		public int getCount() {
			
			return unlockedSystemDatas.size() + 1 + unlockedUserDatas.size() + 1;
		}

		@Override
		public Object getItem(int position) {
			try {
				if (position <= unlockedUserDatas.size() ) {
					return unlockedUserDatas.get(position - 1); 
				} else {
					return unlockedSystemDatas.get(position - 2 - unlockedUserDatas.size());
				}
			} catch (Exception e) {
				return null;
			}
			
		}

		@Override
		public long getItemId(int position) {
			// TODO Auto-generated method stub
			return 0;
		}

		@Override
		public View getView(int position, View convertView, ViewGroup parent) {
			if (position == 0) {
				// 用户apk的标签
				TextView tv_userTable = new TextView(getActivity());
				tv_userTable.setText("个人软件(" + unlockedUserDatas.size() + ")");
				tv_userTable.setTextColor(Color.WHITE);// 文字为白色
				tv_userTable.setBackgroundColor(Color.GRAY);// 文字背景为灰色
				return tv_userTable;
			} else if (position == unlockedUserDatas.size() + 1) {
				// 系统apk标签
				TextView tv_userTable = new TextView(getActivity());
				tv_userTable.setText("系统软件(" + unlockedSystemDatas.size() + ")");
				tv_userTable.setTextColor(Color.WHITE);// 文字为白色
				tv_userTable.setBackgroundColor(Color.GRAY);// 文字背景为灰色
				return tv_userTable;
			} else {
				// 界面的缓存
				ViewHolder holder = new ViewHolder();

				// 判断是否存在缓存
				if (convertView != null
						&& convertView instanceof RelativeLayout) {
					holder = (ViewHolder) convertView.getTag();
				} else {
					convertView = View.inflate(getActivity(),
							R.layout.item_fragment_unlock_listview_item, null);

					holder.iv_icon = (ImageView) convertView
							.findViewById(R.id.iv_fragment_unlock__listview_item_icon);
					holder.tv_name = (TextView) convertView
							.findViewById(R.id.tv_fragment_unlock__listview_item_title);
					
					holder.iv_lock = (ImageView) convertView.findViewById(R.id.iv_fragment_unlock__listview_lock);
					// 绑定tag
					convertView.setTag(holder);
				}

				final AppBean bean = (AppBean) getItem(position);
				if (bean == null){
					return convertView;//复用缓存的界面
				}

				// 设置数据
				holder.iv_icon.setImageDrawable(bean.getIcon());// 设置图标

				
				holder.tv_name.setText(bean.getAppName());// 设置名字
				
				setImageViewEventAndBg(holder.iv_lock,convertView,bean.getPackName());
				return convertView;
			}
			
		}
		
	}
	
	/**
	 * @param iv_lock
	 *     加锁的按钮
	 * @param convertView
	 *     item的根布局
	 * @param packName
	 *     包名
	 */
	public void setImageViewEventAndBg(ImageView iv_lock,View convertView, String packName){
		
	}
	
	private class ViewHolder {
		ImageView iv_icon;
		TextView tv_name;
		ImageView iv_lock;
	}
}
