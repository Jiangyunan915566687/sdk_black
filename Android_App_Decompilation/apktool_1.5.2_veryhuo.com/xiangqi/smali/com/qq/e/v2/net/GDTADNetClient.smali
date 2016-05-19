.class public Lcom/qq/e/v2/net/GDTADNetClient;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qq/e/v2/net/GDTADNetClient$1;,
        Lcom/qq/e/v2/net/GDTADNetClient$a;,
        Lcom/qq/e/v2/net/GDTADNetClient$Priority;
    }
.end annotation


# static fields
.field private static a:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Lcom/qq/e/v2/net/GDTADNetClient;

.field private static final d:Lorg/apache/http/client/HttpClient;


# instance fields
.field private c:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/16 v3, 0x7530

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/qq/e/v2/net/GDTADNetClient;->a:Ljava/lang/ThreadLocal;

    new-instance v0, Lcom/qq/e/v2/net/GDTADNetClient;

    invoke-direct {v0}, Lcom/qq/e/v2/net/GDTADNetClient;-><init>()V

    sput-object v0, Lcom/qq/e/v2/net/GDTADNetClient;->b:Lcom/qq/e/v2/net/GDTADNetClient;

    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    const-wide/16 v1, 0x7530

    invoke-static {v0, v1, v2}, Lorg/apache/http/conn/params/ConnManagerParams;->setTimeout(Lorg/apache/http/params/HttpParams;J)V

    invoke-static {v0, v3}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    invoke-static {v0, v3}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    new-instance v1, Lorg/apache/http/conn/params/ConnPerRouteBean;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lorg/apache/http/conn/params/ConnPerRouteBean;-><init>(I)V

    invoke-static {v0, v1}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxConnectionsPerRoute(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/params/ConnPerRoute;)V

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxTotalConnections(Lorg/apache/http/params/HttpParams;I)V

    sget-object v1, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GDTADNetClient-["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "http.agent"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    new-instance v1, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string v3, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v4

    const/16 v5, 0x50

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    new-instance v2, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v2, v0, v1}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1, v2, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    sput-object v1, Lcom/qq/e/v2/net/GDTADNetClient;->d:Lorg/apache/http/client/HttpClient;

    return-void
.end method

.method private constructor <init>()V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v6, Ljava/util/concurrent/PriorityBlockingQueue;

    const/16 v0, 0xf

    invoke-direct {v6, v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>(I)V

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x5

    const/16 v2, 0xa

    const-wide/16 v3, 0xb4

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Lcom/qq/e/v2/net/GDTADNetClient;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method static synthetic b()Ljava/lang/ThreadLocal;
    .locals 1

    sget-object v0, Lcom/qq/e/v2/net/GDTADNetClient;->a:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static synthetic c()Lorg/apache/http/client/HttpClient;
    .locals 1

    sget-object v0, Lcom/qq/e/v2/net/GDTADNetClient;->d:Lorg/apache/http/client/HttpClient;

    return-object v0
.end method

.method private d()Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/qq/e/v2/net/GDTADNetClient;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v2

    invoke-static {}, Lcom/qq/e/v2/managers/GDTADManager;->getInstance()Lcom/qq/e/v2/managers/GDTADManager;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/qq/e/v2/managers/GDTADManager;->getInstance()Lcom/qq/e/v2/managers/GDTADManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qq/e/v2/managers/GDTADManager;->getSM()Lcom/qq/e/v2/managers/setting/SM;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/qq/e/v2/managers/GDTADManager;->getInstance()Lcom/qq/e/v2/managers/GDTADManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qq/e/v2/managers/GDTADManager;->getSM()Lcom/qq/e/v2/managers/setting/SM;

    move-result-object v1

    const-string v3, "max_adNet_queue_size"

    invoke-virtual {v1, v3}, Lcom/qq/e/v2/managers/setting/SM;->getInteger(Ljava/lang/String;)I

    move-result v1

    :goto_0
    const/16 v3, 0xa

    if-le v1, v3, :cond_1

    :goto_1
    if-le v2, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    const/16 v1, 0x14

    goto :goto_1

    :cond_2
    move v1, v0

    goto :goto_0
.end method

.method public static final getInstance()Lcom/qq/e/v2/net/GDTADNetClient;
    .locals 1

    sget-object v0, Lcom/qq/e/v2/net/GDTADNetClient;->b:Lcom/qq/e/v2/net/GDTADNetClient;

    return-object v0
.end method


# virtual methods
.method protected final a()I
    .locals 1

    iget-object v0, p0, Lcom/qq/e/v2/net/GDTADNetClient;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v0

    return v0
.end method

.method public excute(Lcom/qq/e/v2/net/GDTADNetRequest;Lcom/qq/e/v2/net/GDTADNetClient$Priority;)V
    .locals 2

    invoke-direct {p0}, Lcom/qq/e/v2/net/GDTADNetClient;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "GDT AD Network Queue is full,check network state"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/qq/e/v2/net/GDTADNetRequest;->onError(Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/qq/e/v2/net/GDTADNetClient;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/qq/e/v2/net/GDTADNetClient$a;

    invoke-direct {v1, p2, p1}, Lcom/qq/e/v2/net/GDTADNetClient$a;-><init>(Lcom/qq/e/v2/net/GDTADNetClient$Priority;Lcom/qq/e/v2/net/GDTADNetRequest;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public excute(Lcom/qq/e/v2/net/GDTADNetRequest;Lcom/qq/e/v2/net/GDTADNetClient$Priority;I)V
    .locals 3

    const/4 v0, 0x5

    if-gtz p3, :cond_3

    const/4 v1, 0x1

    :goto_0
    if-le v1, v0, :cond_2

    :goto_1
    invoke-direct {p0}, Lcom/qq/e/v2/net/GDTADNetClient;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "GDT AD Network Queue is full,check network state"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/qq/e/v2/net/GDTADNetRequest;->onError(Ljava/lang/Exception;)V

    :cond_0
    :goto_2
    return-void

    :cond_1
    iget-object v1, p0, Lcom/qq/e/v2/net/GDTADNetClient;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v2, Lcom/qq/e/v2/net/GDTADNetClient$a;

    invoke-direct {v2, p2, p1, v0}, Lcom/qq/e/v2/net/GDTADNetClient$a;-><init>(Lcom/qq/e/v2/net/GDTADNetClient$Priority;Lcom/qq/e/v2/net/GDTADNetRequest;I)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    move v1, p3

    goto :goto_0
.end method

.method public excuteErrorReportTask(Lcom/qq/e/v2/net/GDTADNetRequest;)V
    .locals 2

    invoke-direct {p0}, Lcom/qq/e/v2/net/GDTADNetClient;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/qq/e/v2/net/GDTADNetClient;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    new-instance v0, Lcom/qq/e/v2/net/GDTADNetClient$a;

    sget-object v1, Lcom/qq/e/v2/net/GDTADNetClient$Priority;->Low:Lcom/qq/e/v2/net/GDTADNetClient$Priority;

    invoke-direct {v0, v1, p1}, Lcom/qq/e/v2/net/GDTADNetClient$a;-><init>(Lcom/qq/e/v2/net/GDTADNetClient$Priority;Lcom/qq/e/v2/net/GDTADNetRequest;)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/qq/e/v2/net/GDTADNetClient$a;->a:Z

    iget-object v1, p0, Lcom/qq/e/v2/net/GDTADNetClient;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
