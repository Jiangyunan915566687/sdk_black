package com.blacknife.mobliesafe.activity;

import java.util.ArrayList;
import java.util.List;

import com.blacknife.mobliesafe.R;
import com.blacknife.mobliesafe.domain.AppBean;
import com.blacknife.mobliesafe.engine.AppManagerEngine;
import com.blacknife.mobliesafe.utils.ToastUtils;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Intent;
import android.graphics.Color;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.SystemClock;
import android.text.format.Formatter;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;

/**
 * 软件管家的界面
 * 
 * @author Blacknife
 *
 */
public class AppManagerActivity extends Activity {
	protected static final int LOADING = 1;
	protected static final int FINISH = 2;
	private TextView tvSDAvail;
	private TextView tvROMAvail;
	private ListView lvDatas;
	private ProgressBar pbLoading;
	private AppBean clickBean;

	private long sdAvail;// sd可用容量
	private long romAvail;// rom可用容量
	// 用户apk的容器
	private List<AppBean> userApks = new ArrayList<AppBean>();

	private List<AppBean> sysApks = new ArrayList<AppBean>();
	private MyAdpter adapter;

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		// TODO 自动生成的方法存根
		super.onCreate(savedInstanceState);
		initView();
		initData();
		initEvent();

	}
	
	private void initEvent() {
		lvDatas.setOnItemClickListener(new OnItemClickListener() {

			

			@Override
			public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
				// 获取当前点击的位置的值,如果点击标签不做处理
				// 如果点击的是系统软件标签的位置,不作处理
				if (position == userApks.size() + 1 || position == 0) {
					System.out.println("提示标签");
					return;
				} else {
					clickBean = (AppBean) lvDatas.getItemAtPosition(position);
					System.out.println(clickBean.getAppName());
					removeApk();
				}
			}
		});
	}
	/**
	 * 卸载软件的弹窗
	 */
	private void showUnloadDialog() {
		AlertDialog.Builder builder = new AlertDialog.Builder(this);
		final AlertDialog dialog = builder.create();
		// 将自定义的布局文件设置给dialog
		View view = View.inflate(this, R.layout.dailog_unload_apk, null);
		dialog.setView(view, 0, 0, 0, 0);// 设置弹窗边距为0
		Button btnOk = (Button) view.findViewById(R.id.btn_ok);
		Button btnCancel = (Button) view.findViewById(R.id.btn_cancel);
		//TextView etPassword = (TextView) view.findViewById(R.id.tv_isunload);
		btnOk.setOnClickListener(new OnClickListener() {

			@Override
			public void onClick(View v) {
				Intent intent = new Intent("android.intent.action.DELETE");
				intent.addCategory("android.intent.category.DEFAULT");
				intent.setData(Uri.parse("package:"+ clickBean.getPackName() ));
				startActivityForResult(intent, 5);				
				dialog.dismiss();// 隐藏dialog				
			}
		});
		btnCancel.setOnClickListener(new OnClickListener() {

			@Override
			public void onClick(View v) {
				dialog.dismiss();// 隐藏dialog
			}
		});
		dialog.show();
	}
	@Override
	protected void onActivityResult(int requestCode, int resultCode, Intent data) {
		//adapter.notifyDataSetChanged();
		sysApks.clear();
		userApks.clear();
		initData();
		super.onActivityResult(requestCode, resultCode, data);
	}
	/**
	 * 卸载程序
	 */
	protected void removeApk() {
		//卸载软件   用户apk  系统apk(默认无法删除)
		if (!clickBean.isSystem()) {
			showUnloadDialog();		
		}else{
			ToastUtils.showToast(getApplicationContext(), "没有获得ROOT权限,无法卸载系统程序");
		}
	}
	
	private Handler handler = new Handler() {
		public void handleMessage(android.os.Message msg) {
			switch (msg.what) {
			case LOADING:// 正在加载数据
				// 处理界面
				pbLoading.setVisibility(View.VISIBLE);// 显示加载数据进度
				lvDatas.setVisibility(View.GONE);// 隐藏listview

				break;
			case FINISH:// 数据加载完成
				pbLoading.setVisibility(View.GONE);// 显示加载数据进度
				lvDatas.setVisibility(View.VISIBLE);// 隐藏listview
				// 设置内存的剩余大小
				tvSDAvail.setText("SD卡可用空间:" + Formatter.formatFileSize(getApplicationContext(), sdAvail));
				tvROMAvail.setText("ROM可用空间:" + Formatter.formatFileSize(getApplicationContext(), romAvail));
				// 初始化数据
				// 刷新数据
				adapter.notifyDataSetChanged();
				break;
			default:
				break;
			}
		};
	};
	private class ViewHolder{
		ImageView ivIcon;
		TextView tvTitle;
		TextView tvLocation;
		TextView tvSize;
		
	}
	private class MyAdpter extends BaseAdapter {

		@Override
		public int getCount() {
			// TODO 自动生成的方法存根
			return userApks.size() + sysApks.size() + 2;
		}

		@Override
		public View getView(int position, View convertView, ViewGroup parent) {
			if (position == 0) {
				// 用户apk的标签
				TextView tvUserTable = new TextView(getApplicationContext());
				tvUserTable.setText("用户软件(" + userApks.size() + ")");
				tvUserTable.setTextColor(Color.WHITE);
				tvUserTable.setBackgroundColor(Color.GRAY);
				return tvUserTable;
			} else if (position == userApks.size() + 1) {
				// 系统apk的标签
				TextView tvSysTable = new TextView(getApplicationContext());
				tvSysTable.setText("系统软件(" + sysApks.size() + ")");
				tvSysTable.setTextColor(Color.WHITE);
				tvSysTable.setBackgroundColor(Color.GRAY);
				return tvSysTable;

			} else {
				//界面的缓存
				ViewHolder holder = new ViewHolder();
				//判断是否存在缓存
				if (convertView != null && convertView instanceof RelativeLayout) {
					holder = (ViewHolder) convertView.getTag();
				} else {
					convertView = View.inflate(getApplicationContext(), R.layout.item_appmanager_listview_item, null);
					holder.ivIcon = (ImageView) convertView.findViewById(R.id.iv_appmanager_item_icon);
					holder.tvTitle = (TextView) convertView.findViewById(R.id.tv_appmanager_item_title);
					holder.tvLocation = (TextView) convertView.findViewById(R.id.tv_appmanager_item_location);
					holder.tvSize = (TextView) convertView.findViewById(R.id.tv_appmanager_item_size);
					convertView.setTag(holder);
				}

				AppBean bean = getItem(position);
				// 设置数据
				holder.ivIcon.setImageDrawable(bean.getIcon());
				if (bean.isSD()) {
					holder.tvLocation.setText("SD存储");
				} else {
					holder.tvLocation.setText("ROM存储");
				}

				holder.tvTitle.setText(bean.getAppName());
				holder.tvSize.setText(Formatter.formatFileSize(getApplicationContext(), bean.getSize()));
				return convertView;

			}
		}

		@Override
		public AppBean getItem(int position) {
			// 获取数据
			AppBean bean = null;
			if (position <= userApks.size()) {
				// 用户apk
				bean = userApks.get(position - 1);
			} else {
				// 系统apk
				bean = sysApks.get(position - userApks.size() - 2);
			}
			return bean;
		}

		@Override
		public long getItemId(int position) {
			// TODO 自动生成的方法存根
			return 0;
		}

	}

	private void initData() {
		new Thread() {
			@Override
			public void run() {
				handler.obtainMessage(LOADING).sendToTarget();
				;
				SystemClock.sleep(1000);
				// 取数据,获取所有apk数据
				List<AppBean> datas = AppManagerEngine.getAllApks(getApplicationContext());
				for (AppBean appBean : datas) {
					if (appBean.isSystem()) {
						sysApks.add(appBean);
					} else {
						userApks.add(appBean);
					}
				}
				sdAvail = AppManagerEngine.getSDAvail(getApplicationContext());
				romAvail = AppManagerEngine.getRomAvail(getApplicationContext());
				handler.obtainMessage(FINISH).sendToTarget();
			}
		}.start();
	}

	private void initView() {
		setContentView(R.layout.activity_appmanager);
		tvSDAvail = (TextView) findViewById(R.id.tv_appmanager_sdsize);
		tvROMAvail = (TextView) findViewById(R.id.tv_appmanager_romsize);
		lvDatas = (ListView) findViewById(R.id.lv_appmanager_appdatas);
		pbLoading = (ProgressBar) findViewById(R.id.pb_appmanager_loading);
		adapter = new MyAdpter();
		lvDatas.setAdapter(adapter);

	}
}
