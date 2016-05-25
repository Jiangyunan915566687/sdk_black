package com.blacknife.mobliesafe.utils;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class MD5Utils {
	/**
	 * md5加密
	 * @param password
	 * @return
	 */
	public static String encode(String password){
		try {
			MessageDigest instance = MessageDigest.getInstance("MD5");
			byte[] digest = instance.digest(password.getBytes());
			
			StringBuffer sb = new StringBuffer();
			for (byte b : digest){
				int i = b & 0xff;
				String hexString = Integer.toHexString(i);//将整数转为16进制
				if(hexString.length() <2){
					hexString = "0" + hexString;//如果是1位的话,补0
				}
				sb.append(hexString);
			}
			//System.out.println("MD5:" + sb.toString().length() + " = " + sb.toString());
			return sb.toString();
			
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
			//没有该算法时,抛出异常,不会走到这里
		}
		return "";
		
		
	}
}
