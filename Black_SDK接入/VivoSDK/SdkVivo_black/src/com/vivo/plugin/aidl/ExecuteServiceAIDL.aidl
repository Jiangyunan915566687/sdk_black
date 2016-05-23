package com.vivo.plugin.aidl;
import com.vivo.plugin.aidl.IAccountCallBack;
import com.vivo.plugin.aidl.IPayAndRechargeCallBack;
interface ExecuteServiceAIDL
{
	
	void registerCallBack(String gamePackageName,IAccountCallBack icallback,IPayAndRechargeCallBack iPayCallback,int oritation);
	void stopAssistService();
	void startAssistService(String gamePkgName);
	  void paymentActionInit(String appId, String openid);
     void paymentActionInitial(String appId);
   void  vivoAccountreportRoleInfo(String roleid, String rolelevel, String serviceArea,  String roleName, String serviceAreaName);
}