package com.itheima62.mobileguard.unittest;

import java.util.List;

import com.itheima62.mobileguard.dao.BlackDao;
import com.itheima62.mobileguard.dao.LockedDao;
import com.itheima62.mobileguard.domain.BlackBean;
import com.itheima62.mobileguard.domain.BlackTable;
import com.itheima62.mobileguard.engine.PhoneLocationEngine;
import com.itheima62.mobileguard.engine.ReadContantsEngine;
import com.itheima62.mobileguard.engine.TaskManagerEngine;
import com.itheima62.mobileguard.utils.ServiceUtils;

import android.test.AndroidTestCase;

public class MyTest extends AndroidTestCase {
	
	public void testLockedData(){
		LockedDao dao = new LockedDao(getContext());
		dao.add("aa");
		dao.add("bb");
		dao.remove("aa");
		System.out.println(dao.getAllLockedDatas());
	}
	public void testTaskInfo(){
		TaskManagerEngine.getAllRunningTaskInfos(getContext());
	}
	public void testLocation(){
		//System.out.println(PhoneLocationEngine.query("1343056", getContext()));
	}
	public void testDelete(){
		BlackDao dao = new BlackDao(getContext());
		dao.delete("1234567");
	}
	public void testUpdate(){
		BlackDao dao = new BlackDao(getContext());
		dao.update("1234567", BlackTable.ALL);
	}
	public void testAddBlackNumber(){
		BlackDao dao = new BlackDao(getContext());
		for (int i = 0; i < 20;i++){
			dao.add("1234567" + i, BlackTable.SMS);
		}
	}
	
	public void testFindAllBlackDatas(){
		BlackDao dao = new BlackDao(getContext());
		//获取所有黑名单数据
		List<BlackBean> datas = dao.getAllDatas();
		System.out.println(datas);
	}
	public void testReadContants(){
		ReadContantsEngine.readContants(getContext());//获取虚拟的上下文
	}
	
	public void testRunningService(){
		ServiceUtils.isServiceRunning(getContext(), "");
	}
}
