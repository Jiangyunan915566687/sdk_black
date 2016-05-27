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
					Singleton.getInstance().method();
					//生成SDK时，此方法必须存在，但是不确定打包后是否还有此方法
				}
				Log.d("black", "未找到方法");
			}
		} catch (ClassNotFoundException e) {
			//找不到该Class时走此方法
			e.printStackTrace();
		}
	}
}
