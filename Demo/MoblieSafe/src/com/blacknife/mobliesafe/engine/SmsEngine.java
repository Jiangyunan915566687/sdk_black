package com.blacknife.mobliesafe.engine;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStreamReader;
import java.io.PrintWriter;

import org.json.JSONArray;
import org.json.JSONObject;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlSerializer;

import android.app.Activity;
import android.content.ContentValues;
import android.database.Cursor;
import android.net.Uri;
import android.os.Environment;
import android.os.SystemClock;
import android.util.Xml;

/**
 * 短信备份和还原的业务类封装
 * 
 * @author Blacknife
 *
 */
public class SmsEngine {
	public interface BaikeProgress {
		/**
		 * 进度开始的回调
		 */
		void show();

		/**
		 * 回调显示进度的最大值
		 * @param max
		 */
		void setMax(int max);

		/**
		 * 回调显示当前进度
		 * @param progress
		 */
		void setProgress(int progress);

		/**
		 * 进度完成的回调
		 */
		void end();
	}

	private static class Data {
		int progress = 0;
	}

	/**
	 * 短信的备份
	 */
	public static void smsBaike(final Activity context, final BaikeProgress pd) {
		new Thread() {
			public void run() {

				// 通过内容提供者获取到短信
				Uri uri = Uri.parse("content://sms/");
				// 获取sms的游标
				final Cursor cursor = context.getContentResolver().query(uri,
						new String[] { "address", "date", "body", "type" }, null, null, "_id desc");
				// 将获取的信息写到文件中
				File file = new File(Environment.getExternalStorageDirectory(), "sms.xml");
				try {
					FileOutputStream fos = new FileOutputStream(file);
					// 拿到xml序列化器对象
					XmlSerializer xs = Xml.newSerializer();
					// 初始化xml对象
					xs.setOutput(fos, "utf-8");
					context.runOnUiThread(new Runnable() {

						@Override
						public void run() {
							pd.show();
							//System.out.println(cursor.getCount());
							pd.setMax(cursor.getCount());// 设置进度条的总进度
						}
					});
					final Data data = new Data();
					// 写根标记
					xs.startDocument("utf-8", true);
					xs.startTag(null, "smses");
					// out.println("<smses count='" + cursor.getCount() + "'>");
					while (cursor.moveToNext()) {
						// 取短信
						data.progress++;
						// 封装成xml标记
						xs.startTag(null, "sms");
						xs.startTag(null, "address");
						xs.text(cursor.getString(0));
						xs.endTag(null, "address");
						xs.startTag(null, "date");
						xs.text(cursor.getString(1));
						xs.endTag(null, "date");
						xs.startTag(null, "body");
						xs.text(cursor.getString(2));
						xs.endTag(null, "body");

						xs.startTag(null, "type");
						xs.text(cursor.getString(3));
						xs.endTag(null, "type");
						xs.endTag(null, "sms");
						// 进度条更新进度
						context.runOnUiThread(new Runnable() {

							@Override
							public void run() {
								pd.setProgress(data.progress);
							}
						});

						SystemClock.sleep(300);
					}
					// 封装成xml标记

					// out.println("</smses>");
					xs.endTag(null, "smses");
					xs.endDocument();
					context.runOnUiThread(new Runnable() {

						@Override
						public void run() {
							pd.end();
						}
					});
					cursor.close();// 关闭游标
					fos.close();

				} catch (Exception e) {
					e.printStackTrace();
				}

			};
		}.start();

	}

	/**
	 * 短信的还原
	 */
	public static void smsResumn(final Activity context, final BaikeProgress pd) {
		new Thread() {
			public void run() {
				// 通过内容提供者写入短信
				Uri uri = Uri.parse("content://sms");
				System.out.println("开始还原操作");
				// 将获取的信息写到文件中
				File file = new File(Environment.getExternalStorageDirectory(), "sms.xml");
				try {
					FileInputStream ins = new FileInputStream(file);
					// 拿到pull解析器对象
					final XmlPullParser xp = Xml.newPullParser();
					// 初始化pull对象
					xp.setInput(ins, "utf-8");
					// 获取当前节点的事件类型,通过事件类型的判断,我们可以知道当前节点的类型
					int xpType = xp.getEventType();
					int count = 0;
					while (xpType != XmlPullParser.END_DOCUMENT) {
						if ("sms".equals(xp.getName())) {
							count++;
						}
						xpType = xp.next();
					}
					xpType = xp.getEventType();
					final int index = count;
					context.runOnUiThread(new Runnable() {

						@Override
						public void run() {
							pd.show();
							System.out.println("进度条开始展现");
							pd.setMax(index);
							// 设置进度条的总进度
						}
					});

					final Data data = new Data();
					// 写根标记
					while (xpType != XmlPullParser.END_DOCUMENT) {
						// 取短信进度
						ContentValues values = new ContentValues();
						// 解析成xml标记
						switch (xpType) {
						case XmlPullParser.START_TAG:
							if ("sms".equals(xp.getName())) {

							} else if ("address".equals(xp.getName())) {
								// 获取当前节点的下一个节点的文本
								values.put("address", xp.nextText());
								
							} else if ("date".equals(xp.getName())) {
								values.put("date", xp.nextText());
								
							} else if ("body".equals(xp.getName())) {
								values.put("body", xp.nextText());
								
							} else if ("type".equals(xp.getName())) {
								values.put("type", xp.nextText());								
							}
							break;
						case XmlPullParser.END_TAG:
							if ("sms".equals(xp.getName())) {
								// 往短信数据库中添加一条记录
								System.out.println(values);
								context.getContentResolver().insert(uri, values);
								values.clear();
								System.out.println(values);
								data.progress++;
							}
							break;

						default:
							break;
						}

						// 进度条更新进度
						context.runOnUiThread(new Runnable() {

							@Override
							public void run() {
								pd.setProgress(data.progress);
							}
						});
						// 把指针移动到下一个节点,并返回该节点的事件类型
						xpType = xp.next();
						SystemClock.sleep(300);
					}
					// 封装成xml标记

					// out.println("</smses>");
					context.runOnUiThread(new Runnable() {

						@Override
						public void run() {
							pd.end();
						}
					});
					ins.close();

				} catch (Exception e) {
					e.printStackTrace();
				}

			};
		}.start();

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
						values.put("body", smsjson.getString("body"));
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
						//SystemClock.sleep(200);
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
						String mbody = cursor.getString(2);
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
}
