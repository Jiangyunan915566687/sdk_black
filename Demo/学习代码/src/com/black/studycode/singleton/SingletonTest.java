package com.black.studycode.singleton;

import android.R.array;

public class SingletonTest {
	/*饿汉
	private SingletonTest() {
	}
	private static final SingletonTest instant = new SingletonTest();
	public static SingletonTest getInstant(){
		return instant;
	}
	*/
	/*懒汉
	private static SingletonTest instant = null;
	private SingletonTest() {
	}
	public static synchronized SingletonTest getInstant(){
		if(instant == null ){
			instant = new SingletonTest();
		}
		return instant;
	}
	*/
	/*大神
	private SingletonTest() {
	}
	private static class SingletonHander{
		public static SingletonTest instant  = new SingletonTest();
	}
	public static SingletonTest getInstant(){
		
		return SingletonHander.instant;
	}
	*/
}
