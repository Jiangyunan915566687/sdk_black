package com.itheima62.mobileguard.domain;

/**
 * @author Administrator
 * ��������Ľṹ
 */
public interface BlackTable {
	String PHONE = "phone";//������������
	String MODE = "mode";//����������ģʽ��
	String BLACKTABLE = "blacktb";//����������
	
	/**
	 * ����Գ���,ÿһ�����ֻ��Ӧһ��λΪ1
	 */
	int SMS = 1 << 0;//��������
	int TEL = 1 << 1; // �绰���� 0000 0010
	int ALL = SMS | TEL;//ȫ������
	
	/**
	 * 
	 *  int mode = ;
	 *  if (mode & TEL != 0) {//���е绰����
	 *  
	 */
}
