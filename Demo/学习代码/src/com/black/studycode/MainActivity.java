package com.black.studycode;

import com.black.Utils.MarketUtlis;
import com.blacknife.studycode.R;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.content.DialogInterface.OnClickListener;
import android.os.Bundle;
import android.util.Log;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;


public class MainActivity extends Activity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        MarketUtlis.showDailog(this, "弹窗标题", "弹窗内容信息", "进入", "取消", new OnClickListener() {
			
			@Override
			public void onClick(DialogInterface dialog, int which) {
				MarketUtlis.showToast(MainActivity.this, "点击进入");
			}
		}, new OnClickListener() {
			
			@Override
			public void onClick(DialogInterface dialog, int which) {
				MarketUtlis.showToast(MainActivity.this, "点击取消");				
			}
		}, true, new OnCancelListener() {
			
			@Override
			public void onCancel(DialogInterface dialog) {
				MarketUtlis.showToast(MainActivity.this, "点击返回");
			}
		});
        
    }
    //监听按下某个按钮
    @Override
    public boolean onKeyDown(int keyCode, KeyEvent event) {
    	if( keyCode == KeyEvent.KEYCODE_BACK ){    		
    		if(MarketUtlis.doubleOnClik(500)){
    			Log.d("black", "true");
    			finish();
    			System.exit(0);
    		}else{
    			Log.d("black", "false");
    			MarketUtlis.showToast(this, "请再按一次返回键");
    		}
    	}
    	return false;
    }
    /*
    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        // Inflate the menu; this adds items to the action bar if it is present.
        getMenuInflater().inflate(R.menu.main, menu);
        return true;
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        // Handle action bar item clicks here. The action bar will
        // automatically handle clicks on the Home/Up button, so long
        // as you specify a parent activity in AndroidManifest.xml.
        int id = item.getItemId();
        if (id == R.id.action_settings) {
            return true;
        }
        return super.onOptionsItemSelected(item);
    }
    */
}
