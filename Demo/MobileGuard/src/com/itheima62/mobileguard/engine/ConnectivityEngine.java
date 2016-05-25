package com.itheima62.mobileguard.engine;

import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStreamReader;

import android.content.Context;
import android.text.format.Formatter;

/**
 * ����ͳ�Ƶ�ҵ����
 * @author Administrator
 *
 */
public class ConnectivityEngine {
	/**
	 * @return
	 *     ���յ�������Ϣ����ʽ�����磺33MB�� 
	 */
	public static String getReceive(int uid,Context context){
		String res = null;
		//��ȡ������Ϣ�ļ� /proc/uid_stat/uid/tcp_rcv
		String path = "/proc/uid_stat/" + uid + "/tcp_rcv";
		try {
			BufferedReader reader = new BufferedReader(new InputStreamReader(new FileInputStream(path)));
			String line = reader.readLine();
			long size = Long.parseLong(line);
			res = Formatter.formatFileSize(context, size);
			
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return res;
	}
	
	/**
	 * @return
	 *     ���͵�������Ϣ����ʽ�����磺33MB�� 
	 */
	public static String getSend(int uid,Context context){
		String res = null;
		//��ȡ������Ϣ�ļ� /proc/uid_stat/uid/tcp_snd
		String path = "/proc/uid_stat/" + uid + "/tcp_snd";
		try {
			BufferedReader reader = new BufferedReader(new InputStreamReader(new FileInputStream(path)));
			String line = reader.readLine();
			long size = Long.parseLong(line);
			res = Formatter.formatFileSize(context, size);
			
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return res;
	}
}
