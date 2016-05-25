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
 * ��һ��������ҳ
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
		//sp�������Ϣ����
		if(isCheck){
			cbProtect.setText("���������Ѿ�����");
		}else{
			cbProtect.setText("��������û�п���");
		}
		cbProtect.setChecked(isCheck);
		cbProtect.setOnCheckedChangeListener(new OnCheckedChangeListener() {
			
			@Override
			public void onCheckedChanged(CompoundButton buttonView, boolean isChecked) {
				if(isChecked){
					cbProtect.setText("���������Ѿ�����");
				}else{
					cbProtect.setText("��������û�п���");
				}
				SpTools.putBoolean(Setup4Activity.this, MyConstants.ISLOSTFIND, isChecked);
			}
		});
	}

	@Override
	public void showPreviousPage() {
		startActivity(new Intent(Setup4Activity.this, Setup3Activity.class));
		finish();
		overridePendingTransition(R.anim.tran_previous_in,R.anim.tran_previous_out);//���붯�� �� �˳�����
	}

	@Override
	public void showNextPage() {
		startActivity(new Intent(Setup4Activity.this, LostFindActivity.class));
		finish();
		overridePendingTransition(R.anim.tran_next_in, R.anim.tran_next_out);//���붯�� �� �˳�����		
		// �����򵼳��ֱ�־,��ʾ�Ѿ�չʾ����,�´ν�����չʾ
		SpTools.putBoolean(Setup4Activity.this, MyConstants.ISSETUP, true);
	}	
}
