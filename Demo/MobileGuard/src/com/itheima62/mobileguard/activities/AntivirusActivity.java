package com.itheima62.mobileguard.activities;

import java.util.List;

import org.json.JSONException;
import org.json.JSONObject;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.graphics.Color;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.SystemClock;
import android.view.animation.Animation;
import android.view.animation.Interpolator;
import android.view.animation.RotateAnimation;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import android.widget.Toast;

import com.itheima62.mobileguard.R;
import com.itheima62.mobileguard.dao.AntiVirusDao;
import com.itheima62.mobileguard.domain.AppBean;
import com.itheima62.mobileguard.engine.AppManagerEngine;
import com.itheima62.mobileguard.utils.Md5Utils;
import com.itheima62.mobileguard.utils.MyConstants;
import com.lidroid.xutils.HttpUtils;
import com.lidroid.xutils.exception.HttpException;
import com.lidroid.xutils.http.ResponseInfo;
import com.lidroid.xutils.http.callback.RequestCallBack;
import com.lidroid.xutils.http.client.HttpRequest.HttpMethod;

/**
 * 扫描病毒的界面
 * @author Administrator
 *
 */
public class AntivirusActivity extends Activity {
	protected static final int SCANNING = 1;
	protected static final int FINISH = 2;
	protected static final int MESSAGE = 3;
	private ImageView iv_scan;
	private TextView tv_scanappname;
	private ProgressBar pb_scan;
	private LinearLayout ll_scancontent;
	private RotateAnimation ra;
	private boolean isRun = false;

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		super.onCreate(savedInstanceState);
		initView();//初始化界面
		initAnimation();//初始化动画
		checkVersion();//检测病毒库
		//startScan();//开始扫描
	}
	
	private boolean connecting = false;//正在联网
	
	/**
	 * @param pointNumber
	 *     点的个数
	 * @return
	 *     pointNumber个点组成的字符串
	 */
	private String getPoints(int pointNumber){
		String res = "";
		for (int i = 0; i < pointNumber ; i++) {
			res += ".";
		}
		return res;
	}
	
	private void checkVersion() {
		/*final AlertDialog.Builder ab = new AlertDialog.Builder(this);
		final AlertDialog dialog = ab.setTitle("注意")
		  .setMessage("正在联网")
		  .create();
		dialog.show();*/
		tv_scanappname.setText("正在尝试联网......");
		
		new Thread(){
			public void run() {
				connecting = true;
				int i = 0;
				while (connecting) {
					i++;//一直加
					
					final int j = i % 6 + 1;// i 1 到 6
					runOnUiThread(new Runnable() {
						
						@Override
						public void run() {
							//更新ui
							tv_scanappname.setText("正在尝试联网" + getPoints(j));
						}
					});
					SystemClock.sleep(500);//半秒
				}
			};
		}.start();
		
		HttpUtils utils = new HttpUtils();
		utils.configTimeout(5000);//设置超时时间
		utils.send(HttpMethod.GET, MyConstants.VIRUSVERSIONURL, new RequestCallBack<String>() {

			@Override
			public void onFailure(HttpException arg0, String arg1) {
				System.out.println(arg0);
				//dialog.dismiss();
				connecting = false;//关闭显示正在联网的线程
				Toast.makeText(getApplicationContext(), "联网失败", 1).show();
				//失败
				startScan();//扫描病毒
				
			}

			@Override
			public void onSuccess(ResponseInfo<String> arg0) {
				//dialog.dismiss();
				connecting = false;//关闭显示正在联网的线程
				//判断版本号是否一致
				String version = arg0.result;
				if (dao.isNewVirus(Integer.parseInt(version))){
					//病毒库最新的
					Toast.makeText(getApplicationContext(), "病毒库最新", 1).show();
					startScan();//开始扫描
				} else {
					//有新病毒库
					//对话框给用户选择 是否跟新病毒库
					isUpdateVirusDialog();//
				}
				
			}
		});
	}
	protected void isUpdateVirusDialog() {
		AlertDialog.Builder ab = new AlertDialog.Builder(this);
		ab.setTitle("有新病毒")
		  .setMessage("是否更新病毒库？")
		  .setPositiveButton("更新", new OnClickListener() {
			
			@Override
			public void onClick(DialogInterface dialog, int which) {
				//下载更新病毒库
				HttpUtils utils = new HttpUtils();
				utils.send(HttpMethod.GET, MyConstants.GETVIRUSVDATASURL, new RequestCallBack<String>() {

					@Override
					public void onFailure(HttpException arg0, String arg1) {
						startScan();//开始扫描病毒
					}

					@Override
					public void onSuccess(ResponseInfo<String> arg0) {
						
						String virusJson = arg0.result;
						try {
							JSONObject jsonObj = new JSONObject(virusJson);
							String md5 = jsonObj.getString("md5");
							String desc = jsonObj.getString("desc");
							dao.addVirus(md5, desc);//添加新的病毒
							Toast.makeText(getApplicationContext(), "更新病毒库成功", 1).show();
							startScan();//开始扫描
						} catch (JSONException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						}
					}
				});
			}
		})
		.setNegativeButton("取消", new OnClickListener() {
			
			@Override
			public void onClick(DialogInterface dialog, int which) {
				// TODO Auto-generated method stub
				startScan();//开始扫描病毒
			}
		});
		ab.show();
	}
	private int progress;//进度条的进度
	private Handler handler = new Handler(){
		

		public void handleMessage(android.os.Message msg) {
			switch (msg.what) {
			case SCANNING://扫描状态
				iv_scan.startAnimation(ra);//扫描动画
				
				break;
			case MESSAGE://扫描一个apk
				pb_scan.setMax(allApks.size());//设置进度条最大值
				pb_scan.setProgress(progress);
				AntiVirusBean bean = (AntiVirusBean) msg.obj;
				TextView tv = new TextView(AntivirusActivity.this);
				if (bean.siVirus) {
					tv.setTextColor(Color.RED);
				} else {
					tv.setTextColor(Color.BLACK);
				}
				tv.setText(bean.packName);//包名
				
				tv_scanappname.setText("正在扫描:" + bean.packName);
				//加到线性布局
				ll_scancontent.addView(tv, 0);//每次加到最前面
				
				break;
			case FINISH://扫描完成
				iv_scan.clearAnimation();//清除动画
				break;

			default:
				break;
			}
			
		};
		
	};
	private AntiVirusDao dao;
	private List<AppBean> allApks;

	private class AntiVirusBean{
		String packName;
		boolean siVirus;
	}
	private void startScan() {
		//耗时操作
		new Thread(){
			

			public void run() {
				
				
				handler.obtainMessage(SCANNING).sendToTarget();//开启扫描动画
				allApks = AppManagerEngine.getAllApks(getApplicationContext());
				//获取所有安装的apk
				isRun = true;//线程可以正常运行的逻辑
				
				AntiVirusBean bean = new AntiVirusBean();//存放每个apk扫描的结果信息
				for (AppBean appBean : allApks) {
					if (!isRun) {
						//停止线程运行 
						break;
					}
					bean.packName = appBean.getPackName();
					String md5 = Md5Utils.getFileMD5(appBean.getApkPath());
					System.out.println(md5 + ":" + appBean.getApkPath());
					if (dao.isVirus(md5)){
						//是病毒
						System.out.println("是病毒");
						bean.siVirus = true;
					} else {
						//不是病毒
						bean.siVirus = false;
					}
					progress++;
					Message msg = handler.obtainMessage(MESSAGE);
					msg.obj = bean;
					handler.sendMessage(msg);
					System.out.println(appBean.getPackName() + "扫描");
					SystemClock.sleep(50);
				}
				
				handler.obtainMessage(FINISH).sendToTarget();//发送扫描完成的消息
			};
		}.start();
	}



	private void initAnimation() {
		//旋转动画
		ra = new RotateAnimation(0, 360,
				Animation.RELATIVE_TO_SELF, 0.5f, 
				Animation.RELATIVE_TO_SELF, 0.5f);
		ra.setDuration(600);
		ra.setRepeatCount(Animation.INFINITE);//无限次数
		//修改旋转动画插入器 ，数学函数
		ra.setInterpolator(new Interpolator() {
			
			@Override
			public float getInterpolation(float x) {
				// y
				return x;
			}
		});
		
	}

	private void initView() {
		setContentView(R.layout.activity_antivirus);
		
		//扫描病毒的扇形
		
		iv_scan = (ImageView) findViewById(R.id.iv_antivirus_scan);
		
		//扫描app的名字的显示
		tv_scanappname = (TextView) findViewById(R.id.tv_antivirus_title);
		
		//扫描的进度
		pb_scan = (ProgressBar) findViewById(R.id.pb_antivirus_scanprogress);
		
		//扫描结果的显示
		ll_scancontent = (LinearLayout) findViewById(R.id.ll_antivirus_results);
		
		dao = new AntiVirusDao();
		
	}
	
	@Override
	protected void onDestroy() {
		isRun = false;//activity退出的时候，关闭线程
		super.onDestroy();
	}
}
