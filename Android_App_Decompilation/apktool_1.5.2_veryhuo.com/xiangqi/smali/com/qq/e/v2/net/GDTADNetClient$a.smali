.class final Lcom/qq/e/v2/net/GDTADNetClient$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qq/e/v2/net/GDTADNetClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/qq/e/v2/net/GDTADNetClient$a;",
        ">;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field a:Z

.field private b:Lcom/qq/e/v2/net/GDTADNetClient$Priority;

.field private c:Lcom/qq/e/v2/net/GDTADNetRequest;

.field private d:I


# direct methods
.method public constructor <init>(Lcom/qq/e/v2/net/GDTADNetClient$Priority;Lcom/qq/e/v2/net/GDTADNetRequest;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/qq/e/v2/net/GDTADNetClient$a;-><init>(Lcom/qq/e/v2/net/GDTADNetClient$Priority;Lcom/qq/e/v2/net/GDTADNetRequest;I)V

    return-void
.end method

.method public constructor <init>(Lcom/qq/e/v2/net/GDTADNetClient$Priority;Lcom/qq/e/v2/net/GDTADNetRequest;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/qq/e/v2/net/GDTADNetClient$a;->d:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qq/e/v2/net/GDTADNetClient$a;->a:Z

    iput-object p1, p0, Lcom/qq/e/v2/net/GDTADNetClient$a;->b:Lcom/qq/e/v2/net/GDTADNetClient$Priority;

    iput-object p2, p0, Lcom/qq/e/v2/net/GDTADNetClient$a;->c:Lcom/qq/e/v2/net/GDTADNetRequest;

    iput p3, p0, Lcom/qq/e/v2/net/GDTADNetClient$a;->d:I

    return-void
.end method

.method private a(Ljava/lang/Exception;)V
    .locals 4

    iget v0, p0, Lcom/qq/e/v2/net/GDTADNetClient$a;->d:I

    add-int/lit8 v0, v0, -0x1

    if-lez v0, :cond_0

    invoke-static {}, Lcom/qq/e/v2/net/GDTADNetClient;->getInstance()Lcom/qq/e/v2/net/GDTADNetClient;

    move-result-object v1

    iget-object v2, p0, Lcom/qq/e/v2/net/GDTADNetClient$a;->c:Lcom/qq/e/v2/net/GDTADNetRequest;

    iget-object v3, p0, Lcom/qq/e/v2/net/GDTADNetClient$a;->b:Lcom/qq/e/v2/net/GDTADNetClient$Priority;

    invoke-virtual {v1, v2, v3, v0}, Lcom/qq/e/v2/net/GDTADNetClient;->excute(Lcom/qq/e/v2/net/GDTADNetRequest;Lcom/qq/e/v2/net/GDTADNetClient$Priority;I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/qq/e/v2/net/GDTADNetClient$a;->c:Lcom/qq/e/v2/net/GDTADNetRequest;

    invoke-virtual {v0, p1}, Lcom/qq/e/v2/net/GDTADNetRequest;->onError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private a(Lorg/apache/http/client/methods/HttpRequestBase;)V
    .locals 3

    iget-object v0, p0, Lcom/qq/e/v2/net/GDTADNetClient$a;->c:Lcom/qq/e/v2/net/GDTADNetRequest;

    invoke-virtual {v0}, Lcom/qq/e/v2/net/GDTADNetRequest;->getHeaders()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lorg/apache/http/client/methods/HttpRequestBase;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "User-Agent"

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

    invoke-virtual {p1, v0, v1}, Lorg/apache/http/client/methods/HttpRequestBase;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/http/client/methods/HttpRequestBase;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    :cond_1
    iget-object v1, p0, Lcom/qq/e/v2/net/GDTADNetClient$a;->c:Lcom/qq/e/v2/net/GDTADNetRequest;

    invoke-virtual {v1}, Lcom/qq/e/v2/net/GDTADNetRequest;->getConnectionTimeOut()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/qq/e/v2/net/GDTADNetClient$a;->c:Lcom/qq/e/v2/net/GDTADNetRequest;

    invoke-virtual {v1}, Lcom/qq/e/v2/net/GDTADNetRequest;->getConnectionTimeOut()I

    move-result v1

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    :cond_2
    iget-object v1, p0, Lcom/qq/e/v2/net/GDTADNetClient$a;->c:Lcom/qq/e/v2/net/GDTADNetRequest;

    invoke-virtual {v1}, Lcom/qq/e/v2/net/GDTADNetRequest;->getSocketTimeOut()I

    move-result v1

    if-lez v1, :cond_3

    iget-object v1, p0, Lcom/qq/e/v2/net/GDTADNetClient$a;->c:Lcom/qq/e/v2/net/GDTADNetRequest;

    invoke-virtual {v1}, Lcom/qq/e/v2/net/GDTADNetRequest;->getSocketTimeOut()I

    move-result v1

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    :cond_3
    invoke-virtual {p1, v0}, Lorg/apache/http/client/methods/HttpRequestBase;->setParams(Lorg/apache/http/params/HttpParams;)V

    return-void
.end method


# virtual methods
.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Lcom/qq/e/v2/net/GDTADNetClient$a;

    if-nez p1, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/qq/e/v2/net/GDTADNetClient$a;->b:Lcom/qq/e/v2/net/GDTADNetClient$Priority;

    invoke-static {v0}, Lcom/qq/e/v2/net/GDTADNetClient$Priority;->a(Lcom/qq/e/v2/net/GDTADNetClient$Priority;)I

    move-result v0

    iget-object v1, p1, Lcom/qq/e/v2/net/GDTADNetClient$a;->b:Lcom/qq/e/v2/net/GDTADNetClient$Priority;

    invoke-static {v1}, Lcom/qq/e/v2/net/GDTADNetClient$Priority;->a(Lcom/qq/e/v2/net/GDTADNetClient$Priority;)I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public final run()V
    .locals 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/qq/e/v2/net/GDTADNetClient;->b()Ljava/lang/ThreadLocal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-static {}, Lcom/qq/e/v2/net/GDTADNetClient;->b()Ljava/lang/ThreadLocal;

    move-result-object v3

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    iget-boolean v4, p0, Lcom/qq/e/v2/net/GDTADNetClient$a;->a:Z

    if-eqz v4, :cond_3

    :cond_1
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :try_start_0
    invoke-static {}, Lcom/qq/e/v2/net/GDTADNetClient;->c()Lorg/apache/http/client/HttpClient;

    move-result-object v4

    const/4 v3, 0x0

    sget-object v1, Lcom/qq/e/v2/net/GDTADNetClient$1;->a:[I

    iget-object v5, p0, Lcom/qq/e/v2/net/GDTADNetClient$a;->c:Lcom/qq/e/v2/net/GDTADNetRequest;

    invoke-virtual {v5}, Lcom/qq/e/v2/net/GDTADNetRequest;->getMethod()Lcom/qq/e/v2/net/GDTADNetRequest$Method;

    move-result-object v5

    invoke-virtual {v5}, Lcom/qq/e/v2/net/GDTADNetRequest$Method;->ordinal()I

    move-result v5

    aget v1, v1, v5

    packed-switch v1, :pswitch_data_0

    const-string v1, "Unsupported HTTP method %s for url %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/qq/e/v2/net/GDTADNetClient$a;->c:Lcom/qq/e/v2/net/GDTADNetRequest;

    invoke-virtual {v5}, Lcom/qq/e/v2/net/GDTADNetRequest;->getMethod()Lcom/qq/e/v2/net/GDTADNetRequest$Method;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/qq/e/v2/net/GDTADNetClient$a;->c:Lcom/qq/e/v2/net/GDTADNetRequest;

    invoke-virtual {v5}, Lcom/qq/e/v2/net/GDTADNetRequest;->getUrl()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qq/e/v2/util/GDTLogger;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :cond_2
    :goto_1
    invoke-static {}, Lcom/qq/e/v2/net/GDTADNetClient;->b()Ljava/lang/ThreadLocal;

    move-result-object v1

    if-nez v0, :cond_9

    :goto_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void

    :cond_3
    move v1, v2

    goto :goto_0

    :pswitch_0
    :try_start_1
    iget-object v1, p0, Lcom/qq/e/v2/net/GDTADNetClient$a;->c:Lcom/qq/e/v2/net/GDTADNetRequest;

    invoke-virtual {v1}, Lcom/qq/e/v2/net/GDTADNetRequest;->getUrlWithParas()Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/qq/e/v2/net/GDTADNetClient$a;->c:Lcom/qq/e/v2/net/GDTADNetRequest;

    invoke-virtual {v5}, Lcom/qq/e/v2/net/GDTADNetRequest;->getUrl()Ljava/lang/String;

    move-result-object v5

    const-string v6, "http://sdk.e.qq.com"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "?"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "&queueSize="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/qq/e/v2/net/GDTADNetClient;->getInstance()Lcom/qq/e/v2/net/GDTADNetClient;

    move-result-object v5

    invoke-virtual {v5}, Lcom/qq/e/v2/net/GDTADNetClient;->a()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_4
    :goto_3
    new-instance v5, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v5, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v5}, Lcom/qq/e/v2/net/GDTADNetClient$a;->a(Lorg/apache/http/client/methods/HttpRequestBase;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    iget-object v1, p0, Lcom/qq/e/v2/net/GDTADNetClient$a;->c:Lcom/qq/e/v2/net/GDTADNetRequest;

    invoke-virtual {v1}, Lcom/qq/e/v2/net/GDTADNetRequest;->getPostData()[B

    move-result-object v1

    if-eqz v1, :cond_5

    array-length v6, v1

    if-lez v6, :cond_5

    new-instance v6, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v6, v1}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    invoke-virtual {v5, v6}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    :cond_5
    invoke-interface {v4, v5}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    iget-object v1, p0, Lcom/qq/e/v2/net/GDTADNetClient$a;->c:Lcom/qq/e/v2/net/GDTADNetRequest;

    invoke-virtual {v1, v3}, Lcom/qq/e/v2/net/GDTADNetRequest;->onResponse(Lorg/apache/http/HttpResponse;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :try_start_3
    invoke-virtual {v5}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    if-eqz v3, :cond_2

    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v1

    if-eqz v1, :cond_2

    :try_start_4
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_1

    :catch_0
    move-exception v1

    :try_start_5
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "GDTNetwork Exception,url:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/qq/e/v2/net/GDTADNetClient$a;->c:Lcom/qq/e/v2/net/GDTADNetRequest;

    invoke-virtual {v4}, Lcom/qq/e/v2/net/GDTADNetRequest;->getUrlWithParas()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/qq/e/v2/util/GDTLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v1

    const-string v3, "Exception while excute ADNetTask"

    invoke-static {v3, v1}, Lcom/qq/e/v2/util/GDTLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :cond_6
    :try_start_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "?queueSize="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/qq/e/v2/net/GDTADNetClient;->getInstance()Lcom/qq/e/v2/net/GDTADNetClient;

    move-result-object v5

    invoke-virtual {v5}, Lcom/qq/e/v2/net/GDTADNetClient;->a()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    move-result-object v1

    goto :goto_3

    :catch_2
    move-exception v1

    :try_start_7
    invoke-direct {p0, v1}, Lcom/qq/e/v2/net/GDTADNetClient$a;->a(Ljava/lang/Exception;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    invoke-virtual {v5}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    if-eqz v3, :cond_2

    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1

    move-result-object v1

    if-eqz v1, :cond_2

    :try_start_9
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_1

    goto/16 :goto_1

    :catch_3
    move-exception v1

    :try_start_a
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "GDTNetwork Exception,url:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/qq/e/v2/net/GDTADNetClient$a;->c:Lcom/qq/e/v2/net/GDTADNetRequest;

    invoke-virtual {v4}, Lcom/qq/e/v2/net/GDTADNetRequest;->getUrlWithParas()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/qq/e/v2/util/GDTLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :catchall_0
    move-exception v1

    invoke-virtual {v5}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    if-eqz v3, :cond_7

    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_1

    move-result-object v4

    if-eqz v4, :cond_7

    :try_start_b
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_1

    :cond_7
    :goto_4
    :try_start_c
    throw v1

    :catch_4
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "GDTNetwork Exception,url:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/qq/e/v2/net/GDTADNetClient$a;->c:Lcom/qq/e/v2/net/GDTADNetRequest;

    invoke-virtual {v5}, Lcom/qq/e/v2/net/GDTADNetRequest;->getUrlWithParas()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/qq/e/v2/util/GDTLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    :pswitch_1
    new-instance v5, Lorg/apache/http/client/methods/HttpGet;

    iget-object v1, p0, Lcom/qq/e/v2/net/GDTADNetClient$a;->c:Lcom/qq/e/v2/net/GDTADNetRequest;

    invoke-virtual {v1}, Lcom/qq/e/v2/net/GDTADNetRequest;->getUrlWithParas()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    const-string v1, "Accept-Encoding"

    const-string v6, "gzip"

    invoke-virtual {v5, v1, v6}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v5}, Lcom/qq/e/v2/net/GDTADNetClient$a;->a(Lorg/apache/http/client/methods/HttpRequestBase;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_1

    :try_start_d
    invoke-interface {v4, v5}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    iget-object v1, p0, Lcom/qq/e/v2/net/GDTADNetClient$a;->c:Lcom/qq/e/v2/net/GDTADNetRequest;

    invoke-virtual {v1, v3}, Lcom/qq/e/v2/net/GDTADNetRequest;->onResponse(Lorg/apache/http/HttpResponse;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_6

    :try_start_e
    invoke-virtual {v5}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    if-eqz v3, :cond_2

    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_1

    move-result-object v1

    if-eqz v1, :cond_2

    :try_start_f
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_1

    goto/16 :goto_1

    :catch_5
    move-exception v1

    :try_start_10
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "GDTNetwork Exception,url:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/qq/e/v2/net/GDTADNetClient$a;->c:Lcom/qq/e/v2/net/GDTADNetRequest;

    invoke-virtual {v4}, Lcom/qq/e/v2/net/GDTADNetRequest;->getUrlWithParas()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/qq/e/v2/util/GDTLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_1

    goto/16 :goto_1

    :catch_6
    move-exception v1

    :try_start_11
    invoke-direct {p0, v1}, Lcom/qq/e/v2/net/GDTADNetClient$a;->a(Ljava/lang/Exception;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    :try_start_12
    invoke-virtual {v5}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    if-eqz v3, :cond_2

    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_1

    move-result-object v1

    if-eqz v1, :cond_2

    :try_start_13
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_1

    goto/16 :goto_1

    :catch_7
    move-exception v1

    :try_start_14
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "GDTNetwork Exception,url:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/qq/e/v2/net/GDTADNetClient$a;->c:Lcom/qq/e/v2/net/GDTADNetRequest;

    invoke-virtual {v4}, Lcom/qq/e/v2/net/GDTADNetRequest;->getUrlWithParas()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/qq/e/v2/util/GDTLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :catchall_1
    move-exception v1

    invoke-virtual {v5}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    if-eqz v3, :cond_8

    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_1

    move-result-object v4

    if-eqz v4, :cond_8

    :try_start_15
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_8
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_1

    :cond_8
    :goto_5
    :try_start_16
    throw v1

    :catch_8
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "GDTNetwork Exception,url:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/qq/e/v2/net/GDTADNetClient$a;->c:Lcom/qq/e/v2/net/GDTADNetRequest;

    invoke-virtual {v5}, Lcom/qq/e/v2/net/GDTADNetRequest;->getUrlWithParas()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/qq/e/v2/util/GDTLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_1

    goto :goto_5

    :cond_9
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
