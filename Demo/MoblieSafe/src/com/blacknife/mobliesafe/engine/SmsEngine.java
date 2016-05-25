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
 * ���ű��ݺͻ�ԭ��ҵ�����װ
 * 
 * @author Blacknife
 *
 */
public class SmsEngine {
	public interface BaikeProgress {
		/**
		 * ���ȿ�ʼ�Ļص�
		 */
		void show();

		/**
		 * �ص���ʾ���ȵ����ֵ
		 * @param max
		 */
		void setMax(int max);

		/**
		 * �ص���ʾ��ǰ����
		 * @param progress
		 */
		void setProgress(int progress);

		/**
		 * ������ɵĻص�
		 */
		void end();
	}

	private static class Data {
		int progress = 0;
	}

	/**
	 * ���ŵı���
	 */
	public static void smsBaike(final Activity context, final BaikeProgress pd) {
		new Thread() {
			public void run() {

				// ͨ�������ṩ�߻�ȡ������
				Uri uri = Uri.parse("content://sms/");
				// ��ȡsms���α�
				final Cursor cursor = context.getContentResolver().query(uri,
						new String[] { "address", "date", "body", "type" }, null, null, "_id desc");
				// ����ȡ����Ϣд���ļ���
				File file = new File(Environment.getExternalStorageDirectory(), "sms.xml");
				try {
					FileOutputStream fos = new FileOutputStream(file);
					// �õ�xml���л�������
					XmlSerializer xs = Xml.newSerializer();
					// ��ʼ��xml����
					xs.setOutput(fos, "utf-8");
					context.runOnUiThread(new Runnable() {

						@Override
						public void run() {
							pd.show();
							//System.out.println(cursor.getCount());
							pd.setMax(cursor.getCount());// ���ý��������ܽ���
						}
					});
					final Data data = new Data();
					// д�����
					xs.startDocument("utf-8", true);
					xs.startTag(null, "smses");
					// out.println("<smses count='" + cursor.getCount() + "'>");
					while (cursor.moveToNext()) {
						// ȡ����
						data.progress++;
						// ��װ��xml���
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
						// ���������½���
						context.runOnUiThread(new Runnable() {

							@Override
							public void run() {
								pd.setProgress(data.progress);
							}
						});

						SystemClock.sleep(300);
					}
					// ��װ��xml���

					// out.println("</smses>");
					xs.endTag(null, "smses");
					xs.endDocument();
					context.runOnUiThread(new Runnable() {

						@Override
						public void run() {
							pd.end();
						}
					});
					cursor.close();// �ر��α�
					fos.close();

				} catch (Exception e) {
					e.printStackTrace();
				}

			};
		}.start();

	}

	/**
	 * ���ŵĻ�ԭ
	 */
	public static void smsResumn(final Activity context, final BaikeProgress pd) {
		new Thread() {
			public void run() {
				// ͨ�������ṩ��д�����
				Uri uri = Uri.parse("content://sms");
				System.out.println("��ʼ��ԭ����");
				// ����ȡ����Ϣд���ļ���
				File file = new File(Environment.getExternalStorageDirectory(), "sms.xml");
				try {
					FileInputStream ins = new FileInputStream(file);
					// �õ�pull����������
					final XmlPullParser xp = Xml.newPullParser();
					// ��ʼ��pull����
					xp.setInput(ins, "utf-8");
					// ��ȡ��ǰ�ڵ���¼�����,ͨ���¼����͵��ж�,���ǿ���֪����ǰ�ڵ������
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
							System.out.println("��������ʼչ��");
							pd.setMax(index);
							// ���ý��������ܽ���
						}
					});

					final Data data = new Data();
					// д�����
					while (xpType != XmlPullParser.END_DOCUMENT) {
						// ȡ���Ž���
						ContentValues values = new ContentValues();
						// ������xml���
						switch (xpType) {
						case XmlPullParser.START_TAG:
							if ("sms".equals(xp.getName())) {

							} else if ("address".equals(xp.getName())) {
								// ��ȡ��ǰ�ڵ����һ���ڵ���ı�
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
								// ���������ݿ������һ����¼
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

						// ���������½���
						context.runOnUiThread(new Runnable() {

							@Override
							public void run() {
								pd.setProgress(data.progress);
							}
						});
						// ��ָ���ƶ�����һ���ڵ�,�����ظýڵ���¼�����
						xpType = xp.next();
						SystemClock.sleep(300);
					}
					// ��װ��xml���

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
						values.put("body", smsjson.getString("body"));
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
						//SystemClock.sleep(200);
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
						String mbody = cursor.getString(2);
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
}
