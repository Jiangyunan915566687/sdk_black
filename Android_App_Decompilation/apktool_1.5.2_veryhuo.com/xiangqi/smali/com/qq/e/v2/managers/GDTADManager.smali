.class public Lcom/qq/e/v2/managers/GDTADManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qq/e/v2/managers/GDTADManager$a;
    }
.end annotation


# instance fields
.field private volatile a:Ljava/lang/Boolean;

.field private volatile b:Landroid/content/Context;

.field private volatile c:Lcom/qq/e/v2/managers/setting/SM;

.field private volatile d:Lcom/qq/e/v2/managers/plugin/PM;

.field private volatile e:Lcom/qq/e/v2/managers/status/APPStatus;

.field private volatile f:Lcom/qq/e/v2/managers/status/DeviceStatus;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/qq/e/v2/managers/GDTADManager;->a:Ljava/lang/Boolean;

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lcom/qq/e/v2/managers/GDTADManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/qq/e/v2/managers/GDTADManager;
    .locals 1

    invoke-static {}, Lcom/qq/e/v2/managers/GDTADManager$a;->a()Lcom/qq/e/v2/managers/GDTADManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAppContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/qq/e/v2/managers/GDTADManager;->b:Landroid/content/Context;

    return-object v0
.end method

.method public getAppStatus()Lcom/qq/e/v2/managers/status/APPStatus;
    .locals 1

    iget-object v0, p0, Lcom/qq/e/v2/managers/GDTADManager;->e:Lcom/qq/e/v2/managers/status/APPStatus;

    return-object v0
.end method

.method public getDeviceStatus()Lcom/qq/e/v2/managers/status/DeviceStatus;
    .locals 1

    iget-object v0, p0, Lcom/qq/e/v2/managers/GDTADManager;->f:Lcom/qq/e/v2/managers/status/DeviceStatus;

    return-object v0
.end method

.method public getPM()Lcom/qq/e/v2/managers/plugin/PM;
    .locals 1

    iget-object v0, p0, Lcom/qq/e/v2/managers/GDTADManager;->d:Lcom/qq/e/v2/managers/plugin/PM;

    return-object v0
.end method

.method public getSM()Lcom/qq/e/v2/managers/setting/SM;
    .locals 1

    iget-object v0, p0, Lcom/qq/e/v2/managers/GDTADManager;->c:Lcom/qq/e/v2/managers/setting/SM;

    return-object v0
.end method

.method public declared-synchronized initWith(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 9

    const/4 v1, 0x0

    const/4 v0, 0x1

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/qq/e/v2/managers/GDTADManager;->a:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    if-eqz p1, :cond_1

    :try_start_1
    invoke-static {p2}, Lcom/qq/e/v2/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const-string v0, "should not initialize admanager with null activity or empty appId"

    invoke-static {v0}, Lcom/qq/e/v2/util/GDTLogger;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    goto :goto_0

    :cond_2
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "TimeStampBeforeInitAdManager:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/qq/e/v2/util/GDTLogger;->d(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    iput-object v6, p0, Lcom/qq/e/v2/managers/GDTADManager;->b:Landroid/content/Context;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "TimeStamp_before_init_SM:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/qq/e/v2/util/GDTLogger;->d(Ljava/lang/String;)V

    new-instance v6, Lcom/qq/e/v2/managers/setting/SM;

    iget-object v7, p0, Lcom/qq/e/v2/managers/GDTADManager;->b:Landroid/content/Context;

    invoke-direct {v6, v7}, Lcom/qq/e/v2/managers/setting/SM;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/qq/e/v2/managers/GDTADManager;->c:Lcom/qq/e/v2/managers/setting/SM;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "TimeStamp_after_init_SM:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/qq/e/v2/util/GDTLogger;->d(Ljava/lang/String;)V

    new-instance v6, Lcom/qq/e/v2/managers/plugin/PM;

    iget-object v7, p0, Lcom/qq/e/v2/managers/GDTADManager;->b:Landroid/content/Context;

    invoke-direct {v6, v7}, Lcom/qq/e/v2/managers/plugin/PM;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/qq/e/v2/managers/GDTADManager;->d:Lcom/qq/e/v2/managers/plugin/PM;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "TimeStamp_after_init_PM:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/qq/e/v2/util/GDTLogger;->d(Ljava/lang/String;)V

    new-instance v6, Lcom/qq/e/v2/managers/status/APPStatus;

    iget-object v7, p0, Lcom/qq/e/v2/managers/GDTADManager;->b:Landroid/content/Context;

    invoke-direct {v6, p2, v7}, Lcom/qq/e/v2/managers/status/APPStatus;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    iput-object v6, p0, Lcom/qq/e/v2/managers/GDTADManager;->e:Lcom/qq/e/v2/managers/status/APPStatus;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "TimeStamp_after_init_APPStatus:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/qq/e/v2/util/GDTLogger;->d(Ljava/lang/String;)V

    new-instance v6, Lcom/qq/e/v2/managers/status/DeviceStatus;

    invoke-direct {v6, p1}, Lcom/qq/e/v2/managers/status/DeviceStatus;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/qq/e/v2/managers/GDTADManager;->f:Lcom/qq/e/v2/managers/status/DeviceStatus;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "TimeStamp_before_send_active"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/qq/e/v2/util/GDTLogger;->d(Ljava/lang/String;)V

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v7, 0x7

    if-le v6, v7, :cond_3

    invoke-static {}, Lcom/qq/e/v2/a/a;->a()Lcom/qq/e/v2/a/a;

    move-result-object v6

    iget-object v7, p0, Lcom/qq/e/v2/managers/GDTADManager;->b:Landroid/content/Context;

    invoke-virtual {v6, v7, v4, v5}, Lcom/qq/e/v2/a/a;->a(Landroid/content/Context;J)V

    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "TimeStamp_after_send_active:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/qq/e/v2/util/GDTLogger;->d(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Total init Time="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v2, v5, v2

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/qq/e/v2/util/GDTLogger;->d(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/qq/e/v2/managers/GDTADManager;->a:Ljava/lang/Boolean;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    const-string v2, "ADManager init error"

    invoke-static {v2, v0}, Lcom/qq/e/v2/util/GDTLogger;->report(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v0, v1

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
