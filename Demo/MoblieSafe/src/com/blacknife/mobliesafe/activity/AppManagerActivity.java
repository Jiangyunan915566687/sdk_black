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
 * ����ܼҵĽ���
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

	private long sdAvail;// sd��������
	private long romAvail;// rom��������
	// �û�apk������
	private List<AppBean> userApks = new ArrayList<AppBean>();

	private List<AppBean> sysApks = new ArrayList<AppBean>();
	private MyAdpter adapter;

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		// TODO �Զ����ɵķ������
		super.onCreate(savedInstanceState);
		initView();
		initData();
		initEvent();

	}
	
	private void initEvent() {
		lvDatas.setOnItemClickListener(new OnItemClickListener() {

			

			@Override
			public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
				// ��ȡ��ǰ�����λ�õ�ֵ,��������ǩ��������
				// ����������ϵͳ�����ǩ��λ��,��������
				if (position == userApks.size() + 1 || position == 0) {
					System.out.println("��ʾ��ǩ");
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
	 * ж������ĵ���
	 */
	private void showUnloadDialog() {
		AlertDialog.Builder builder = new AlertDialog.Builder(this);
		final AlertDialog dialog = builder.create();
		// ���Զ���Ĳ����ļ����ø�dialog
		View view = View.inflate(this, R.layout.dailog_unload_apk, null);
		dialog.setView(view, 0, 0, 0, 0);// ���õ����߾�Ϊ0
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
				dialog.dismiss();// ����dialog				
			}
		});
		btnCancel.setOnClickListener(new OnClickListener() {

			@Override
			public void onClick(View v) {
				dialog.dismiss();// ����dialog
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
	 * ж�س���
	 */
	protected void removeApk() {
		//ж�����   �û�apk  ϵͳapk(Ĭ���޷�ɾ��)
		if (!clickBean.isSystem()) {
			showUnloadDialog();		
		}else{
			ToastUtils.showToast(getApplicationContext(), "û�л��ROOTȨ��,�޷�ж��ϵͳ����");
		}
	}
	
	private Handler handler = new Handler() {
		public void handleMessage(android.os.Message msg) {
			switch (msg.what) {
			case LOADING:// ���ڼ�������
				// �������
				pbLoading.setVisibility(View.VISIBLE);// ��ʾ�������ݽ���
				lvDatas.setVisibility(View.GONE);// ����listview

				break;
			case FINISH:// ���ݼ������
				pbLoading.setVisibility(View.GONE);// ��ʾ�������ݽ���
				lvDatas.setVisibility(View.VISIBLE);// ����listview
				// �����ڴ��ʣ���С
				tvSDAvail.setText("SD�����ÿռ�:" + Formatter.formatFileSize(getApplicationContext(), sdAvail));
				tvROMAvail.setText("ROM���ÿռ�:" + Formatter.formatFileSize(getApplicationContext(), romAvail));
				// ��ʼ������
				// ˢ������
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
			// TODO �Զ����ɵķ������
			return userApks.size() + sysApks.size() + 2;
		}

		@Override
		public View getView(int position, View convertView, ViewGroup parent) {
			if (position == 0) {
				// �û�apk�ı�ǩ
				TextView tvUserTable = new TextView(getApplicationContext());
				tvUserTable.setText("�û����(" + userApks.size() + ")");
				tvUserTable.setTextColor(Color.WHITE);
				tvUserTable.setBackgroundColor(Color.GRAY);
				return tvUserTable;
			} else if (position == userApks.size() + 1) {
				// ϵͳapk�ı�ǩ
				TextView tvSysTable = new TextView(getApplicationContext());
				tvSysTable.setText("ϵͳ���(" + sysApks.size() + ")");
				tvSysTable.setTextColor(Color.WHITE);
				tvSysTable.setBackgroundColor(Color.GRAY);
				return tvSysTable;

			} else {
				//����Ļ���
				ViewHolder holder = new ViewHolder();
				//�ж��Ƿ���ڻ���
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
				// ��������
				holder.ivIcon.setImageDrawable(bean.getIcon());
				if (bean.isSD()) {
					holder.tvLocation.setText("SD�洢");
				} else {
					holder.tvLocation.setText("ROM�洢");
				}

				holder.tvTitle.setText(bean.getAppName());
				holder.tvSize.setText(Formatter.formatFileSize(getApplicationContext(), bean.getSize()));
				return convertView;

			}
		}

		@Override
		public AppBean getItem(int position) {
			// ��ȡ����
			AppBean bean = null;
			if (position <= userApks.size()) {
				// �û�apk
				bean = userApks.get(position - 1);
			} else {
				// ϵͳapk
				bean = sysApks.get(position - userApks.size() - 2);
			}
			return bean;
		}

		@Override
		public long getItemId(int position) {
			// TODO �Զ����ɵķ������
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
				// ȡ����,��ȡ����apk����
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
