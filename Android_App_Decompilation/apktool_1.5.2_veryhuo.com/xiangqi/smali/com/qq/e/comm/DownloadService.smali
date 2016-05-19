.class public Lcom/qq/e/comm/DownloadService;
.super Landroid/app/Service;


# static fields
.field public static final V2:Ljava/lang/String; = "2"

.field public static final VERSION_KEY:Ljava/lang/String; = "downloadservice.req.version"


# instance fields
.field private a:Lcom/qq/e/v2/plugininterfaces/ServiceDelegate;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/qq/e/comm/DownloadService;->a:Lcom/qq/e/v2/plugininterfaces/ServiceDelegate;

    if-nez v0, :cond_0

    :try_start_0
    invoke-static {}, Lcom/qq/e/v2/managers/GDTADManager;->getInstance()Lcom/qq/e/v2/managers/GDTADManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/qq/e/comm/DownloadService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/qq/e/v2/managers/GDTADManager;->initWith(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/qq/e/v2/managers/GDTADManager;->getInstance()Lcom/qq/e/v2/managers/GDTADManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qq/e/v2/managers/GDTADManager;->getPM()Lcom/qq/e/v2/managers/plugin/PM;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qq/e/v2/managers/plugin/PM;->getServiceDelegateFactory()Lcom/qq/e/v2/plugininterfaces/ServiceDelegateFactory;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/qq/e/v2/plugininterfaces/ServiceDelegateFactory;->getAPKDownloadServiceDelegate(Landroid/app/Service;)Lcom/qq/e/v2/plugininterfaces/ServiceDelegate;

    move-result-object v0

    iput-object v0, p0, Lcom/qq/e/comm/DownloadService;->a:Lcom/qq/e/v2/plugininterfaces/ServiceDelegate;

    iget-object v0, p0, Lcom/qq/e/comm/DownloadService;->a:Lcom/qq/e/v2/plugininterfaces/ServiceDelegate;

    invoke-interface {v0}, Lcom/qq/e/v2/plugininterfaces/ServiceDelegate;->onCreate()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/qq/e/comm/DownloadService;->a:Lcom/qq/e/v2/plugininterfaces/ServiceDelegate;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    :try_start_1
    const-string v0, "Init GDTADManager fail in DownloadService.oncreate"

    invoke-static {v0}, Lcom/qq/e/v2/util/GDTLogger;->report(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/qq/e/comm/DownloadService;->a:Lcom/qq/e/v2/plugininterfaces/ServiceDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qq/e/comm/DownloadService;->a:Lcom/qq/e/v2/plugininterfaces/ServiceDelegate;

    invoke-interface {v0, p1}, Lcom/qq/e/v2/plugininterfaces/ServiceDelegate;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    iget-object v0, p0, Lcom/qq/e/comm/DownloadService;->a:Lcom/qq/e/v2/plugininterfaces/ServiceDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qq/e/comm/DownloadService;->a:Lcom/qq/e/v2/plugininterfaces/ServiceDelegate;

    invoke-interface {v0, p1}, Lcom/qq/e/v2/plugininterfaces/ServiceDelegate;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method public onCreate()V
    .locals 0

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/qq/e/comm/DownloadService;->a:Lcom/qq/e/v2/plugininterfaces/ServiceDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qq/e/comm/DownloadService;->a:Lcom/qq/e/v2/plugininterfaces/ServiceDelegate;

    invoke-interface {v0}, Lcom/qq/e/v2/plugininterfaces/ServiceDelegate;->onDestroy()V

    :cond_0
    return-void
.end method

.method public onLowMemory()V
    .locals 1

    iget-object v0, p0, Lcom/qq/e/comm/DownloadService;->a:Lcom/qq/e/v2/plugininterfaces/ServiceDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qq/e/comm/DownloadService;->a:Lcom/qq/e/v2/plugininterfaces/ServiceDelegate;

    invoke-interface {v0}, Lcom/qq/e/v2/plugininterfaces/ServiceDelegate;->onLowMemory()V

    :cond_0
    return-void
.end method

.method public onRebind(Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/qq/e/comm/DownloadService;->a:Lcom/qq/e/v2/plugininterfaces/ServiceDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qq/e/comm/DownloadService;->a:Lcom/qq/e/v2/plugininterfaces/ServiceDelegate;

    invoke-interface {v0, p1}, Lcom/qq/e/v2/plugininterfaces/ServiceDelegate;->onRebind(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4

    const/4 v0, 0x2

    if-nez p1, :cond_0

    invoke-virtual {p0, p3}, Lcom/qq/e/comm/DownloadService;->stopSelf(I)V

    :goto_0
    return v0

    :cond_0
    const-string v1, "downloadservice.req.version"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Download Service with Request version:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/qq/e/v2/util/GDTLogger;->d(Ljava/lang/String;)V

    const-string v2, "2"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "GDT_APPID"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qq/e/v2/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0, v1}, Lcom/qq/e/comm/DownloadService;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/qq/e/comm/DownloadService;->a:Lcom/qq/e/v2/plugininterfaces/ServiceDelegate;

    invoke-interface {v0, p1, p2, p3}, Lcom/qq/e/v2/plugininterfaces/ServiceDelegate;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    goto :goto_0

    :cond_1
    const-string v1, "Failto Start new download Service"

    invoke-static {v1}, Lcom/qq/e/v2/util/GDTLogger;->w(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v1, "While this app is invoking old download service"

    invoke-static {v1}, Lcom/qq/e/v2/util/GDTLogger;->report(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lcom/qq/e/comm/DownloadService;->stopSelf(I)V

    goto :goto_0
.end method

.method public onTaskRemoved(Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/qq/e/comm/DownloadService;->a:Lcom/qq/e/v2/plugininterfaces/ServiceDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qq/e/comm/DownloadService;->a:Lcom/qq/e/v2/plugininterfaces/ServiceDelegate;

    invoke-interface {v0, p1}, Lcom/qq/e/v2/plugininterfaces/ServiceDelegate;->onTaskRemoved(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 1

    iget-object v0, p0, Lcom/qq/e/comm/DownloadService;->a:Lcom/qq/e/v2/plugininterfaces/ServiceDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qq/e/comm/DownloadService;->a:Lcom/qq/e/v2/plugininterfaces/ServiceDelegate;

    invoke-interface {v0, p1}, Lcom/qq/e/v2/plugininterfaces/ServiceDelegate;->onTrimMemory(I)V

    :cond_0
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1

    iget-object v0, p0, Lcom/qq/e/comm/DownloadService;->a:Lcom/qq/e/v2/plugininterfaces/ServiceDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qq/e/comm/DownloadService;->a:Lcom/qq/e/v2/plugininterfaces/ServiceDelegate;

    invoke-interface {v0, p1}, Lcom/qq/e/v2/plugininterfaces/ServiceDelegate;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    goto :goto_0
.end method
