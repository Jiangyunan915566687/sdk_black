package com.blacknife.sdk.pay;

public class BKnifePay {
	
	public static abstract interface Listener{
	    public abstract void onComplete(BKnifePayResult Result);
	}
	
}
