package com.black.studycode.singleton;
/**
 * 单例模式 : 懒汉式
 * 优点：延迟加载（需要的时候才去加载）
 * 缺点： 线程不安全，在多线程中很容易出现不同步的情况，如在数据库对象进行的频繁读写操作时。
 * @author Blakcnife
 * 调用方式  : Singleton2.getInstance().method(); 
 */
public class Singleton2 {
	//持有私有静态实例，防止被引用，此处赋值为null，目的是实现延时加载
	private static Singleton2 instance = null;
	
	//私有构造方法，防止被实例化
	private Singleton2(){
		
	}
	
	//静态工程，创建返回实例
	/**
	 * 1、懒汉式原型
	 * 
	 * @return
	 */
	public static Singleton2 getInstance(){
		if(instance == null ){
			instance = new Singleton2();
		}
		return instance;
	}
	
	/**
	 * 2、懒汉式变种
	 * 加入synchronized，确保了线程安全，但效率低下,每次调用都要判断同步锁
	 * @return
	 */
	public static synchronized Singleton2 getInstanceplus(){
		if(instance == null){
			instance = new Singleton2();
		}
		return instance;
	}
	
	/**
	 * 3、懒汉式变种2
	 * 双验查锁定
	 * @return
	 */
	public static Singleton2 getInstancedouble(){
		if(instance == null){
			synchronized (Singleton2.class) {
				if(instance == null){
					instance = new Singleton2();
				}
			}
		}
		return instance;		
	}
	
	//业务方法
	protected void method(){
		System.out.println("SingletonInner");
	}
}
