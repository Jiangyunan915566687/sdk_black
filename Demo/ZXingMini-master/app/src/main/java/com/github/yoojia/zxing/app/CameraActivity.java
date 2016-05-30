package com.github.yoojia.zxing.app;

import android.app.Activity;
import android.graphics.Bitmap;
import android.hardware.Camera;
import android.os.Bundle;
import android.view.SurfaceView;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.ImageView;

import com.github.yoojia.zxing.R;
import com.github.yoojia.zxing.camera.Cameras;

/**
 * @author :   Yoojia.Chen (yoojia.chen@gmail.com)
 * @date :   2015-03-03
 * 扫描二维码
 */
public class CameraActivity extends Activity{

    private Cameras mCamera;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        Window window = getWindow();
        window.addFlags(WindowManager.LayoutParams.FLAG_KEEP_SCREEN_ON);
        setContentView(R.layout.activity_camera);

        final ImageView image = (ImageView) findViewById(R.id.image);

        SurfaceView surfaceView = (SurfaceView) findViewById(R.id.capture_preview_view);
        mCamera = new Cameras(surfaceView);

//        mCamera.setPreviewCallback(new Camera.PreviewCallback() {
//            @Override
//            public void onPreviewFrame(byte[] data, Camera camera) {
//                Bitmap b = mCamera.capture(new Cameras.CameraPreview(data, camera));
//                image.setImageBitmap(b);
//            }
//        });
//        surfaceView.setOnClickListener(new View.OnClickListener() {
//            @Override
//            public void onClick(View v) {
//                mCamera.getCameraManager().getFocusManager().requestAutoFocus();
//            }
//        });
    }

    @Override
    protected void onResume() {
        super.onResume();
        mCamera.start();
    }

    @Override
    protected void onPause() {
        super.onPause();
        mCamera.stop();
    }
}
