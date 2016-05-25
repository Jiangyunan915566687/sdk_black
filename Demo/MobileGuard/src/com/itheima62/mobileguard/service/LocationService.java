package com.itheima62.mobileguard.service;

import java.util.List;

import com.itheima62.mobileguard.utils.EncryptTools;
import com.itheima62.mobileguard.utils.MyConstants;
import com.itheima62.mobileguard.utils.SpTools;

import android.app.Service;
import android.content.Intent;
import android.location.Criteria;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Bundle;
import android.os.IBinder;
import android.telephony.SmsManager;

/**
 * @author Administrator ��λ�ķ��������,����ȡ��λ����Ϣ
 */
public class LocationService extends Service {

	private LocationManager lm;
	private LocationListener listener;

	@Override
	public IBinder onBind(Intent intent) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void onCreate() {
		lm = (LocationManager) getSystemService(LOCATION_SERVICE);
		listener = new LocationListener() {

			@Override
			public void onStatusChanged(String provider, int status,
					Bundle extras) {
				// TODO Auto-generated method stub

			}

			@Override
			public void onProviderEnabled(String provider) {
				// TODO Auto-generated method stub

			}

			@Override
			public void onProviderDisabled(String provider) {
				// TODO Auto-generated method stub

			}

			/*
			 * (non-Javadoc) λ�ñ仯���ʹ����˷������ã����Ǵ˷�������׷�ٻص������Ϣ
			 * 
			 * @see
			 * android.location.LocationListener#onLocationChanged(android.location
			 * .Location)
			 */
			@Override
			public void onLocationChanged(Location location) {
				// ��ȡλ�ñ仯�Ľ��
				float accuracy = location.getAccuracy();// ��ȷ��,����Ϊ��λ
				double altitude = location.getAltitude();// ��ȡ���θ߶�
				double longitude = location.getLongitude();// ��ȡ����
				double latitude = location.getLatitude();// ��ȡγ��
				float speed = location.getSpeed();// �ٶ�
				//��λ��Ϣ
				StringBuilder tv_mess = new StringBuilder();
				tv_mess.append("accuracy:" + accuracy + "\n");
				tv_mess.append("altitude:" + altitude + "\n");
				tv_mess.append("longitude:" + longitude + "\n");
				tv_mess.append("latitude:" + latitude + "\n");
				tv_mess.append("speed:" + speed + "\n");
				// ���Ͷ���
				
				String safeNumber = SpTools.getString(LocationService.this, MyConstants.SAFENUMBER, "");
				safeNumber = EncryptTools.decryption( safeNumber);
				//���Ͷ��Ÿ���ȫ����
			   SmsManager sm = SmsManager.getDefault();
			   sm.sendTextMessage(safeNumber, "", tv_mess + "", null, null);
			
				// �ر�gps
				stopSelf();//�ر��Լ�
			}
		};
		
		//��ȡ���е��ṩ�Ķ�λ��ʽ
		List<String> allProviders = lm.getAllProviders();
		for (String string : allProviders) {
			System.out.println(string + "������λ��ʽ");
		}
		
		Criteria criteria = new Criteria();
		criteria.setCostAllowed(true);//��������
		criteria.setAccuracy(Criteria.ACCURACY_FINE);
		//��̬��ȡ�ֻ�����Ѷ�λ��ʽ
		String bestProvider = lm.getBestProvider(criteria , true);
		//ע������ص�
		lm.requestLocationUpdates(bestProvider, 0, 0, listener);
		super.onCreate();
	}

	@Override
	public void onDestroy() {
		// ȡ����λ�ļ���
		lm.removeUpdates(listener);
		lm = null;
		super.onDestroy();
	}

}
