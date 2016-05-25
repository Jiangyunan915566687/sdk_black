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
	private TextView tvProgress;// ���ؽ�����ʾ�ؼ�
	private Button tvGohome;// ������ҳ�水ť
	private ProgressBar pbProgress;// ��ʼ��������

	private RelativeLayout rlRoot;
	// ���������صİ汾��Ϣ
	private String mVersionName; // �汾��
	private int mVersionCode; // �汾��
	private String mDesc; // �汾����
	private String mDownloadUrl; // ���µ�ַ

	private Handler mHandler = new Handler() {
		public void handleMessage(android.os.Message msg) {
			pbProgress.setVisibility(View.INVISIBLE);
			tvGohome.setVisibility(View.VISIBLE);
			switch (msg.what) {

			case CODE_UPDATE_DIALOG:
				showUpdateDailog();
				break;
			case CODE_URL_ERROR:
				Toast.makeText(SplashActivity.this, "Url����", Toast.LENGTH_SHORT).show();
				;
				break;
			case CODE_NET_ERROR:
				Toast.makeText(SplashActivity.this, "�������", Toast.LENGTH_SHORT).show();
				break;
			case CODE_JSON_ERROR:
				Toast.makeText(SplashActivity.this, "���ݽ�������", Toast.LENGTH_SHORT).show();
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
		tvVersion.setText("�汾��:" + getVersionName());
		tvProgress = (TextView) findViewById(R.id.tv_progress);
		pbProgress = (ProgressBar) findViewById(R.id.pb_progress);
		tvGohome = (Button) findViewById(R.id.tv_gohome);
		rlRoot = (RelativeLayout) findViewById(R.id.rl_root);
		//�ж��Ƿ���Ҫ��������������
		if(SpTools.getBoolean(SplashActivity.this, MyConstants.SERVICEBLACKNUMBER, false)){
			// �������������ط���
			startService(new Intent(SplashActivity.this, TelSmsBlackService.class));
		}
		if(SpTools.getBoolean(SplashActivity.this, MyConstants.SERVICEADDRESS, false)){
			// �������������ط���
			startService(new Intent(SplashActivity.this, AddressService.class));
		}
		// �ж��Ƿ���Ҫ�Զ�����
		copyDB("address.db");//���������ز�ѯ���ݿ�
		if (SpTools.getBoolean(SplashActivity.this, MyConstants.SERVICEAUTOUPDATE, true)) {
			checkVersion();
		} else {
			mHandler.sendEmptyMessageDelayed(CODE_ENTER_HOME, 2000);// ��ʱ2s������Ϣ
		}
		
		// ����Ķ���Ч��
		AlphaAnimation anim = new AlphaAnimation(0.3f, 1f);
		anim.setDuration(2000);
		rlRoot.startAnimation(anim);
	}

	/**
	 * ��ȡ�汾����
	 * 
	 * @return
	 */
	private String getVersionName() {
		PackageManager packageManager = getPackageManager();
		try {
			// ��ȡ����Ϣ
			PackageInfo packageInfo = packageManager.getPackageInfo(getPackageName(), 0);
			String versionName = packageInfo.versionName;
			return versionName;
		} catch (NameNotFoundException e) {
			// û���ҵ�������ʱ����ߴ��쳣
			e.printStackTrace();
		}
		return "";
	}

	/**
	 * ��ȡ�汾��
	 * 
	 * @return
	 */
	private int getVersionCode() {
		PackageManager packageManager = getPackageManager();
		try {
			// ��ȡ����Ϣ
			PackageInfo packageInfo = packageManager.getPackageInfo(getPackageName(), 0);
			int versionCode = packageInfo.versionCode;
			return versionCode;
		} catch (NameNotFoundException e) {
			// û���ҵ�������ʱ����ߴ��쳣
			e.printStackTrace();
		}
		return -1;
	}

	/**
	 * �ӷ�������ȡ�汾��Ϣ������У��
	 */
	private void checkVersion() {
		final long startTime = System.currentTimeMillis();
		// �������߳�ȥ�첽����
		new Thread() {
			@Override
			public void run() {
				Message msg = Message.obtain();
				HttpURLConnection conn = null;
				try {
					// ������ַ��localhost,���������Ĳ������ر����ĵ�ַʱ,������ip(10.0.2.2)���滻
					URL url = new URL("http://10.0.2.2:8088/MoblieSafe/update.json");
					conn = (HttpURLConnection) url.openConnection();
					conn.setRequestMethod("GET");// �������󷽷�
					conn.setConnectTimeout(5000);// �������ӳ�ʱ
					conn.setReadTimeout(5000);// ������Ӧ��ʱ,��������,���������ٳٲ�����Ӧ
					conn.connect();// ���ӷ�����
					int responseCode = conn.getResponseCode();
					if (responseCode == 200) {
						InputStream inputStream = conn.getInputStream();
						String result = StreamUtils.readFromStream(inputStream);
						// System.out.println("���緵��:" + result);
						// ����json
						JSONObject jo = new JSONObject(result);
						mVersionName = jo.getString("versionName");
						mVersionCode = jo.getInt("versionCode");
						mDesc = jo.getString("description");
						mDownloadUrl = jo.getString("downloadUrl");
						// �жϰ汾�Ƿ��и���
						if (mVersionCode > getVersionCode()) {
							// �������İ汾�Ŵ��ڱ��صİ汾��,��˵���и���,���������Ի���
							msg.what = CODE_UPDATE_DIALOG;
						} else {
							msg.what = CODE_ENTER_HOME;
						}
					}
				} catch (MalformedURLException e) {
					// url������쳣
					msg.what = CODE_URL_ERROR;
					e.printStackTrace();
				} catch (IOException e) {
					// ��������쳣
					msg.what = CODE_NET_ERROR;
					e.printStackTrace();
				} catch (JSONException e) {
					// json����ʧ��
					msg.what = CODE_JSON_ERROR;
					e.printStackTrace();
				} finally {
					long endTime = System.currentTimeMillis();
					long timeUsed = endTime - startTime;
					if (timeUsed < 2000) {
						// ǿ������,��֤����ҳչʾ2����
						try {
							Thread.sleep(2000 - timeUsed);
						} catch (InterruptedException e) {
							e.printStackTrace();
						}
					}
					mHandler.sendMessage(msg);
					if (conn != null) {
						conn.disconnect();// �ر���������
					}
				}
			}
		}.start();

	}

	/**
	 * �����Ի���
	 */
	protected void showUpdateDailog() {
		AlertDialog.Builder builder = new AlertDialog.Builder(this);
		builder.setTitle("���°汾:" + mVersionName);
		builder.setMessage(mDesc);
		// builder.setCancelable(false);//���öԻ���ɳ����򲻡�Ĭ���ǿ��Եġ�
		builder.setPositiveButton("��������", new OnClickListener() {

			@Override
			public void onClick(DialogInterface dialog, int which) {
				System.out.println("��������");
				download();
			}
		});
		builder.setNegativeButton("�Ժ���˵", null);
		// ����ȡ���Ի���ļ���,�û�������ص�ʱ�� �����¼�
		builder.setOnCancelListener(new OnCancelListener() {

			@Override
			public void onCancel(DialogInterface dialog) {
				enterHome();
			}
		});
		builder.show();
	}

	/**
	 * ����apk�ļ�
	 */
	protected void download() {
		if (Environment.getExternalStorageState().equals(Environment.MEDIA_MOUNTED)) {

			tvProgress.setVisibility(View.VISIBLE);
			// Environment.getExternalStorageDirectory() SD���ĸ�Ŀ¼
			final String target = Environment.getExternalStorageDirectory() + "/update.apk";
			// xUtils
			HttpUtils utils = new HttpUtils();
			utils.download(mDownloadUrl, target, new RequestCallBack<File>() {

				@Override
				public void onSuccess(ResponseInfo<File> arg0) {
					System.out.println("���سɹ�!");
					// ��ս��ϵͳ����ҳ��
					Intent intent = new Intent(Intent.ACTION_VIEW);
					intent.addCategory(Intent.CATEGORY_DEFAULT);
					intent.setDataAndType(Uri.fromFile(new File(target)), "application/vnd.android.package-archive");
					startActivityForResult(intent, 0);
					// startActivity(intent);
				}

				/**
				 * �ļ����صĽ���
				 * 
				 * @param total
				 *            �ļ���С
				 * @param current
				 *            �����ؽ���
				 * @param isUploading
				 *            �Ƿ����ϴ�
				 */
				@Override
				public void onLoading(long total, long current, boolean isUploading) {
					super.onLoading(total, current, isUploading);
					System.out.println("���ؽ���:" + current + "/" + total);
					tvProgress.setText("���ؽ���:" + current * 100 / total + "%");
				}

				@Override
				public void onFailure(HttpException arg0, String arg1) {
					Toast.makeText(SplashActivity.this, "����ʧ��", Toast.LENGTH_SHORT);
				}

			});
		} else {
			Toast.makeText(SplashActivity.this, "û��SD��", Toast.LENGTH_SHORT);
		}
	}

	/**
	 * ����������
	 */
	private void enterHome() {
		Intent intent = new Intent(this, HomeActivity.class);
		startActivity(intent);
		finish();// ������������
	}

	public void clickGohome(View bt) {
		enterHome();
	}

	/**
	 * ����û�ȡ����װ�ͻᴥ�����ؼ���
	 */
	@Override
	protected void onActivityResult(int requestCode, int resultCode, Intent data) {
		enterHome();
		super.onActivityResult(requestCode, resultCode, data);
	}
	//�������ݿ�
	private void copyDB(String dbName) {
		// getFilesDir() ������ȡ·��
		File destFile = new File(getFilesDir(), dbName);
		if(destFile.exists()){
			System.out.println("���ݿ�:" + dbName + "�Ѵ���!");
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
