package com.blacknife.sdk.floatview;

import android.content.Context;
import android.content.Intent;
import android.graphics.PixelFormat;
import android.graphics.drawable.ColorDrawable;
import android.text.method.HideReturnsTransformationMethod;
import android.util.DisplayMetrics;
import android.view.Gravity;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.PopupWindow;
import android.widget.RelativeLayout;

import com.blacknife.sdk.R;
import com.blacknife.sdk.util.LogUtile;
import com.blacknife.sdk.util.ToastUtil;
import com.blacknife.sdk.util.Util;

public class FloatView extends FrameLayout implements 
	View.OnClickListener,View.OnTouchListener{
	private static FloatView floatView;
	//创建浮动窗口设置布局参数的对象  
	private static WindowManager mWindowManager;
	private static WindowManager.LayoutParams mWmParams;
	Context mContext;
    private static float mTouchStartX;
    private static float mTouchStartY;
    private boolean isShowing = false;
    private boolean mIsRight = false;
    private static PopupWindow moreWindow;
    private static View optionsView;
    private static Boolean mDraging;
    
    private static long startTime = 0;
	// 声明屏幕的宽高
	static int xx;
	static int yy;
	private static ImageView iv_floatview_icon;
	private static ImageView iv_menu_user;
	private static ImageView iv_menu_gift;
	private static RelativeLayout rl_menu_msgs;
	private static ImageView iv_menu_questions;
    /**
	 * FloatView 构造方法
	 * @param context 上下文
	 */
	public FloatView(Context context) {
		super(context);
		LogUtile.showLog("FloatView(Context context)");
		this.mContext = context;
	}
	/**
	 * 创建悬浮窗对象
	 * @param context 上下文
	 * @return
	 */
	public static FloatView getInstance(Context context){
		if (floatView == null) {
			floatView = new FloatView(context.getApplicationContext());
			createView(context);
			mWindowManager.addView(floatView, mWmParams);
			
			LogUtile.showLog("getInstance(Context context)");
		}
		return floatView;
	}
	/**
	 * 调用销毁悬浮窗对象
	 */
	public static void destroyInstance(){
		if (floatView == null) {
			floatView.destroy();
		}
	}
	
	/**
	 * 创建悬浮窗View
	 * @return
	 */
	private static View createView(final Context context){
		/*
		 * 设置WindowManager
		 */
		//获得系统窗体
		mWindowManager = (WindowManager)context.getSystemService("window");  
		//窗体的布局样式
		mWmParams = new WindowManager.LayoutParams();   
        //设置window type  
        mWmParams.type = WindowManager.LayoutParams.TYPE_SYSTEM_ALERT;   
        //设置显示模式，效果为背景透明  
        mWmParams.format = PixelFormat.RGBA_8888;   
        //设置浮动窗口不可聚焦（实现操作除浮动窗口外的其他可见窗口的操作）  
        mWmParams.flags = WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE;        
        //调整悬浮窗显示的停靠位置为左侧置顶  
        mWmParams.gravity = Gravity.LEFT | Gravity.TOP;         
        // 以屏幕左上角为原点，设置x、y初始值，相对于gravity  
        //mWmParams.x = 0;  
        //mWmParams.y = 0;  
  
        //设置悬浮窗口长宽数据
        //mWmParams.width = WindowManager.LayoutParams.WRAP_CONTENT;  
        //mWmParams.height = WindowManager.LayoutParams.WRAP_CONTENT;  
  
        // 设置悬浮窗口长宽数据 
        mWmParams.width = 80; 
        mWmParams.height = 80;
        floatView.setLayoutParams(new LayoutParams(LayoutParams.WRAP_CONTENT,
        		LayoutParams.WRAP_CONTENT));
        LayoutInflater inflater = LayoutInflater.from(context);
        //获取浮动窗口视图所在布局  
        View rootFloatView = inflater.inflate(R.layout.floatview_layout, null);
        iv_floatview_icon = (ImageView) rootFloatView.findViewById(R.id.floatview_icon);
        //悬浮窗菜单栏View
        optionsView = View.inflate(context, R.layout.floatview_menu, null);
        iv_menu_user = (ImageView) optionsView.findViewById(R.id.floatview_iv_menu_user);
        iv_menu_gift = (ImageView) optionsView.findViewById(R.id.floatview_iv_menu_gift);
        rl_menu_msgs = (RelativeLayout) optionsView.findViewById(R.id.floatview_rl_menu_msgs);
        iv_menu_questions = (ImageView) optionsView.findViewById(R.id.floatview_iv_menu_questions);
        iv_menu_user.setOnClickListener(floatView);
        iv_menu_gift.setOnClickListener(floatView);
        rl_menu_msgs.setOnClickListener(floatView);
        iv_menu_questions.setOnClickListener(floatView);
        floatView.addView(rootFloatView);
        //设置浮动窗口的单击事件
        rootFloatView.setOnClickListener(new OnClickListener() {
			
			@Override
			public void onClick(View v) {
				ToastUtil.showToast(context, "点击悬浮窗");
				if (mDraging) {
					closeMenu();
			    }else{
					showMenu(context);
			    }
			}
		});
        rootFloatView.setOnTouchListener(floatView/*new OnTouchListener() {
			
			@Override
			public boolean onTouch(View v, MotionEvent event) {
				// 获取相对屏幕的坐标，即以屏幕左上角为原点
				xx = (int)event.getRawX();
			    yy = (int)event.getRawY();
				LogUtile.showLog(xx+":"+yy);
				switch (event.getAction()) {
					case MotionEvent.ACTION_DOWN:
						// 获取相对View的坐标，即以此View左上角为原点
						mTouchStartX = event.getX();
						mTouchStartY = event.getY();
						LogUtile.showLog(mTouchStartX+":"+mTouchStartY);
						long end = System.currentTimeMillis() - startTime;
						// 双击的间隔在 300ms以下
						if (end < 300) {
							//隐藏悬浮窗
							hide();
						}
						startTime = System.currentTimeMillis();
						break;
					case MotionEvent.ACTION_MOVE:
						// 更新浮动窗口位置
						mWmParams.x = (int) (xx - mTouchStartX);
						mWmParams.y = (int) (yy - mTouchStartY - 40);
						mWindowManager.updateViewLayout(floatView, mWmParams);
						break;
					case MotionEvent.ACTION_UP:
			
						// 可以在此记录最后一次的位置
			
						//mTouchStartX = mTouchStartY = 0;
						break;
				}
				//此处返回true时，onClice监听失效，被拦截
				return false;
			}
		}*/);
		return rootFloatView;
	}
	/**
	 * 显示悬浮窗
	 */
	public void show(){
		LogUtile.showLog("FloatView show()");
		mDraging = false;
		floatView.setVisibility(View.VISIBLE);
		
	}
	/**
	 * 隐藏悬浮窗
	 */
	public void hide(){
		floatView.setVisibility(View.GONE);
	    //this.mWindowManager.updateViewLayout(this, this.mWmParams);
	}
	/**
	 * 移除FloatView
	 */
	private void removeFloatView(){
		try{
			mWindowManager.removeView(floatView);
	    }catch (Exception ex) {
	    	ex.printStackTrace();
	    }
	}
	/**
	 * 展示悬浮窗菜单栏
	 */
	private static void showMenu(Context context){
	    DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();

	    int screenWidth = displayMetrics.widthPixels;
	    int[] location = new int[2];
	    iv_floatview_icon.getLocationInWindow(location);

	    int offsetX = 90;

	    int offsetY = -Util.dip2px(context, 57.0F);
	    if (moreWindow == null) {
	      moreWindow = new PopupWindow(optionsView, -2, -2);

	      moreWindow.setAnimationStyle(0);
	      moreWindow.setOutsideTouchable(true);
	      moreWindow.setBackgroundDrawable(new ColorDrawable(0));
	    }
	    /*
	    if (mIsRight) {
	      offsetX = screenWidth - iv_floatview_icon.getWidth() - Util.dip2px(this.mContext, 510.0F);
	      if (this.mOrientation == 2)
	      {
	        offsetX = screenWidth - this.mIvFloatLogo.getWidth() - Util.dip2px(this.mContext, 790.0F);
	      }
	      this.moreWindow.setAnimationStyle(BaseUtils.get_R_Style(getContext(), "gfan_popwin_anim_style_right"));
	    } else {
	      offsetX = iv_floatview_icon.getWidth() + Util.dip2px(this.mContext, 10.0F);
	      this.moreWindow.setAnimationStyle(BaseUtils.get_R_Style(getContext(), "gfan_popwin_anim_style_left"));
	    }
	    */
	    moreWindow.showAsDropDown(iv_floatview_icon, offsetX, offsetY);
	    mDraging = true;
	}
	/**
	 * 关闭悬浮窗菜单栏
	 */
	private static void closeMenu(){
		if (moreWindow != null){
			moreWindow.dismiss();
			mDraging = false;
		}		
	}
	/**
	 * 销毁FloatView
	 */
	public void destroy() {
		// TODO Auto-generated method stub
		hide();
		removeFloatView();
		floatView = null;
	}
	/*
	@Override
	public void onWindowFocusChanged(boolean hasFocus) {
		super.onWindowFocusChanged(hasFocus);
		Rect rect = new Rect();
		// /取得整个视图部分,注意，如果你要设置标题样式，这个必须出现在标题样式之后，否则会出错
		getWindow().getDecorView().getWindowVisibleDisplayFrame(rect);
		top = rect.top;//状态栏的高度，所以rect.height,rect.width分别是系统的高度的宽度

		Log.i("top",""+top);
	}
	*/
	
	@Override
	public void onClick(View v) {
		switch (v.getId()) {
		case R.id.floatview_iv_menu_user:
			ToastUtil.showToast(mContext, "onClick - user"); 
			openUserCenter();
			break;
		case R.id.floatview_iv_menu_gift:
			ToastUtil.showToast(mContext, "onClick - gift"); 
			openGiftCenter();
			break;
		case R.id.floatview_rl_menu_msgs:
			ToastUtil.showToast(mContext, "onClick - msgs"); 
			openMsgsCenter();
			break;
		case R.id.floatview_iv_menu_questions:
			ToastUtil.showToast(mContext, "onClick - questions"); 
			openNomalQuestion();
			break;
	

		default:
			break;
		}
	}
	/**
	 * 展开账户中心
	 */
	private void openUserCenter() {
		
	}
	/**
	 * 展开礼包中心
	 */
	private void openGiftCenter() {
		//mContext.startActivity(new Intent(mContext, UserCenterActivity.class));
	}
	/**
	 * 展开通知中心
	 */
	private void openMsgsCenter() {
		
	}
	/**
	 * 展开问题中心
	 */
	private void openNomalQuestion() {
		
	}
	@Override
	public boolean onTouch(View v, MotionEvent event) {
		// 获取相对屏幕的坐标，即以屏幕左上角为原点
		xx = (int)event.getRawX();
	    yy = (int)event.getRawY();
		LogUtile.showLog(xx+":"+yy);
		switch (event.getAction()) {
			case MotionEvent.ACTION_DOWN:
				// 获取相对View的坐标，即以此View左上角为原点
				mTouchStartX = event.getX();
				mTouchStartY = event.getY();
				LogUtile.showLog(mTouchStartX+":"+mTouchStartY);
				long end = System.currentTimeMillis() - startTime;
				// 双击的间隔在 300ms以下
				if (end < 300) {
					//隐藏悬浮窗
					hide();
				}
				startTime = System.currentTimeMillis();
				break;
			case MotionEvent.ACTION_MOVE:
				// 更新浮动窗口位置
				mWmParams.x = (int) (xx - mTouchStartX);
				mWmParams.y = (int) (yy - mTouchStartY - 40);
				mWindowManager.updateViewLayout(floatView, mWmParams);
				break;
			case MotionEvent.ACTION_UP:
	
				// 可以在此记录最后一次的位置
	
				//mTouchStartX = mTouchStartY = 0;
				break;
		}
		//此处返回true时，onClice监听失效，被拦截
		return false;
	}	
}
