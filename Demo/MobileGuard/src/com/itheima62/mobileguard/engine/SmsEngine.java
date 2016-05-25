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
 * 短信备份和还原的业务类封装
 * 
 * @author Administrator
 * 
 */
public class SmsEngine {

	public interface BaikeProgress {
		/**
		 * 进度的显示回调
		 */
		void show();

		/**
		 * @param max
		 *            回调显示进度的最大值
		 */
		void setMax(int max);

		/**
		 * 回调显示当前进度
		 * 
		 * @param progress
		 */
		void setProgress(int progress);

		/**
		 * 进度完成的回调
		 */
		void end();
	}

	private static class Data {
		int progress;
	}

	/**
	 * 通过子线程来做短信的还原json格式
	 * 
	 * @param context
	 * @param pd
	 *            通过接口回调备份的数据（所有回调方法都在主线程中执行）
	 */
	public static void smsResumnJson(final Activity context,
			final BaikeProgress pd) {
		final Data data = new Data();
		new Thread() {
			@Override
			public void run() {
				// 1,通过内容提供者保存短信
				Uri uri = Uri.parse("content://sms");

				// 2,获取备份的短信
				try {
					FileInputStream fis = new FileInputStream(new File(
							Environment.getExternalStorageDirectory(),
							"sms.json"));
					// json数据的合并
					StringBuilder jsonSmsStr = new StringBuilder();
					// io流的封装 把字节流封装成缓冲的字符流
					BufferedReader reader = new BufferedReader(
							new InputStreamReader(fis));

					String line = reader.readLine();
					while (line != null) {
						jsonSmsStr.append(line);
						line = reader.readLine();
					}

					// 解析json数据
					JSONObject jsonObj = new JSONObject(jsonSmsStr.toString());
					//短信的个数
					final int counts = Integer.parseInt(jsonObj.getString("count"));
					System.out.println();
					
					//设置回调结果的 show和 setMax方法
					context.runOnUiThread(new Runnable() {

						@Override
						public void run() {
							// TODO Auto-generated method stub
							pd.show();
							pd.setMax(counts);// 设置进度条总进度

						}
					});
					
					//循环读取短信
					JSONArray jarray = (JSONArray) jsonObj.get("smses");
					for (int i = 0; i < counts ;i++) {
						data.progress = i;
						//获取一条短信
						JSONObject smsjson = jarray.getJSONObject(i);
						
						ContentValues values = new ContentValues();
						values.put("address", smsjson.getString("address"));
						values.put("body", EncryptTools.decryption( smsjson.getString("body")));
						values.put("date", smsjson.getString("date"));
						values.put("type", smsjson.getString("type"));
						
						//往短信数据中加一条记录
						context.getContentResolver().insert(uri, values);
						
						//回调结果当前进度
						context.runOnUiThread(new Runnable() {

							@Override
							public void run() {
								// TODO Auto-generated method stub
								pd.setProgress(data.progress);
							}
						});
					}
					reader.close();// 关闭io流
					
					//回调备份完成的结果
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
	 * 通过子线程来做短信的备份
	 * 
	 * @param context
	 * @param pd
	 *            通过接口回调备份的数据（所有回调方法都在主线程中执行）
	 */
	public static void smsBaikeJson(final Activity context,
			final BaikeProgress pd) {
		new Thread() {
			@Override
			public void run() {
				// 1,通过内容提供者获取到短信
				Uri uri = Uri.parse("content://sms");
				// 获取电话记录的联系人游标
				final Cursor cursor = context.getContentResolver().query(uri,
						new String[] { "address", "date", "body", "type" },
						null, null, " _id desc");
				if (cursor.getCount() == 0) {
					return;
				}

				// 2,写到文件中
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
							pd.setMax(cursor.getCount());// 设置进度条总进度

						}
					});

					final Data data = new Data();

					// 写根标记 {"count":"10"
					out.println("{\"count\":\"" + cursor.getCount() + "\"");
					// ,"smses":[
					out.println(",\"smses\":[");
					while (cursor.moveToNext()) {
						data.progress++;
						SystemClock.sleep(100);
						// 取短信
						if (cursor.getPosition() == 0) {
							out.println("{");
						} else {
							out.println(",{");
						}

						// address 封装 "address":"hello"
						out.println("\"address\":\"" + cursor.getString(0)
								+ "\",");
						// date 封装
						out.println("\"date\":\"" + cursor.getString(1) + "\",");
						// body 封装
						//对短信加密处理
						String mbody = EncryptTools.encrypt(JsonStrTools.changeStr(cursor.getString(2))) ;
						out.println("\"body\":\"" + mbody + "\",");
						// type 封装
						out.println("\"type\":\"" + cursor.getString(3) + "\"");

						out.println("}");
						// 封装成xml标记

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
					// 写根标记结束标记
					out.println("]}");

					out.flush();
					out.close();// 关闭流
					cursor.close();// 关闭游标
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}.start();

	}

	/**
	 * 短信的备份
	 */
	public static void smsBaikeXml(Activity context, final BaikeProgress pd) {
		// 1,通过内容提供者获取到短信
		Uri uri = Uri.parse("content://sms");
		// 获取电话记录的联系人游标
		final Cursor cursor = context.getContentResolver().query(uri,
				new String[] { "address", "date", "body", "type" }, null, null,
				" _id desc");

		// 2,写到文件中
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
					pd.setMax(cursor.getCount());// 设置进度条总进度

				}
			});

			final Data data = new Data();

			// 写根标记
			out.println("<smses count='" + cursor.getCount() + "'>");
			while (cursor.moveToNext()) {
				data.progress++;
				SystemClock.sleep(100);
				// 取短信
				out.println("<sms>");

				// address 封装
				out.println("<address>" + cursor.getString(0) + "</address>");
				// date 封装
				out.println("<date>" + cursor.getString(1) + "</date>");
				// body 封装
				out.println("<body>" + cursor.getString(2) + "</body>");
				// type 封装
				out.println("<type>" + cursor.getString(3) + "</type>");

				out.println("</sms>");
				// 封装成xml标记

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
			// 写根标记结束标记
			out.println("</smses>");

			out.flush();
			out.close();// 关闭流
			cursor.close();// 关闭游标
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
