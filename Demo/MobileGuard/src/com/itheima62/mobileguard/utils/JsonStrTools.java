package com.itheima62.mobileguard.utils;

/**
 * @author Administrator
 * 处理json格式特殊字符
 */
public class JsonStrTools {
	/**
	 * @param json
	 *   json的字符串
	 * @return
	 *   把json特殊字符做了转换处理 
	 */
	public static String changeStr(String json){
		json = json.replaceAll(",", "，");
		json = json.replaceAll(":", "：");
		json = json.replaceAll("\\[", "【"); 
		json = json.replaceAll("\\]", "】"); 
		json = json.replaceAll("\\{", "<"); 
		json = json.replaceAll("\\}", ">"); 
		json = json.replaceAll("\"", "”"); 
		
		return json.toString();
	}
}
