.class public final Lcom/baidu/mobads/SplashAd;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/mobads/SplashAd$SplashType;
    }
.end annotation


# instance fields
.field a:Lcom/baidu/mobads/AdContainer;

.field private b:Ljava/lang/String;

.field private c:Lcom/baidu/mobads/SplashAdListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/baidu/mobads/SplashAdListener;Lcom/baidu/mobads/SplashAd$SplashType;)V
    .locals 7

    const-string v4, ""

    invoke-static {p4}, Lcom/baidu/mobads/SplashAd;->a(Lcom/baidu/mobads/SplashAd$SplashType;)Z

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/baidu/mobads/SplashAd;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/baidu/mobads/SplashAdListener;Ljava/lang/String;ZLcom/baidu/mobads/SplashAd$SplashType;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/baidu/mobads/SplashAdListener;Ljava/lang/String;ZLcom/baidu/mobads/SplashAd$SplashType;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/baidu/mobads/aa;

    invoke-direct {v0, p0}, Lcom/baidu/mobads/aa;-><init>(Lcom/baidu/mobads/SplashAd;)V

    iput-object v0, p0, Lcom/baidu/mobads/SplashAd;->c:Lcom/baidu/mobads/SplashAdListener;

    :try_start_0
    iput-object p4, p0, Lcom/baidu/mobads/SplashAd;->b:Ljava/lang/String;

    if-eqz p3, :cond_0

    iput-object p3, p0, Lcom/baidu/mobads/SplashAd;->c:Lcom/baidu/mobads/SplashAdListener;

    :cond_0
    new-instance v0, Lcom/baidu/mobads/l;

    invoke-direct {v0}, Lcom/baidu/mobads/l;-><init>()V

    invoke-virtual {v0, p5}, Lcom/baidu/mobads/l;->a(Z)V

    if-eqz p5, :cond_2

    const-string v1, "NA,LP,DL"

    invoke-virtual {v0, v1}, Lcom/baidu/mobads/l;->a(Ljava/lang/String;)V

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/mobads/l;->e(I)V

    invoke-virtual {v0, p4}, Lcom/baidu/mobads/l;->c(Ljava/lang/String;)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/baidu/mobads/l;->c(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/baidu/mobads/l;->d(I)V

    invoke-static {p6}, Lcom/baidu/mobads/SplashAd;->isRTSplash(Lcom/baidu/mobads/SplashAd$SplashType;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "rsplash"

    invoke-virtual {v0, v1}, Lcom/baidu/mobads/l;->b(Ljava/lang/String;)V

    :goto_1
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/baidu/mobads/l;->f(I)V

    invoke-virtual {v0}, Lcom/baidu/mobads/l;->e()Ljava/lang/String;

    move-result-object v1

    const-string v2, "csplash"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, p1}, Lcom/baidu/mobads/l;->d(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Lcom/baidu/mobads/l;->f(I)V

    :cond_1
    new-instance v1, Lcom/baidu/mobads/AdContainer;

    iget-object v2, p0, Lcom/baidu/mobads/SplashAd;->c:Lcom/baidu/mobads/SplashAdListener;

    invoke-direct {v1, p1, v0, v2, p6}, Lcom/baidu/mobads/AdContainer;-><init>(Landroid/content/Context;Lcom/baidu/mobads/l;Lcom/baidu/mobads/SplashAdListener;Lcom/baidu/mobads/SplashAd$SplashType;)V

    iput-object v1, p0, Lcom/baidu/mobads/SplashAd;->a:Lcom/baidu/mobads/AdContainer;

    iget-object v0, p0, Lcom/baidu/mobads/SplashAd;->a:Lcom/baidu/mobads/AdContainer;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_2
    return-void

    :cond_2
    const-string v1, "NA"

    invoke-virtual {v0, v1}, Lcom/baidu/mobads/l;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/baidu/mobads/b/e;->b(Ljava/lang/Throwable;)I

    goto :goto_2

    :cond_3
    :try_start_1
    const-string v1, "csplash"

    invoke-virtual {v0, v1}, Lcom/baidu/mobads/l;->b(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private static a(Lcom/baidu/mobads/SplashAd$SplashType;)Z
    .locals 1

    invoke-static {p0}, Lcom/baidu/mobads/SplashAd;->isRTSplash(Lcom/baidu/mobads/SplashAd$SplashType;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static isRTSplash(Lcom/baidu/mobads/SplashAd$SplashType;)Z
    .locals 1

    sget-object v0, Lcom/baidu/mobads/SplashAd$SplashType;->REAL_TIME:Lcom/baidu/mobads/SplashAd$SplashType;

    invoke-virtual {v0, p0}, Lcom/baidu/mobads/SplashAd$SplashType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setAppSec(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Lcom/baidu/mobads/AdManager;->setAppSec(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/baidu/mobads/ac;

    invoke-direct {v1, v0, p1}, Lcom/baidu/mobads/ac;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/baidu/mobads/ac;->start()V

    return-void
.end method

.method public static setAppSid(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Lcom/baidu/mobads/AdManager;->setAppId(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/baidu/mobads/ab;

    invoke-direct {v1, v0, p1}, Lcom/baidu/mobads/ab;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/baidu/mobads/ab;->start()V

    return-void
.end method
