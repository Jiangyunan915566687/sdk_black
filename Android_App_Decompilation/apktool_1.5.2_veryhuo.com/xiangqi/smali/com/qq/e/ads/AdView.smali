.class public Lcom/qq/e/ads/AdView;
.super Landroid/widget/FrameLayout;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# instance fields
.field private a:Lcom/qq/e/v2/plugininterfaces/BannerViewInterface;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/qq/e/ads/AdSize;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v3, 0x1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/qq/e/comm/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Fail to init AdView, please check that all items are added correctly in AndroidManifest.xml"

    invoke-static {v0}, Lcom/qq/e/v2/util/GDTLogger;->e(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p3}, Lcom/qq/e/v2/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p4}, Lcom/qq/e/v2/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p1, :cond_2

    :cond_1
    const-string v0, "Banner ADView Contructor paras error,appid=%s,posId=%s,context=%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    aput-object p4, v1, v3

    const/4 v2, 0x2

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/e/v2/util/GDTLogger;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/qq/e/ads/AdView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, Lcom/qq/e/v2/managers/GDTADManager;->getInstance()Lcom/qq/e/v2/managers/GDTADManager;

    move-result-object v0

    invoke-virtual {v0, p1, p3}, Lcom/qq/e/v2/managers/GDTADManager;->initWith(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :try_start_0
    invoke-static {}, Lcom/qq/e/v2/managers/GDTADManager;->getInstance()Lcom/qq/e/v2/managers/GDTADManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qq/e/v2/managers/GDTADManager;->getPM()Lcom/qq/e/v2/managers/plugin/PM;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qq/e/v2/managers/plugin/PM;->getBannerViewFactory()Lcom/qq/e/v2/plugininterfaces/BannerViewFactory;

    move-result-object v0

    const/4 v5, 0x1

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/qq/e/v2/plugininterfaces/BannerViewFactory;->getBannerView(Landroid/app/Activity;Lcom/qq/e/ads/AdSize;Ljava/lang/String;Ljava/lang/String;Z)Lcom/qq/e/v2/plugininterfaces/BannerViewInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/qq/e/ads/AdView;->a:Lcom/qq/e/v2/plugininterfaces/BannerViewInterface;

    iget-object v0, p0, Lcom/qq/e/ads/AdView;->a:Lcom/qq/e/v2/plugininterfaces/BannerViewInterface;

    invoke-interface {v0}, Lcom/qq/e/v2/plugininterfaces/BannerViewInterface;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qq/e/ads/AdView;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Lcom/qq/e/v2/managers/plugin/a; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Fail to init Banner plugin"

    invoke-static {v1, v0}, Lcom/qq/e/v2/util/GDTLogger;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "Fail to init Banner Instance"

    invoke-static {v1, v0}, Lcom/qq/e/v2/util/GDTLogger;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_3
    const-string v0, "Fail to init GDTADManager"

    invoke-static {v0}, Lcom/qq/e/v2/util/GDTLogger;->report(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    iget-object v0, p0, Lcom/qq/e/ads/AdView;->a:Lcom/qq/e/v2/plugininterfaces/BannerViewInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qq/e/ads/AdView;->a:Lcom/qq/e/v2/plugininterfaces/BannerViewInterface;

    invoke-interface {v0}, Lcom/qq/e/v2/plugininterfaces/BannerViewInterface;->destroy()V

    :cond_0
    return-void
.end method

.method public fetchAd(Lcom/qq/e/ads/AdRequest;)V
    .locals 1

    iget-object v0, p0, Lcom/qq/e/ads/AdView;->a:Lcom/qq/e/v2/plugininterfaces/BannerViewInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qq/e/ads/AdView;->a:Lcom/qq/e/v2/plugininterfaces/BannerViewInterface;

    invoke-interface {v0, p1}, Lcom/qq/e/v2/plugininterfaces/BannerViewInterface;->fetchAd(Lcom/qq/e/ads/AdRequest;)V

    :cond_0
    return-void
.end method

.method public setAdListener(Lcom/qq/e/ads/AdListener;)V
    .locals 1

    iget-object v0, p0, Lcom/qq/e/ads/AdView;->a:Lcom/qq/e/v2/plugininterfaces/BannerViewInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qq/e/ads/AdView;->a:Lcom/qq/e/v2/plugininterfaces/BannerViewInterface;

    invoke-interface {v0, p1}, Lcom/qq/e/v2/plugininterfaces/BannerViewInterface;->setAdListener(Lcom/qq/e/ads/AdListener;)V

    :cond_0
    return-void
.end method
