.class Lcom/baidu/mobads/z;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/mobads/InterstitialAdListener;


# instance fields
.field final synthetic a:Lcom/baidu/mobads/InterstitialAd;


# direct methods
.method constructor <init>(Lcom/baidu/mobads/InterstitialAd;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mobads/z;->a:Lcom/baidu/mobads/InterstitialAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClick(Lcom/baidu/mobads/InterstitialAd;)V
    .locals 1

    const-string v0, "InterstitialAdListener.onAdClick"

    invoke-static {v0}, Lcom/baidu/mobads/b/e;->a(Ljava/lang/String;)I

    return-void
.end method

.method public onAdDismissed()V
    .locals 1

    const-string v0, "InterstitialAdListener.onAdDismissed"

    invoke-static {v0}, Lcom/baidu/mobads/b/e;->a(Ljava/lang/String;)I

    return-void
.end method

.method public onAdFailed(Ljava/lang/String;)V
    .locals 1

    const-string v0, "InterstitialAdListener.reason"

    invoke-static {v0}, Lcom/baidu/mobads/b/e;->a(Ljava/lang/String;)I

    return-void
.end method

.method public onAdPresent()V
    .locals 1

    const-string v0, "InterstitialAdListener.onAdPresent"

    invoke-static {v0}, Lcom/baidu/mobads/b/e;->a(Ljava/lang/String;)I

    return-void
.end method

.method public onAdReady()V
    .locals 1

    const-string v0, "InterstitialAdListener.onAdReady"

    invoke-static {v0}, Lcom/baidu/mobads/b/e;->a(Ljava/lang/String;)I

    return-void
.end method
