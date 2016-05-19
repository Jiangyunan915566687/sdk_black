.class public Lcom/qq/e/gdtnativead/GDTNativeAd;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qq/e/gdtnativead/GDTNativeAd$GDTNativeAdListener;,
        Lcom/qq/e/gdtnativead/GDTNativeAd$ErrorCode;
    }
.end annotation


# instance fields
.field private a:Lcom/qq/e/gdtnativead/GDTNativeAdDelegate;

.field private b:Lcom/qq/e/gdtnativead/GDTNativeAd$GDTNativeAdListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/qq/e/gdtnativead/GDTNativeAd$GDTNativeAdListener;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lcom/qq/e/v2/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p3}, Lcom/qq/e/v2/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "AppId and positionID can not be empty while init GDTNativeAD"

    invoke-static {v0}, Lcom/qq/e/v2/util/GDTLogger;->e(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    if-nez p1, :cond_2

    const-string v0, "Activity can not be null while init FeedsAD"

    invoke-static {v0}, Lcom/qq/e/v2/util/GDTLogger;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    if-nez p4, :cond_3

    const-string v0, "Listener should not be null while init GDTNativeAD"

    invoke-static {v0}, Lcom/qq/e/v2/util/GDTLogger;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lcom/qq/e/comm/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "Manifest configuration error,check release document or demo application for help"

    invoke-static {v0}, Lcom/qq/e/v2/util/GDTLogger;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iput-object p4, p0, Lcom/qq/e/gdtnativead/GDTNativeAd;->b:Lcom/qq/e/gdtnativead/GDTNativeAd$GDTNativeAdListener;

    invoke-static {}, Lcom/qq/e/v2/managers/GDTADManager;->getInstance()Lcom/qq/e/v2/managers/GDTADManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/qq/e/v2/managers/GDTADManager;->initWith(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    :try_start_0
    invoke-static {}, Lcom/qq/e/v2/managers/GDTADManager;->getInstance()Lcom/qq/e/v2/managers/GDTADManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qq/e/v2/managers/GDTADManager;->getPM()Lcom/qq/e/v2/managers/plugin/PM;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qq/e/v2/managers/plugin/PM;->getGDTNativeAdViewFactory()Lcom/qq/e/v2/plugininterfaces/GDTNativeAdViewFactory;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/qq/e/v2/plugininterfaces/GDTNativeAdViewFactory;->createGDTNativeAdDelegate(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/qq/e/gdtnativead/GDTNativeAd$GDTNativeAdListener;)Lcom/qq/e/gdtnativead/GDTNativeAdDelegate;

    move-result-object v0

    iput-object v0, p0, Lcom/qq/e/gdtnativead/GDTNativeAd;->a:Lcom/qq/e/gdtnativead/GDTNativeAdDelegate;
    :try_end_0
    .catch Lcom/qq/e/v2/managers/plugin/a; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Fail to init GDTNativeAD"

    invoke-static {v1, v0}, Lcom/qq/e/v2/util/GDTLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_5
    const-string v0, "GDTADManager init fail while init GDTNativeAD"

    invoke-static {v0}, Lcom/qq/e/v2/util/GDTLogger;->e(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public loadAd(I)V
    .locals 2

    iget-object v0, p0, Lcom/qq/e/gdtnativead/GDTNativeAd;->a:Lcom/qq/e/gdtnativead/GDTNativeAdDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qq/e/gdtnativead/GDTNativeAd;->a:Lcom/qq/e/gdtnativead/GDTNativeAdDelegate;

    invoke-interface {v0, p1}, Lcom/qq/e/gdtnativead/GDTNativeAdDelegate;->loadAd(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/qq/e/gdtnativead/GDTNativeAd;->b:Lcom/qq/e/gdtnativead/GDTNativeAd$GDTNativeAdListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/qq/e/gdtnativead/GDTNativeAd;->b:Lcom/qq/e/gdtnativead/GDTNativeAd$GDTNativeAdListener;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/qq/e/gdtnativead/GDTNativeAd$GDTNativeAdListener;->onGDTNativeAdFail(I)V

    :cond_1
    const-string v0, "GDTNativeAD not initialized ,see logs"

    invoke-static {v0}, Lcom/qq/e/v2/util/GDTLogger;->e(Ljava/lang/String;)V

    goto :goto_0
.end method
