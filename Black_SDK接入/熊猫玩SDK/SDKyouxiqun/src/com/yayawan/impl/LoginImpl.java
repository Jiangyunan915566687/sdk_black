package com.yayawan.impl;

import java.net.URL;

import org.json.JSONException;
import org.json.JSONObject;

import android.app.Activity;
import android.app.ProgressDialog;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.widget.Toast;

import com.xmwsdk.asynchttp.AsyncHttpConnection;
import com.xmwsdk.asynchttp.StringResponseHandler;
import com.xmwsdk.asynchttp.support.ParamsWrapper;
import com.xmwsdk.control.XmwMatrix;
import com.xmwsdk.data.XmwTimeData;
import com.xmwsdk.inface.XmwIDispatcherCallback;
import com.yayawan.callback.YYWUserCallBack;
import com.yayawan.domain.YYWUser;
import com.yayawan.main.YYWMain;
import com.yayawan.proxy.YYWLoginer;
import com.yayawan.utils.DeviceUtil;
import com.yayawan.utils.Handle;
import com.yayawan.utils.JSONUtil;

public class LoginImpl implements YYWLoginer {

    public String access_token_url = "http://open.xmwan.com/v2/oauth2/access_token";

    public String token = "", refresh_token = "";

    public static String CLIENTID = "3ff532e966ffc597522bee653ded081c";

    public static String CLIENTSECRET = "3294dd9737780d10ecd94b24beb2b985";

    public static Activity mActivity;
    @Override
    public void login(final Activity paramActivity, YYWUserCallBack userCallBack, String paramString) {

    	CLIENTID = DeviceUtil.getGameInfo(paramActivity, "XMWAPPID");
    	CLIENTSECRET = DeviceUtil.getGameInfo(paramActivity, "CLIENTSECRET");
    	mActivity = paramActivity;
    	//System.err.println(CLIENTID);
    	//System.err.println(CLIENTSECRET);

        paramActivity.runOnUiThread(new Runnable() {
			
			@Override
			public void run() {
				// TODO Auto-generated method stub

                XmwMatrix.invokeLogin(paramActivity,
                        new XmwIDispatcherCallback() {

                            @Override
                            public void onFinished(int error_code, String data) {
                                // TODO Auto-generated method stub

                                if (error_code == 99) {
                                    // 用户取消登录
                                    if (YYWMain.mUserCallBack != null) {
                                        YYWMain.mUserCallBack.onLoginFailed("",
                                                "");
                                    }
                                    return;
                                }
                               // System.out.println(data);
                                try {
                                    JSONObject json = new JSONObject(data);
                                    String auth_code = json.optString(  "authorization_code", "");

                                    if (!"".equalsIgnoreCase(auth_code)) {
                                        getAccessToken(paramActivity, auth_code);
                                    }

                                } catch (JSONException e) {
                                    // TODO Auto-generated catch block
                                    e.printStackTrace();
                                }

                            }
                        }, DeviceUtil.isLandscape(paramActivity));

			}
		});
           

        
    }

    public void getAccessToken(final Activity paramActivity, String code) {
    	paramActivity.runOnUiThread(new Runnable() {
			
			@Override
			public void run() {
				// TODO Auto-generated method stub
				progress(paramActivity);
			}
		});
    	
        
        final AsyncHttpConnection http = AsyncHttpConnection.getInstance();
       params = new ParamsWrapper();
        if (!"".equalsIgnoreCase(code)) {
            params.put("client_id", CLIENTID);
            params.put("client_secret", CLIENTSECRET);
            params.put("grant_type", "authorization_code");
            params.put("code", code);
        }

        paramActivity.runOnUiThread(new Runnable() {
			
			@Override
			public void run() {
				// TODO Auto-generated method stub
				 http.post(access_token_url, params, new StringResponseHandler() {
			            @Override
			            public void onResponse(String content, URL url, int code) {
			            	System.out.println(content);
			                JSONObject j;
			                try {
			                    j = new JSONObject(content);
			                    token = j.optString("access_token");
			                    refresh_token = j.optString("refresh_token");
			                    getUser_Me(paramActivity);
			                } catch (JSONException e) {
			                    e.printStackTrace();
			                    paramActivity.runOnUiThread(new Runnable() {
									
									@Override
									public void run() {
										// TODO Auto-generated method stub
										disprogress();
									}
								});
			                    
			                    
			                    if (YYWMain.mUserCallBack != null) {
			                        YYWMain.mUserCallBack.onLoginFailed("", "");
			                    }
			                }
			            }

			        });
			}
		});
       
    }

    ProgressDialog progressDialog = null;

    private void progress(Activity paramActivity) {
        progressDialog = new ProgressDialog(paramActivity);
        // 设置进度条风格，风格为圆形，旋转的
        progressDialog.setProgressStyle(ProgressDialog.STYLE_SPINNER);
        // 设置ProgressDialog 标题
        // progressDialog.setTitle("提示");
        // 设置ProgressDialog 提示信息
        progressDialog.setMessage("获取游戏数据");
        // 设置ProgressDialog 标题图标
        // progressDialog.setIcon(R.drawable.a);
        // 设置ProgressDialog 的进度条是否不明确
        progressDialog.setIndeterminate(true);
        // 设置ProgressDialog 是否可以按退回按键取消
        progressDialog.setCancelable(false);
        // 设置ProgressDialog 的一个Button
        // progressDialog.setButton("确定", new SureButtonListener());
        // 让ProgressDialog显示
        try {
            progressDialog.show();
        } catch (Exception e) {

        }
    }

    private void disprogress() {
        if (progressDialog != null) {
            if (progressDialog.isShowing())
                progressDialog.dismiss();
        }
    }

    // 使用access_token获取SDK用户信息的访问地址 可以在服务器调用此链接也可以在客户端服务器调用以换取和客户端用户信息信息匹配的信息
    // 客户端在获取游戏信息失败时请重新获取
    public String user_me_url = XmwTimeData.getInstance().ohost + "/users/me";

	private ParamsWrapper params;

    public void getUser_Me(final Activity paramActivity) {
        AsyncHttpConnection http = AsyncHttpConnection.getInstance();
        String url = user_me_url + "?access_token=" + token;
        http.get(url, new StringResponseHandler() {
            @Override
            public void onResponse(String content, URL url, int code) {
                JSONObject json;
                try {
                    // 具体返回内容见打印信息
                	//System.out.println(content);
                    json = new JSONObject(content);
                    String error = json.optString("error", "");
                    if (error == "") {
                        YYWMain.mUser = new YYWUser();
                        YYWMain.mUser.uid = json.optString("xmw_open_id", "");
                        YYWMain.mUser.userName = json.optString("xmw_open_id",
                                "");
                        YYWMain.mUser.nick = json.optString("nickname", "");
                        YYWMain.mUser.icon = json.optString("avatar", "");
                        YYWMain.mUser.body = token;
                        YYWMain.mUser.token = JSONUtil.formatToken(
                                paramActivity, "access_token=" + token
                                        + "&refresh_token=" + refresh_token,
                                YYWMain.mUser.userName);
                      //将access_token回传给SDK，用于悬浮框用户信息的展示 （XMWSDK_V2.2.0更新，重要）
    					XmwMatrix.xmw_settoken(mActivity,token);
                      //  Yayalog.loger("第一:"+YYWMain.mUser.uid);
                        if (YYWMain.mUserCallBack != null) {
                        	
                        	paramActivity.runOnUiThread(new Runnable() {
								
								@Override
								public void run() {
									// TODO Auto-generated method stub
						//			Yayalog.loger("第2:"+YYWMain.mUser.uid);
									 YYWMain.mUserCallBack.onLoginSuccess(YYWMain.mUser,
			                                    "success");
							//		 Yayalog.loger("第3:"+YYWMain.mUser.uid);
									 Handle.login_handler(paramActivity,
			                                    YYWMain.mUser.uid, YYWMain.mUser.userName);
								}
							});
                           
                           
                        }

                    } else {
                        if (YYWMain.mUserCallBack != null) {
                            YYWMain.mUserCallBack.onLoginFailed("", "");
                        }
                    }
                } catch (JSONException e) {
                    e.printStackTrace();
                }
                paramActivity.runOnUiThread(new Runnable() {
					
					@Override
					public void run() {
						Yayalog.loger("第4:"+YYWMain.mUser.uid);
						// TODO Auto-generated method stub
						disprogress();
					}
				});
                
            }

        });
    }

    @Override
    public void relogin(Activity paramActivity, YYWUserCallBack userCallBack,
            String paramString) {

        Toast.makeText(paramActivity, "重新登录", Toast.LENGTH_SHORT).show();
    }

}
