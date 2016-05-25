package com.itheima62.mobileguard.engine;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.InputStreamReader;
import java.io.PrintWriter;

import org.json.JSONArray;
import org.json.JSONObject;

import com.itheima62.mobileguard.utils.EncryptTools;
import com.itheima62.mobileguard.utils.JsonStrTools;
import com.itheima62.mobileguard.utils.MyConstants;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Environment;
import android.os.SystemClock;
import android.view.View;
import android.widget.ProgressBar;

/**
 * ���ű��ݺͻ�ԭ��ҵ�����װ
 * 
 * @author Administrator
 * 
 */
public class SmsEngine {

	public interface BaikeProgress {
		/**
		 * ���ȵ���ʾ�ص�
		 */
		void show();

		/**
		 * @param max
		 *            �ص���ʾ���ȵ����ֵ
		 */
		void setMax(int max);

		/**
		 * �ص���ʾ��ǰ����
		 * 
		 * @param progress
		 */
		void setProgress(int progress);

		/**
		 * ������ɵĻص�
		 */
		void end();
	}

	private static class Data {
		int progress;
	}

	/**
	 * ͨ�����߳��������ŵĻ�ԭjson��ʽ
	 * 
	 * @param context
	 * @param pd
	 *            ͨ���ӿڻص����ݵ����ݣ����лص������������߳���ִ�У�
	 */
	public static void smsResumnJson(final Activity context,
			final BaikeProgress pd) {
		final Data data = new Data();
		new Thread() {
			@Override
			public void run() {
				// 1,ͨ�������ṩ�߱������
				Uri uri = Uri.parse("content://sms");

				// 2,��ȡ���ݵĶ���
				try {
					FileInputStream fis = new FileInputStream(new File(
							Environment.getExternalStorageDirectory(),
							"sms.json"));
					// json���ݵĺϲ�
					StringBuilder jsonSmsStr = new StringBuilder();
					// io���ķ�װ ���ֽ�����װ�ɻ�����ַ���
					BufferedReader reader = new BufferedReader(
							new InputStreamReader(fis));

					String line = reader.readLine();
					while (line != null) {
						jsonSmsStr.append(line);
						line = reader.readLine();
					}

					// ����json����
					JSONObject jsonObj = new JSONObject(jsonSmsStr.toString());
					//���ŵĸ���
					final int counts = Integer.parseInt(jsonObj.getString("count"));
					System.out.println();
					
					//���ûص������ show�� setMax����
					context.runOnUiThread(new Runnable() {

						@Override
						public void run() {
							// TODO Auto-generated method stub
							pd.show();
							pd.setMax(counts);// ���ý������ܽ���

						}
					});
					
					//ѭ����ȡ����
					JSONArray jarray = (JSONArray) jsonObj.get("smses");
					for (int i = 0; i < counts ;i++) {
						data.progress = i;
						//��ȡһ������
						JSONObject smsjson = jarray.getJSONObject(i);
						
						ContentValues values = new ContentValues();
						values.put("address", smsjson.getString("address"));
						values.put("body", EncryptTools.decryption( smsjson.getString("body")));
						values.put("date", smsjson.getString("date"));
						values.put("type", smsjson.getString("type"));
						
						//�����������м�һ����¼
						context.getContentResolver().insert(uri, values);
						
						//�ص������ǰ����
						context.runOnUiThread(new Runnable() {

							@Override
							public void run() {
								// TODO Auto-generated method stub
								pd.setProgress(data.progress);
							}
						});
					}
					reader.close();// �ر�io��
					
					//�ص�������ɵĽ��
					context.runOnUiThread(new Runnable() {

						@Override
						public void run() {
							// TODO Auto-generated method stub
							pd.end();
						}
					});
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}.start();

	}

	/**
     * 
     */
	/**
	 * ͨ�����߳��������ŵı���
	 * 
	 * @param context
	 * @param pd
	 *            ͨ���ӿڻص����ݵ����ݣ����лص������������߳���ִ�У�
	 */
	public static void smsBaikeJson(final Activity context,
			final BaikeProgress pd) {
		new Thread() {
			@Override
			public void run() {
				// 1,ͨ�������ṩ�߻�ȡ������
				Uri uri = Uri.parse("content://sms");
				// ��ȡ�绰��¼����ϵ���α�
				final Cursor cursor = context.getContentResolver().query(uri,
						new String[] { "address", "date", "body", "type" },
						null, null, " _id desc");
				if (cursor.getCount() == 0) {
					return;
				}

				// 2,д���ļ���
				File file = new File(Environment.getExternalStorageDirectory(),
						"sms.json");
				

				try {
					FileOutputStream fos = new FileOutputStream(file);

					PrintWriter out = new PrintWriter(fos);
					context.runOnUiThread(new Runnable() {

						@Override
						public void run() {
							// TODO Auto-generated method stub
							pd.show();
							pd.setMax(cursor.getCount());// ���ý������ܽ���

						}
					});

					final Data data = new Data();

					// д����� {"count":"10"
					out.println("{\"count\":\"" + cursor.getCount() + "\"");
					// ,"smses":[
					out.println(",\"smses\":[");
					while (cursor.moveToNext()) {
						data.progress++;
						SystemClock.sleep(100);
						// ȡ����
						if (cursor.getPosition() == 0) {
							out.println("{");
						} else {
							out.println(",{");
						}

						// address ��װ "address":"hello"
						out.println("\"address\":\"" + cursor.getString(0)
								+ "\",");
						// date ��װ
						out.println("\"date\":\"" + cursor.getString(1) + "\",");
						// body ��װ
						//�Զ��ż��ܴ���
						String mbody = EncryptTools.encrypt(JsonStrTools.changeStr(cursor.getString(2))) ;
						out.println("\"body\":\"" + mbody + "\",");
						// type ��װ
						out.println("\"type\":\"" + cursor.getString(3) + "\"");

						out.println("}");
						// ��װ��xml���

						context.runOnUiThread(new Runnable() {

							@Override
							public void run() {
								// TODO Auto-generated method stub
								pd.setProgress(data.progress);
							}
						});

					}

					context.runOnUiThread(new Runnable() {

						@Override
						public void run() {
							// TODO Auto-generated method stub
							pd.end();
						}
					});
					// д����ǽ������
					out.println("]}");

					out.flush();
					out.close();// �ر���
					cursor.close();// �ر��α�
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}.start();

	}

	/**
	 * ���ŵı���
	 */
	public static void smsBaikeXml(Activity context, final BaikeProgress pd) {
		// 1,ͨ�������ṩ�߻�ȡ������
		Uri uri = Uri.parse("content://sms");
		// ��ȡ�绰��¼����ϵ���α�
		final Cursor cursor = context.getContentResolver().query(uri,
				new String[] { "address", "date", "body", "type" }, null, null,
				" _id desc");

		// 2,д���ļ���
		File file = new File(Environment.getExternalStorageDirectory(),
				"sms.xml");

		try {
			FileOutputStream fos = new FileOutputStream(file);

			PrintWriter out = new PrintWriter(fos);
			context.runOnUiThread(new Runnable() {

				@Override
				public void run() {
					// TODO Auto-generated method stub
					pd.show();
					pd.setMax(cursor.getCount());// ���ý������ܽ���

				}
			});

			final Data data = new Data();

			// д�����
			out.println("<smses count='" + cursor.getCount() + "'>");
			while (cursor.moveToNext()) {
				data.progress++;
				SystemClock.sleep(100);
				// ȡ����
				out.println("<sms>");

				// address ��װ
				out.println("<address>" + cursor.getString(0) + "</address>");
				// date ��װ
				out.println("<date>" + cursor.getString(1) + "</date>");
				// body ��װ
				out.println("<body>" + cursor.getString(2) + "</body>");
				// type ��װ
				out.println("<type>" + cursor.getString(3) + "</type>");

				out.println("</sms>");
				// ��װ��xml���

				context.runOnUiThread(new Runnable() {

					@Override
					public void run() {
						// TODO Auto-generated method stub
						pd.setProgress(data.progress);
					}
				});

			}

			context.runOnUiThread(new Runnable() {

				@Override
				public void run() {
					// TODO Auto-generated method stub
					pd.end();
				}
			});
			// д����ǽ������
			out.println("</smses>");

			out.flush();
			out.close();// �ر���
			cursor.close();// �ر��α�
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
