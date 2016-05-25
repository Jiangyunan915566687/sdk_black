package com.itheima62.mobileguard.activities;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;

import org.json.JSONException;
import org.json.JSONObject;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.AssetManager;
import android.net.Uri;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.os.Message;
import android.os.SystemClock;
import android.view.Menu;
import android.view.View;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.view.animation.AnimationSet;
import android.view.animation.RotateAnimation;
import android.view.animation.ScaleAnimation;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;

import com.itheima62.mobileguard.R;
import com.itheima62.mobileguard.domain.UrlBean;
import com.itheima62.mobileguard.utils.MyConstants;
import com.itheima62.mobileguard.utils.SpTools;
import com.lidroid.xutils.HttpUtils;
import com.lidroid.xutils.exception.HttpException;
import com.lidroid.xutils.http.ResponseInfo;
import com.lidroid.xutils.http.callback.RequestCallBack;

public class SplashActivity extends Activity {

	private static final int LOADMAIN = 1;// 加载主界面
	private static final int SHOWUPDATEDIALOG = 2;// 显示是否更新的对话框
	protected static final int ERROR = 3;// 错误统一代号
	private RelativeLayout rl_root;// 界面的根布局组件
	private int versionCode;// 版本号
	private String versionName;// 版本名
	private TextView tv_versionName;// 显示版本名的组件
	private UrlBean parseJson;// url信息封装bean
	private long startTimeMillis;// 记录开始访问网络的时间
	private ProgressBar pb_download;// 下载最新版本apk的进度条

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		// 初始化界面
		initView();
		// 初始化数据
		initData();
		// 初始化动画
		initAnimation();
		// 拷贝手机归属地数据库
		copyDB("address.db");
		// 拷贝病毒数据库
		copyDB("antivirus.db");

		// 耗时的功能封装，只要耗时的处理，都放到此方法
		// timeInitialization() 如下：

	}

	/**
	 * 把assert目录下文件拷贝到本地(/data/data/包名/files)
	 * 
	 * @param dbName
	 *            assert目录下的文件名
	 * @throws IOException
	 */
	private void copyDB(final String dbName) {
		new Thread() {
			public void run() {

				// 判断文件是否存在，如果存在不需要拷贝
				File file = new File("/data/data/" + getPackageName()
						+ "/files/" + dbName);
				if (file.exists()) {// 文件存在
					return;
				}
				// 文件的拷贝
				try {
					filecopy(dbName);
				} catch (FileNotFoundException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			};
		}.start();

	}

	private void filecopy(String dbName) throws IOException,
			FileNotFoundException {
		// io流来拷贝
		// 输入流
		AssetManager assets = getAssets();
		// 读取assert的文件，转换成InputStream
		InputStream is = assets.open(dbName);

		// 输出流
		FileOutputStream fos = openFileOutput(dbName, MODE_PRIVATE);

		// 流的拷贝
		// 定义缓冲区大小10k
		byte[] buffer = new byte[10240];

		// 读取的长度
		int len = is.read(buffer);
		int counts = 1;
		// 循环读取,如果读到文件尾部，返回-1
		while (len != -1) {
			// 把缓冲区的数据写到输出流
			fos.write(buffer, 0, len);
			// 每次100k的时候刷新缓冲区的数据到文件中
			if (counts % 10 == 0) {
				fos.flush();// 刷新缓冲区
			}
			// 继续读取
			len = is.read(buffer);
			counts++;
		}
		fos.flush();
		fos.close();
		is.close();
	}

	/**
	 * 耗时的功能封装，只要耗时的处理，都放到此方法
	 */
	private void timeInitialization() {
		// 一开始动画，就应该干耗时的业务（网络，本地数据初始化，数据的拷贝等）
		if (SpTools.getBoolean(getApplicationContext(), MyConstants.AUTOUPDATE,
				false)) {
			// true 自动更新
			// 检测服务器的版本
			checkVerion();
		}
		// 增加自己的耗时功能处理

	}

	private void initData() {
		// 获取自己的版本信息
		PackageManager pm = getPackageManager();
		try {
			PackageInfo packageInfo = pm.getPackageInfo(getPackageName(), 0);
			// 版本号
			versionCode = packageInfo.versionCode;
			// 版本名
			versionName = packageInfo.versionName;

			// 设置textview
			tv_versionName.setText(versionName);
		} catch (NameNotFoundException e) {
			// can not reach 异常不会发生
		}
	}

	private void checkVerion() {
		// 耗时操作都要放到子线程中执行
		new Thread(new Runnable() {

			@Override
			public void run() {
				BufferedReader bfr = null;
				HttpURLConnection conn = null;
				int errorCode = -1;// 正常，没有错误
				try {
					startTimeMillis = System.currentTimeMillis();

					URL url = new URL("http://10.0.2.2:8080/guardversion.json");

					conn = (HttpURLConnection) url.openConnection();
					// 读取数据的超时时间
					conn.setReadTimeout(5000);
					// 网络连接超时
					conn.setConnectTimeout(5000);
					// 设置请求方式

					// 获取相应结果
					int code = conn.getResponseCode();

					if (code == 200) {// 数据获取成功
						// 获取读取的字节流
						InputStream is = conn.getInputStream();
						// 把字节流转换成字符流
						bfr = new BufferedReader(new InputStreamReader(is));
						// 读取一行信息
						String line = bfr.readLine();
						// json字符串数据的封装
						StringBuilder json = new StringBuilder();
						while (line != null) {
							json.append(line);
							line = bfr.readLine();
						}
						parseJson = parseJson(json);// 返回数据封装信息

					} else {
						errorCode = 404;
					}
				} catch (MalformedURLException e) {// 4002
					errorCode = 4002;
					e.printStackTrace();
				} catch (IOException e) {// 4001
					// TODO Auto-generated catch block
					//
					errorCode = 4001;
					e.printStackTrace();
				} catch (JSONException e) {
					// TODO Auto-generated catch block
					errorCode = 4003;
					e.printStackTrace();
				} finally {
					/*
					 * if (errorCode == -1){ isNewVersion(parseJson);// 是否有新版本 }
					 * else { Message msg = Message.obtain(); msg.what = ERROR;
					 * msg.arg1 = errorCode; handler.sendMessage(msg);//发送错误信息 }
					 */
					Message msg = Message.obtain();
					if (errorCode == -1) {
						msg.what = isNewVersion(parseJson);// 检测是否有新版本
					} else {
						msg.what = ERROR;
						msg.arg1 = errorCode;
					}
					long endTime = System.currentTimeMillis();
					if (endTime - startTimeMillis < 3000) {
						SystemClock.sleep(3000 - (endTime - startTimeMillis));// 时间不超过3秒，补足3秒
					}
					handler.sendMessage(msg);// 发送消息
					try {
						// 关闭连接资源
						if (bfr != null) {
							bfr.close();
						}
						if (conn != null) {
							conn.disconnect();
						}
					} catch (IOException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}

				}

			}
		}).start();
	}

	private Handler handler = new Handler() {
		public void handleMessage(android.os.Message msg) {
			// 处理消息
			switch (msg.what) {
			case LOADMAIN:// 加载主界面
				loadMain();
				break;
			case ERROR:// 有异常
				switch (msg.arg1) {
				case 404:// 资源找不到
					Toast.makeText(getApplicationContext(), "404资源找不到", 0)
							.show();
					break;
				case 4001:// 找不到网络
					Toast.makeText(getApplicationContext(), "4001没有网络", 0)
							.show();
					break;
				case 4003:// json格式错误
					Toast.makeText(getApplicationContext(), "4003json格式错误", 0)
							.show();
					break;
				default:
					break;
				}
				loadMain();// 进入主界面
				break;
			case SHOWUPDATEDIALOG:// 显示更新版本的对话框
				showUpdateDialog();
				break;
			default:
				break;
			}
		}

	};

	private void loadMain() {
		Intent intent = new Intent(SplashActivity.this, HomeActivity.class);
		startActivity(intent);// 进入主界面
		finish();// 关闭自己
	};

	/**
	 * 在子线程中执行
	 * 
	 * @param parseJson
	 */
	protected int isNewVersion(UrlBean parseJson) {
		int serverCode = parseJson.getVersionCode();// 获取服务器的版本

		if (serverCode == versionCode) {// 版本一致
			return LOADMAIN;
			/*
			 * //进入主界面 Message msg = Message.obtain(); msg.what = LOADMAIN;
			 * handler.sendMessage(msg);
			 */
		} else {// 有新版本
			return SHOWUPDATEDIALOG;
		}
	}

	/**
	 * 显示是否更新新版本的对话框
	 */
	protected void showUpdateDialog() {
		// TODO Auto-generated method stub
		// 对话框的上下文 是Activity的class,AlertDialog是Activity的一部分
		AlertDialog.Builder builder = new AlertDialog.Builder(this);
		// 让用户禁用取消操作
		// builder.setCancelable(false);
		builder.setOnCancelListener(new OnCancelListener() {

			@Override
			public void onCancel(DialogInterface dialog) {
				// 取消的事件处理
				// 进入主界面
				loadMain();
			}
		}).setTitle("提醒")
				.setMessage("是否更新新版本？新版本的具有如下特性：" + parseJson.getDesc())
				.setPositiveButton("更新", new OnClickListener() {

					@Override
					public void onClick(DialogInterface dialog, int which) {
						// TODO Auto-generated method stub
						// 更新apk
						System.out.println("更新apk");
						// 访问网络，下载新的apk
						downLoadNewApk();// 下载新版本
					}
				}).setNegativeButton("取消", new OnClickListener() {

					@Override
					public void onClick(DialogInterface dialog, int which) {
						// TODO Auto-generated method stub
						// 进入主界面
						loadMain();
					}
				});
		builder.show();// 显示对话框
	}

	/**
	 * 新版本的下载安装
	 */
	protected void downLoadNewApk() {
		HttpUtils utils = new HttpUtils();
		// parseJson.getUrl() 下载的url
		// target 本地路径
		System.out.println(parseJson.getUrl());
		// 先删除掉xx.apk
		File file = new File("/mnt/sdcard/xx.apk");
		file.delete();// 删除文件
		utils.download(parseJson.getUrl(), "/mnt/sdcard/xx.apk",
				new RequestCallBack<File>() {

					@Override
					public void onLoading(long total, long current,
							boolean isUploading) {
						// TODO Auto-generated method stub
						pb_download.setVisibility(View.VISIBLE);// 设置进度的显示
						pb_download.setMax((int) total);// 设置进度条的最大值
						pb_download.setProgress((int) current);// 设置当前进度
						super.onLoading(total, current, isUploading);
					}

					@Override
					public void onSuccess(ResponseInfo<File> arg0) {
						// TODO Auto-generated method stub
						// 下载成功
						// 在主线程中执行
						Toast.makeText(getApplicationContext(), "下载新版本成功", 1)
								.show();
						// 安装apk
						installApk();// 安装apk
						pb_download.setVisibility(View.GONE);// 隐藏进度条
					}

					@Override
					public void onFailure(HttpException arg0, String arg1) {
						// TODO Auto-generated method stub
						// 下载失败
						Toast.makeText(getApplicationContext(), "下载新版本失败", 1)
								.show();
						pb_download.setVisibility(View.GONE);// 隐藏进度条
					}
				});
	}

	/**
	 * 安装下载的新版本
	 */
	protected void installApk() {
		/*
		 * <intent-filter> <action android:name="android.intent.action.VIEW" />
		 * <category android:name="android.intent.category.DEFAULT" /> <data
		 * android:scheme="content" /> <data android:scheme="file" /> <data
		 * android:mimeType="application/vnd.android.package-archive" />
		 * </intent-filter>
		 */
		Intent intent = new Intent("android.intent.action.VIEW");
		intent.addCategory("android.intent.category.DEFAULT");
		String type = "application/vnd.android.package-archive";
		Uri data = Uri.fromFile(new File("/mnt/sdcard/xx.apk"));
		intent.setDataAndType(data, type);
		startActivityForResult(intent, 0);

	}

	@Override
	protected void onActivityResult(int requestCode, int resultCode, Intent data) {
		// TODO Auto-generated method stub
		// 如果用户取消更新apk，那么直接进入主界面
		loadMain();
		super.onActivityResult(requestCode, resultCode, data);
	}

	/**
	 * @param jsonString
	 *            url的json数据
	 * @return url信息封装对象
	 * @throws JSONException
	 */
	protected UrlBean parseJson(StringBuilder jsonString) throws JSONException {
		UrlBean bean = new UrlBean();
		JSONObject jsonObj;

		// {"version":"2","url":"http://10.0.2.2:8080/xxx.apk","desc":"增加了防病毒功能"}
		jsonObj = new JSONObject(jsonString + "");
		int versionCode = jsonObj.getInt("version");
		String url = jsonObj.getString("url");
		String desc = jsonObj.getString("desc");
		// 封装结果数据
		bean.setDesc(desc);
		bean.setUrl(url);
		bean.setVersionCode(versionCode);

		return bean;
	}

	/**
	 * 初始化界面
	 */
	private void initView() {
		setContentView(R.layout.activity_main);
		rl_root = (RelativeLayout) findViewById(R.id.rl_splash_root);
		tv_versionName = (TextView) findViewById(R.id.tv_splash_version_name);
		pb_download = (ProgressBar) findViewById(R.id.pb_splash_download_progress);
	}

	/**
	 * 动画显示
	 */
	private void initAnimation() {
		// showAlpha();
		// Alpha动画0.0完全透明
		AlphaAnimation aa = new AlphaAnimation(0.0f, 1.0f);
		// 设置动画播放的时间 毫秒为单位
		aa.setDuration(3000);
		// 界面停留在动画结束状态
		aa.setFillAfter(true);

		RotateAnimation rotate = new RotateAnimation(0, 360,
				// 设置锚点
				Animation.RELATIVE_TO_SELF, 0.5f, Animation.RELATIVE_TO_SELF,
				0.5f);
		// 显示时间
		rotate.setDuration(3000);
		// 界面停留在结束状态
		rotate.setFillAfter(true);

		ScaleAnimation sa = new ScaleAnimation(0.0f, 1.0f, 0.0f, 1.0f,
				// 设置锚点
				Animation.RELATIVE_TO_SELF, 0.5f, Animation.RELATIVE_TO_SELF,
				0.5f);
		// 显示时间
		sa.setDuration(3000);
		// 界面停留在结束状态
		sa.setFillAfter(true);

		// 创建动画
		AnimationSet as = new AnimationSet(true);

		as.addAnimation(sa);
		as.addAnimation(rotate);
		as.addAnimation(aa);

		// 设置动画完成的事件监听
		as.setAnimationListener(new AnimationListener() {

			/*
			 * 开始动画做版本检测 (non-Javadoc)
			 * 
			 * @see
			 * android.view.animation.Animation.AnimationListener#onAnimationStart
			 * (android.view.animation.Animation)
			 */
			@Override
			public void onAnimationStart(Animation animation) {
				// TODO Auto-generated method stub
				// 耗时的功能统一处理封装
				timeInitialization();
			}

			@Override
			public void onAnimationRepeat(Animation animation) {
				// TODO Auto-generated method stub

			}

			/**
			 * 动画结束，做事件处理
			 */
			@Override
			public void onAnimationEnd(Animation animation) {
				// 动画播完进入主界面

				// 判断是否进行服务器版本的检测
				if (!SpTools.getBoolean(getApplicationContext(),
						MyConstants.AUTOUPDATE, false)) {
					// 不做版本检测，直接进入主界面
					loadMain();
				} else {
					// 界面的衔接是有自动更新来完成，在此不做处理
				}
			}
		});
		// 同时播放动画
		rl_root.startAnimation(as);

	}

	/**
	 * Alpha显示
	 */
	private void showAlpha() {
		// Alpha动画0.0完全透明
		AlphaAnimation aa = new AlphaAnimation(0.0f, 1.0f);
		// 设置动画播放的时间毫秒为单位
		aa.setDuration(3000);
		// 界面停留在动画结束状态
		aa.setFillAfter(true);
		// 给组件设置动态
		rl_root.startAnimation(aa);
	}

	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		// Inflate the menu; this adds items to the action bar if it is present.
		getMenuInflater().inflate(R.menu.main, menu);
		return true;
	}

}
