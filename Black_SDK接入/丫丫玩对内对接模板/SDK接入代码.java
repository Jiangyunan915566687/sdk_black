SDK接入代码

1.获取游戏屏幕的竖横屏状态
if (DeviceUtil.isLandscape(paramActivity)) {
		mBDGameSDKSetting.setOrientation(Orientation.LANDSCAPE);// 设置为横屏
}else {
		mBDGameSDKSetting.setOrientation(Orientation.PORTRAIT);// 设置为横屏
}

2.YY玩账户注销
// 将要切换账户
if (YYWMain.mUserCallBack != null) {
	YYWMain.mUserCallBack.onLogout(mActivity);
}

3.回调主线程运行
paramActivity.runOnUiThread(new Runnable() {			
	@Override
	public void run() {
		//关闭yyw进行退出操作
		callback.onExit();
	}
});

4.YY玩游戏币价值
YYWMain.mOrder.money 每单位价值 0.01元

5.获取AndroidManifest里面<meta-data />的值
String partnerid = DeviceUtil.getGameInfo(mactivity, "partnerid");
String gameid = DeviceUtil.getGameInfo(mactivity, "gameid");

6.YYW产品账单各项值
/*详细订单 begin*/
BillDetail billDetail = new BillDetail();
billDetail.productId = YYWMain.mOrder.goods_id; //产品ID
billDetail.productName = YYWMain.mOrder.goods;//产品名字
		
billDetail.productNum = "1";//产品数量
billDetail.productDiscount = "";//产品折扣
billDetail.productPrice = YYWMain.mOrder.money/100+"";//产品价格
billDetail.realPrice = YYWMain.mOrder.money/100+"";//真实价格
billDetail.totalMoney = YYWMain.mOrder.money/100+"";//总价格
/*详细订单 end */ 

7.弹窗确认是否退出
YayaWan.Exitgame(paramActivity, new YayaWanCallback() {
	@Override
	public void onSuccess() {
		//关闭yyw进行退出操作
		callback.onExit();
	}
});

8.获取写在AndroidMaifast.xml里面的信息
DeviceUtil.getGameInfo(mactivity, "Key");
//通过"Key"来获取key所对应的值value

9.设置工程为横屏显示
<activity
    android:name="com.yayawan.sdktemplate.MainActivity"
    android:label="@string/app_name" 
    android:screenOrientation="landscape" > //这里进行设置
    <intent-filter>
        <action android:name="android.intent.action.MAIN" />
    <category android:name="android.intent.category.LAUNCHER" />
    </intent-filter>
</activity>

10.设置接入文档的闪屏图片
istr = assetManager.open("yaya_logo_start.png");
在项目下的assets文件夹下放资源
闪屏停留的时间是通过修改Handler消息的延迟发送来实现
 mHandler.sendEmptyMessageDelayed(1, 3000L);

11.取消游戏的闪屏页
	public void anim(final Activity paramActivity) {
		System.err.println("播放动画");
		new Handler(Looper.getMainLooper()).post(new Runnable() {
			public void run() {
				//取消闪屏页的代码
				YYWMain.mAnimCallBack.onAnimSuccess("success", "");
				//new LogoWindow(paramActivity);
				
			}
		});
	}


12.接入支付功能
	/**
	 * 支付
	 * @param mactivity
	 */
	public static void pay(Activity mactivity, String morderid) {
		Yayalog.loger("sdk支付");
		morderid // CP订单号
		YYWMain.mOrder.goods // 商品名称
		YYWMain.mOrder.money // 以分为单位，long类型
		YYWMain.mOrder.ext   // 在支付通知中原样返回,不超过500个字符
		paySuce();	//支付成功
		payCancel();//支付取消
		payFail();	//支付失败
	}

13.AndroidManifest.xml中用 string_package 字符代替游戏包名

14.若遇上anim闪屏播放完成后还黑屏很久,直接在anim接口的handler里面传闪屏播放成功的指令
然后把调用闪屏的函数填加到初始化函数里面.代码如下:
//初始化接入口
	/**
	 * 初始化sdk
	 */
	public static void inintsdk(Activity mactivity) {
		mActivity = mactivity;
		Yayalog.loger("初始化sdk");
		new LogoWindow(mactivity);
	}
//闪屏页接口
public class AnimationImpl implements YYWAnimation {

	@Override
	public void anim(final Activity paramActivity) {
		System.err.println("播放动画");

		new Handler(Looper.getMainLooper()).post(new Runnable() {

			@Override
			public void run() {
				//若不需要闪屏动画,直接发送YYWMain.mAnimCallBack.onAnimSuccess("success", "");
				//并注释取消new LogoWindow(paramActivity);
				//new LogoWindow(paramActivity);
				YYWMain.mAnimCallBack.onAnimSuccess("success", "");
			}
		});
	}
}

15.设置本地用户信息 例子
//直接调用如下静态方法，记录用户角色信息
VivoUnionManager.vivoAccountreportRoleInfo("roleId", 
	"roleLevel","serviceArea", 
	"roleName", "context","serviceAreaName");

参数说明：
roleId：游戏用于标识角色的id		YYWMain.mRole.getRoleId()
roleLevel：角色等级					YYWMain.mRole.getRoleLevel()
serviceAreaID：区服ID				YYWMain.mRole.getZoneId()
roleName：角色名称					YYWMain.mRole.getRoleName()
context：上下文，当前Activity的引用	this
serviceAreaName：区服名称			YYWMain.mRole.getZoneName()


16.CP接SetData在创建游戏角色的时候
	/**
	 * 创建角色，角色升级调用的方法
	 * 
	 * @param activity 游戏上下文  ext 附加内容 roleCTime 角色创建时间 zoneName 游戏区服名称
	 * @param zoneId 游戏区服ID roleLevel 角色等级 roleName 角色名称 roleId 角色ID
	 */
	public static void setData(Activity activity, String roleId, String roleName, 
			String roleLevel, String zoneId, String zoneName, String roleCTime, String ext) {
		if (YYWMain.mRole != null) {
			try {
				JSONObject jsonExData = new JSONObject();
				jsonExData.put("roleId", roleId);// 当前登录的玩家角色ID
				jsonExData.put("roleName", roleName);// 当前登录的玩家角色名
				jsonExData.put("roleLevel", roleLevel);// 当前登录的玩家角色等级
				jsonExData.put("zoneId", zoneId);// 当前登录的游戏区服ID
				jsonExData.put("zoneName", zoneName);// 当前登录的游戏区服名称
				
				//时间转化roleCTime start
				//String roleCTime = "2013-11-14 10:50:43";
				/*
				Log.d("black", roleCTime);
				String dateTime= roleCTime.replace("-","").replace(":", "").replace(" ", ""); 
				Log.d("black", dateTime);
				Calendar c = Calendar.getInstance();
				c.setTime(new SimpleDateFormat("yyyyMMddHHmmss").parse(dateTime));
				Log.d("black","!!!时间转化后的毫秒数为："+c.getTimeInMillis());
				*/
			//时间转化roleCTime start
				//String roleCTime = "2013-11-14 10:50:43";
				/*
				Log.d("black", roleCTime);
				String dateTime= roleCTime.replace("/","").replace(":", "").replace(" ", "").replace("\\", "").replace("AM", "").replace("PM", ""); 
				Log.d("black", dateTime);
				Calendar c = Calendar.getInstance(); 
				c.setTime(new SimpleDateFormat("ddMMyyyyHHmmss").parse(dateTime));
				Log.d("black","!!!时间转化后的毫秒数为："+c.getTimeInMillis());*/
				//时间转化roleCTime End
				//时间转化roleCTime start
				//String roleCTime = "4\\/27\\/2016 10:50:43 PM";
				/*
				Log.d("black", roleCTime);
				int i=-1;
				i=roleCTime.indexOf("P");
				
				if(roleCTime.length() != 14){
					roleCTime = "0"+roleCTime;
				}
				String dateTime= roleCTime.replace("/","").replace(":", "").replace(" ", "").replace("\\", "").replace("AM", "").replace("PM", ""); 
				Log.d("black", dateTime);
				Calendar c = Calendar.getInstance(); 
				try {
					c.setTime(new SimpleDateFormat("MMddyyyyHHmmss").parse(dateTime));
				} catch (ParseException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				}
				Log.d("black","!!!时间转化后的毫秒数为："+c.getTimeInMillis());
				long z = c.getTimeInMillis();
				if(i != 10){
					z = 43200000 + c.getTimeInMillis();
				}
				//时间转化roleCTime End
				*/
				//时间转化roleCTime End
				
				//jsonExData.put("roleCTime", roleCTime);// 当前登录的角色创建时间
				jsonExData.put("roleCTime", c.getTimeInMillis()/1000);// 当前登录的角色创建时间
				jsonExData.put("os", "android");
				jsonExData.put("roleLevelMTime", "-1");
				UCGameSDK.defaultSDK().submitExtendData("loginGameRole",
						jsonExData);
				Log.d("black","提交游戏扩展数据" + jsonExData.toString());
				// Log.e("UCGameSDK","提交游戏扩展数据功能调用成功");
			} catch (Exception e) {
				// 处理异常
			}
		}		
	}



//////
///
		/*
		//时间转化roleCTime start
		String roleCTime = "4\\/27\\/2016 10:50:43 PM";
		Log.d("black", roleCTime);
		if(roleCTime.length() != 14){
			roleCTime = "0"+roleCTime;
		}
		String dateTime= roleCTime.replace("/","").replace(":", "").replace(" ", "").replace("\\", "").replace("AM", "").replace("PM", ""); 
		Log.d("black", dateTime);
		Calendar c = Calendar.getInstance(); 
		try {
			c.setTime(new SimpleDateFormat("MMddyyyyHHmmss").parse(dateTime));
		} catch (ParseException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		Log.d("black","!!!时间转化后的毫秒数为："+c.getTimeInMillis());
		//时间转化roleCTime End
		//时间转化roleCTime start
		String roleCTime1 = "2016-04-27 10:50:43";
		Log.d("black", roleCTime1);
		String dateTime1= roleCTime1.replace("-","").replace(":", "").replace(" ", ""); 
		Log.d("black", dateTime1);
		Calendar cc = Calendar.getInstance();
		try {
			cc.setTime(new SimpleDateFormat("yyyyMMddHHmmss").parse(dateTime1));
		} catch (ParseException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		Log.d("black","!!!时间转化后的毫秒数为1："+cc.getTimeInMillis());*/
		//时间转化roleCTime End
		/*
		if(isNeedInitSdk){
			initSdk();
		}*/


19.通过Token去获得用户uid和name
public static void getUserInfo(final Activity mactivity, final String token) {
		Yibuhttputils yibuhttputils = new Yibuhttputils() {

			@Override
			public void sucee(String str) {
				System.out.println(str);
				try {
					JSONObject object = new JSONObject(str);
					//object.getLong(name)
					String id = object.isNull("id") ? null : object
							.getLong("id")+"";
					String name = object.isNull("name") ? null : object
							.getString("name");
					//登录成功
					//loginSuce(mactivity, id, name, token);
					YYWMain.mUser = new YYWUser();
					YYWMain.mUser.uid =DeviceUtil.getUnionid(mactivity) + "-"+ id + "";
					YYWMain.mUser.userName =DeviceUtil.getUnionid(mactivity) + "-" +name + "";
					// YYWMain.mUser.nick = data.getNickName();
					YYWMain.mUser.token = JSONUtil.formatToken(mactivity,
							token, YYWMain.mUser.userName);
					if (YYWMain.mUserCallBack != null) {
						YYWMain.mUserCallBack.onLoginSuccess(YYWMain.mUser,
								"success");
						Handle.login_handler(mactivity, YYWMain.mUser.uid,
								YYWMain.mUser.userName);
					}
					//doSdkAntiAddictionQuery(YYWMain.mUser.token, YYWMain.mUser.uid, mactivity);

				} catch (JSONException e) {
					//登录失败
					//loginFail();
					YYWMain.mUserCallBack.onLoginFailed(null, null);
				}
			}

			@Override
			public void faile(String err, String rescode) {
				//登录失败
				//loginFail();
				YYWMain.mUserCallBack.onLoginFailed(null, null);
			}
		};
		yibuhttputils.runHttp("https://openapi.360.cn/user/me?access_token="
				+ token, "", "GET", "");
	}

20.阻止未登录帐号进行支付
	public void pay(final Activity paramActivity, final YYWOrder order,
			YYWPayCallBack callback) {

		new Handler(Looper.getMainLooper()).post(new Runnable() {

			@Override
			public void run() {
				if (YYWMain.mUser==null) {
					Toast.makeText(paramActivity, "支付前请登录帐号", Toast.LENGTH_SHORT).show();
					return;
				}
				createOrder(paramActivity);
				// System.err.println("pay start");

			}
		});

	}

22.<input type="text" name="APPID" value="string"/>  纯数字的时候需要添加 string


1X.sdk四大功能点。1.闪屏  2.登陆 3.支付 4.退出