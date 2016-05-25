package com.blacknife.mobliesafe.service;
import com.blacknife.mobliesafe.utils.MyConstants;
import com.blacknife.mobliesafe.utils.SpTools;

import android.app.Service;
import android.content.Intent;
import android.location.Criteria;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Bundle;
import android.os.IBinder;

/**
 * 获取经纬度坐标的service
 */
public class LocationService extends Service {
	private LocationManager lm;
	private MyLocationListener listener;
	@Override
	public IBinder onBind(Intent intent) {
		return null;
	}

	@Override
	public void onCreate() {
		super.onCreate();
		lm = (LocationManager) getSystemService(LOCATION_SERVICE);
		// List<String> allProviders = lm.getAllProviders();//获取所有位置提供者
		// System.out.println(allProviders);

		Criteria criteria = new Criteria();//定义一个选择标准
		criteria.setCostAllowed(true);// 是否允许付费，比如使用流量
		criteria.setAccuracy(Criteria.ACCURACY_FINE);//设置精确度
		
		String bestProvider = lm.getBestProvider(criteria, true);//获取的位置最佳提供者

		listener = new MyLocationListener();
		lm.requestLocationUpdates(bestProvider, 0, 0, listener);
		
		
	}
	class MyLocationListener implements LocationListener{
		//位置发生变化
		@Override
		public void onLocationChanged(Location location) {
			//将获取的经纬度保存在sp中
			SpTools.putString(getApplicationContext(), MyConstants.LOCATION, "GPS_J:"+location.getLongitude()
									+" GPS_W:"+ location.getLatitude());
			
			stopSelf();//停止定位服务,获取到位置立马停止后台服务
		}
		
		@Override
		public void onProviderDisabled(String provider) {
			
		}

		@Override
		public void onProviderEnabled(String provider) {
			
		}

		@Override
		public void onStatusChanged(String provider, int status, Bundle extras) {
			
		}
		
		
	}
	@Override
	public void onDestroy() {
		super.onDestroy();
		lm.removeUpdates(listener);//当activity销毁时，停止更新位置，节省电量
	}

}
