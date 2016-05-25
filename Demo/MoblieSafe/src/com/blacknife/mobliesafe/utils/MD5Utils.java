package com.blacknife.mobliesafe.utils;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class MD5Utils {
	/**
	 * md5����
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
				String hexString = Integer.toHexString(i);//������תΪ16����
				if(hexString.length() <2){
					hexString = "0" + hexString;//�����1λ�Ļ�,��0
				}
				sb.append(hexString);
			}
			//System.out.println("MD5:" + sb.toString().length() + " = " + sb.toString());
			return sb.toString();
			
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
			//û�и��㷨ʱ,�׳��쳣,�����ߵ�����
		}
		return "";
		
		
	}
}
