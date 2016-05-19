.class public final Lcom/qq/e/gridappwall/GridAppWall;
.super Ljava/lang/Object;


# static fields
.field public static final ERROR_INTERNAL:I = 0x1

.field public static final ERROR_LOAD_AD_FAILED:I = 0x2

.field public static final ERROR_PERMISSION_UNGRATIFIED:I = 0x3


# instance fields
.field private a:Lcom/qq/e/gridappwall/GridAppWallView;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;Lcom/qq/e/gridappwall/GridAppWallListener;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p3, :cond_0

    const-string v0, "activity is null"

    invoke-static {v0}, Lcom/qq/e/v2/util/GDTLogger;->e(Ljava/lang/String;)V

    invoke-static {p4}, Lcom/qq/e/gridappwall/GridAppWall;->a(Lcom/qq/e/gridappwall/GridAppWallListener;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Lcom/qq/e/v2/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Lcom/qq/e/v2/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const-string v0, "appId or positionId is empty"

    invoke-static {v0}, Lcom/qq/e/v2/util/GDTLogger;->e(Ljava/lang/String;)V

    invoke-static {p4}, Lcom/qq/e/gridappwall/GridAppWall;->a(Lcom/qq/e/gridappwall/GridAppWallListener;)V

    goto :goto_0

    :cond_2
    invoke-static {p3}, Lcom/qq/e/comm/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "check Required Activity and permission in application manifset"

    invoke-static {v0}, Lcom/qq/e/v2/util/GDTLogger;->e(Ljava/lang/String;)V

    invoke-static {p4}, Lcom/qq/e/gridappwall/GridAppWall;->a(Lcom/qq/e/gridappwall/GridAppWallListener;)V

    goto :goto_0

    :cond_3
    :try_start_0
    invoke-static {}, Lcom/qq/e/v2/managers/GDTADManager;->getInstance()Lcom/qq/e/v2/managers/GDTADManager;

    move-result-object v0

    invoke-virtual {p3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/qq/e/v2/managers/GDTADManager;->initWith(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "Fail to Init GDT AD SDK,report logcat info filter by gdt_ad_mob"

    invoke-static {v0}, Lcom/qq/e/v2/util/GDTLogger;->e(Ljava/lang/String;)V

    invoke-static {p4}, Lcom/qq/e/gridappwall/GridAppWall;->a(Lcom/qq/e/gridappwall/GridAppWallListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Fail to init new appwall plugin"

    invoke-static {v1, v0}, Lcom/qq/e/v2/util/GDTLogger;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {p4}, Lcom/qq/e/gridappwall/GridAppWall;->a(Lcom/qq/e/gridappwall/GridAppWallListener;)V

    goto :goto_0

    :cond_4
    :try_start_1
    invoke-static {}, Lcom/qq/e/v2/managers/GDTADManager;->getInstance()Lcom/qq/e/v2/managers/GDTADManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qq/e/v2/managers/GDTADManager;->getPM()Lcom/qq/e/v2/managers/plugin/PM;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qq/e/v2/managers/plugin/PM;->getGridAdViewFactory()Lcom/qq/e/v2/plugininterfaces/GridAdViewFactory;

    move-result-object v0

    invoke-interface {v0, p3, p1, p2}, Lcom/qq/e/v2/plugininterfaces/GridAdViewFactory;->createGridAppWallView(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Lcom/qq/e/gridappwall/GridAppWallView;

    move-result-object v0

    iput-object v0, p0, Lcom/qq/e/gridappwall/GridAppWall;->a:Lcom/qq/e/gridappwall/GridAppWallView;

    iget-object v0, p0, Lcom/qq/e/gridappwall/GridAppWall;->a:Lcom/qq/e/gridappwall/GridAppWallView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/qq/e/gridappwall/GridAppWall;->a:Lcom/qq/e/gridappwall/GridAppWallView;

    invoke-interface {v0, p4}, Lcom/qq/e/gridappwall/GridAppWallView;->setAdListener(Lcom/qq/e/gridappwall/GridAppWallListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "Unknown Exception"

    invoke-static {v1, v0}, Lcom/qq/e/v2/util/GDTLogger;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {p4}, Lcom/qq/e/gridappwall/GridAppWall;->a(Lcom/qq/e/gridappwall/GridAppWallListener;)V

    goto :goto_0

    :cond_5
    :try_start_2
    const-string v0, "Fail to INIT GDT SDK"

    invoke-static {v0}, Lcom/qq/e/v2/util/GDTLogger;->e(Ljava/lang/String;)V

    invoke-static {p4}, Lcom/qq/e/gridappwall/GridAppWall;->a(Lcom/qq/e/gridappwall/GridAppWallListener;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0
.end method

.method private static a(Lcom/qq/e/gridappwall/GridAppWallListener;)V
    .locals 1

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/qq/e/gridappwall/GridAppWallListener;->onAdFailed(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final show()V
    .locals 1

    iget-object v0, p0, Lcom/qq/e/gridappwall/GridAppWall;->a:Lcom/qq/e/gridappwall/GridAppWallView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qq/e/gridappwall/GridAppWall;->a:Lcom/qq/e/gridappwall/GridAppWallView;

    invoke-interface {v0}, Lcom/qq/e/gridappwall/GridAppWallView;->show()V

    :cond_0
    return-void
.end method

.method public final showRelativeTo(II)V
    .locals 1

    iget-object v0, p0, Lcom/qq/e/gridappwall/GridAppWall;->a:Lcom/qq/e/gridappwall/GridAppWallView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qq/e/gridappwall/GridAppWall;->a:Lcom/qq/e/gridappwall/GridAppWallView;

    invoke-interface {v0, p1, p2}, Lcom/qq/e/gridappwall/GridAppWallView;->showRelativeTo(II)V

    :cond_0
    return-void
.end method

.method public final showRelativeTo(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/qq/e/gridappwall/GridAppWall;->a:Lcom/qq/e/gridappwall/GridAppWallView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qq/e/gridappwall/GridAppWall;->a:Lcom/qq/e/gridappwall/GridAppWallView;

    invoke-interface {v0, p1}, Lcom/qq/e/gridappwall/GridAppWallView;->showRelativeTo(Landroid/view/View;)V

    :cond_0
    return-void
.end method
