package com.itheima62.mobileguard.activities;

import java.util.ArrayList;
import java.util.List;

import android.app.Activity;
import android.os.Bundle;
import android.os.Handler;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.TextView;
import android.widget.Toast;

import com.itheima62.mobileguard.R;
import com.itheima62.mobileguard.dao.BlackDao;
import com.itheima62.mobileguard.domain.BlackBean;
import com.itheima62.mobileguard.domain.BlackTable;

/**
 * @author Administrator 通讯卫士的数据处理,短信和电话
 */
public class TelSmsSafeActivityPage extends Activity {

	protected static final int LOADING = 1;
	protected static final int FINISH = 2;
	private ListView lv_safenumbers;
	private Button bt_addSafeNumber;

	// 存放黑名单数据的容器
	private List<BlackBean> datas = new ArrayList<BlackBean>();

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		super.onCreate(savedInstanceState);

		initView();// 初始化界面

		initData();// 初始化数据
	}

	private Handler handler = new Handler() {
		public void handleMessage(android.os.Message msg) {
			switch (msg.what) {
			case LOADING:// 正在加载数据
				// 显示加载数据的进度
				pb_loading.setVisibility(View.VISIBLE);

				// 隐藏listview
				lv_safenumbers.setVisibility(View.GONE);

				// 隐藏没有数据
				tv_nodata.setVisibility(View.GONE);
				break;

			case FINISH:// 数据加载完成
				// 判断是否有数据
				// 有数据
				if (datas.size() != 0) {
					// 显示listview
					lv_safenumbers.setVisibility(View.VISIBLE);

					// 隐藏没有数据
					tv_nodata.setVisibility(View.GONE);

					// 隐藏加载数据的进度
					pb_loading.setVisibility(View.GONE);

					// 更新数据
					adapter.notifyDataSetChanged();// 通知listview重新去adapter中的数据
					
					//初始化总页数和当前页的值
					tv_totalPages.setText(currentPage + "/" + totalPages);
				} else {
					// 没有数据
					// 隐藏listview
					lv_safenumbers.setVisibility(View.GONE);

					// 显示没有数据
					tv_nodata.setVisibility(View.VISIBLE);

					// 隐藏加载数据的进度
					pb_loading.setVisibility(View.GONE);
				}
				break;

			default:
				break;
			}
		};
	};
	private TextView tv_nodata;
	private ProgressBar pb_loading;
	private BlackDao dao;
	private MyAdapter adapter;

	private int totalPages;// 总页数
	private int currentPage = 1;// 当前页的数据,默认1
	private final int perPage = 20;// 每页显示20条数据
	private EditText et_gotoPage;
	private TextView tv_totalPages;

	private void initData() {
		// 从db中取黑名单数据，子线程取
		new Thread() {
			public void run() {

				// 取数据之前，发个消息显示正在加载数据的进度条
				handler.obtainMessage(LOADING).sendToTarget();

				// 取数据
				//SystemClock.sleep(2000);// 休眠2秒
				// 获取当前页的数据currentPage当前页，perPage每页数据个数
				datas = dao.getPageDatas(currentPage, perPage);

				totalPages = dao.getTotalPages(perPage);// 获取总页数

				// 取数据完成，发消息通知取数据完成
				handler.obtainMessage(FINISH).sendToTarget();

			};
		}.start();
	}

	private void initView() {
		setContentView(R.layout.activity_telsmssafe);
		// 显示安全号码listview
		lv_safenumbers = (ListView) findViewById(R.id.lv_telsms_safenumbers);

		// 添加黑名单数据的按钮
		bt_addSafeNumber = (Button) findViewById(R.id.bt_telsms_addsafenumber);

		// 没有数据显示的文本
		tv_nodata = (TextView) findViewById(R.id.tv_telsms_nodata);

		// 正在加载数据的进度
		pb_loading = (ProgressBar) findViewById(R.id.pb_telsms_loading);

		// 输入的跳转页
		et_gotoPage = (EditText) findViewById(R.id.et_telsms_gotopage);

		// 总页数	
		tv_totalPages = (TextView) findViewById(R.id.tv_telsms_totalpages);

		// 黑名单业务对象
		dao = new BlackDao(getApplicationContext());
		// 黑名单的适配器
		adapter = new MyAdapter();

		// 给Listview设置适配器,取适配器的数据显示
		// 首先 调用adapter的getCount方法来获取多少条数据，如果为0，不显示任何数据，否则调用getView方法依次取出显示位置的数据
		lv_safenumbers.setAdapter(adapter);

	}

	private class ItemView {
		// 显示黑名单号码
		TextView tv_phone;

		// 显示黑名单号码拦截模式
		TextView tv_mode;

		// 删除黑名单数据的 按钮
		ImageView iv_delete;
	}

	/**
	 * @author Administrator 黑名单数据的适配器
	 */
	private class MyAdapter extends BaseAdapter {

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
			// TODO Auto-generated method stub

			ItemView itemView = null;// 声明组件封装对象 初始为null
			if (convertView == null) {
				convertView = View.inflate(getApplicationContext(),
						R.layout.item_telsmssafe_listview, null);

				itemView = new ItemView();
				itemView.iv_delete = (ImageView) convertView
						.findViewById(R.id.iv_telsmssafe_listview_item_delete);
				// 显示黑名单号码
				itemView.tv_phone = (TextView) convertView
						.findViewById(R.id.tv_telsmssafe_listview_item_number);

				// 显示黑名单号码拦截模式
				itemView.tv_mode = (TextView) convertView
						.findViewById(R.id.tv_telsmssafe_listview_item_mode);

				// 设置标记给convertView
				convertView.setTag(itemView);
			} else {
				// 存在缓存
				itemView = (ItemView) convertView.getTag();
			}
			// 获取当前位置的数据
			BlackBean bean = datas.get(position);

			itemView.tv_phone.setText(bean.getPhone());// 显示黑名单号码

			// 设置黑名单的模式
			switch (bean.getMode()) {
			case BlackTable.SMS:// 短信拦截
				itemView.tv_mode.setText("短信拦截");
				break;
			case BlackTable.TEL:// 电话拦截
				itemView.tv_mode.setText("电话拦截");
				break;
			case BlackTable.ALL:// 全部拦截
				itemView.tv_mode.setText("全部拦截");
				break;

			default:
				break;
			}

			return convertView;
		}

		/*
		 * @Override public View getView(int position, View convertView,
		 * ViewGroup parent) { // TODO Auto-generated method stub View view =
		 * View.inflate(getApplicationContext(),
		 * R.layout.item_telsmssafe_listview, null);
		 * 
		 * //显示黑名单号码 TextView tv_phone = (TextView)
		 * view.findViewById(R.id.tv_telsmssafe_listview_item_number);
		 * 
		 * //显示黑名单号码拦截模式 TextView tv_mode = (TextView)
		 * view.findViewById(R.id.tv_telsmssafe_listview_item_mode);
		 * 
		 * //删除黑名单数据的 按钮 ImageView iv_delete = (ImageView)
		 * view.findViewById(R.id.iv_telsmssafe_listview_item_delete);
		 * 
		 * //初始化数据
		 * 
		 * 
		 * //获取当前位置的数据 BlackBean bean = datas.get(position);
		 * 
		 * tv_phone.setText(bean.getPhone());//显示黑名单号码
		 * 
		 * //设置黑名单的模式 switch (bean.getMode()) { case BlackTable.SMS://短信拦截
		 * tv_mode.setText("短信拦截"); break; case BlackTable.TEL://电话拦截
		 * tv_mode.setText("电话拦截"); break; case BlackTable.ALL://全部拦截
		 * tv_mode.setText("全部拦截"); break;
		 * 
		 * default: break; }
		 * 
		 * return view; }
		 */

	}

	/**
	 * 下一页
	 * 
	 * @param v
	 */
	public void nextPage(View v) {
		// 10页,最后一页，再点击下页： 1，给用户提醒最后一页，2，回到第一页
		currentPage++;// 下一页

		// 处理越界
		currentPage = currentPage % totalPages;

		// 取当前页的数据
		initData();

	}

	/**
	 * 上一页
	 * 
	 * @param v
	 */
	public void prevPage(View v) {
		// 10页,第一页，再点击上页： 1，给用户提醒第一页，2，回到尾页
		currentPage--;// 下一页

		if (currentPage == 0) {
			currentPage = totalPages;//显示最后一页
		}
		
		// 取当前页的数据
		initData();
	}

	/**
	 * 尾页
	 * 
	 * @param v
	 */
	public void endPage(View v) {
		//设置当前页为尾页
		currentPage = totalPages;
		//取数据
		initData();
	}

	/**
	 * 跳转
	 * 
	 * @param v
	 */
	public void jumpPage(View v) {
		//获取跳转页的页码
		String jumpPageStr = et_gotoPage.getText().toString().trim();
		if (TextUtils.isEmpty(jumpPageStr)) {
			Toast.makeText(getApplicationContext(), "跳转页不能为空", 1).show();
			return;
		}
		
		//把字符串的页码转成整数
		int jumpPage = Integer.parseInt(jumpPageStr);
		
		if (jumpPage >= 1 && jumpPage <= totalPages) {
			//把跳转页设置给当前页
			currentPage = jumpPage;
			initData();//初始数据
		} else {
			Toast.makeText(getApplicationContext(), "请按套路出牌", 1).show();
			return;
		}
	}
}
