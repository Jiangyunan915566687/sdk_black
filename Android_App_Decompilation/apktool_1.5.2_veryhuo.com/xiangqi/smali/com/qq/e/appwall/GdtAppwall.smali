.class public Lcom/qq/e/appwall/GdtAppwall;
.super Ljava/lang/Object;


# static fields
.field private static b:Lcom/qq/e/appwall/GdtAppwall;

.field private static c:Landroid/content/Context;

.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/String;

.field private static f:Z


# instance fields
.field private a:Lcom/qq/e/v2/plugininterfaces/AppWallADViewInterface;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/qq/e/comm/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Fail to init AppWall, please check that all items are added correctly in AndroidManifest.xml"

    invoke-static {v0}, Lcom/qq/e/v2/util/GDTLogger;->e(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p2}, Lcom/qq/e/v2/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p3}, Lcom/qq/e/v2/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p1, :cond_2

    :cond_1
    const-string v0, "AppWall Contructor paras error,appid=%s,posId=%s,context=%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    const/4 v2, 0x2

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/e/v2/util/GDTLogger;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/qq/e/v2/managers/GDTADManager;->getInstance()Lcom/qq/e/v2/managers/GDTADManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/qq/e/v2/managers/GDTADManager;->initWith(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :try_start_0
    invoke-static {}, Lcom/qq/e/v2/managers/GDTADManager;->getInstance()Lcom/qq/e/v2/managers/GDTADManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qq/e/v2/managers/GDTADManager;->getPM()Lcom/qq/e/v2/managers/plugin/PM;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qq/e/v2/managers/plugin/PM;->getAppWallViewFactory()Lcom/qq/e/v2/plugininterfaces/AppWallViewFactory;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/qq/e/v2/plugininterfaces/AppWallViewFactory;->getAppWallView(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Lcom/qq/e/v2/plugininterfaces/AppWallADViewInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/qq/e/appwall/GdtAppwall;->a:Lcom/qq/e/v2/plugininterfaces/AppWallADViewInterface;
    :try_end_0
    .catch Lcom/qq/e/v2/managers/plugin/a; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Fail to init AppWall plugin"

    invoke-static {v1, v0}, Lcom/qq/e/v2/util/GDTLogger;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_3
    const-string v0, "Fail to init GDTADManager"

    invoke-static {v0}, Lcom/qq/e/v2/util/GDTLogger;->report(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/qq/e/appwall/GdtAppwall;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sput-object p0, Lcom/qq/e/appwall/GdtAppwall;->c:Landroid/content/Context;

    sput-object p1, Lcom/qq/e/appwall/GdtAppwall;->d:Ljava/lang/String;

    sput-object p2, Lcom/qq/e/appwall/GdtAppwall;->e:Ljava/lang/String;

    sput-boolean p3, Lcom/qq/e/appwall/GdtAppwall;->f:Z

    return-void
.end method

.method public static showAppwall()V
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lcom/qq/e/appwall/GdtAppwall;->b:Lcom/qq/e/appwall/GdtAppwall;

    if-nez v0, :cond_0

    new-instance v0, Lcom/qq/e/appwall/GdtAppwall;

    sget-object v1, Lcom/qq/e/appwall/GdtAppwall;->c:Landroid/content/Context;

    sget-object v2, Lcom/qq/e/appwall/GdtAppwall;->d:Ljava/lang/String;

    sget-object v3, Lcom/qq/e/appwall/GdtAppwall;->e:Ljava/lang/String;

    sget-boolean v4, Lcom/qq/e/appwall/GdtAppwall;->f:Z

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/qq/e/appwall/GdtAppwall;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Lcom/qq/e/appwall/GdtAppwall;->b:Lcom/qq/e/appwall/GdtAppwall;

    :cond_0
    sget-object v0, Lcom/qq/e/appwall/GdtAppwall;->b:Lcom/qq/e/appwall/GdtAppwall;

    invoke-virtual {v0}, Lcom/qq/e/appwall/GdtAppwall;->doShowAppWall()V

    return-void
.end method


# virtual methods
.method public doShowAppWall()V
    .locals 1

    iget-object v0, p0, Lcom/qq/e/appwall/GdtAppwall;->a:Lcom/qq/e/v2/plugininterfaces/AppWallADViewInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qq/e/appwall/GdtAppwall;->a:Lcom/qq/e/v2/plugininterfaces/AppWallADViewInterface;

    invoke-interface {v0}, Lcom/qq/e/v2/plugininterfaces/AppWallADViewInterface;->showAppWall()V

    :cond_0
    return-void
.end method
