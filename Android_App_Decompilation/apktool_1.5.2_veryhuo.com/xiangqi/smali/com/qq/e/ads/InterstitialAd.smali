.class public Lcom/qq/e/ads/InterstitialAd;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# instance fields
.field private a:Lcom/qq/e/v2/plugininterfaces/InterstitialAdViewInterface;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/qq/e/comm/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Fail to init AdView, please check that all items are added correctly in AndroidManifest.xml"

    invoke-static {v0}, Lcom/qq/e/v2/util/GDTLogger;->e(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p2}, Lcom/qq/e/v2/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p3}, Lcom/qq/e/v2/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p1, :cond_2

    :cond_1
    const-string v0, "Intersitial Contructor paras error,appid=%s,posId=%s,context=%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    const/4 v2, 0x2

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/e/v2/util/GDTLogger;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/qq/e/v2/managers/GDTADManager;->getInstance()Lcom/qq/e/v2/managers/GDTADManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/qq/e/v2/managers/GDTADManager;->initWith(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :try_start_0
    invoke-static {}, Lcom/qq/e/v2/managers/GDTADManager;->getInstance()Lcom/qq/e/v2/managers/GDTADManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qq/e/v2/managers/GDTADManager;->getPM()Lcom/qq/e/v2/managers/plugin/PM;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qq/e/v2/managers/plugin/PM;->getInterstitialViewFactory()Lcom/qq/e/v2/plugininterfaces/InterstitialViewFactory;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/qq/e/v2/plugininterfaces/InterstitialViewFactory;->getInterstitialView(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Lcom/qq/e/v2/plugininterfaces/InterstitialAdViewInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/qq/e/ads/InterstitialAd;->a:Lcom/qq/e/v2/plugininterfaces/InterstitialAdViewInterface;
    :try_end_0
    .catch Lcom/qq/e/v2/managers/plugin/a; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Fail to init Intersitial plugin"

    invoke-static {v1, v0}, Lcom/qq/e/v2/util/GDTLogger;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "Fail to init Intersitial Instance"

    invoke-static {v1, v0}, Lcom/qq/e/v2/util/GDTLogger;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_3
    const-string v0, "Fail to init GDTADManager"

    invoke-static {v0}, Lcom/qq/e/v2/util/GDTLogger;->report(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public closePopupWindow()V
    .locals 1

    iget-object v0, p0, Lcom/qq/e/ads/InterstitialAd;->a:Lcom/qq/e/v2/plugininterfaces/InterstitialAdViewInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qq/e/ads/InterstitialAd;->a:Lcom/qq/e/v2/plugininterfaces/InterstitialAdViewInterface;

    invoke-interface {v0}, Lcom/qq/e/v2/plugininterfaces/InterstitialAdViewInterface;->closePopupWindow()V

    :cond_0
    return-void
.end method

.method public loadAd()V
    .locals 1

    iget-object v0, p0, Lcom/qq/e/ads/InterstitialAd;->a:Lcom/qq/e/v2/plugininterfaces/InterstitialAdViewInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qq/e/ads/InterstitialAd;->a:Lcom/qq/e/v2/plugininterfaces/InterstitialAdViewInterface;

    invoke-interface {v0}, Lcom/qq/e/v2/plugininterfaces/InterstitialAdViewInterface;->loadAd()V

    :cond_0
    return-void
.end method

.method public setAdListener(Lcom/qq/e/ads/InterstitialAdListener;)V
    .locals 1

    iget-object v0, p0, Lcom/qq/e/ads/InterstitialAd;->a:Lcom/qq/e/v2/plugininterfaces/InterstitialAdViewInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qq/e/ads/InterstitialAd;->a:Lcom/qq/e/v2/plugininterfaces/InterstitialAdViewInterface;

    invoke-interface {v0, p1}, Lcom/qq/e/v2/plugininterfaces/InterstitialAdViewInterface;->setAdListener(Lcom/qq/e/ads/InterstitialAdListener;)V

    :cond_0
    return-void
.end method

.method public declared-synchronized show()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/qq/e/ads/InterstitialAd;->a:Lcom/qq/e/v2/plugininterfaces/InterstitialAdViewInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qq/e/ads/InterstitialAd;->a:Lcom/qq/e/v2/plugininterfaces/InterstitialAdViewInterface;

    invoke-interface {v0}, Lcom/qq/e/v2/plugininterfaces/InterstitialAdViewInterface;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized show(Landroid/app/Activity;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/qq/e/ads/InterstitialAd;->a:Lcom/qq/e/v2/plugininterfaces/InterstitialAdViewInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qq/e/ads/InterstitialAd;->a:Lcom/qq/e/v2/plugininterfaces/InterstitialAdViewInterface;

    invoke-interface {v0, p1}, Lcom/qq/e/v2/plugininterfaces/InterstitialAdViewInterface;->show(Landroid/app/Activity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized showAsPopupWindown()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/qq/e/ads/InterstitialAd;->a:Lcom/qq/e/v2/plugininterfaces/InterstitialAdViewInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qq/e/ads/InterstitialAd;->a:Lcom/qq/e/v2/plugininterfaces/InterstitialAdViewInterface;

    invoke-interface {v0}, Lcom/qq/e/v2/plugininterfaces/InterstitialAdViewInterface;->showAsPopupWindown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized showAsPopupWindown(Landroid/app/Activity;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/qq/e/ads/InterstitialAd;->a:Lcom/qq/e/v2/plugininterfaces/InterstitialAdViewInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qq/e/ads/InterstitialAd;->a:Lcom/qq/e/v2/plugininterfaces/InterstitialAdViewInterface;

    invoke-interface {v0, p1}, Lcom/qq/e/v2/plugininterfaces/InterstitialAdViewInterface;->showAsPopupWindown(Landroid/app/Activity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
