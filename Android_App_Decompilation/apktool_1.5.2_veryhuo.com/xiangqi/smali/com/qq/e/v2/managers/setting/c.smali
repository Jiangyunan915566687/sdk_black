.class public final Lcom/qq/e/v2/managers/setting/c;
.super Lcom/qq/e/v2/managers/setting/b;


# direct methods
.method public constructor <init>()V
    .locals 5

    const/16 v4, 0x64

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/qq/e/v2/managers/setting/b;-><init>()V

    const-string v0, "report_sampling_rate"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/qq/e/v2/managers/setting/c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "getad_report_sampling_rate"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/qq/e/v2/managers/setting/c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "expad_report_sampling_rate"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/qq/e/v2/managers/setting/c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "clkad_report_sampling_rate"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/qq/e/v2/managers/setting/c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "downloaderCCTCount"

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/qq/e/v2/managers/setting/c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "downLoadAutoRecover"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/qq/e/v2/managers/setting/c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "downLoadGiveupTimeInDay"

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/qq/e/v2/managers/setting/c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "download_confirm"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/qq/e/v2/managers/setting/c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "require_window_focus"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/qq/e/v2/managers/setting/c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "bannerPageUrl"

    const-string v1, "http://qzonestyle.gtimg.cn/qzone/biz/gdt/mob/sdk/v2/banner.html"

    invoke-virtual {p0, v0, v1}, Lcom/qq/e/v2/managers/setting/c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "bannerApkPopPageUrl"

    const-string v1, "http://qzonestyle.gtimg.cn/qzone/biz/gdt/mob/sdk/v2/bannerapkpop.html"

    invoke-virtual {p0, v0, v1}, Lcom/qq/e/v2/managers/setting/c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "rf"

    const/16 v1, 0x7530

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/qq/e/v2/managers/setting/c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "bannerRollAnimation"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/qq/e/v2/managers/setting/c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "spl_tpl"

    const-string v1, "<html><head><meta http-equiv=\'X-UA-Compatible\' content=\'edge\' /><meta charset=\'utf-8\'><meta name=\'viewport\' content=\'width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no\' /><meta name=\'format-detection\' content=\'telephone=no\' /><meta name=\'apple-mobile-web-app-capable\' content=\'yes\' /><style type=\'text/css\'>*{padding:0;margin: 0;border: none;overflow: hidden;text-align:center} .icon_close{background:url(http://qzonestyle.gtimg.cn/open_proj/img/gdt/sdk_popup.png) no-repeat;background-size: 300px 140px; width: 29px; height: 30px;position: absolute;right:2px;top:2px;background-position: 0 -110px;text-indent: -9999px;overflow: hidden;  z-index: 100; }*{-webkit-tap-highlight-color:rgba(0,0,0,0);}</style><body style=\'overflow:hidden;background:#efefef\'><img src=\'${src}\' onload=\'imgCB.onImageOK()\' onclick=\'imgCB.onImageClick()\' onerror=\'imgCB.onImageFail()\' style=\'height:100%;max-width:100%\'/><a class=\'icon_close\' onclick=\'imgCB.onCloseClick()\'></a></body></html>"

    invoke-virtual {p0, v0, v1}, Lcom/qq/e/v2/managers/setting/c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "spl_ltime"

    const/16 v1, 0xbb8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/qq/e/v2/managers/setting/c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "spl_exptime"

    const/16 v1, 0x1388

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/qq/e/v2/managers/setting/c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "spl_conn"

    const/16 v1, 0x1f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/qq/e/v2/managers/setting/c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "spl_maxrn"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/qq/e/v2/managers/setting/c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "gridPageUrl"

    const-string v1, "http://qzonestyle.gtimg.cn/qzone/biz/gdt/mob/sdk/v2/gridappwall.html"

    invoke-virtual {p0, v0, v1}, Lcom/qq/e/v2/managers/setting/c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "interstitialPageURL"

    const-string v1, "http://qzonestyle.gtimg.cn/qzone/biz/gdt/mob/sdk/v2/interstitial.html"

    invoke-virtual {p0, v0, v1}, Lcom/qq/e/v2/managers/setting/c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "feedsADURL"

    const-string v1, "http://qzonestyle.gtimg.cn/qzone/biz/gdt/mob/sdk/v2/feeds.html"

    invoke-virtual {p0, v0, v1}, Lcom/qq/e/v2/managers/setting/c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "feedsADURL2"

    const-string v1, "http://qzonestyle.gtimg.cn/qzone/biz/gdt/mob/sdk/v2/feeds2.html"

    invoke-virtual {p0, v0, v1}, Lcom/qq/e/v2/managers/setting/c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "feedsTPLID"

    const-string v1, "FeedsTemplateA"

    invoke-virtual {p0, v0, v1}, Lcom/qq/e/v2/managers/setting/c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "feedsStyleID"

    const-string v1, "skin01"

    invoke-virtual {p0, v0, v1}, Lcom/qq/e/v2/managers/setting/c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "feedsADExposureTime"

    const/16 v1, 0x1f4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/qq/e/v2/managers/setting/c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "appWallPageURL"

    const-string v1, "http://qzonestyle.gtimg.cn/qzone/biz/gdt/mob/sdk/v2/appwall.html"

    invoke-virtual {p0, v0, v1}, Lcom/qq/e/v2/managers/setting/c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
