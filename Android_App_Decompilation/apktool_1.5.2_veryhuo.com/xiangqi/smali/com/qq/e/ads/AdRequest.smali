.class public Lcom/qq/e/ads/AdRequest;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private volatile b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/qq/e/ads/AdRequest;->a:Ljava/util/Map;

    const/16 v0, 0x7530

    iput v0, p0, Lcom/qq/e/ads/AdRequest;->d:I

    iget-object v0, p0, Lcom/qq/e/ads/AdRequest;->a:Ljava/util/Map;

    const-string v1, "showCloseBtn"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/qq/e/ads/AdRequest;->setUseRollAnimation(I)V

    return-void
.end method


# virtual methods
.method public getExtConfig()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/qq/e/ads/AdRequest;->b:Ljava/util/Map;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/qq/e/ads/AdRequest;->a:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/qq/e/ads/AdRequest;->b:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, Lcom/qq/e/ads/AdRequest;->b:Ljava/util/Map;

    return-object v0
.end method

.method public getRefresh()I
    .locals 1

    iget v0, p0, Lcom/qq/e/ads/AdRequest;->d:I

    return v0
.end method

.method public getTestAd()Z
    .locals 1

    iget-boolean v0, p0, Lcom/qq/e/ads/AdRequest;->c:Z

    return v0
.end method

.method public getUseRollAnimation(Z)I
    .locals 2

    iget-object v0, p0, Lcom/qq/e/ads/AdRequest;->a:Ljava/util/Map;

    const-string v1, "bannerRollAnimation"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public isShowCloseBtn()Z
    .locals 2

    iget-object v0, p0, Lcom/qq/e/ads/AdRequest;->a:Ljava/util/Map;

    const-string v1, "showCloseBtn"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isTestAd()Z
    .locals 1

    iget-boolean v0, p0, Lcom/qq/e/ads/AdRequest;->c:Z

    return v0
.end method

.method public setRefresh(I)V
    .locals 2

    const/16 v1, 0x78

    const/16 v0, 0x1e

    if-ge p1, v0, :cond_1

    if-eqz p1, :cond_1

    move p1, v0

    :cond_0
    :goto_0
    mul-int/lit16 v0, p1, 0x3e8

    iput v0, p0, Lcom/qq/e/ads/AdRequest;->d:I

    return-void

    :cond_1
    if-le p1, v1, :cond_0

    move p1, v1

    goto :goto_0
.end method

.method public setShowCloseBtn(Z)V
    .locals 3

    iget-object v0, p0, Lcom/qq/e/ads/AdRequest;->a:Ljava/util/Map;

    const-string v1, "showCloseBtn"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setTestAd(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/qq/e/ads/AdRequest;->c:Z

    return-void
.end method

.method public setUseRollAnimation(I)V
    .locals 3

    iget-object v0, p0, Lcom/qq/e/ads/AdRequest;->a:Ljava/util/Map;

    const-string v1, "bannerRollAnimation"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
