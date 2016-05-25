package com.blacknife.mobliesafe.activity;

import com.blacknife.mobliesafe.R;
import com.blacknife.mobliesafe.utils.MD5Utils;
import com.blacknife.mobliesafe.utils.MyConstants;
import com.blacknife.mobliesafe.utils.SpTools;
import com.blacknife.mobliesafe.utils.ToastUtils;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.EditText;
import android.widget.GridView;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;

/**
 * ��ҳ��
 * 
 * @author Blacknife
 *
 */
public class HomeActivity extends Activity {
	private GridView gvHome;
	private String[] mItems = new String[] { "�ֻ�����", "ͨѶ��ʿ", "�������", "���̹���", "����ͳ��", "�ֻ�ɱ��", "��������", "�߼�����", "��������" };
	private int[] mPics = new int[] { R.drawable.home_safe, R.drawable.home_callmsgsafe, R.drawable.home_apps,
			R.drawable.home_taskmanager, R.drawable.home_netmanager, R.drawable.home_trojan,
			R.drawable.home_sysoptimize, R.drawable.home_tools, R.drawable.home_settings };

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_home);
		gvHome = (GridView) findViewById(R.id.gv_home);
		gvHome.setAdapter(new HomeAdapter());

		// ���ü���
		gvHome.setOnItemClickListener(new OnItemClickListener() {

			@Override
			public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
				switch (position) {
				case 0:// �ֻ�����
					showPasswordDialog();
					break;
				case 1:// ͨѶ��ʿ
					startActivity(new Intent(HomeActivity.this, TelSmsSafeActivity.class));
					break;
				case 2:// �������
					startActivity(new Intent(HomeActivity.this, AppManagerActivity.class));
					break;
				case 3:// ���̹���

					break;
				case 4:// ����ͳ��

					break;
				case 5:// �ֻ�ɱ��

					break;
				case 6:// ��������

					break;
				case 7:// �߼�����
					startActivity(new Intent(HomeActivity.this ,AToolsActivity.class));
					break; 

				case 8:// ��������
					startActivity(new Intent(HomeActivity.this, SettingActivity.class));
					break;

				default:
					break;
				}
			}
		});

	}

	/**
	 * ��ʾ���뵯��
	 */
	protected void showPasswordDialog() {
		// �ж��Ƿ���������,���û�����ù�,������������ĵ���
		String savedPassword = SpTools.getString(HomeActivity.this, MyConstants.PASSWORD, null);
		if (!TextUtils.isEmpty(savedPassword)) {
			// ���Ѵ�������.������������ĵ���
			showPasswordInputDialog();
		} else {
			// ���û�����ù�����,������������ĵ���
			showPasswordSetDialog();
		}
	}

	/**
	 * ��������ĵ���
	 */
	private void showPasswordInputDialog() {
		AlertDialog.Builder builder = new AlertDialog.Builder(this);
		final AlertDialog dialog = builder.create();
		// ���Զ���Ĳ����ļ����ø�dialog
		View view = View.inflate(this, R.layout.dailog_input_password, null);
		dialog.setView(view, 0, 0, 0, 0);// ���õ����߾�Ϊ0
		Button btnOk = (Button) view.findViewById(R.id.btn_ok);
		Button btnCancel = (Button) view.findViewById(R.id.btn_cancel);
		final EditText etPassword = (EditText) view.findViewById(R.id.et_password);
		btnOk.setOnClickListener(new OnClickListener() {

			@Override
			public void onClick(View v) {
				String inputPassword = etPassword.getText().toString();
				if (!TextUtils.isEmpty(inputPassword)) {
					String savedPassword = SpTools.getString(HomeActivity.this, MyConstants.PASSWORD, null);
					// ��¼ʱ���������
					if (MD5Utils.encode(inputPassword).equals(savedPassword)) {
						Toast.makeText(HomeActivity.this, "��¼�ɹ�!", Toast.LENGTH_SHORT).show();
						dialog.dismiss();
						// ��ת���ֻ�����ҳ
						startActivity(new Intent(HomeActivity.this, LostFindActivity.class));
					} else {
						Toast.makeText(HomeActivity.this, "�������벻��ȷ!", Toast.LENGTH_SHORT).show();
					}
				} else {
					Toast.makeText(HomeActivity.this, "����������!", Toast.LENGTH_SHORT).show();
				}
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

	/**
	 * ��������ĵ���
	 */
	private void showPasswordSetDialog() {
		AlertDialog.Builder builder = new AlertDialog.Builder(this);
		final AlertDialog dialog = builder.create();
		// ���Զ���Ĳ����ļ����ø�dialog
		View view = View.inflate(this, R.layout.dailog_set_password, null);
		dialog.setView(view, 0, 0, 0, 0);// ���õ����߾�Ϊ0
		Button btnOk = (Button) view.findViewById(R.id.btn_ok);
		Button btnCancel = (Button) view.findViewById(R.id.btn_cancel);
		final EditText etPassword = (EditText) view.findViewById(R.id.et_password);
		final EditText etPasswordConfirm = (EditText) view.findViewById(R.id.et_password_confirm);
		btnOk.setOnClickListener(new OnClickListener() {

			@Override
			public void onClick(View v) {
				String password = etPassword.getText().toString();
				String passwordConfirm = etPasswordConfirm.getText().toString();
				// password != null && !password.equals("")
				if (!TextUtils.isEmpty(password) && !passwordConfirm.isEmpty()) {
					if (password.equals(passwordConfirm)) {
						Toast.makeText(HomeActivity.this, "�������óɹ�!", Toast.LENGTH_SHORT).show();
						// �����뱣������
						SpTools.putString(HomeActivity.this, MyConstants.PASSWORD, MD5Utils.encode(password));
						dialog.dismiss();
						// ��ת���ֻ�����ҳ
						startActivity(new Intent(HomeActivity.this, LostFindActivity.class));

					} else {
						Toast.makeText(HomeActivity.this, "�������벻һ��!", Toast.LENGTH_SHORT).show();
					}
				} else {
					Toast.makeText(HomeActivity.this, "��������ݲ���Ϊ��!", Toast.LENGTH_SHORT).show();
				}
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

	class HomeAdapter extends BaseAdapter {

		@Override
		public int getCount() {
			return 9;
		}

		@Override
		public Object getItem(int position) {
			return mItems[position];
		}

		@Override
		public long getItemId(int position) {
			return position;
		}

		@Override
		public View getView(int position, View convertView, ViewGroup parent) {
			View view = View.inflate(HomeActivity.this, R.layout.home_list_item, null);
			TextView tvItem = (TextView) view.findViewById(R.id.tv_item);
			ImageView ivItem = (ImageView) view.findViewById(R.id.iv_icon);
			tvItem.setText(mItems[position]);
			ivItem.setImageResource(mPics[position]);
			return view;
		}

	}
	/**
	 *  ����ʵ�尴ť
	 */
	@Override  
    public boolean onKeyDown(int keyCode, KeyEvent event)  
    {  
		//���ü������ذ�ť
        if (keyCode == KeyEvent.KEYCODE_BACK ) {
        	if(doubleOnClik(500)){
        		finish();
        	}else{
        		ToastUtils.showToast(getApplicationContext(), "�ٰ�һ�η��ؼ��˳�Ӧ��");
        	}
        }
		return false;
    }
	/**
	 * ��ȡ˫������¼�
	 * 
	 * @param interval
	 *            ˫��������ʱ��
	 * @return true = ��ȡ˫�� false = ��ȡ����
	 */
	static long[] mHits = new long[2];// ���鳤�ȱ�ʾҪ����Ĵ���
	public static Boolean doubleOnClik(long interval) {

		System.arraycopy(mHits, 1, mHits, 0, mHits.length - 1);
		mHits[mHits.length - 1] = SystemClock.uptimeMillis();// ��ȡϵͳʱ��(��λ:����)
		if (mHits[0] >= (SystemClock.uptimeMillis() - interval)) {
			// ˫����Ӧȷ��
			return true;
		}
		return false;
	}

}
