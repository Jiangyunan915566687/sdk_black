package com.blacknife.mobliesafe.domain;
/**
 * ��������Ľṹ
 * @author Blacknife
 *
 */
public interface BlackListTable {
	String PHONE = "phone";
	String MODE = "mode";
	String BLACKTABLE = "blacktb";
	/**
	 * ����Գ�����ÿһ�����ֻ��Ӧһ��λΪ1
	 */
	int SMS = 1 << 0;
	int TEL = 1 << 1;
	int ALL = SMS | TEL;
			
}
