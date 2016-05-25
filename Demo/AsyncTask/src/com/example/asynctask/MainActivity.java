package com.example.asynctask;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.Toast;


public class MainActivity extends Activity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        
    }
    public void imagetest(View v){
    	startActivity(new Intent(this, AsyncTaskActivity.class));
    }
    public void progresstest(View v){
    	Toast.makeText(getApplicationContext(), "该功能暂未实现", Toast.LENGTH_SHORT).show();
    }
    
}
