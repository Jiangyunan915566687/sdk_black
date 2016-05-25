package com.itheima62.mobileguard.activities;

import java.util.ArrayList;
import java.util.List;

import android.app.ListActivity;
import android.app.ProgressDialog;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.SystemClock;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.BaseAdapter;
import android.widget.ListView;
import android.widget.TextView;

import com.itheima62.mobileguard.R;
import com.itheima62.mobileguard.domain.ContantBean;
import com.itheima62.mobileguard.engine.ReadContantsEngine;
import com.itheima62.mobileguard.utils.MyConstants;

/**
 * @author Administrator
 * 显示所有好友信息的界面
 */
public class SmslogsActivity extends BaseFriendsCallSmsActivity {

	/* (non-Javadoc)
	 * 提取数据的方法,需要覆盖此方法完成数据的显示
	 * @see com.itheima62.mobileguard.activities.BaseFriendsCallSmsActivity#getDatas()
	 */
	@Override
	public List<ContantBean> getDatas() {
		// TODO Auto-generated method stub
		return ReadContantsEngine.readSmslog(getApplicationContext());
	}
	
	
	
}
