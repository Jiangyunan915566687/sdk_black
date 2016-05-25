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
 * ͨѶ���ӵ����ݴ��� ���� �绰
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
	// ��ź��������ݵ�����
	private List<BlackBean> datas = new ArrayList<BlackBean>();
	private BlackDao dao;

	private List<BlackBean> moreDatas;

	private MyAdapter adapter;
	private final int MOREDATASCOUNTS = 15;// �������ص����ݸ���

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_telsmssafe);
		initView();// ��ʼ������
		initData();// ��ʼ������
		initActive();// ��ʼ������
		initEvent();// ��ʼ���¼�
	}

	/**
	 * ��ÿ���齨�����¼�
	 */
	private void initEvent() {
		// ��ListView���û����¼�
		lvSafeNumbers.setOnScrollListener(new OnScrollListener() {
			/**
			 * ״̬�ı���ô˷��� SCROLL_STATE_TOUCH_SCROLL ���Ի��� SCROLL_STATE_FLING ����ֹͣ
			 * SCROLL_STATE_IDLE ��ס����
			 */
			@Override
			public void onScrollStateChanged(AbsListView view, int scrollState) {
				// ��ؾ�ֹ״̬SCROLL_STATE_IDLE
				// ������SCROLL_STATE_IDLE��״̬ʱ���ж��Ƿ���ʾ�������һ�����ݣ������ʾ���һ�����ݣ��Ǿͼ��ظ��������
				if (scrollState == OnScrollListener.SCROLL_STATE_IDLE) {
					// ��ȡ�����ʾ������λ��
					int lastVisiblePosition = lvSafeNumbers.getLastVisiblePosition();
					if (lastVisiblePosition == (datas.size() - 1)) {
						// ���ظ��������
						initData();

					}
				}
			}

			/**
			 * ��ס���������¼�
			 */
			@Override
			public void onScroll(AbsListView view, int firstVisibleItem, int visibleItemCount, int totalItemCount) {

			}
		});
	}

	private Handler handler = new Handler() {
		public void handleMessage(android.os.Message msg) {
			switch (msg.what) {
			case LOADING:// ���ڼ�������
				// ��ʾ�������ݵĽ��ȣ�����listview��textview
				pbLoading.setVisibility(View.VISIBLE);
				tvNodata.setVisibility(View.GONE);
				lvSafeNumbers.setVisibility(View.GONE);
				break;
			case FINISH:// ���ݼ������
				// �ж��Ƿ�������
				if (moreDatas.size() != 0) {
					// ������
					lvSafeNumbers.setVisibility(View.VISIBLE);
					tvNodata.setVisibility(View.GONE);
					// ��������
					adapter.notifyDataSetChanged();// ֪ͨlistview���»�ȡ����
				} else {
					if (datas.size() != 0) {
						ToastUtils.showToast(TelSmsSafeActivity.this, "û�и������ݣ�");

					} else {
						// û������
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
		// ��db��ȡ�ú��������ݣ����߳�
		new Thread() {

			public void run() {
				// ������֮ǰ��������Ϣ��ʾ���ڼ������ݵĽ�����
				handler.obtainMessage(LOADING).sendToTarget();
				// ���ظ��������
				moreDatas = dao.getMoreDatas(MOREDATASCOUNTS, datas.size());
				datas.addAll(moreDatas);
				// ȡ������ɣ�����Ϣȥ֪ͨȡ�������
				handler.obtainMessage(FINISH).sendToTarget();

			};
		}.start();
	}

	private void initView() {
		// ��ʾ��ȫ����listview
		lvSafeNumbers = (ListView) findViewById(R.id.lv_telsms_safenumber);
		btTelsmsAdd = (Button) findViewById(R.id.bt_telsms_add);
		tvNodata = (TextView) findViewById(R.id.tv_telsms_nodata);
		pbLoading = (ProgressBar) findViewById(R.id.pb_telsms_loading);
		// ��������ҵ�����
		dao = new BlackDao(getApplicationContext());
		adapter = new MyAdapter();
		// ��listview����������
		// ���ȵ���adapter��getCount��������ȡ���������ݣ����Ϊ0������ʾ�κ����ݣ�
		// �������getView����һ��ȥ����ʾλ�õ�����
		lvSafeNumbers.setAdapter(adapter);
	}

	/**
	 * Itemview�ķ�װ��
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
				// ������ݿ�Ϊ��
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

			// ������
			ItemView itemView = null;
			if (convertView == null) {
				convertView = View.inflate(getApplicationContext(), R.layout.telsmssafe_listview_item, null);
				itemView = new ItemView();
				itemView.ivDelete = (ImageView) convertView.findViewById(R.id.im_telsmsItem_delete);
				itemView.tvMode = (TextView) convertView.findViewById(R.id.tv_telsmsItem_mode);
				itemView.tvPhone = (TextView) convertView.findViewById(R.id.tv_telsmsItem_number);
				// ���ñ�Ǹ�convertView
				convertView.setTag(itemView);
			} else {
				// ���ڻ���
				itemView = (ItemView) convertView.getTag();
			}
			// ��ȡ��ǰλ�õ�����
			final BlackBean bean = datas.get(position);
			itemView.tvPhone.setText(bean.getPhone());
			switch (bean.getMode()) {
			case BlackListTable.SMS:
				itemView.tvMode.setText("��������");
				break;
			case BlackListTable.TEL:
				itemView.tvMode.setText("�绰����");
				break;
			case BlackListTable.ALL:
				itemView.tvMode.setText("ȫ������");
				break;
			default:
				break;
			}
			itemView.ivDelete.setOnClickListener(new OnClickListener() {

				@Override
				public void onClick(View v) {
					AlertDialog.Builder ab = new AlertDialog.Builder(TelSmsSafeActivity.this);
					ab.setTitle("ע��!");
					ab.setMessage("�Ƿ����ɾ��������?");
					ab.setPositiveButton("��ɾ", new DialogInterface.OnClickListener() {

						@Override
						public void onClick(DialogInterface dialog, int which) {
							// �����ݿ���ɾ����ǰ����
							dao.delete(bean.getPhone());// ȥ����ǰ��������ĺ���������
							// ɾ���������Ӧ������
							datas.remove(position);
							//ʣ�������������10��,���û�ɾ�����һ������
							if (datas.size() < 9 || position == datas.size()) {
								// ɾ���걾�����ݺ�,�Զ�������һ��
								initData();
							} else {
								// ֪ͨ�����������,���û�����ɾ�����ݲ�����
								adapter.notifyDataSetChanged();// ֻ����listview����ȥ��ǰ��ʾλ�õ�����
							}
						}
					});
					ab.setNegativeButton("�����!", null);
					ab.show();
				}
			});
			return convertView;
		}

	}

	/**
	 * ��Ӻ���������
	 * 
	 * @param view
	 */
	public void addBlackNumber(View v) {
		AlertDialog.Builder ab = new AlertDialog.Builder(this);
		final AlertDialog dialog = ab.create();
		View view = View.inflate(getApplicationContext(), R.layout.dailog_addblacknumber, null);
		dialog.setView(view, 0, 0, 0, 0);// ���õ����߾�Ϊ0
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
					ToastUtils.showToast(getApplicationContext(), "���������벻��Ϊ��");
					return;
				}
				if (!cbTEL.isChecked() && !cbSMS.isChecked()) {
					// ��������ģʽ��û��ѡ��
					ToastUtils.showToast(getApplicationContext(), "����ѡ��һ������ģʽ");
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
				// ������ݵ�������
				dao.add(bean);
				datas.remove(bean);// ��ɾ������Ҫ��equals��hashCode����������ͬ�ж������Ƿ�һ��
				// ���濴���û�����������
				datas.add(0, bean);
				// ֪ͨ����,��listview��ʾ��һ������
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
