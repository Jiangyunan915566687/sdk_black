package com.black.studycode.classFound;

import java.lang.reflect.Method;

import com.black.studycode.singleton.Singleton;

import android.util.Log;

public class ClassFoundMethod {
	public static void foundMethod(){
		try {
			Method[] methods = Class.forName("com.black.studycode.singleton.Singleton").getMethods();
			for (Method method : methods) {
				if(method.getName().equals("method")){
					Log.d("black", "进入方法");
					//Singleton.getInstance().method();
					new Singleton();
				}
				Log.d("black", "未找到方法");
			}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
