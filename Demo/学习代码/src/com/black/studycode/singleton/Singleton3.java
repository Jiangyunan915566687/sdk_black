package com.black.studycode.singleton;
/**
 * 单例模式 : 饿汉式
 * 优点：线程安全，多线程安全
 * 缺点： 未使用前对其进行创建，占用内存空间
 * @author Blakcnife
 * 调用方式  : Singleton2.getInstance().method(); 
 */
public class Singleton3 {
	
	//构造方法
	private Singleton3(){}
	
	//创建一个静态对象供系统使用，线程天生安全
	private static final Singleton3 instance = new Singleton3();
	
	//静态工程，创建返回实例
	public static Singleton3 getInstance(){
		return instance;
	}
	
	//业务方法
	protected void method(){
		System.out.println("SingletonInner");
	}
}
