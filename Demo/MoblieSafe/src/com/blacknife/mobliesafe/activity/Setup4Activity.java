package com.blacknife.mobliesafe.activity;

import com.blacknife.mobliesafe.R;
import com.blacknife.mobliesafe.utils.MyConstants;
import com.blacknife.mobliesafe.utils.SpTools;

import android.content.Intent;
import android.os.Bundle;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;

/**
 * 第一个设置向导页
 * 
 * @author Blacknife
 *
 */
public class Setup4Activity extends BaseSetupActivity {
	private boolean isCheck;
	private CheckBox cbProtect;

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_setup4);
		isCheck = SpTools.getBoolean(Setup4Activity.this, MyConstants.ISLOSTFIND, false);
		cbProtect = (CheckBox) findViewById(R.id.cd_protect);
		//sp保存的信息更新
		if(isCheck){
			cbProtect.setText("防盗保护已经开启");
		}else{
			cbProtect.setText("防盗保护没有开启");
		}
		cbProtect.setChecked(isCheck);
		cbProtect.setOnCheckedChangeListener(new OnCheckedChangeListener() {
			
			@Override
			public void onCheckedChanged(CompoundButton buttonView, boolean isChecked) {
				if(isChecked){
					cbProtect.setText("防盗保护已经开启");
				}else{
					cbProtect.setText("防盗保护没有开启");
				}
				SpTools.putBoolean(Setup4Activity.this, MyConstants.ISLOSTFIND, isChecked);
			}
		});
	}

	@Override
	public void showPreviousPage() {
		startActivity(new Intent(Setup4Activity.this, Setup3Activity.class));
		finish();
		overridePendingTransition(R.anim.tran_previous_in,R.anim.tran_previous_out);//进入动画 和 退出动画
	}

	@Override
	public void showNextPage() {
		startActivity(new Intent(Setup4Activity.this, LostFindActivity.class));
		finish();
		overridePendingTransition(R.anim.tran_next_in, R.anim.tran_next_out);//进入动画 和 退出动画		
		// 更新向导出现标志,表示已经展示过向导,下次进来不展示
		SpTools.putBoolean(Setup4Activity.this, MyConstants.ISSETUP, true);
	}	
}
