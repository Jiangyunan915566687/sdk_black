.class public final Lcom/qq/e/splash/SplashAd;
.super Ljava/lang/Object;


# static fields
.field public static final ERROR_CONTAINER_INVISIBLE:I = 0x3

.field public static final ERROR_LOAD_AD_FAILED:I = 0x1

.field public static final ERROR_REJECT_LOAD_AD:I = 0x2

.field public static final INTERNAL_ERROR:I = -0x1


# instance fields
.field private a:Lcom/qq/e/splash/SplashAdView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;Lcom/qq/e/splash/SplashAdListener;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p3}, Lcom/qq/e/v2/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p4}, Lcom/qq/e/v2/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const-string v0, "APPID and PosId should not be null or empty string;and splash container should not be null"

    invoke-static {v0}, Lcom/qq/e/v2/util/GDTLogger;->e(Ljava/lang/String;)V

    invoke-static {p5}, Lcom/qq/e/splash/SplashAd;->a(Lcom/qq/e/splash/SplashAdListener;)V

    :goto_0
    return-void

    :cond_1
    :try_start_0
    invoke-static {}, Lcom/qq/e/v2/managers/GDTADManager;->getInstance()Lcom/qq/e/v2/managers/GDTADManager;

    move-result-object v0

    invoke-virtual {v0, p1, p3}, Lcom/qq/e/v2/managers/GDTADManager;->initWith(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "Fail to Init GDT AD SDK,report logcat info filter by gdt_ad_mob"

    invoke-static {v0}, Lcom/qq/e/v2/util/GDTLogger;->e(Ljava/lang/String;)V

    invoke-static {p5}, Lcom/qq/e/splash/SplashAd;->a(Lcom/qq/e/splash/SplashAdListener;)V
    :try_end_0
    .catch Lcom/qq/e/v2/managers/plugin/a; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Fail to init splash plugin"

    invoke-static {v1, v0}, Lcom/qq/e/v2/util/GDTLogger;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {p5}, Lcom/qq/e/splash/SplashAd;->a(Lcom/qq/e/splash/SplashAdListener;)V

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-static {}, Lcom/qq/e/v2/managers/GDTADManager;->getInstance()Lcom/qq/e/v2/managers/GDTADManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qq/e/v2/managers/GDTADManager;->getPM()Lcom/qq/e/v2/managers/plugin/PM;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qq/e/v2/managers/plugin/PM;->getAdViewFactory()Lcom/qq/e/splash/AdViewFactory;

    move-result-object v0

    invoke-interface {v0, p1, p3, p4}, Lcom/qq/e/splash/AdViewFactory;->createSplashAdView(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/qq/e/splash/SplashAdView;

    move-result-object v0

    iput-object v0, p0, Lcom/qq/e/splash/SplashAd;->a:Lcom/qq/e/splash/SplashAdView;

    iget-object v0, p0, Lcom/qq/e/splash/SplashAd;->a:Lcom/qq/e/splash/SplashAdView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/qq/e/splash/SplashAd;->a:Lcom/qq/e/splash/SplashAdView;

    invoke-virtual {v0, p5}, Lcom/qq/e/splash/SplashAdView;->setAdListener(Lcom/qq/e/splash/SplashAdListener;)V

    iget-object v0, p0, Lcom/qq/e/splash/SplashAd;->a:Lcom/qq/e/splash/SplashAdView;

    invoke-virtual {v0, p2}, Lcom/qq/e/splash/SplashAdView;->fetchAndShowIn(Landroid/view/ViewGroup;)V
    :try_end_1
    .catch Lcom/qq/e/v2/managers/plugin/a; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "Unknown Exception"

    invoke-static {v1, v0}, Lcom/qq/e/v2/util/GDTLogger;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {p5}, Lcom/qq/e/splash/SplashAd;->a(Lcom/qq/e/splash/SplashAdListener;)V

    goto :goto_0

    :cond_3
    :try_start_2
    const-string v0, "SplashAdView created by factory return null"

    invoke-static {v0}, Lcom/qq/e/v2/util/GDTLogger;->e(Ljava/lang/String;)V

    invoke-static {p5}, Lcom/qq/e/splash/SplashAd;->a(Lcom/qq/e/splash/SplashAdListener;)V
    :try_end_2
    .catch Lcom/qq/e/v2/managers/plugin/a; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0
.end method

.method private static a(Lcom/qq/e/splash/SplashAdListener;)V
    .locals 1

    if-eqz p0, :cond_0

    const/4 v0, -0x1

    invoke-interface {p0, v0}, Lcom/qq/e/splash/SplashAdListener;->onAdFailed(I)V

    :cond_0
    return-void
.end method
