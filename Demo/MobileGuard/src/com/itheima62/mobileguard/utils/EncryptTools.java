package com.itheima62.mobileguard.utils;

public class EncryptTools {
	/**
	 * @param seed
	 *      ���ܵ�����
	 * @param str
	 *      Ҫ���ܵ��ַ���
	 * @return
	 */
	public static String encrypt(String str){
		byte[] bytes = str.getBytes();
		for (int i = 0; i < bytes.length; i++) {
			bytes[i] += 1;//���ֽڼ���
		}
		return new String(bytes);
	}
	
	/**
	 * @param seed
	 *     ���ܵ�����
	 * @param str
	 * @return
	 */
	public static String decryption(String str){
		byte[] bytes = str.getBytes();
		for (int i = 0; i < bytes.length; i++) {
			bytes[i] -= 1;//���ֽڼ���
		}
		return new String(bytes);
	}
}
