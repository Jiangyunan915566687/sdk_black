.class Lcom/baidu/mobads/y;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field private final a:Lcom/baidu/mobads/InterstitialAdListener;

.field private final b:Lcom/baidu/mobads/InterstitialAd;


# direct methods
.method public constructor <init>(Lcom/baidu/mobads/InterstitialAdListener;Lcom/baidu/mobads/InterstitialAd;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/baidu/mobads/y;->a:Lcom/baidu/mobads/InterstitialAdListener;

    iput-object p2, p0, Lcom/baidu/mobads/y;->b:Lcom/baidu/mobads/InterstitialAd;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 6

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "method"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "AdView.setInterstitialListener handleMessage"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v2}, Lcom/baidu/mobads/b/e;->a([Ljava/lang/Object;)I

    const-string v2, "onInterstitialPreloadEnd"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/baidu/mobads/y;->b:Lcom/baidu/mobads/InterstitialAd;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/baidu/mobads/InterstitialAd;->setAdReady(Z)V

    iget-object v0, p0, Lcom/baidu/mobads/y;->a:Lcom/baidu/mobads/InterstitialAdListener;

    invoke-interface {v0}, Lcom/baidu/mobads/InterstitialAdListener;->onAdReady()V

    :cond_0
    :goto_0
    return v5

    :cond_1
    const-string v2, "onAdDismissed"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v0, p0, Lcom/baidu/mobads/y;->b:Lcom/baidu/mobads/InterstitialAd;

    invoke-virtual {v0}, Lcom/baidu/mobads/InterstitialAd;->removeAd()V

    iget-object v0, p0, Lcom/baidu/mobads/y;->a:Lcom/baidu/mobads/InterstitialAdListener;

    invoke-interface {v0}, Lcom/baidu/mobads/InterstitialAdListener;->onAdDismissed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/baidu/mobads/b/e;->b(Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_2
    :try_start_1
    const-string v2, "onAdClick"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v0, p0, Lcom/baidu/mobads/y;->a:Lcom/baidu/mobads/InterstitialAdListener;

    iget-object v1, p0, Lcom/baidu/mobads/y;->b:Lcom/baidu/mobads/InterstitialAd;

    invoke-interface {v0, v1}, Lcom/baidu/mobads/InterstitialAdListener;->onAdClick(Lcom/baidu/mobads/InterstitialAd;)V

    goto :goto_0

    :cond_3
    const-string v2, "onAdFailed"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v1, "p_reason"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mobads/y;->a:Lcom/baidu/mobads/InterstitialAdListener;

    invoke-interface {v1, v0}, Lcom/baidu/mobads/InterstitialAdListener;->onAdFailed(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v0, "onInterstitialAdPresent"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/mobads/y;->a:Lcom/baidu/mobads/InterstitialAdListener;

    invoke-interface {v0}, Lcom/baidu/mobads/InterstitialAdListener;->onAdPresent()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
