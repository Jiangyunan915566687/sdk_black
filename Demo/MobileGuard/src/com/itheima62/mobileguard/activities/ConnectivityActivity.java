package com.itheima62.mobileguard.activities;

import java.util.ArrayList;
import java.util.List;

import android.app.Activity;
import android.app.AlertDialog;
import android.net.ConnectivityManager;
import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.TextView;

import com.itheima62.mobileguard.R;
import com.itheima62.mobileguard.domain.AppBean;
import com.itheima62.mobileguard.engine.AppManagerEngine;
import com.itheima62.mobileguard.engine.ConnectivityEngine;

/**
 * 流量统计的界面
 * @author Administrator
 *
 */
public class ConnectivityActivity extends Activity {
	private ListView lv_datas;

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		super.onCreate(savedInstanceState);
		//initView();
		//initData();
		
		//测试自定环形进度条
		setContentView(R.layout.test_shape);
		
	}
	
	private Handler handler = new Handler(){
		public void handleMessage(android.os.Message msg) {
			adapter.notifyDataSetChanged();
		};
	};
	private MyAdapter adapter;
	
	private class MyAdapter extends BaseAdapter{

		@Override
		public int getCount() {
			// TODO Auto-generated method stub
			return datas.size();
		}

		@Override
		public Object getItem(int position) {
			// TODO Auto-generated method stub
			return null;
		}

		@Override
		public long getItemId(int position) {
			// TODO Auto-generated method stub
			return 0;
		}

		@Override
		public View getView(int position, View convertView, ViewGroup parent) {
			ViewHolder holder = null;
			if (convertView == null) {
				convertView = View.inflate(getApplicationContext(), R.layout.item_liuliang_listview_item, null);
				holder = new ViewHolder();
				holder.iv_icon = (ImageView) convertView.findViewById(R.id.iv_liuliang__listview_item_icon);
				holder.tv_title = (TextView) convertView.findViewById(R.id.tv_liuliang__listview_item_title);
				holder.iv_seedetail = (ImageView) convertView.findViewById(R.id.iv_liuliang__listview_lock);
				convertView.setTag(holder);
			} else {
				holder = (ViewHolder) convertView.getTag();
			}
			
			//赋值
			final AppBean bean = datas.get(position);
			
			//给组件赋值
			holder.iv_icon.setImageDrawable(bean.getIcon());//图标
			holder.tv_title.setText(bean.getAppName());//名字 
			//事件
			
			holder.iv_seedetail.setOnClickListener(new OnClickListener() {
				
				@Override
				public void onClick(View v) {
					//接收的流量
					String rev = ConnectivityEngine.getReceive(bean.getUid(), getApplicationContext());
					
					String snd = ConnectivityEngine.getSend(bean.getUid(), getApplicationContext());
					
					showConnectivityMess(cm.getActiveNetworkInfo().getTypeName() +  "\n" + "接收的流量：" +rev + "\n发送的流量:" + snd);
				}
			});
			return convertView;
		}
		
	}
	
	/**
	 * 显示流量信息的对话框
	 */
	private void showConnectivityMess(String mess){
		AlertDialog.Builder ab = new AlertDialog.Builder(this);
		ab.setTitle("流量信息")
		  .setMessage(mess)
		  .setPositiveButton("确定 ", null);
		ab.show();
	}
	private class ViewHolder{
		ImageView iv_icon;
		TextView tv_title;
		ImageView iv_seedetail;
	}
	private List<AppBean> datas = new ArrayList<AppBean>();
	private ConnectivityManager cm;;
	private void initData() {
		new Thread(){
			

			public void run() {
				
				datas = AppManagerEngine.getAllApks(getApplicationContext());
				for (int i = 0 ; i < datas.size() ; i++) {
					AppBean appBean = datas.get(i);
					if ( ConnectivityEngine.getReceive(appBean.getUid(), getApplicationContext()) == null) {
						datas.remove(i);
						i--;
					}
				}
				handler.obtainMessage().sendToTarget();
			};
		}.start();
	}

	private void initView() {
		setContentView(R.layout.activity_liuliang);
		lv_datas = (ListView) findViewById(R.id.lv_liuliang_datas);
		
		adapter = new MyAdapter();
		lv_datas.setAdapter(adapter);
		
		//流量信息的管理类
		cm = (ConnectivityManager) getSystemService(CONNECTIVITY_SERVICE);
	}
}
