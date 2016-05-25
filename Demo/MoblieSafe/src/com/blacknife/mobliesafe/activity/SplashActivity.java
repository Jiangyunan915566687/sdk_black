package com.blacknife.mobliesafe.activity;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;

import org.json.JSONException;
import org.json.JSONObject;

import com.blacknife.mobliesafe.R;
import com.blacknife.mobliesafe.service.AddressService;
import com.blacknife.mobliesafe.service.TelSmsBlackService;
import com.blacknife.mobliesafe.utils.MyConstants;
import com.blacknife.mobliesafe.utils.SpTools;
import com.blacknife.mobliesafe.utils.StreamUtils;
import com.lidroid.xutils.HttpUtils;
import com.lidroid.xutils.exception.HttpException;
import com.lidroid.xutils.http.ResponseInfo;
import com.lidroid.xutils.http.callback.RequestCallBack;
import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.net.Uri;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.os.Message;
import android.view.View;
import android.view.animation.AlphaAnimation;
import android.widget.Button;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;

public class SplashActivity extends Activity {
	protected static final int CODE_UPDATE_DIALOG = 0;
	protected static final int CODE_URL_ERROR = 1;
	protected static final int CODE_NET_ERROR = 2;
	protected static final int CODE_JSON_ERROR = 3;
	protected static final int CODE_ENTER_HOME = 4;

	private TextView tvVersion;
	private TextView tvProgress;// 下载进度显示控件
	private Button tvGohome;// 进入主页面按钮
	private ProgressBar pbProgress;// 初始化进度条

	private RelativeLayout rlRoot;
	// 服务器返回的版本信息
	private String mVersionName; // 版本名
	private int mVersionCode; // 版本号
	private String mDesc; // 版本描述
	private String mDownloadUrl; // 更新地址

	private Handler mHandler = new Handler() {
		public void handleMessage(android.os.Message msg) {
			pbProgress.setVisibility(View.INVISIBLE);
			tvGohome.setVisibility(View.VISIBLE);
			switch (msg.what) {

			case CODE_UPDATE_DIALOG:
				showUpdateDailog();
				break;
			case CODE_URL_ERROR:
				Toast.makeText(SplashActivity.this, "Url错误", Toast.LENGTH_SHORT).show();
				;
				break;
			case CODE_NET_ERROR:
				Toast.makeText(SplashActivity.this, "网络错误", Toast.LENGTH_SHORT).show();
				break;
			case CODE_JSON_ERROR:
				Toast.makeText(SplashActivity.this, "数据解析错误", Toast.LENGTH_SHORT).show();
				break;
			case CODE_ENTER_HOME:
				enterHome();
				break;
			default:
				break;
			}
		};
	};

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_splash);
		tvVersion = (TextView) findViewById(R.id.tv_version);
		tvVersion.setText("版本号:" + getVersionName());
		tvProgress = (TextView) findViewById(R.id.tv_progress);
		pbProgress = (ProgressBar) findViewById(R.id.pb_progress);
		tvGohome = (Button) findViewById(R.id.tv_gohome);
		rlRoot = (RelativeLayout) findViewById(R.id.rl_root);
		//判断是否需要开启黑名单服务
		if(SpTools.getBoolean(SplashActivity.this, MyConstants.SERVICEBLACKNUMBER, false)){
			// 开启黑名单拦截服务
			startService(new Intent(SplashActivity.this, TelSmsBlackService.class));
		}
		if(SpTools.getBoolean(SplashActivity.this, MyConstants.SERVICEADDRESS, false)){
			// 开启归属地拦截服务
			startService(new Intent(SplashActivity.this, AddressService.class));
		}
		// 判断是否需要自动更新
		copyDB("address.db");//拷贝归属地查询数据库
		if (SpTools.getBoolean(SplashActivity.this, MyConstants.SERVICEAUTOUPDATE, true)) {
			checkVersion();
		} else {
			mHandler.sendEmptyMessageDelayed(CODE_ENTER_HOME, 2000);// 延时2s后发送消息
		}
		
		// 渐变的动画效果
		AlphaAnimation anim = new AlphaAnimation(0.3f, 1f);
		anim.setDuration(2000);
		rlRoot.startAnimation(anim);
	}

	/**
	 * 获取版本名称
	 * 
	 * @return
	 */
	private String getVersionName() {
		PackageManager packageManager = getPackageManager();
		try {
			// 获取包信息
			PackageInfo packageInfo = packageManager.getPackageInfo(getPackageName(), 0);
			String versionName = packageInfo.versionName;
			return versionName;
		} catch (NameNotFoundException e) {
			// 没有找到包名的时候会走此异常
			e.printStackTrace();
		}
		return "";
	}

	/**
	 * 获取版本号
	 * 
	 * @return
	 */
	private int getVersionCode() {
		PackageManager packageManager = getPackageManager();
		try {
			// 获取包信息
			PackageInfo packageInfo = packageManager.getPackageInfo(getPackageName(), 0);
			int versionCode = packageInfo.versionCode;
			return versionCode;
		} catch (NameNotFoundException e) {
			// 没有找到包名的时候会走此异常
			e.printStackTrace();
		}
		return -1;
	}

	/**
	 * 从服务器获取版本信息并进行校验
	 */
	private void checkVersion() {
		final long startTime = System.currentTimeMillis();
		// 启动子线程去异步加载
		new Thread() {
			@Override
			public void run() {
				Message msg = Message.obtain();
				HttpURLConnection conn = null;
				try {
					// 本机地址用localhost,但是如果用牟尼奇加载本机的地址时,可以用ip(10.0.2.2)来替换
					URL url = new URL("http://10.0.2.2:8088/MoblieSafe/update.json");
					conn = (HttpURLConnection) url.openConnection();
					conn.setRequestMethod("GET");// 设置请求方法
					conn.setConnectTimeout(5000);// 设置链接超时
					conn.setReadTimeout(5000);// 设置响应超时,连接上了,但服务器迟迟不给响应
					conn.connect();// 连接服务器
					int responseCode = conn.getResponseCode();
					if (responseCode == 200) {
						InputStream inputStream = conn.getInputStream();
						String result = StreamUtils.readFromStream(inputStream);
						// System.out.println("网络返回:" + result);
						// 解析json
						JSONObject jo = new JSONObject(result);
						mVersionName = jo.getString("versionName");
						mVersionCode = jo.getInt("versionCode");
						mDesc = jo.getString("description");
						mDownloadUrl = jo.getString("downloadUrl");
						// 判断版本是否有更新
						if (mVersionCode > getVersionCode()) {
							// 服务器的版本号大于本地的版本号,则说明有更新,弹出升级对话框
							msg.what = CODE_UPDATE_DIALOG;
						} else {
							msg.what = CODE_ENTER_HOME;
						}
					}
				} catch (MalformedURLException e) {
					// url错误的异常
					msg.what = CODE_URL_ERROR;
					e.printStackTrace();
				} catch (IOException e) {
					// 网络错误异常
					msg.what = CODE_NET_ERROR;
					e.printStackTrace();
				} catch (JSONException e) {
					// json解析失败
					msg.what = CODE_JSON_ERROR;
					e.printStackTrace();
				} finally {
					long endTime = System.currentTimeMillis();
					long timeUsed = endTime - startTime;
					if (timeUsed < 2000) {
						// 强制休眠,保证闪屏页展示2秒钟
						try {
							Thread.sleep(2000 - timeUsed);
						} catch (InterruptedException e) {
							e.printStackTrace();
						}
					}
					mHandler.sendMessage(msg);
					if (conn != null) {
						conn.disconnect();// 关闭网络链接
					}
				}
			}
		}.start();

	}

	/**
	 * 升级对话框
	 */
	protected void showUpdateDailog() {
		AlertDialog.Builder builder = new AlertDialog.Builder(this);
		builder.setTitle("最新版本:" + mVersionName);
		builder.setMessage(mDesc);
		// builder.setCancelable(false);//设置对话框可撤销或不。默认是可以的。
		builder.setPositiveButton("立即更新", new OnClickListener() {

			@Override
			public void onClick(DialogInterface dialog, int which) {
				System.out.println("立即更新");
				download();
			}
		});
		builder.setNegativeButton("以后再说", null);
		// 设置取消对话框的监听,用户点击返回的时候 触发事件
		builder.setOnCancelListener(new OnCancelListener() {

			@Override
			public void onCancel(DialogInterface dialog) {
				enterHome();
			}
		});
		builder.show();
	}

	/**
	 * 下载apk文件
	 */
	protected void download() {
		if (Environment.getExternalStorageState().equals(Environment.MEDIA_MOUNTED)) {

			tvProgress.setVisibility(View.VISIBLE);
			// Environment.getExternalStorageDirectory() SD卡的根目录
			final String target = Environment.getExternalStorageDirectory() + "/update.apk";
			// xUtils
			HttpUtils utils = new HttpUtils();
			utils.download(mDownloadUrl, target, new RequestCallBack<File>() {

				@Override
				public void onSuccess(ResponseInfo<File> arg0) {
					System.out.println("下载成功!");
					// 挑战到系统下载页面
					Intent intent = new Intent(Intent.ACTION_VIEW);
					intent.addCategory(Intent.CATEGORY_DEFAULT);
					intent.setDataAndType(Uri.fromFile(new File(target)), "application/vnd.android.package-archive");
					startActivityForResult(intent, 0);
					// startActivity(intent);
				}

				/**
				 * 文件下载的进度
				 * 
				 * @param total
				 *            文件大小
				 * @param current
				 *            已下载进度
				 * @param isUploading
				 *            是否在上传
				 */
				@Override
				public void onLoading(long total, long current, boolean isUploading) {
					super.onLoading(total, current, isUploading);
					System.out.println("下载进度:" + current + "/" + total);
					tvProgress.setText("下载进度:" + current * 100 / total + "%");
				}

				@Override
				public void onFailure(HttpException arg0, String arg1) {
					Toast.makeText(SplashActivity.this, "下载失败", Toast.LENGTH_SHORT);
				}

			});
		} else {
			Toast.makeText(SplashActivity.this, "没有SD卡", Toast.LENGTH_SHORT);
		}
	}

	/**
	 * 进入主界面
	 */
	private void enterHome() {
		Intent intent = new Intent(this, HomeActivity.class);
		startActivity(intent);
		finish();// 销毁闪屏界面
	}

	public void clickGohome(View bt) {
		enterHome();
	}

	/**
	 * 如果用户取消安装就会触发返回监听
	 */
	@Override
	protected void onActivityResult(int requestCode, int resultCode, Intent data) {
		enterHome();
		super.onActivityResult(requestCode, resultCode, data);
	}
	//拷贝数据库
	private void copyDB(String dbName) {
		// getFilesDir() 用来获取路径
		File destFile = new File(getFilesDir(), dbName);
		if(destFile.exists()){
			System.out.println("数据库:" + dbName + "已存在!");
			return;
		}
		FileOutputStream out = null;
		InputStream in = null;
		try {
			in = getAssets().open(dbName);
			out = new FileOutputStream(destFile);
			int len = 0;
			byte[] buffer = new byte[1024];
			while((len = in.read(buffer))!=-1){
				out.write(buffer, 0, len);
			}
		} catch (IOException e) {
			e.printStackTrace();
		}finally {
			try{
				in.close();
				out.close();
			}catch(Exception e){
				e.printStackTrace();
			}
		
		}
	}
}
