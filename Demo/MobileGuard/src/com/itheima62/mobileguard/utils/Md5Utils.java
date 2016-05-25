package com.itheima62.mobileguard.utils;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class Md5Utils {
	
	/**
	 * @param path
	 *    文件的路径
	 * @return
	 *    文件的MD5值
	 */
	public static String getFileMD5(String path){
		StringBuilder mess = new StringBuilder();
		try {
			FileInputStream fis = new FileInputStream(new File(path));
			//获取MD5加密器
			MessageDigest md = MessageDigest.getInstance("MD5");
			byte[] buffer = new byte[10240];
			int len = fis.read(buffer);
			while (len != -1) {
				md.update(buffer, 0, len);
				//继续读取
				len = fis.read(buffer);
			}
			byte[] digest = md.digest();
			for (byte b : digest){
				//把每个字节转成16进制数  
				int d = b & 0xff;// 0x000000ff
				String hexString = Integer.toHexString(d);
				if (hexString.length() == 1) {//字节的高4位为0
					hexString = "0" + hexString;
				}
				hexString = hexString.toUpperCase();
				mess.append(hexString);//把每个字节对应的2位十六进制数当成字符串拼接一起
				
			}
		} catch (NoSuchAlgorithmException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return mess + "";
	}
	public static String md5(String str){
		StringBuilder mess = new StringBuilder();
		try {
			//获取MD5加密器
			MessageDigest md = MessageDigest.getInstance("MD5");
			byte[] bytes = str.getBytes();
			byte[] digest = md.digest(bytes);
			
			for (byte b : digest){
				//把每个字节转成16进制数  
				int d = b & 0xff;// 0x000000ff
				String hexString = Integer.toHexString(d);
				if (hexString.length() == 1) {//字节的高4位为0
					hexString = "0" + hexString;
				}
				mess.append(hexString);//把每个字节对应的2位十六进制数当成字符串拼接一起
				
			}
		} catch (NoSuchAlgorithmException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return mess + "";
	}
}
