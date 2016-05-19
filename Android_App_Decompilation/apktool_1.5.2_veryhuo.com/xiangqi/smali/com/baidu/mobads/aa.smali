.class Lcom/baidu/mobads/aa;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/mobads/SplashAdListener;


# instance fields
.field final synthetic a:Lcom/baidu/mobads/SplashAd;


# direct methods
.method constructor <init>(Lcom/baidu/mobads/SplashAd;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mobads/aa;->a:Lcom/baidu/mobads/SplashAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClick()V
    .locals 1

    const-string v0, "SplashAdListener.onAdClick"

    invoke-static {v0}, Lcom/baidu/mobads/b/e;->a(Ljava/lang/String;)I

    return-void
.end method

.method public onAdDismissed()V
    .locals 1

    const-string v0, "SplashAdListener.onAdDismissed"

    invoke-static {v0}, Lcom/baidu/mobads/b/e;->a(Ljava/lang/String;)I

    return-void
.end method

.method public onAdFailed(Ljava/lang/String;)V
    .locals 1

    const-string v0, "SplashAdListener.onAdFailed"

    invoke-static {v0}, Lcom/baidu/mobads/b/e;->a(Ljava/lang/String;)I

    return-void
.end method

.method public onAdPresent()V
    .locals 1

    const-string v0, "SplashAdListener.onAdPresent"

    invoke-static {v0}, Lcom/baidu/mobads/b/e;->a(Ljava/lang/String;)I

    return-void
.end method
