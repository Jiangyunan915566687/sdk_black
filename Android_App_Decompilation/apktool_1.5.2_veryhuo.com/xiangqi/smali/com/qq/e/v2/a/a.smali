.class public final Lcom/qq/e/v2/a/a;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/qq/e/v2/a/a;


# instance fields
.field private volatile b:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/qq/e/v2/a/a;

    invoke-direct {v0}, Lcom/qq/e/v2/a/a;-><init>()V

    sput-object v0, Lcom/qq/e/v2/a/a;->a:Lcom/qq/e/v2/a/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/qq/e/v2/a/a;->b:Ljava/lang/Boolean;

    return-void
.end method

.method public static a()Lcom/qq/e/v2/a/a;
    .locals 1

    sget-object v0, Lcom/qq/e/v2/a/a;->a:Lcom/qq/e/v2/a/a;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;J)V
    .locals 8

    iget-object v0, p0, Lcom/qq/e/v2/a/a;->b:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/qq/e/v2/a/a;->b:Ljava/lang/Boolean;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/qq/e/v2/a/a;->b:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    :try_start_1
    invoke-static {}, Lcom/qq/e/v2/managers/GDTADManager;->getInstance()Lcom/qq/e/v2/managers/GDTADManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qq/e/v2/managers/GDTADManager;->getSM()Lcom/qq/e/v2/managers/setting/SM;

    move-result-object v2

    invoke-static {}, Lcom/qq/e/v2/managers/GDTADManager;->getInstance()Lcom/qq/e/v2/managers/GDTADManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qq/e/v2/managers/GDTADManager;->getPM()Lcom/qq/e/v2/managers/plugin/PM;

    move-result-object v3

    invoke-static {}, Lcom/qq/e/comm/a;->c()Ljava/util/Map;

    move-result-object v0

    const-string v4, "sig"

    invoke-static {}, Lcom/qq/e/comm/a;->d()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "dev"

    invoke-static {}, Lcom/qq/e/comm/a;->e()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "app"

    invoke-static {}, Lcom/qq/e/comm/a;->f()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "c"

    invoke-static {}, Lcom/qq/e/comm/a;->g()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "sdk"

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string v6, "sdkv"

    const-string v7, "4.3"

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "jsv"

    const-string v7, "1.3"

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string v6, "performance"

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_2

    const-string v6, "gdttempdata"

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_2
    const-string v6, "biz"

    invoke-interface {v0, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "sdk_init_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, p2

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/qq/e/v2/util/JsonUtil;->mapToJson(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "RequestInfo="

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/e/v2/util/GDTLogger;->d(Ljava/lang/String;)V

    const-string v0, "http://sdk.e.qq.com/activate"

    invoke-virtual {v2}, Lcom/qq/e/v2/managers/setting/SM;->getSuid()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/qq/e/v2/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v0, "http://sdk.e.qq.com/launch"

    :cond_3
    new-instance v5, Lcom/qq/e/v2/net/GDTSecurityADNetRequest;

    new-instance v6, Lcom/qq/e/v2/a/a$1;

    invoke-direct {v6, p0, v2, v3}, Lcom/qq/e/v2/a/a$1;-><init>(Lcom/qq/e/v2/a/a;Lcom/qq/e/v2/managers/setting/SM;Lcom/qq/e/v2/managers/plugin/PM;)V

    invoke-direct {v5, v0, v4, v6}, Lcom/qq/e/v2/net/GDTSecurityADNetRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/qq/e/v2/net/GDTSecurityADNetRequest$CallBack;)V

    invoke-static {}, Lcom/qq/e/v2/net/GDTADNetClient;->getInstance()Lcom/qq/e/v2/net/GDTADNetClient;

    move-result-object v0

    sget-object v2, Lcom/qq/e/v2/net/GDTADNetClient$Priority;->High:Lcom/qq/e/v2/net/GDTADNetClient$Priority;

    invoke-virtual {v0, v5, v2}, Lcom/qq/e/v2/net/GDTADNetClient;->excute(Lcom/qq/e/v2/net/GDTADNetRequest;Lcom/qq/e/v2/net/GDTADNetClient$Priority;)V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/qq/e/v2/a/a;->b:Ljava/lang/Boolean;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method
