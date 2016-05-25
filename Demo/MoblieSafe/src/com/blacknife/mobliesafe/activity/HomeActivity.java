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
 * 主页面
 * 
 * @author Blacknife
 *
 */
public class HomeActivity extends Activity {
	private GridView gvHome;
	private String[] mItems = new String[] { "手机防盗", "通讯卫士", "软件管理", "进程管理", "流量统计", "手机杀毒", "缓存清理", "高级工具", "设置中心" };
	private int[] mPics = new int[] { R.drawable.home_safe, R.drawable.home_callmsgsafe, R.drawable.home_apps,
			R.drawable.home_taskmanager, R.drawable.home_netmanager, R.drawable.home_trojan,
			R.drawable.home_sysoptimize, R.drawable.home_tools, R.drawable.home_settings };

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_home);
		gvHome = (GridView) findViewById(R.id.gv_home);
		gvHome.setAdapter(new HomeAdapter());

		// 设置监听
		gvHome.setOnItemClickListener(new OnItemClickListener() {

			@Override
			public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
				switch (position) {
				case 0:// 手机防盗
					showPasswordDialog();
					break;
				case 1:// 通讯卫士
					startActivity(new Intent(HomeActivity.this, TelSmsSafeActivity.class));
					break;
				case 2:// 软件管理
					startActivity(new Intent(HomeActivity.this, AppManagerActivity.class));
					break;
				case 3:// 进程管理

					break;
				case 4:// 流量统计

					break;
				case 5:// 手机杀毒

					break;
				case 6:// 缓存清理

					break;
				case 7:// 高级工具
					startActivity(new Intent(HomeActivity.this ,AToolsActivity.class));
					break; 

				case 8:// 设置中心
					startActivity(new Intent(HomeActivity.this, SettingActivity.class));
					break;

				default:
					break;
				}
			}
		});

	}

	/**
	 * 显示密码弹窗
	 */
	protected void showPasswordDialog() {
		// 判断是否设置密码,如果没有设置过,弹出设置密码的弹窗
		String savedPassword = SpTools.getString(HomeActivity.this, MyConstants.PASSWORD, null);
		if (!TextUtils.isEmpty(savedPassword)) {
			// 若已存在密码.弹出输入密码的弹窗
			showPasswordInputDialog();
		} else {
			// 如果没有设置过密码,弹出设置密码的弹窗
			showPasswordSetDialog();
		}
	}

	/**
	 * 输入密码的弹窗
	 */
	private void showPasswordInputDialog() {
		AlertDialog.Builder builder = new AlertDialog.Builder(this);
		final AlertDialog dialog = builder.create();
		// 将自定义的布局文件设置给dialog
		View view = View.inflate(this, R.layout.dailog_input_password, null);
		dialog.setView(view, 0, 0, 0, 0);// 设置弹窗边距为0
		Button btnOk = (Button) view.findViewById(R.id.btn_ok);
		Button btnCancel = (Button) view.findViewById(R.id.btn_cancel);
		final EditText etPassword = (EditText) view.findViewById(R.id.et_password);
		btnOk.setOnClickListener(new OnClickListener() {

			@Override
			public void onClick(View v) {
				String inputPassword = etPassword.getText().toString();
				if (!TextUtils.isEmpty(inputPassword)) {
					String savedPassword = SpTools.getString(HomeActivity.this, MyConstants.PASSWORD, null);
					// 登录时对密码进行
					if (MD5Utils.encode(inputPassword).equals(savedPassword)) {
						Toast.makeText(HomeActivity.this, "登录成功!", Toast.LENGTH_SHORT).show();
						dialog.dismiss();
						// 跳转到手机防盗页
						startActivity(new Intent(HomeActivity.this, LostFindActivity.class));
					} else {
						Toast.makeText(HomeActivity.this, "密码输入不正确!", Toast.LENGTH_SHORT).show();
					}
				} else {
					Toast.makeText(HomeActivity.this, "请输入密码!", Toast.LENGTH_SHORT).show();
				}
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

	/**
	 * 设置密码的弹窗
	 */
	private void showPasswordSetDialog() {
		AlertDialog.Builder builder = new AlertDialog.Builder(this);
		final AlertDialog dialog = builder.create();
		// 将自定义的布局文件设置给dialog
		View view = View.inflate(this, R.layout.dailog_set_password, null);
		dialog.setView(view, 0, 0, 0, 0);// 设置弹窗边距为0
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
						Toast.makeText(HomeActivity.this, "密码设置成功!", Toast.LENGTH_SHORT).show();
						// 将密码保存起来
						SpTools.putString(HomeActivity.this, MyConstants.PASSWORD, MD5Utils.encode(password));
						dialog.dismiss();
						// 跳转到手机防盗页
						startActivity(new Intent(HomeActivity.this, LostFindActivity.class));

					} else {
						Toast.makeText(HomeActivity.this, "两次密码不一致!", Toast.LENGTH_SHORT).show();
					}
				} else {
					Toast.makeText(HomeActivity.this, "输入框内容不能为空!", Toast.LENGTH_SHORT).show();
				}
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
	 *  监听实体按钮
	 */
	@Override  
    public boolean onKeyDown(int keyCode, KeyEvent event)  
    {  
		//设置监听返回按钮
        if (keyCode == KeyEvent.KEYCODE_BACK ) {
        	if(doubleOnClik(500)){
        		finish();
        	}else{
        		ToastUtils.showToast(getApplicationContext(), "再按一次返回键退出应用");
        	}
        }
		return false;
    }
	/**
	 * 获取双击点击事件
	 * 
	 * @param interval
	 *            双击点击间隔时间
	 * @return true = 获取双击 false = 获取单击
	 */
	static long[] mHits = new long[2];// 数组长度表示要点击的次数
	public static Boolean doubleOnClik(long interval) {

		System.arraycopy(mHits, 1, mHits, 0, mHits.length - 1);
		mHits[mHits.length - 1] = SystemClock.uptimeMillis();// 获取系统时间(单位:毫秒)
		if (mHits[0] >= (SystemClock.uptimeMillis() - interval)) {
			// 双击响应确认
			return true;
		}
		return false;
	}

}
