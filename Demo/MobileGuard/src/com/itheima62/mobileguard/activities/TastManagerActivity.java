package com.itheima62.mobileguard.activities;

import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

import android.app.Activity;
import android.app.ActivityManager;
import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.os.Bundle;
import android.os.Handler;
import android.os.SystemClock;
import android.text.format.Formatter;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;
import android.widget.BaseAdapter;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;

import com.itheima62.mobileguard.R;
import com.itheima62.mobileguard.domain.TaskBean;
import com.itheima62.mobileguard.engine.TaskManagerEngine;
import com.itheima62.mobileguard.utils.MyConstants;
import com.itheima62.mobileguard.utils.SpTools;

/**
 * 进程管家的界面
 * 
 * @author Administrator
 * 
 */  
public class TastManagerActivity extends Activity {
	protected static final int LOADING = 1;
	protected static final int FINISH = 2;
	private TextView tv_tasknumber;
	private TextView tv_meminfo;
	private ListView lv_taskdatas;
	private TextView tv_list_tag;
	private ProgressBar pb_loading;

	private long availMem = 0;// 可用内存大小
	private long totalMem = 0; // 总内存大小

	// 系统进程数据
	private List<TaskBean> sysTasks = new CopyOnWriteArrayList<TaskBean>();
	// 用户进程数据
	private List<TaskBean> userTasks = new CopyOnWriteArrayList<TaskBean>();

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		super.onCreate(savedInstanceState);
		//初始化数据封装对象
		initData = new InitDataClass();
		initView();// 初始化界面

		//initData();// 设置数据子线程

		initEvent();// 初始化事件
	}
	
	@Override
	protected void onResume() {
		initData();
		super.onResume();
	}

	private void initEvent() {
		// 给listview加滚动事件
		lv_taskdatas.setOnScrollListener(new OnScrollListener() {

			@Override
			public void onScrollStateChanged(AbsListView view, int scrollState) {
				// TODO Auto-generated method stub

			}

			/**
			 * 按住滑动
			 */
			@Override
			public void onScroll(AbsListView view, int firstVisibleItem,
					int visibleItemCount, int totalItemCount) {
				// 如果显示用户进程 标签要显示用户进程的tag
				if (firstVisibleItem <= userTasks.size()) {
					// 用户的tag
					tv_list_tag.setText("用户进程(" + userTasks.size() + ")");
				} else {
					tv_list_tag.setText("系统进程(" + sysTasks.size() + ")");
				}

			}
		});
	}

	/**
	 * 进程数据的适配器
	 * 
	 * @author Administrator
	 * 
	 */
	private class MyAdapter extends BaseAdapter {

		@Override
		public int getCount() {
			setTileMessage();
			if (!SpTools.getBoolean(getApplicationContext(), MyConstants.SHOWSYSTEM, false)) {
				//不显示系统进程
				return userTasks.size() + 1;
			}
			return sysTasks.size() + 1 + userTasks.size() + 1;
		}

		@Override
		public TaskBean getItem(int position) {
			TaskBean bean = null;
			if (position == 0 || position == userTasks.size() + 1) {
				return bean;
			}
			// 判断position 如果是用户apk
			if (position <= userTasks.size()) {
				bean = userTasks.get(position - 1);
			} else {
				// 系统apk
				bean = sysTasks.get(position - userTasks.size() - 2);
			}

			return bean;
		}

		@Override
		public long getItemId(int position) {
			// TODO Auto-generated method stub
			return 0;
		}

		@Override
		public View getView(int position, View convertView, ViewGroup parent) {
			System.out.println("每次" + position + ":" + convertView);
			if (position == 0) {
				// 用户apk的标签
				TextView tv_userTable = new TextView(getApplicationContext());
				tv_userTable.setText("个人软件(" + userTasks.size() + ")");
				tv_userTable.setTextColor(Color.WHITE);// 文字为白色
				tv_userTable.setBackgroundColor(Color.GRAY);// 文字背景为灰色
				return tv_userTable;
			} else if (position == userTasks.size() + 1) {
				// 系统apk标签
				TextView tv_userTable = new TextView(getApplicationContext());
				tv_userTable.setText("系统软件(" + sysTasks.size() + ")");
				tv_userTable.setTextColor(Color.WHITE);// 文字为白色
				tv_userTable.setBackgroundColor(Color.GRAY);// 文字背景为灰色
				return tv_userTable;
			} else {
				// 界面的缓存
				ViewHolder holder = null;

				// 判断是否存在缓存
				if (convertView != null
						&& convertView instanceof RelativeLayout) {
					holder = (ViewHolder) convertView.getTag();
					System.out.println("缓存" + position + ":" + convertView);
				} else {
					convertView = View.inflate(getApplicationContext(),
							R.layout.item_taskmanager_listview_item, null);
					holder = new ViewHolder();
					holder.iv_icon = (ImageView) convertView
							.findViewById(R.id.iv_taskmanager_listview_item_icon);
					holder.tv_title = (TextView) convertView
							.findViewById(R.id.tv_taskmanager_listview_item_title);
					holder.tv_memsize = (TextView) convertView
							.findViewById(R.id.tv_taskmanager_listview_item_memsize);
					holder.cb_checked = (CheckBox) convertView
							.findViewById(R.id.tv_taskmanager_listview_item_checked);
					// 绑定tag
					convertView.setTag(holder);
				}
				
				//bean = getItem(position);
				final TaskBean bean = getItem(position);

				final ViewHolder mHolder = holder;

				convertView.setOnClickListener(new OnClickListener() {

					@Override
					public void onClick(View v) {
						if (bean.getPackName().equals(getPackageName())) {
							// 自己
							mHolder.cb_checked.setChecked(false);
						}
						// 设置复选框的反选操作
						mHolder.cb_checked.setChecked(!mHolder.cb_checked
								.isChecked());
					}
				});

				// 设置数据
				holder.iv_icon.setImageDrawable(bean.getIcon());// 设置图标

				// 设置占用的内存大小
				holder.tv_memsize.setText(Formatter.formatFileSize(
						getApplicationContext(), bean.getMemSize()));

				holder.tv_title.setText(bean.getName());// 设置名字

				// 记录复选框的状态,记录bean中

				// 给复选框加事件，记录复选框的状态
				holder.cb_checked
						.setOnCheckedChangeListener(new OnCheckedChangeListener() {

							@Override
							public void onCheckedChanged(
									CompoundButton buttonView, boolean isChecked) {
								// 记录复选框的状态
								bean.setChecked(isChecked);
							}
						});

				// 从bean取出复选框的状态显示
				holder.cb_checked.setChecked(bean.isChecked());

				// 判断是不是自己,如果是自己让checkbox隐藏
				if (bean.getPackName().equals(getPackageName())) {
					// 显示的是自己
					// 隐藏复选框
					holder.cb_checked.setVisibility(View.GONE);
				} else {
					holder.cb_checked.setVisibility(View.VISIBLE);
				}

				return convertView;
			}
		}// end getView

	}// end class adapter

	private class ViewHolder {
		ImageView iv_icon;// 图标
		TextView tv_title; // 名字
		TextView tv_memsize;// 占用内存大小
		CheckBox cb_checked;// 是否选择
	}

	private Handler handler = new Handler() {
		public void handleMessage(android.os.Message msg) {
			switch (msg.what) {
			case LOADING:// 加载数据进程显示
				pb_loading.setVisibility(View.VISIBLE);
				lv_taskdatas.setVisibility(View.GONE);
				tv_list_tag.setVisibility(View.GONE);
				break;
			case FINISH:// 数据加载完成
				pb_loading.setVisibility(View.GONE);
				lv_taskdatas.setVisibility(View.VISIBLE);
				tv_list_tag.setVisibility(View.VISIBLE);

				setTileMessage();

				// 数据的通知
				adapter.notifyDataSetChanged();
				break;
			default:
				break;
			}
		}

		
	};
	private void setTileMessage() {
		// 设置运行中的进程个数
		if (SpTools.getBoolean(getApplicationContext(), MyConstants.SHOWSYSTEM, false)) {
			tv_tasknumber.setText("运行中的进程:"
					+ (sysTasks.size() + userTasks.size()));
		} else {
			tv_tasknumber.setText("运行中的进程:"
					+ (userTasks.size()));
		}
		

		// 设置内存的使用信息
		// 格式化显示可用内存
		String availMemFormatter = Formatter.formatFileSize(
				getApplicationContext(), availMem);
		// 格式化显示可用内存
		String totalMemFormatter = Formatter.formatFileSize(
				getApplicationContext(), totalMem);
		// 设置内存的使用信息
		tv_meminfo.setText("可用/总内存:" + availMemFormatter + "/"
				+ totalMemFormatter);
	};
	private MyAdapter adapter;
	private ActivityManager am;
	private Object obj = new Object();
	private InitDataClass initData;
	
	private class InitDataClass {
		public synchronized void initData(){
			// 发送加载数据进度的消息
			handler.obtainMessage(LOADING).sendToTarget();

			// 加载数据
			// 获取所有运行中的进程数据
			List<TaskBean> allTaskDatas = TaskManagerEngine
					.getAllRunningTaskInfos(getApplicationContext());
			availMem = TaskManagerEngine
					.getAvailMemSize(getApplicationContext());
			totalMem = TaskManagerEngine
					.getTotalMemSize(getApplicationContext());
			SystemClock.sleep(500);
			sysTasks.clear();
			userTasks.clear();
			// 分发数据
			for (TaskBean taskBean : allTaskDatas) {
				if (taskBean.isSystem()) {
					// 系统进程
					sysTasks.add(taskBean);
				} else {
					// 用户进程
					userTasks.add(taskBean);
				}
			}
			System.out.println(allTaskDatas.size() + ":" + sysTasks.size()
					+ ":" + userTasks.size());

			// 加载数据完成
			handler.obtainMessage(FINISH).sendToTarget();
		}
	}
	private void initData() {
		// 子线程获取数据

		new Thread() {
			public void run() {
				//通过对象来初始化数据
				initData.initData();
				
			};
		}.start();
	}

	private void initView() {
		setContentView(R.layout.activity_taskmanager);

		// 显示进程的个数
		tv_tasknumber = (TextView) findViewById(R.id.tv_taskmanager_tasknumber);

		// 显示使用的内存信息
		tv_meminfo = (TextView) findViewById(R.id.tv_taskmanager_meminfo);

		// 显示所有进程的信息
		lv_taskdatas = (ListView) findViewById(R.id.lv_taskmanager_appdatas);

		// 进程数据的标签
		tv_list_tag = (TextView) findViewById(R.id.tv_taskmanager_listview_lable);

		// 加载进程数据的 进度
		pb_loading = (ProgressBar) findViewById(R.id.pb_taskmanager_loading);

		adapter = new MyAdapter();
		// 设置listview的适配器
		lv_taskdatas.setAdapter(adapter);

		am = (ActivityManager) getSystemService(Context.ACTIVITY_SERVICE);

	}

	/**
	 * 全选
	 * 
	 * @param v
	 */
	public void selectAll(View v) {
		// 遍历所有app
		// 遍历用户app
		for (TaskBean bean : userTasks) {
			// 如果是自己 不勾选
			if (bean.getPackName().equals(getPackageName())) {
				bean.setChecked(false);
				continue;
			} 
			bean.setChecked(true);
		}
		// 遍历系统app
		for (TaskBean bean : sysTasks) {
			bean.setChecked(true);
		}

		// 界面要看到最新数据
		adapter.notifyDataSetChanged();
	}

	/**
	 * 反选
	 * 
	 * @param v
	 */
	public void fanSelect(View v) {
		// 遍历所有app
		// 遍历用户app
		for (TaskBean bean : userTasks) {
			// 如果是自己 不勾选
			if (bean.getPackName().equals(getPackageName())) {
				bean.setChecked(false);
			}
			bean.setChecked(!bean.isChecked());
		}
		// 遍历系统app
		for (TaskBean bean : sysTasks) {
			bean.setChecked(!bean.isChecked());
		}

		// 界面要看到最新数据
		adapter.notifyDataSetChanged();
	}

	/**
	 * 清理选中的进程
	 * 
	 * @param v
	 */
	public void clearTask(View v) {
		// 有些进程删除不掉，增强用户体验除了自己都可以删掉
		// 让用户看到清理了几个进程，释放了多少内存
		// 每个用户选中的进程都要清理

		long clearMem = 0;// 记录内存的数量
		int clearNum = 0;// 记录清理多少个进程

		// 循环用户进程
		for (TaskBean bean : userTasks) {
			if (bean.isChecked()) {
				// 用户选择

				// 清理的个数累计
				clearNum++;

				// 清理内存的数量累计 byte
				clearMem += bean.getMemSize();

				// 清理
				am.killBackgroundProcesses(bean.getPackName());

				// 从容器中删除该数据
				userTasks.remove(bean);
			}
		}

		// 循环系统进程,调用迭代器
		for (TaskBean bean : sysTasks) {
			if (bean.isChecked()) {
				// 用户选择

				// 清理的个数累计
				clearNum++;

				// 清理内存的数量累计 byte
				clearMem += bean.getMemSize();

				// 清理
				am.killBackgroundProcesses(bean.getPackName());

				// 从容器中删除该数据
				sysTasks.remove(bean);
			}
		}
		
		Toast.makeText(getApplicationContext(), "清理了" + clearNum + 
				"个进程，释放了" + Formatter.formatFileSize(getApplicationContext(), clearMem), 1).show();
		
		availMem += clearMem;//增加可用内存
		setTileMessage();//更新标题的信息
		adapter.notifyDataSetChanged();//通知界面listview的更新

	}
	
	/**
	 * 打开进程的设置界面
	 * @param v
	 */
	public void setting(View v){
		Intent setting = new Intent(this, TaskManagerSettingActivity.class);
		startActivity(setting);//启动设置界面
	}

}
