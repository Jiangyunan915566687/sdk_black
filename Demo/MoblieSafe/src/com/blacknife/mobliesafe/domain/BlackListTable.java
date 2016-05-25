package com.blacknife.mobliesafe.domain;
/**
 * 黑名单表的结构
 * @author Blacknife
 *
 */
public interface BlackListTable {
	String PHONE = "phone";
	String MODE = "mode";
	String BLACKTABLE = "blacktb";
	/**
	 * 标记性常量，每一个标记只对应一个位为1
	 */
	int SMS = 1 << 0;
	int TEL = 1 << 1;
	int ALL = SMS | TEL;
			
}
