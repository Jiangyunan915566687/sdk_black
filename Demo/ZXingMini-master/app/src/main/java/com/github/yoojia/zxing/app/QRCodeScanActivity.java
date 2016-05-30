package com.github.yoojia.zxing.app;

import android.app.Activity;
import android.os.Bundle;
import android.os.Handler;
import android.view.SurfaceView;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.Toast;

import com.github.yoojia.zxing.qrcode.QRCodeSupport;
import com.github.yoojia.zxing.R;
import com.github.yoojia.zxing.qrcode.FinderView;

/**
 * @author :   Yoojia.Chen (yoojia.chen@gmail.com)
 * @date :   2015-03-03
 * 扫描二维码
 */
public class QRCodeScanActivity extends Activity{

    private QRCodeSupport mQRCodeScanSupport;

    private final Handler mHandler = new Handler();

    private final Runnable mDelayAutoTask = new Runnable() {
        @Override
        public void run() {
            mQRCodeScanSupport.startAuto(500);
        }
    };

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        Window window = getWindow();
        window.addFlags(WindowManager.LayoutParams.FLAG_KEEP_SCREEN_ON);
        setContentView(R.layout.activity_scan);

        ImageView capturePreview = (ImageView) findViewById(R.id.decode_preview);
        SurfaceView surfaceView = (SurfaceView) findViewById(R.id.capture_preview_view);

        mQRCodeScanSupport = new QRCodeSupport(surfaceView, new QRCodeSupport.OnResultListener() {
            @Override
            public void onScanResult(String notNullResult) {
                Toast.makeText(QRCodeScanActivity.this, "扫描结果: " + notNullResult, Toast.LENGTH_SHORT).show();
            }
        });
        mQRCodeScanSupport.setCapturePreview(capturePreview);

    }

    @Override
    protected void onResume() {
        super.onResume();
        mQRCodeScanSupport.onResume();
        mHandler.postDelayed(mDelayAutoTask, 500);
    }

    @Override
    protected void onPause() {
        super.onPause();
        mQRCodeScanSupport.onPause();
        mHandler.removeCallbacks(mDelayAutoTask);
    }
}
