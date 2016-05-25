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
 * �Ѽ��ٵ�fragment
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
	protected List<String> allLockedPacks;//���м�����app�İ���
	
	
	public List<String> getAllLockedPacks() {
		return allLockedPacks;
	}

	public void setAllLockedPacks(List<String> allLockedPacks) {
		this.allLockedPacks = allLockedPacks;
	}

	@Override
	public void onCreate(Bundle savedInstanceState) {
		//��������ҵ�������
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
					//�û����
					tv_listview_tag.setText("�û����(" + unlockedUserDatas.size() + ")");
				} else {
					tv_listview_tag.setText("ϵͳ���(" + unlockedSystemDatas.size() + ")");
				}
			}
		});
	}

	//���δ������app  ϵͳ
	protected List<AppBean> unlockedSystemDatas = new ArrayList<AppBean>();
	//���δ������app  �û�
	protected List<AppBean> unlockedUserDatas = new ArrayList<AppBean>();

	/* (non-Javadoc)
	 * ��ʾ��view 
	 * @see android.support.v4.app.Fragment#getView()
	 */
	@Override
	public View onCreateView(LayoutInflater inflater, ViewGroup container,
			Bundle savedInstanceState) {

       
		root = inflater.inflate(R.layout.fragment_unlocked, null);
	    
	    //��ʾδ��������ĸ���
	    tv_lab = (TextView) root.findViewById(R.id.tv_fragment_unlocked_lab);
	    
	    //��ʾ����δ���������
	    lv_datas = (ListView) root.findViewById(R.id.lv_fragment_unlocked_datas);
	    
	    //listview��tag
	    tv_listview_tag = (TextView) root.findViewById(R.id.tv_fragment_unlocked_listview_tag);
	    
	    //�������ݽ���
	    pb_loading = (ProgressBar) root.findViewById(R.id.pb_fragment_loading);
	    
	   
	    lv_datas.setAdapter(adapter);
	    
		return root;
	}
	
	@Override
	public void onResume() {
		//listview��������
	   
	    
	    
		initData();//��ʼ������
		initEvent();//��ʼ���¼�
		super.onResume();
	}
	
	private Handler handler = new Handler(){
		public void handleMessage(android.os.Message msg) {
			switch (msg.what) {
			case LOADING://��������
				pb_loading.setVisibility(View.VISIBLE);
				tv_listview_tag.setVisibility(View.GONE);
				lv_datas.setVisibility(View.GONE);
				
				break;
				
			case FINISH://�����������
				pb_loading.setVisibility(View.GONE);
				tv_listview_tag.setVisibility(View.VISIBLE);
				lv_datas.setVisibility(View.VISIBLE);
				
				
				
				//����δ����app����
				setLockNumberTextView();
				
				tv_listview_tag.setText("�û����(" + unlockedUserDatas.size() + ")");
				adapter.notifyDataSetChanged();//֪ͨ�����������
				
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
					handler.obtainMessage(LOADING).sendToTarget();//���ͼ������ݵ���Ϣ
					
					
					//ȡ���е�app����
					List<AppBean> allApks = AppManagerEngine.getAllApks(getActivity());
					//�ж��Ƿ����
					//����������е�����
					unlockedSystemDatas.clear();
					unlockedUserDatas.clear();
					for (AppBean appBean : allApks) {
						if (isMyData(appBean.getPackName())) {
							//����
							
							if (appBean.isSystem()) {//�ж�
								//ϵͳapp
								unlockedSystemDatas.add(appBean);
							} else {
								//�û���app
								unlockedUserDatas.add(appBean);
							}
						}
					}
					
					handler.obtainMessage(FINISH).sendToTarget();//�������ݼ������
					
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
				// �û�apk�ı�ǩ
				TextView tv_userTable = new TextView(getActivity());
				tv_userTable.setText("�������(" + unlockedUserDatas.size() + ")");
				tv_userTable.setTextColor(Color.WHITE);// ����Ϊ��ɫ
				tv_userTable.setBackgroundColor(Color.GRAY);// ���ֱ���Ϊ��ɫ
				return tv_userTable;
			} else if (position == unlockedUserDatas.size() + 1) {
				// ϵͳapk��ǩ
				TextView tv_userTable = new TextView(getActivity());
				tv_userTable.setText("ϵͳ���(" + unlockedSystemDatas.size() + ")");
				tv_userTable.setTextColor(Color.WHITE);// ����Ϊ��ɫ
				tv_userTable.setBackgroundColor(Color.GRAY);// ���ֱ���Ϊ��ɫ
				return tv_userTable;
			} else {
				// ����Ļ���
				ViewHolder holder = new ViewHolder();

				// �ж��Ƿ���ڻ���
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
					// ��tag
					convertView.setTag(holder);
				}

				final AppBean bean = (AppBean) getItem(position);
				if (bean == null){
					return convertView;//���û���Ľ���
				}

				// ��������
				holder.iv_icon.setImageDrawable(bean.getIcon());// ����ͼ��

				
				holder.tv_name.setText(bean.getAppName());// ��������
				
				setImageViewEventAndBg(holder.iv_lock,convertView,bean.getPackName());
				return convertView;
			}
			
		}
		
	}
	
	/**
	 * @param iv_lock
	 *     �����İ�ť
	 * @param convertView
	 *     item�ĸ�����
	 * @param packName
	 *     ����
	 */
	public void setImageViewEventAndBg(ImageView iv_lock,View convertView, String packName){
		
	}
	
	private class ViewHolder {
		ImageView iv_icon;
		TextView tv_name;
		ImageView iv_lock;
	}
}
