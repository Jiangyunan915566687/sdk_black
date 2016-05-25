package com.blacknife.mobliesafe.activity;

import java.util.ArrayList;
import java.util.List;

import com.blacknife.mobliesafe.R;
import com.blacknife.mobliesafe.db.dao.BlackDao;
import com.blacknife.mobliesafe.domain.BlackBean;
import com.blacknife.mobliesafe.domain.BlackListTable;
import com.blacknife.mobliesafe.utils.ToastUtils;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.TextView;

/**
 * 通讯卫视的数据处理 短信 电话
 * 
 * @author Blacknife
 *
 */
public class TelSmsSafeActivity extends Activity {

	protected static final int LOADING = 1;
	protected static final int FINISH = 2;
	private ListView lvSafeNumbers;
	private Button btTelsmsAdd;
	private TextView tvNodata;
	private ProgressBar pbLoading;
	// 存放黑名单数据的容器
	private List<BlackBean> datas = new ArrayList<BlackBean>();
	private BlackDao dao;

	private List<BlackBean> moreDatas;

	private MyAdapter adapter;
	private final int MOREDATASCOUNTS = 15;// 分批加载的数据个数

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_telsmssafe);
		initView();// 初始化界面
		initData();// 初始化数据
		initActive();// 初始化动画
		initEvent();// 初始化事件
	}

	/**
	 * 给每个组建设置事件
	 */
	private void initEvent() {
		// 给ListView设置滑动事件
		lvSafeNumbers.setOnScrollListener(new OnScrollListener() {
			/**
			 * 状态改变调用此方法 SCROLL_STATE_TOUCH_SCROLL 惯性滑动 SCROLL_STATE_FLING 滑动停止
			 * SCROLL_STATE_IDLE 按住滑动
			 */
			@Override
			public void onScrollStateChanged(AbsListView view, int scrollState) {
				// 监控静止状态SCROLL_STATE_IDLE
				// 当出现SCROLL_STATE_IDLE的状态时候，判断是否显示的是最后一条数据，如果显示最后一条数据，那就加载更多的数据
				if (scrollState == OnScrollListener.SCROLL_STATE_IDLE) {
					// 获取最后显示的数据位置
					int lastVisiblePosition = lvSafeNumbers.getLastVisiblePosition();
					if (lastVisiblePosition == (datas.size() - 1)) {
						// 加载更多的数据
						initData();

					}
				}
			}

			/**
			 * 按住滑动触发事件
			 */
			@Override
			public void onScroll(AbsListView view, int firstVisibleItem, int visibleItemCount, int totalItemCount) {

			}
		});
	}

	private Handler handler = new Handler() {
		public void handleMessage(android.os.Message msg) {
			switch (msg.what) {
			case LOADING:// 正在加载数据
				// 显示加载数据的进度，隐藏listview和textview
				pbLoading.setVisibility(View.VISIBLE);
				tvNodata.setVisibility(View.GONE);
				lvSafeNumbers.setVisibility(View.GONE);
				break;
			case FINISH:// 数据加载完成
				// 判断是否有数据
				if (moreDatas.size() != 0) {
					// 有数据
					lvSafeNumbers.setVisibility(View.VISIBLE);
					tvNodata.setVisibility(View.GONE);
					// 更新数据
					adapter.notifyDataSetChanged();// 通知listview重新获取数据
				} else {
					if (datas.size() != 0) {
						ToastUtils.showToast(TelSmsSafeActivity.this, "没有更多数据！");

					} else {
						// 没有数据
						lvSafeNumbers.setVisibility(View.GONE);
						tvNodata.setVisibility(View.VISIBLE);
					}

				}
				pbLoading.setVisibility(View.GONE);
			default:
				break;
			}

		};
	};
	private AlertDialog dialog;

	private void initActive() {

	}

	private void initData() {
		// 从db中取得黑名单数据，子线程
		new Thread() {

			public void run() {
				// 其数据之前，发个消息显示正在加载数据的进度条
				handler.obtainMessage(LOADING).sendToTarget();
				// 加载更多的数据
				moreDatas = dao.getMoreDatas(MOREDATASCOUNTS, datas.size());
				datas.addAll(moreDatas);
				// 取数据完成，发消息去通知取数据完成
				handler.obtainMessage(FINISH).sendToTarget();

			};
		}.start();
	}

	private void initView() {
		// 显示安全号码listview
		lvSafeNumbers = (ListView) findViewById(R.id.lv_telsms_safenumber);
		btTelsmsAdd = (Button) findViewById(R.id.bt_telsms_add);
		tvNodata = (TextView) findViewById(R.id.tv_telsms_nodata);
		pbLoading = (ProgressBar) findViewById(R.id.pb_telsms_loading);
		// 黑名单的业务对象
		dao = new BlackDao(getApplicationContext());
		adapter = new MyAdapter();
		// 给listview设置适配器
		// 首先调用adapter的getCount方法来获取多少条数据，如果为0，不显示任何数据，
		// 否则调用getView方法一次去除显示位置的数据
		lvSafeNumbers.setAdapter(adapter);
	}

	/**
	 * Itemview的封装类
	 * 
	 * @author Blacknife
	 *
	 */
	private class ItemView {
		TextView tvPhone;
		TextView tvMode;
		ImageView ivDelete;
	}

	private class MyAdapter extends BaseAdapter {

		@Override
		public int getCount() {
			int size = datas.size();
			if (size == 0) {
				// 如果数据库为空
				lvSafeNumbers.setVisibility(View.GONE);
				tvNodata.setVisibility(View.VISIBLE);
				pbLoading.setVisibility(View.GONE);
			}
			return size;
		}

		@Override
		public Object getItem(int position) {
			return 0;
		}

		@Override
		public long getItemId(int position) {
			return 0;
		}

		@Override
		public View getView(final int position, View convertView, ViewGroup parent) {

			// 先声明
			ItemView itemView = null;
			if (convertView == null) {
				convertView = View.inflate(getApplicationContext(), R.layout.telsmssafe_listview_item, null);
				itemView = new ItemView();
				itemView.ivDelete = (ImageView) convertView.findViewById(R.id.im_telsmsItem_delete);
				itemView.tvMode = (TextView) convertView.findViewById(R.id.tv_telsmsItem_mode);
				itemView.tvPhone = (TextView) convertView.findViewById(R.id.tv_telsmsItem_number);
				// 设置标记给convertView
				convertView.setTag(itemView);
			} else {
				// 存在缓存
				itemView = (ItemView) convertView.getTag();
			}
			// 获取当前位置的数据
			final BlackBean bean = datas.get(position);
			itemView.tvPhone.setText(bean.getPhone());
			switch (bean.getMode()) {
			case BlackListTable.SMS:
				itemView.tvMode.setText("短信拦截");
				break;
			case BlackListTable.TEL:
				itemView.tvMode.setText("电话拦截");
				break;
			case BlackListTable.ALL:
				itemView.tvMode.setText("全部拦截");
				break;
			default:
				break;
			}
			itemView.ivDelete.setOnClickListener(new OnClickListener() {

				@Override
				public void onClick(View v) {
					AlertDialog.Builder ab = new AlertDialog.Builder(TelSmsSafeActivity.this);
					ab.setTitle("注意!");
					ab.setMessage("是否真的删除该数据?");
					ab.setPositiveButton("真删", new DialogInterface.OnClickListener() {

						@Override
						public void onClick(DialogInterface dialog, int which) {
							// 从数据库中删除当前数据
							dao.delete(bean.getPhone());// 去除当前行数据里的黑名单号码
							// 删除容器里对应的数据
							datas.remove(position);
							//剩余数据如果少于10条,或用户删除最后一条数据
							if (datas.size() < 9 || position == datas.size()) {
								// 删除完本批数据后,自动缓冲下一批
								initData();
							} else {
								// 通知界面更新数据,让用户看到删除数据不存在
								adapter.notifyDataSetChanged();// 只是让listview重新去当前显示位置的数据
							}
						}
					});
					ab.setNegativeButton("点错了!", null);
					ab.show();
				}
			});
			return convertView;
		}

	}

	/**
	 * 添加黑名单号码
	 * 
	 * @param view
	 */
	public void addBlackNumber(View v) {
		AlertDialog.Builder ab = new AlertDialog.Builder(this);
		final AlertDialog dialog = ab.create();
		View view = View.inflate(getApplicationContext(), R.layout.dailog_addblacknumber, null);
		dialog.setView(view, 0, 0, 0, 0);// 设置弹窗边距为0
		final EditText etBlackNumber = (EditText) view.findViewById(R.id.et_telsms_blacknumber);
		final CheckBox cbSMS = (CheckBox) view.findViewById(R.id.cb_dailogtelsms_smsmode);
		final CheckBox cbTEL = (CheckBox) view.findViewById(R.id.cb_dailogtelsms_telmode);
		Button btAdd = (Button) view.findViewById(R.id.bt_dailogtelsms_add);
		Button btCancel = (Button) view.findViewById(R.id.bt_dailogtelsms_cancel);

		btAdd.setOnClickListener(new OnClickListener() {

			@Override
			public void onClick(View v) {
				String phone = etBlackNumber.getText().toString().trim();
				if (TextUtils.isEmpty(phone)) {
					ToastUtils.showToast(getApplicationContext(), "黑名单号码不能为空");
					return;
				}
				if (!cbTEL.isChecked() && !cbSMS.isChecked()) {
					// 两个拦截模式都没被选中
					ToastUtils.showToast(getApplicationContext(), "至少选择一种拦截模式");
					return;
				}
				int mode = 0;
				if (cbTEL.isChecked() && cbSMS.isChecked()) {
					mode |= BlackListTable.TEL | BlackListTable.SMS;
				} else if (cbTEL.isChecked()) {
					mode |= BlackListTable.TEL;
				} else if (cbSMS.isChecked()) {
					mode |= BlackListTable.SMS;
				}
				BlackBean bean = new BlackBean();
				bean.setPhone(phone);
				bean.setMode(mode);
				// 添加数据到黑名单
				dao.add(bean);
				datas.remove(bean);// 该删除方法要靠equals和hashCode两个方法共同判断数据是否一致
				// 界面看到用户新增的数据
				datas.add(0, bean);
				// 通知界面,让listview显示第一条数据
				adapter = new MyAdapter();
				lvSafeNumbers.setAdapter(adapter);

				lvSafeNumbers.setVisibility(View.VISIBLE);
				tvNodata.setVisibility(View.GONE);
				pbLoading.setVisibility(View.GONE);
				// adapter.notifyDataSetChanged();
				dialog.dismiss();
			}
		});
		btCancel.setOnClickListener(new OnClickListener() {

			@Override
			public void onClick(View v) {
				dialog.dismiss();
			}
		});
		ab.setView(view);
		//dialog = ab.create();
		dialog.show();
	}
}
