package com.github.yoojia.zxing.app;

import android.graphics.Bitmap;
import android.graphics.Point;
import android.os.AsyncTask;
import android.os.Bundle;
import android.support.v7.app.ActionBarActivity;
import android.view.Display;
import android.view.WindowManager;
import android.widget.ImageView;

import com.github.yoojia.zxing.R;
import com.github.yoojia.zxing.qrcode.Encoder;

/**
 * @author :   Yoojia.Chen (yoojia.chen@gmail.com)
 * @date :   2015-03-03
 * 生成二维码并展示的界面
 */
public class QRCodeShowActivity extends ActionBarActivity {

    private ImageView mQRCodeImage;
    private Encoder mEncoder;
    private DecodeTask mDecodeTask;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_show);
        setTitle("生成二维码");

        mQRCodeImage = (ImageView) findViewById(R.id.qrcode_image);

        final WindowManager manager = (WindowManager) getSystemService(WINDOW_SERVICE);
        final Display display = manager.getDefaultDisplay();
        Point displaySize = new Point();
        display.getSize(displaySize);
        final int width = displaySize.x;
        final int height = displaySize.y;
        final int dimension = width < height ? width : height;

        mEncoder = new Encoder.Builder()
                .setBackgroundColor(0xFFFFFF)
                .setCodeColor(0xFF000000)
                .setOutputBitmapPadding(0)
                .setOutputBitmapWidth(dimension)
                .setOutputBitmapHeight(dimension)
                .build();

        mDecodeTask = new DecodeTask();
    }

    @Override
    protected void onPostResume() {
        super.onPostResume();
        mDecodeTask.execute("https://github.com/yoojia/ZXingMini");
    }

    private class DecodeTask extends AsyncTask<String, Void, Bitmap>{

        @Override
        protected Bitmap doInBackground(String... params) {
            return mEncoder.encode(params[0]);
        }

        @Override
        protected void onPostExecute(Bitmap bitmap) {
            mQRCodeImage.setImageBitmap(bitmap);
        }
    }
}
