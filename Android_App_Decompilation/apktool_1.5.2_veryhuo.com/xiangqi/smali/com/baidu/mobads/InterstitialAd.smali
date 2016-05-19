.class public final Lcom/baidu/mobads/InterstitialAd;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/baidu/mobads/AdView;

.field private b:Z

.field private c:Landroid/content/Context;

.field private d:Lcom/baidu/mobads/AdSize;

.field private e:Ljava/lang/String;

.field private f:Lcom/baidu/mobads/InterstitialAdListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    sget-object v0, Lcom/baidu/mobads/AdSize;->InterstitialGame:Lcom/baidu/mobads/AdSize;

    const-string v1, ""

    invoke-direct {p0, p1, v0, v1}, Lcom/baidu/mobads/InterstitialAd;-><init>(Landroid/content/Context;Lcom/baidu/mobads/AdSize;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/baidu/mobads/AdSize;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/mobads/InterstitialAd;->b:Z

    new-instance v0, Lcom/baidu/mobads/z;

    invoke-direct {v0, p0}, Lcom/baidu/mobads/z;-><init>(Lcom/baidu/mobads/InterstitialAd;)V

    iput-object v0, p0, Lcom/baidu/mobads/InterstitialAd;->f:Lcom/baidu/mobads/InterstitialAdListener;

    iput-object p1, p0, Lcom/baidu/mobads/InterstitialAd;->c:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/baidu/mobads/AdSize;->getValue()I

    move-result v0

    const/4 v1, 0x6

    if-lt v0, v1, :cond_0

    invoke-virtual {p2}, Lcom/baidu/mobads/AdSize;->getValue()I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_1

    :cond_0
    const-string v0, "Please use the right AdSize when new InterstitialAd"

    invoke-static {v0}, Lcom/baidu/mobads/b/e;->b(Ljava/lang/String;)I

    sget-object v0, Lcom/baidu/mobads/AdSize;->InterstitialGame:Lcom/baidu/mobads/AdSize;

    iput-object v0, p0, Lcom/baidu/mobads/InterstitialAd;->d:Lcom/baidu/mobads/AdSize;

    :goto_0
    iput-object p3, p0, Lcom/baidu/mobads/InterstitialAd;->e:Ljava/lang/String;

    return-void

    :cond_1
    iput-object p2, p0, Lcom/baidu/mobads/InterstitialAd;->d:Lcom/baidu/mobads/AdSize;

    goto :goto_0
.end method

.method public static setAppSec(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/baidu/mobads/AdView;->setAppSec(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static setAppSid(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/baidu/mobads/AdView;->setAppSid(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected getAdView()Lcom/baidu/mobads/AdView;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mobads/InterstitialAd;->a:Lcom/baidu/mobads/AdView;

    return-object v0
.end method

.method public isAdReady()Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/mobads/InterstitialAd;->b:Z

    return v0
.end method

.method public loadAd()V
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/baidu/mobads/InterstitialAd;->b:Z

    iget-object v0, p0, Lcom/baidu/mobads/InterstitialAd;->a:Lcom/baidu/mobads/AdView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/mobads/InterstitialAd;->a:Lcom/baidu/mobads/AdView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/mobads/AdView;->prepareForInterstitial(Z)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/baidu/mobads/AdView;

    iget-object v1, p0, Lcom/baidu/mobads/InterstitialAd;->c:Landroid/content/Context;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/baidu/mobads/InterstitialAd;->d:Lcom/baidu/mobads/AdSize;

    iget-object v4, p0, Lcom/baidu/mobads/InterstitialAd;->e:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/baidu/mobads/AdView;-><init>(Landroid/content/Context;ZLcom/baidu/mobads/AdSize;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/baidu/mobads/InterstitialAd;->a:Lcom/baidu/mobads/AdView;

    iget-object v0, p0, Lcom/baidu/mobads/InterstitialAd;->a:Lcom/baidu/mobads/AdView;

    iget-object v1, p0, Lcom/baidu/mobads/InterstitialAd;->f:Lcom/baidu/mobads/InterstitialAdListener;

    invoke-virtual {v0, v1, p0}, Lcom/baidu/mobads/AdView;->setInterstialListener(Lcom/baidu/mobads/InterstitialAdListener;Lcom/baidu/mobads/InterstitialAd;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Interstitial.loadAd"

    invoke-static {v1, v0}, Lcom/baidu/mobads/b/e;->b(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected removeAd()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/baidu/mobads/InterstitialAd;->a:Lcom/baidu/mobads/AdView;

    invoke-virtual {v0}, Lcom/baidu/mobads/AdView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/baidu/mobads/InterstitialAd;->a:Lcom/baidu/mobads/AdView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Interstitial.removeAd"

    invoke-static {v1, v0}, Lcom/baidu/mobads/b/e;->b(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected setAdReady(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/baidu/mobads/InterstitialAd;->b:Z

    return-void
.end method

.method public setListener(Lcom/baidu/mobads/InterstitialAdListener;)V
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/baidu/mobads/InterstitialAd;->f:Lcom/baidu/mobads/InterstitialAdListener;

    return-void
.end method

.method public showAd(Landroid/app/Activity;)V
    .locals 6

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/baidu/mobads/InterstitialAd;->a:Lcom/baidu/mobads/AdView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/baidu/mobads/InterstitialAd;->b:Z

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "InterstitialAd.showAd,but value not ready:adView="

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/baidu/mobads/InterstitialAd;->a:Lcom/baidu/mobads/AdView;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, ";isAdReady="

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/baidu/mobads/InterstitialAd;->b:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/baidu/mobads/b/e;->a([Ljava/lang/Object;)I

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/baidu/mobads/InterstitialAd;->a:Lcom/baidu/mobads/AdView;

    invoke-virtual {v2}, Lcom/baidu/mobads/AdView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_3

    move v2, v1

    :goto_1
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v2, v1, :cond_3

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v3, p0, Lcom/baidu/mobads/InterstitialAd;->a:Lcom/baidu/mobads/AdView;

    invoke-virtual {v3}, Lcom/baidu/mobads/AdView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/baidu/mobads/InterstitialAd;->a:Lcom/baidu/mobads/AdView;

    invoke-virtual {v1}, Lcom/baidu/mobads/AdView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    :cond_3
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/baidu/mobads/InterstitialAd;->a:Lcom/baidu/mobads/AdView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/baidu/mobads/AdView;->prepareForInterstitial(Z)V

    new-instance v2, Landroid/widget/RelativeLayout;

    invoke-direct {v2, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x1

    invoke-direct {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput v1, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/baidu/mobads/InterstitialAd;->a:Lcom/baidu/mobads/AdView;

    invoke-virtual {v2, v1, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-direct {v1, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/mobads/InterstitialAd;->b:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Interstitial.showAd"

    invoke-static {v1, v0}, Lcom/baidu/mobads/b/e;->b(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
