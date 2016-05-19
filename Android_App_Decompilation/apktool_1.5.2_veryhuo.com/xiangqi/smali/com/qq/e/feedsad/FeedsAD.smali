.class public Lcom/qq/e/feedsad/FeedsAD;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qq/e/feedsad/FeedsAD$FeedsADListener;
    }
.end annotation


# static fields
.field public static final ERROR_INTERNAL:I = 0x1

.field public static final ERROR_LOAD_AD_FAILED:I = 0x2

.field public static final ERROR_PERMISSION_UNGRATIFIED:I = 0x3


# instance fields
.field private a:Lcom/qq/e/feedsad/FeedsADDelegate;

.field private b:Lcom/qq/e/feedsad/FeedsADSetting;

.field private c:Lcom/qq/e/feedsad/FeedsAD$FeedsADListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/qq/e/feedsad/FeedsADSetting;Lcom/qq/e/feedsad/FeedsAD$FeedsADListener;)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/qq/e/feedsad/FeedsAD;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/qq/e/feedsad/FeedsADSetting;Lcom/qq/e/feedsad/FeedsAD$FeedsADListener;Lcom/qq/e/feedsad/CustomFeedsViewBuilder;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/qq/e/feedsad/FeedsADSetting;Lcom/qq/e/feedsad/FeedsAD$FeedsADListener;Lcom/qq/e/feedsad/CustomFeedsViewBuilder;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lcom/qq/e/v2/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p3}, Lcom/qq/e/v2/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "AppId and positionID can not be empty while init FeedsAD"

    invoke-static {v0}, Lcom/qq/e/v2/util/GDTLogger;->e(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    if-nez p1, :cond_2

    const-string v0, "Activity can not be null while init FeedsAD"

    invoke-static {v0}, Lcom/qq/e/v2/util/GDTLogger;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    if-nez p5, :cond_3

    const-string v0, "Listener should not be null while init FeedsAD"

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
    iput-object p5, p0, Lcom/qq/e/feedsad/FeedsAD;->c:Lcom/qq/e/feedsad/FeedsAD$FeedsADListener;

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

    invoke-virtual {v0}, Lcom/qq/e/v2/managers/plugin/PM;->getFeedsAdViewFactory()Lcom/qq/e/v2/plugininterfaces/FeedsAdViewFactory;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/qq/e/v2/plugininterfaces/FeedsAdViewFactory;->createNewFeedsADDelegate(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/qq/e/feedsad/FeedsADSetting;Lcom/qq/e/feedsad/FeedsAD$FeedsADListener;Lcom/qq/e/feedsad/CustomFeedsViewBuilder;)Lcom/qq/e/feedsad/FeedsADDelegate;

    move-result-object v0

    iput-object v0, p0, Lcom/qq/e/feedsad/FeedsAD;->a:Lcom/qq/e/feedsad/FeedsADDelegate;
    :try_end_0
    .catch Lcom/qq/e/v2/managers/plugin/a; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Fail to init FeedsAD"

    invoke-static {v1, v0}, Lcom/qq/e/v2/util/GDTLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_5
    const-string v0, "GDTADManager init fail while init FeedsAD"

    invoke-static {v0}, Lcom/qq/e/v2/util/GDTLogger;->e(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public getSetting()Lcom/qq/e/feedsad/FeedsADSetting;
    .locals 1

    iget-object v0, p0, Lcom/qq/e/feedsad/FeedsAD;->b:Lcom/qq/e/feedsad/FeedsADSetting;

    if-nez v0, :cond_0

    new-instance v0, Lcom/qq/e/feedsad/FeedsADSetting;

    invoke-direct {v0}, Lcom/qq/e/feedsad/FeedsADSetting;-><init>()V

    iput-object v0, p0, Lcom/qq/e/feedsad/FeedsAD;->b:Lcom/qq/e/feedsad/FeedsADSetting;

    :cond_0
    iget-object v0, p0, Lcom/qq/e/feedsad/FeedsAD;->b:Lcom/qq/e/feedsad/FeedsADSetting;

    return-object v0
.end method

.method public loadAD(I)V
    .locals 2

    iget-object v0, p0, Lcom/qq/e/feedsad/FeedsAD;->a:Lcom/qq/e/feedsad/FeedsADDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qq/e/feedsad/FeedsAD;->a:Lcom/qq/e/feedsad/FeedsADDelegate;

    invoke-interface {v0, p1}, Lcom/qq/e/feedsad/FeedsADDelegate;->loadAD(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/qq/e/feedsad/FeedsAD;->c:Lcom/qq/e/feedsad/FeedsAD$FeedsADListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/qq/e/feedsad/FeedsAD;->c:Lcom/qq/e/feedsad/FeedsAD$FeedsADListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/qq/e/feedsad/FeedsAD$FeedsADListener;->onFeedsADFail(I)V

    :cond_1
    const-string v0, "FeedsAD not initialized ,see logs"

    invoke-static {v0}, Lcom/qq/e/v2/util/GDTLogger;->e(Ljava/lang/String;)V

    goto :goto_0
.end method
