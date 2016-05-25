package com.blacknife.sdk;

import com.blacknife.sdk.R;
import com.blacknife.sdk.callback.BKnifeExitCallback;
import com.blacknife.sdk.exit.ExitDialog;
import com.blacknife.sdk.floatview.FloatView;
import com.blacknife.sdk.init.SplashActivity;
import com.blacknife.sdk.login.LoginActivity;
import com.blacknife.sdk.login.LoginControl;
import com.blacknife.sdk.util.LogUtile;
import com.blacknife.sdk.util.ToastUtil;

import android.app.Activity;
import android.os.Bundle;
import android.util.Log;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.Toast;


public class MainActivity extends Activity implements OnClickListener{

	private Button bt_anim;
	private Button bt_login;
	private Button bt_logout;
	private Button bt_pay;
	private Button bt_exit;
	private Button bt_show;
	private Button bt_hide;
	private Button bt_ondestroy;
	private Activity mActivity;
	@Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        mActivity = this;
        initView();
        initEvent();
        BKnife.init(this);
    }

	private void initView() {
    	bt_anim = (Button) findViewById(R.id.anim);
    	bt_login = (Button) findViewById(R.id.login);
    	bt_logout = (Button) findViewById(R.id.logout);
    	bt_pay = (Button) findViewById(R.id.pay);
    	bt_exit = (Button) findViewById(R.id.exit);
    	bt_show = (Button) findViewById(R.id.show);
    	bt_hide = (Button) findViewById(R.id.hide);
    	bt_ondestroy = (Button) findViewById(R.id.ondestroy);
    	
	}
    private void initEvent() {
    	bt_anim.setOnClickListener(this);
    	bt_login.setOnClickListener(this);
    	bt_logout.setOnClickListener(this);
    	bt_pay.setOnClickListener(this);
    	bt_exit.setOnClickListener(this);
    	bt_show.setOnClickListener(this);
    	bt_hide.setOnClickListener(this);
    	bt_ondestroy.setOnClickListener(this);
	}


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
    @Override
    public void onBackPressed() {
    	BKnife.exit(this,new BKnifeExitCallback() {
			
			@Override
			public void onSuccess() {
				LogUtile.showLog("BKnifeCallback_onBackPressed_PositiveButton");
				finish();
				System.exit(0);
			}

			@Override
			public void onFail() {
				LogUtile.showLog("BKnifeCallback_onBackPressed_NeutralButton");
				ToastUtil.showToast(mActivity, "返回游戏");
			}
		});
    	//super.onBackPressed();
    }
	@Override
	public void onClick(View v) {
		switch (v.getId()) {
		case R.id.anim:
			ToastUtil.showToast(this, "onClick - anim");
			SplashActivity.launch(this);
			break;
		case R.id.login:
			ToastUtil.showToast(this, "onClick - login");
			//new LoginControl(this).login();
			BKnife.login(this);
			break;
		case R.id.logout:
			ToastUtil.showToast(this, "onClick - logout");
			break;
		case R.id.show:
			ToastUtil.showToast(this, "onClick - show");
			BKnife.showFloatView(this);
			break;
		case R.id.hide:
			ToastUtil.showToast(this, "onClick - hide");
			BKnife.hideFloatView(this);
			break;
		case R.id.ondestroy:
			ToastUtil.showToast(this, "onClick - hide");
			BKnife.onDestroy(this);
			break;
		case R.id.pay:
			ToastUtil.showToast(this, "onClick - pay");
			break;
		case R.id.exit:
			ToastUtil.showToast(this, "onClick - exit");
			BKnife.exit(this,new BKnifeExitCallback() {
				@Override
				public void onSuccess() {
					LogUtile.showLog("BKnifeCallback_exitButton_PositiveButton");
					finish();
					System.exit(0);
				}

				@Override
				public void onFail() {
					LogUtile.showLog("BKnifeCallback_exitButton_NeutralButton");
					ToastUtil.showToast(mActivity, "返回游戏");
				}
			});
			break;
		

		default:
			break;
		}
	}
}
