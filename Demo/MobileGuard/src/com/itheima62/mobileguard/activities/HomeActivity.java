package com.itheima62.mobileguard.activities;


import android.app.Activity;
import android.app.AlertDialog;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
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

import com.itheima62.mobileguard.R;
import com.itheima62.mobileguard.utils.Md5Utils;
import com.itheima62.mobileguard.utils.MyConstants;
import com.itheima62.mobileguard.utils.SpTools;
import com.startapp.android.publish.StartAppAd;
import com.startapp.android.publish.StartAppSDK;

/**
 * @author Administrator
 * 主界面
 */
public class HomeActivity extends Activity {
	
	private StartAppAd startAppAd = new StartAppAd(this);
	
	private GridView gv_menus;//主界面的按钮
	
	private int icons[] = {R.drawable.safe,R.drawable.callmsgsafe,R.drawable.item_gv_selector_app
			,R.drawable.taskmanager,R.drawable.netmanager,R.drawable.trojan
			,R.drawable.sysoptimize,R.drawable.atools,R.drawable.settings};
	
	private String names[]={"手机防盗","通讯卫士","软件管家","进程管理","流量统计","病毒查杀","缓存清理","高级工具","设置中心"};

	private MyAdapter adapter;//gridview的适配器

	private AlertDialog dialog;

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		super.onCreate(savedInstanceState);
		//注册开发者和app的信息
		StartAppSDK.init(this, "102205247", "202885025", true);
		initView();//初始化界面
		initData();//给GridView设置数据
		initEvent();//初始化事件
	}

	/**
	 * 初始化组件的事件
	 */
	private void initEvent() {
		gv_menus.setOnItemClickListener(new OnItemClickListener() {

			@Override
			public void onItemClick(AdapterView<?> parent, View view,
					int position, long id) {
				//判断点击位置
				switch (position) {
				case 6://缓存清理
				{
					Intent atool = new Intent(HomeActivity.this,CacheActivity.class);
					startActivity(atool);
					break;
				}
				case 5://扫描病毒
				{
					Intent atool = new Intent(HomeActivity.this,AntivirusActivity.class);
					startActivity(atool);
					break;
					
				}
				case 4://流量统计
				{
					Intent atool = new Intent(HomeActivity.this,ConnectivityActivity.class);
					startActivity(atool);
					break;
					
				}
				case 3://进程管家
				{
					//打开设置通讯卫士的界面
					Intent atool = new Intent(HomeActivity.this,TastManagerActivity.class);
					startActivity(atool);
					break;
				}
				case 2://软件管家
				{
					//打开设置通讯卫士的界面
					Intent atool = new Intent(HomeActivity.this,AppManagerActivity.class);
					startActivity(atool);
					break;
				}
				case 7://高级工具
				{
					//打开设置通讯卫士的界面
					Intent atool = new Intent(HomeActivity.this,AToolActivity.class);
					startActivity(atool);
					break;
				}
				case 1://通讯卫士
				{
					//打开设置通讯卫士的界面
					Intent setting = new Intent(HomeActivity.this,TelSmsSafeActivity.class);
					startActivity(setting);
					break;
				}
				case 8: //设置中心
					//打开设置中心的界面
					Intent setting = new Intent(HomeActivity.this,SettingCenterActivity.class);
					startActivity(setting);
					break;
				case 0://手机防盗
					//自定义对话框
					//是否设置过密码，没有设置密码，弹出设置密码的对话框，如果设置密码，登陆的对话框
					//从sp中去对应password的密码信息
					if (TextUtils.isEmpty(SpTools.getString(getApplicationContext(), MyConstants.PASSWORD, ""))){
						//没有设置过密码
						//设置密码对话框
						showSettingPassDialog();
					} else {//设置过密码
						//输入密码的对话框
						showEnterPassDialog();
					}
					break;

				default:
					break;
				}
			}

		});
	}

	/**
	 * 显示自定义输入密码的对话框
	 */
	protected void showEnterPassDialog() {
		AlertDialog.Builder builder = new AlertDialog.Builder(this);
		View view = View.inflate(getApplicationContext(), R.layout.dialog_enter_password, null);
		final EditText et_passone = (EditText) view.findViewById(R.id.et_dialog_enter_password_passone);
		
		Button bt_setpass = (Button) view.findViewById(R.id.bt_dialog_enter_password_login);
		Button bt_cancel = (Button) view.findViewById(R.id.bt_dialog_enter_password_cancel);
		
		
		builder.setView(view );
		bt_setpass.setOnClickListener(new OnClickListener() {
			
			@Override
			public void onClick(View v) {
				//设置密码
				String passone = et_passone.getText().toString().trim();
				
				if ( TextUtils.isEmpty(passone)){
					Toast.makeText(getApplicationContext(), "密码不能为空", 1).show();
					return;
				}  else {
					// 密码判断,md5 2次加密
					passone = Md5Utils.md5(Md5Utils.md5(passone));
					//读取sp中保存的密文，进行判断
					if (passone.equals(SpTools.getString(getApplicationContext(), MyConstants.PASSWORD, ""))){
						//一致
						//进入手机防盗界面
						Intent intent = new Intent(HomeActivity.this,LostFindActivity.class);
						startActivity(intent);
					} else {
						//不一致
						Toast.makeText(getApplicationContext(), "密码不正确", 1).show();
						return;
					}
					
					//关闭对话框
					dialog.dismiss();
				}
				
			}
		});
		bt_cancel.setOnClickListener(new OnClickListener() {
			
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				dialog.dismiss();//关闭对话框
			}
		});
		dialog = builder.create();
		dialog.show();
	}

	protected void showSettingPassDialog() {
		AlertDialog.Builder builder = new AlertDialog.Builder(this);
		View view = View.inflate(getApplicationContext(), R.layout.dialog_setting_password, null);
		final EditText et_passone = (EditText) view.findViewById(R.id.et_dialog_setting_password_passone);
		final EditText et_passtwo = (EditText) view.findViewById(R.id.et_dialog_setting_password_passtwo);
		Button bt_setpass = (Button) view.findViewById(R.id.bt_dialog_setting_password_setpass);
		Button bt_cancel = (Button) view.findViewById(R.id.bt_dialog_setting_password_cancel);
		
		
		builder.setView(view );
		bt_setpass.setOnClickListener(new OnClickListener() {
			
			@Override
			public void onClick(View v) {
				//设置密码
				String passone = et_passone.getText().toString().trim();
				String passtwo = et_passtwo.getText().toString().trim();
				if (TextUtils.isEmpty(passtwo) || TextUtils.isEmpty(passone)){
					Toast.makeText(getApplicationContext(), "密码不能为空", 1).show();
					return;
				} else if (!passone.equals(passtwo)){//密码不一致
					Toast.makeText(getApplicationContext(), "密码不一致", 1).show();
					return;
				} else {
					//保存密码
					//保存密码到sp中
					 System.out.println("保存密码");
					 //对密码加密处理 ，md5 2次加密 保存密文
					 passone = Md5Utils.md5(Md5Utils.md5(passone));
					 SpTools.putString(getApplicationContext(), MyConstants.PASSWORD, passone);
					 dialog.dismiss();
				}
				
			}
		});
		bt_cancel.setOnClickListener(new OnClickListener() {
			
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				dialog.dismiss();//关闭对话框
			}
		});
		dialog = builder.create();
		dialog.show();
	}

	/**
	 * 初始化组件的数据
	 */
	private void initData() {
		adapter = new MyAdapter();
		gv_menus.setAdapter(adapter);//设置gridview适配器数据
		
	}
	
	@Override
	protected void onResume() {
		
		
		//通知Gridview重新取数据
		adapter.notifyDataSetChanged();
		 startAppAd.onResume();
		super.onResume();
	}
	
	@Override
	public void onPause() {
	    super.onPause();
	    startAppAd.onPause();
	}
	
	private class MyAdapter extends BaseAdapter{

		@Override
		public int getCount() {
			// TODO Auto-generated method stub
			return icons.length;//图标的个数
		}
		@Override
		public View getView(int position, View convertView, ViewGroup parent) {
			View view = View.inflate(getApplicationContext(), R.layout.item_home_gridview, null);
			//获取组件
			ImageView iv_icon = (ImageView) view.findViewById(R.id.iv_item_home_gv_icon);
			TextView tv_name = (TextView) view.findViewById(R.id.tv_item_home_gv_name);
			//设置数据
			//图片
			iv_icon.setImageResource(icons[position]);
			
			//文字
			tv_name.setText(names[position]);
			
			if (position == 0) {//只判断手机防盗的位置
				//判断是否存在新的手机防盗名
				if (!TextUtils.isEmpty(SpTools.getString(getApplicationContext(), MyConstants.LOSTFINDNAME, ""))) {
					//有新的手机防盗名
					tv_name.setText(SpTools.getString(getApplicationContext(), MyConstants.LOSTFINDNAME, ""));
				}
			}
			
			
			return view;
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

		
		
	}

	private void initView() {
		// TODO Auto-generated method stub
		setContentView(R.layout.activity_home);
		gv_menus = (GridView) findViewById(R.id.gv_home_menus);
	}
}
