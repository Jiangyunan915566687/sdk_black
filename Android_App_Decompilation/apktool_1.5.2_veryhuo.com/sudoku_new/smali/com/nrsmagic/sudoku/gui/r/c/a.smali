.class public Lcom/nrsmagic/sudoku/gui/r/c/a;
.super Lcom/nrsmagic/sudoku/gui/r/c/e;


# instance fields
.field private b:Lorg/apache/http/client/HttpClient;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/nrsmagic/sudoku/gui/r/c/h;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/nrsmagic/sudoku/gui/r/c/e;-><init>(Landroid/content/Context;Lcom/nrsmagic/sudoku/gui/r/c/h;)V

    return-void
.end method


# virtual methods
.method public a(Lorg/apache/http/client/methods/HttpPost;Lorg/apache/http/HttpEntity;)V
    .locals 0

    invoke-virtual {p1, p2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    return-void
.end method

.method public a()Z
    .locals 12

    const/4 v11, 0x0

    const/4 v10, -0x3

    const/high16 v6, 0x447a

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/nrsmagic/sudoku/gui/r/c/a;->c()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/nrsmagic/sudoku/gui/r/c/a;->l()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x4

    invoke-virtual {p0, v0}, Lcom/nrsmagic/sudoku/gui/r/c/a;->a(I)V

    move v0, v2

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, v11}, Lcom/nrsmagic/sudoku/gui/r/c/a;->a(Ljava/lang/Exception;)V

    const/4 v0, -0x2

    invoke-virtual {p0, v0}, Lcom/nrsmagic/sudoku/gui/r/c/a;->a(I)V

    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/c/a;->b:Lorg/apache/http/client/HttpClient;

    invoke-virtual {p0}, Lcom/nrsmagic/sudoku/gui/r/c/a;->j()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/r/c/a;->b:Lorg/apache/http/client/HttpClient;

    invoke-interface {v1}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    const-string v4, "http.socket.timeout"

    mul-float v5, v0, v6

    float-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/r/c/a;->b:Lorg/apache/http/client/HttpClient;

    invoke-interface {v1}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    const-string v4, "http.connection.timeout"

    mul-float/2addr v0, v6

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v4, v0}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    :cond_1
    invoke-virtual {p0}, Lcom/nrsmagic/sudoku/gui/r/c/a;->k()Lcom/nrsmagic/sudoku/gui/r/c/g;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v1, Lorg/apache/http/HttpHost;

    invoke-virtual {v0}, Lcom/nrsmagic/sudoku/gui/r/c/g;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/nrsmagic/sudoku/gui/r/c/g;->b()I

    move-result v0

    sget-object v5, Lcom/nrsmagic/sudoku/gui/r/e/b;->bu:Ljava/lang/String;

    invoke-direct {v1, v4, v0, v5}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/c/a;->b:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    const-string v4, "http.route.default-proxy"

    invoke-interface {v0, v4, v1}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    :cond_2
    invoke-virtual {p0}, Lcom/nrsmagic/sudoku/gui/r/c/a;->d()Lcom/nrsmagic/sudoku/gui/r/c/h;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nrsmagic/sudoku/gui/r/c/h;->b()I

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v4}, Lcom/nrsmagic/sudoku/gui/r/c/h;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    move-object v1, v0

    :goto_1
    invoke-virtual {v4}, Lcom/nrsmagic/sudoku/gui/r/c/h;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v5, v0}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v4}, Lcom/nrsmagic/sudoku/gui/r/c/h;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v4}, Lcom/nrsmagic/sudoku/gui/r/c/h;->d()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Lorg/apache/http/entity/StringEntity;

    invoke-direct {v5, v1}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v5}, Lcom/nrsmagic/sudoku/gui/r/c/a;->a(Lorg/apache/http/client/methods/HttpPost;Lorg/apache/http/HttpEntity;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    move-object v1, v0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_3

    :cond_4
    :try_start_1
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/c/a;->b:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v6

    array-length v7, v6

    move v0, v2

    :goto_4
    if-ge v0, v7, :cond_5

    aget-object v8, v6, v0

    invoke-interface {v8}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_5
    invoke-virtual {p0, v5}, Lcom/nrsmagic/sudoku/gui/r/c/a;->a(Ljava/util/Map;)V

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nrsmagic/sudoku/gui/r/c/a;->a(Ljava/io/InputStream;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v0, 0xc8

    invoke-virtual {p0, v0}, Lcom/nrsmagic/sudoku/gui/r/c/a;->a(I)V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move v0, v3

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {p0, v11}, Lcom/nrsmagic/sudoku/gui/r/c/a;->a(Ljava/lang/Exception;)V

    invoke-virtual {p0, v10}, Lcom/nrsmagic/sudoku/gui/r/c/a;->a(I)V

    :cond_6
    :goto_5
    move v0, v2

    goto/16 :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/nrsmagic/sudoku/gui/r/c/a;->a(Ljava/lang/Exception;)V

    invoke-virtual {p0, v10}, Lcom/nrsmagic/sudoku/gui/r/c/a;->a(I)V

    goto :goto_5
.end method

.method public b()V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/nrsmagic/sudoku/gui/r/c/a;->c()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/c/a;->b:Lorg/apache/http/client/HttpClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/c/a;->b:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    :cond_0
    invoke-virtual {p0, v1}, Lcom/nrsmagic/sudoku/gui/r/c/a;->a(Ljava/util/Map;)V

    invoke-virtual {p0, v1}, Lcom/nrsmagic/sudoku/gui/r/c/a;->a(Ljava/io/InputStream;)V

    invoke-virtual {p0, v1}, Lcom/nrsmagic/sudoku/gui/r/c/a;->a(Ljava/lang/Exception;)V

    const/4 v0, -0x3

    invoke-virtual {p0, v0}, Lcom/nrsmagic/sudoku/gui/r/c/a;->a(I)V

    :cond_1
    return-void
.end method
