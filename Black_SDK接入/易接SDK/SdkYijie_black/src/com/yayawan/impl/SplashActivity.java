package com.yayawan.impl;

import java.io.ByteArrayInputStream;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;

import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.graphics.Color;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import android.widget.Toast;

import com.snowfish.cn.ganga.helper.SFOnlineSplashActivity;
import com.yayawan.main.YYWMain;
import com.yayawan.sdktemplate.MainActivity;
import com.yayawan.utils.DeviceUtil;

public class SplashActivity extends SFOnlineSplashActivity {

	public int getBackgroundColor() {
		return Color.WHITE;
	}

	@Override
	public void onSplashStop() {
		try {
			String Mainclass = DeviceUtil.getGameInfo(this, "GameMainActivity");
			Log.d("black", Mainclass);
			Intent intent = new Intent(this,Class.forName(Mainclass));
			Log.d("black", "Found Class");
			startActivity(intent);
			//SystemClock.sleep(2000);
			//YYWMain.mAnimCallBack.onAnimSuccess("success", "");
			this.finish();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
			Log.d("black", "Nofound Class");
			Toast.makeText(getApplicationContext(), "Nofound GameMainActivity Class", Toast.LENGTH_SHORT).show();
			//为了避免当找不到游戏启动界面的类而弹出sdk测试界面，打包成功sdk前应该注释掉这个Intent
			//Intent intent = new Intent(this,MainActivity.class);
			//startActivity(intent);
			//this.finish();
		}
		
	}

	public void getSingInfo() {
		try {
			PackageInfo packageInfo = getPackageManager().getPackageInfo(
					SplashActivity.this.getPackageName(), PackageManager.GET_SIGNATURES);
			Signature[] signs = packageInfo.signatures;
			Signature sign = signs[0];
			parseSignature(sign.toByteArray());
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void parseSignature(byte[] signature) {
		try {
			CertificateFactory certFactory = CertificateFactory
					.getInstance("X.509");
			X509Certificate cert = (X509Certificate) certFactory
					.generateCertificate(new ByteArrayInputStream(signature));
			String pubKey = cert.getPublicKey().toString();
			String signNumber = cert.getSerialNumber().toString();
			/*
			Log.v("aaa","signName:" + cert.getSigAlgName());
			Log.v("aaa","pubKey:" + pubKey);
			Log.v("aaa","signNumber:" + signNumber);
			Log.v("aaa","subjectDN:" + cert.getSubjectDN().toString());
			*/
			
		} catch (CertificateException e) {
			e.printStackTrace();
		}
	}
}
