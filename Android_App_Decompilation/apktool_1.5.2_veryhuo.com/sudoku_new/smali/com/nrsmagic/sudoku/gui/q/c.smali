.class public Lcom/nrsmagic/sudoku/gui/q/c;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/lang/String;

.field public static final b:[Ljava/lang/String;

.field private static c:Lcom/nrsmagic/sudoku/gui/q/c;


# instance fields
.field private d:Landroid/content/Context;

.field private e:Lcom/nrsmagic/sudoku/gui/q/b/d;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    sput-object v0, Lcom/nrsmagic/sudoku/gui/q/c;->a:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v2, Lcom/nrsmagic/sudoku/gui/q/c/h;->aN:Ljava/lang/String;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nrsmagic/sudoku/gui/q/c;->b:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nrsmagic/sudoku/gui/q/c;->d:Landroid/content/Context;

    new-instance v0, Lcom/nrsmagic/sudoku/gui/q/b/d;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/q/c;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/nrsmagic/sudoku/gui/q/b/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/q/c;->e:Lcom/nrsmagic/sudoku/gui/q/b/d;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/nrsmagic/sudoku/gui/q/c;
    .locals 2

    sget-object v0, Lcom/nrsmagic/sudoku/gui/q/c;->c:Lcom/nrsmagic/sudoku/gui/q/c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/nrsmagic/sudoku/gui/q/c;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nrsmagic/sudoku/gui/q/c;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/nrsmagic/sudoku/gui/q/c;->c:Lcom/nrsmagic/sudoku/gui/q/c;

    :cond_0
    sget-object v0, Lcom/nrsmagic/sudoku/gui/q/c;->c:Lcom/nrsmagic/sudoku/gui/q/c;

    return-object v0
.end method

.method private a(Ljava/lang/String;[B)Ljava/io/InputStream;
    .locals 9

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/q/c;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/nrsmagic/sudoku/gui/q/d;->a(Landroid/content/Context;)Lorg/apache/http/client/HttpClient;

    move-result-object v4

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v1, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v1

    :goto_1
    if-eqz p2, :cond_2

    new-instance v1, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v1, p2}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    invoke-virtual {v3, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    sget-object v1, Lcom/nrsmagic/sudoku/gui/q/c/h;->a:Ljava/lang/String;

    sget-object v2, Lcom/nrsmagic/sudoku/gui/q/c/h;->J:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v1, 0x0

    move v2, v1

    :goto_2
    const/4 v1, 0x2

    if-ge v2, v1, :cond_0

    :try_start_1
    invoke-interface {v4, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "2"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    sget-object v6, Lcom/nrsmagic/sudoku/gui/q/c/h;->a:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/nrsmagic/sudoku/gui/q/c/h;->K:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Lcom/nrsmagic/sudoku/gui/q/c/h;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/nrsmagic/sudoku/gui/q/c/h;->B:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/nrsmagic/sudoku/gui/q/c;->d:Landroid/content/Context;

    invoke-static {v7}, Lcom/nrsmagic/sudoku/gui/q/c/s;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Lcom/nrsmagic/sudoku/gui/q/c/h;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/nrsmagic/sudoku/gui/q/c/h;->A:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/nrsmagic/sudoku/gui/q/c;->d:Landroid/content/Context;

    invoke-static {v7}, Lcom/nrsmagic/sudoku/gui/q/c/s;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    move-object v3, v0

    goto/16 :goto_1

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Lorg/apache/http/client/ClientProtocolException;->getMessage()Ljava/lang/String;

    :cond_3
    :goto_3
    add-int/lit8 v1, v2, 0x1

    const-wide/16 v5, 0x7d0

    :try_start_2
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_3

    move v2, v1

    goto/16 :goto_2

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    goto :goto_3

    :catch_3
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    move v2, v1

    goto/16 :goto_2
.end method

.method private a(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    :goto_1
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    sget-object v1, Lcom/nrsmagic/sudoku/gui/q/c/h;->aQ:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/nrsmagic/sudoku/gui/q/c/n;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8

    move-result-object v0

    if-eqz v2, :cond_3

    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_3
    :goto_2
    if-eqz p1, :cond_0

    :try_start_4
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catch_3
    move-exception v1

    move-object v1, v0

    :goto_3
    if-eqz v1, :cond_4

    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    :cond_4
    :goto_4
    if-eqz p1, :cond_0

    :try_start_6
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    :catch_4
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_5
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_5
    if-eqz v2, :cond_5

    :try_start_7
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    :cond_5
    :goto_6
    if-eqz p1, :cond_6

    :try_start_8
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    :cond_6
    :goto_7
    throw v0

    :catch_6
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    :catch_7
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    :catchall_1
    move-exception v0

    goto :goto_5

    :catch_8
    move-exception v1

    move-object v1, v2

    goto :goto_3
.end method

.method private a(Ljava/util/HashMap;)Ljava/lang/String;
    .locals 6

    sget-object v0, Lcom/nrsmagic/sudoku/gui/q/c;->b:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v3, v0, v1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "?"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    const-string v5, "&"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    return-object v0

    :cond_2
    move-object v0, v3

    goto :goto_2
.end method

.method private c()[B
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/q/c;->e:Lcom/nrsmagic/sudoku/gui/q/b/d;

    invoke-virtual {v1}, Lcom/nrsmagic/sudoku/gui/q/b/d;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/q/c;->e:Lcom/nrsmagic/sudoku/gui/q/b/d;

    invoke-virtual {v2}, Lcom/nrsmagic/sudoku/gui/q/b/d;->b()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v1, Lcom/nrsmagic/sudoku/gui/q/c/h;->aQ:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/nrsmagic/sudoku/gui/q/c/n;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/nrsmagic/sudoku/gui/q/b/e;
    .locals 4

    const/4 v0, 0x0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sget-object v2, Lcom/nrsmagic/sudoku/gui/q/c/h;->W:Ljava/lang/String;

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v1}, Lcom/nrsmagic/sudoku/gui/q/c;->a(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    :cond_0
    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/q/c;->e:Lcom/nrsmagic/sudoku/gui/q/b/d;

    iput-object p1, v2, Lcom/nrsmagic/sudoku/gui/q/b/d;->r:Ljava/lang/String;

    invoke-direct {p0}, Lcom/nrsmagic/sudoku/gui/q/c;->c()[B

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/nrsmagic/sudoku/gui/q/c;->a(Ljava/lang/String;[B)Ljava/io/InputStream;

    move-result-object v1

    if-nez v1, :cond_2

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    invoke-direct {p0, v1}, Lcom/nrsmagic/sudoku/gui/q/c;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-class v0, Lcom/nrsmagic/sudoku/gui/q/b/e;

    invoke-static {v0, v1}, Lcom/nrsmagic/sudoku/gui/q/b/g;->a(Ljava/lang/Class;Ljava/lang/String;)Lcom/nrsmagic/sudoku/gui/q/b/c;

    move-result-object v0

    check-cast v0, Lcom/nrsmagic/sudoku/gui/q/b/e;

    goto :goto_0
.end method

.method public a()Lcom/nrsmagic/sudoku/gui/q/b/f;
    .locals 4

    const/4 v0, 0x0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sget-object v2, Lcom/nrsmagic/sudoku/gui/q/c/h;->W:Ljava/lang/String;

    const-string v3, "2"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v1}, Lcom/nrsmagic/sudoku/gui/q/c;->a(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    :cond_0
    invoke-direct {p0}, Lcom/nrsmagic/sudoku/gui/q/c;->c()[B

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/nrsmagic/sudoku/gui/q/c;->a(Ljava/lang/String;[B)Ljava/io/InputStream;

    move-result-object v1

    if-nez v1, :cond_2

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    invoke-direct {p0, v1}, Lcom/nrsmagic/sudoku/gui/q/c;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-class v0, Lcom/nrsmagic/sudoku/gui/q/b/f;

    invoke-static {v0, v1}, Lcom/nrsmagic/sudoku/gui/q/b/g;->a(Ljava/lang/Class;Ljava/lang/String;)Lcom/nrsmagic/sudoku/gui/q/b/c;

    move-result-object v0

    check-cast v0, Lcom/nrsmagic/sudoku/gui/q/b/f;

    goto :goto_0
.end method

.method public b()Ljava/util/HashMap;
    .locals 10

    const-wide/32 v8, 0x2932e00

    const/4 v0, 0x0

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/q/c;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/nrsmagic/sudoku/gui/q/c/s;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "c"

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/q/c;->d:Landroid/content/Context;

    invoke-static {v2}, Lcom/nrsmagic/sudoku/gui/q/c/s;->v(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v4, p0, Lcom/nrsmagic/sudoku/gui/q/c;->d:Landroid/content/Context;

    invoke-static {v4}, Lcom/nrsmagic/sudoku/gui/q/c/s;->r(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    sget-object v5, Lcom/nrsmagic/sudoku/gui/q/c/h;->aF:Ljava/lang/String;

    const-wide/16 v6, -0x1

    invoke-interface {v4, v5, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    sub-long/2addr v1, v4

    cmp-long v1, v1, v8

    if-gez v1, :cond_2

    sget-object v1, Lcom/nrsmagic/sudoku/gui/q/c/h;->p:Ljava/lang/String;

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/q/c;->d:Landroid/content/Context;

    invoke-static {v2}, Lcom/nrsmagic/sudoku/gui/q/c/s;->v(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/q/c;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/q/c/s;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nrsmagic/sudoku/gui/q/c;->a:Ljava/lang/String;

    sget-object v0, Lcom/nrsmagic/sudoku/gui/q/c;->a:Ljava/lang/String;

    if-eqz v0, :cond_4

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/q/c;->d:Landroid/content/Context;

    sget-object v1, Lcom/nrsmagic/sudoku/gui/q/c/h;->o:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/nrsmagic/sudoku/gui/q/c/s;->g(Landroid/content/Context;Ljava/lang/String;)V

    const-class v0, Lcom/nrsmagic/sudoku/gui/q/b/e;

    sget-object v1, Lcom/nrsmagic/sudoku/gui/q/c;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/nrsmagic/sudoku/gui/q/b/g;->a(Ljava/lang/Class;Ljava/lang/String;)Lcom/nrsmagic/sudoku/gui/q/b/c;

    move-result-object v0

    check-cast v0, Lcom/nrsmagic/sudoku/gui/q/b/e;

    const-class v1, Lcom/nrsmagic/sudoku/gui/q/b/b;

    sget-object v4, Lcom/nrsmagic/sudoku/gui/q/c;->a:Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/nrsmagic/sudoku/gui/q/b/g;->b(Ljava/lang/Class;Ljava/lang/String;)[Lcom/nrsmagic/sudoku/gui/q/b/c;

    move-result-object v1

    check-cast v1, [Lcom/nrsmagic/sudoku/gui/q/b/b;

    check-cast v1, [Lcom/nrsmagic/sudoku/gui/q/b/b;

    const-class v4, Lcom/nrsmagic/sudoku/gui/q/b/e;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v0, Lcom/nrsmagic/sudoku/gui/q/b/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v2

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/q/c;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/nrsmagic/sudoku/gui/q/c/s;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, v8

    const-wide/32 v4, 0xbb80

    add-long/2addr v1, v4

    iget-object v4, p0, Lcom/nrsmagic/sudoku/gui/q/c;->d:Landroid/content/Context;

    invoke-static {v1, v2, v4}, Lcom/nrsmagic/sudoku/gui/q/c/s;->b(JLandroid/content/Context;)V

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/q/c;->d:Landroid/content/Context;

    sget-object v2, Lcom/nrsmagic/sudoku/gui/q/c/h;->o:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/nrsmagic/sudoku/gui/q/c/s;->g(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sget-object v2, Lcom/nrsmagic/sudoku/gui/q/c/h;->W:Ljava/lang/String;

    const-string v4, "0"

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v1}, Lcom/nrsmagic/sudoku/gui/q/c;->a(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    :cond_3
    invoke-direct {p0}, Lcom/nrsmagic/sudoku/gui/q/c;->c()[B

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/nrsmagic/sudoku/gui/q/c;->a(Ljava/lang/String;[B)Ljava/io/InputStream;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v1}, Lcom/nrsmagic/sudoku/gui/q/c;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/nrsmagic/sudoku/gui/q/c;->a:Ljava/lang/String;

    sget-object v1, Lcom/nrsmagic/sudoku/gui/q/c;->a:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/q/c;->d:Landroid/content/Context;

    sget-object v1, Lcom/nrsmagic/sudoku/gui/q/c;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/nrsmagic/sudoku/gui/q/c/s;->d(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/q/c;->d:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/nrsmagic/sudoku/gui/q/c/s;->b(JLandroid/content/Context;)V

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/q/c;->d:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/nrsmagic/sudoku/gui/q/c/s;->a(JLandroid/content/Context;)V

    const-class v0, Lcom/nrsmagic/sudoku/gui/q/b/e;

    sget-object v1, Lcom/nrsmagic/sudoku/gui/q/c;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/nrsmagic/sudoku/gui/q/b/g;->a(Ljava/lang/Class;Ljava/lang/String;)Lcom/nrsmagic/sudoku/gui/q/b/c;

    move-result-object v0

    check-cast v0, Lcom/nrsmagic/sudoku/gui/q/b/e;

    const-class v1, Lcom/nrsmagic/sudoku/gui/q/b/b;

    sget-object v2, Lcom/nrsmagic/sudoku/gui/q/c;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/nrsmagic/sudoku/gui/q/b/g;->b(Ljava/lang/Class;Ljava/lang/String;)[Lcom/nrsmagic/sudoku/gui/q/b/c;

    move-result-object v1

    check-cast v1, [Lcom/nrsmagic/sudoku/gui/q/b/b;

    check-cast v1, [Lcom/nrsmagic/sudoku/gui/q/b/b;

    const-class v2, Lcom/nrsmagic/sudoku/gui/q/b/e;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v0, Lcom/nrsmagic/sudoku/gui/q/b/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_1
    move-object v0, v3

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
