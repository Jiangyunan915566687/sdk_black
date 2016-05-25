package com.blacknife.mobliesafe.domain;
/**
 * 对黑名单数据的封装类
 * @author Blacknife
 *
 */
public class BlackBean {
	private String phone;
	private int mode;
	
	@Override
	public boolean equals(Object o) {
		if(o instanceof BlackBean){
			BlackBean bean = (BlackBean)o;
			return phone.equals(bean.getPhone());
		}else{			
			return false;
		}
	}
	@Override
	public int hashCode() {
		return phone.hashCode();
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public int getMode() {
		return mode;
	}
	public void setMode(int mode) {
		this.mode = mode;
	}
}
