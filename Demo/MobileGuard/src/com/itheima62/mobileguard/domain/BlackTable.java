package com.itheima62.mobileguard.domain;

/**
 * @author Administrator
 * 黑名单表的结构
 */
public interface BlackTable {
	String PHONE = "phone";//黑名单号码列
	String MODE = "mode";//黑名单拦截模式列
	String BLACKTABLE = "blacktb";//黑名单表名
	
	/**
	 * 标记性常量,每一个标记只对应一个位为1
	 */
	int SMS = 1 << 0;//短信拦截
	int TEL = 1 << 1; // 电话拦截 0000 0010
	int ALL = SMS | TEL;//全部拦截
	
	/**
	 * 
	 *  int mode = ;
	 *  if (mode & TEL != 0) {//具有电话拦截
	 *  
	 */
}
