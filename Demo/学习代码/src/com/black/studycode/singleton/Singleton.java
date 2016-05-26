package com.black.studycode.singleton;

import android.util.Log;

/**
 * 单例模式 
 * @author Blacknife
 * 调用方式  : Singleton.getInstance().method();
 */
public class Singleton {
	
	//私有化构造方法，保证外部的类不能通过构造器来进行实例化
	public Singleton(){
		
	}
	
	//私有静态内部类，实现Lzay机制
	private static class SingletonHolder{
		private static Singleton instance = new Singleton();
	}
	
	//获取单例对象实例，return 唯一单例对象
	public static Singleton getInstance(){
		return SingletonHolder.instance;
	}
	
	//业务方法
	public void method(){
		System.out.println("SingletonInner");
		Log.d("black", "ClassFound - Success！");
	}
}
