.class public Lcom/nrsmagic/sudoku/gui/c/v;
.super Ljava/lang/Object;


# static fields
.field public static final a:[Ljava/lang/String;

.field private static b:Lcom/nrsmagic/sudoku/gui/c/v;


# instance fields
.field private c:Landroid/content/Context;

.field private d:Lcom/nrsmagic/sudoku/gui/c/z;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v2, Lcom/nrsmagic/sudoku/gui/c/l;->b:Ljava/lang/String;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nrsmagic/sudoku/gui/c/v;->a:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nrsmagic/sudoku/gui/c/v;->c:Landroid/content/Context;

    new-instance v0, Lcom/nrsmagic/sudoku/gui/c/z;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/c/v;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/nrsmagic/sudoku/gui/c/z;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/c/v;->d:Lcom/nrsmagic/sudoku/gui/c/z;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/nrsmagic/sudoku/gui/c/v;
    .locals 2

    sget-object v0, Lcom/nrsmagic/sudoku/gui/c/v;->b:Lcom/nrsmagic/sudoku/gui/c/v;

    if-nez v0, :cond_0

    new-instance v0, Lcom/nrsmagic/sudoku/gui/c/v;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nrsmagic/sudoku/gui/c/v;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/nrsmagic/sudoku/gui/c/v;->b:Lcom/nrsmagic/sudoku/gui/c/v;

    :cond_0
    sget-object v0, Lcom/nrsmagic/sudoku/gui/c/v;->b:Lcom/nrsmagic/sudoku/gui/c/v;

    return-object v0
.end method

.method private a(Ljava/lang/String;[B)Ljava/io/InputStream;
    .locals 7

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/c/v;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/nrsmagic/sudoku/gui/c/ak;->a(Landroid/content/Context;)Lorg/apache/http/client/HttpClient;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v4, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v4, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_2

    new-instance v1, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v1, p2}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    invoke-virtual {v4, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    :cond_2
    const/4 v1, 0x0

    move v2, v1

    :goto_1
    const/4 v1, 0x2

    if-ge v2, v1, :cond_0

    :try_start_0
    invoke-interface {v3, v4}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "2"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-direct {p0, v1}, Lcom/nrsmagic/sudoku/gui/c/v;->a(Lorg/apache/http/HttpResponse;)Ljava/io/InputStream;
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/apache/http/client/ClientProtocolException;->getMessage()Ljava/lang/String;

    :cond_3
    :goto_2
    add-int/lit8 v1, v2, 0x1

    const-wide/16 v5, 0x7d0

    :try_start_1
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2

    move v2, v1

    goto :goto_1

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    goto :goto_2

    :catch_2
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    move v2, v1

    goto :goto_1
.end method

.method private a(Lorg/apache/http/HttpResponse;)Ljava/io/InputStream;
    .locals 1

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7

    :goto_1
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    :goto_2
    if-eqz v1, :cond_2

    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    :cond_2
    :goto_3
    if-eqz p1, :cond_0

    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :cond_3
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v0

    if-eqz v1, :cond_4

    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_4
    :goto_4
    if-eqz p1, :cond_0

    :try_start_6
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_0

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :catch_4
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catchall_0
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_5
    if-eqz v1, :cond_5

    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    :cond_5
    :goto_6
    if-eqz p1, :cond_6

    :try_start_8
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    :cond_6
    :goto_7
    throw v0

    :catch_5
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    :catch_6
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    :catchall_1
    move-exception v0

    goto :goto_5

    :catch_7
    move-exception v1

    move-object v1, v0

    goto :goto_2
.end method

.method private a(Ljava/util/HashMap;)Ljava/lang/String;
    .locals 6

    sget-object v0, Lcom/nrsmagic/sudoku/gui/c/v;->a:[Ljava/lang/String;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/c/v;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/nrsmagic/sudoku/gui/c/bb;->p(Landroid/content/Context;)I

    move-result v1

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

.method private a()[B
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/c/v;->d:Lcom/nrsmagic/sudoku/gui/c/z;

    invoke-virtual {v1}, Lcom/nrsmagic/sudoku/gui/c/z;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/c/v;->d:Lcom/nrsmagic/sudoku/gui/c/z;

    invoke-virtual {v2}, Lcom/nrsmagic/sudoku/gui/c/z;->a()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/nrsmagic/sudoku/gui/c/aa;
    .locals 4

    const/4 v0, 0x0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sget-object v2, Lcom/nrsmagic/sudoku/gui/c/l;->P:Ljava/lang/String;

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v1}, Lcom/nrsmagic/sudoku/gui/c/v;->a(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/c/v;->d:Lcom/nrsmagic/sudoku/gui/c/z;

    iput-object p1, v2, Lcom/nrsmagic/sudoku/gui/c/z;->r:Ljava/lang/String;

    invoke-direct {p0}, Lcom/nrsmagic/sudoku/gui/c/v;->a()[B

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/nrsmagic/sudoku/gui/c/v;->a(Ljava/lang/String;[B)Ljava/io/InputStream;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-direct {p0, v1}, Lcom/nrsmagic/sudoku/gui/c/v;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-class v0, Lcom/nrsmagic/sudoku/gui/c/aa;

    invoke-static {v0, v1}, Lcom/nrsmagic/sudoku/gui/c/af;->a(Ljava/lang/Class;Ljava/lang/String;)Lcom/nrsmagic/sudoku/gui/c/y;

    move-result-object v0

    check-cast v0, Lcom/nrsmagic/sudoku/gui/c/aa;

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 4

    const/4 v0, 0x0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sget-object v2, Lcom/nrsmagic/sudoku/gui/c/l;->P:Ljava/lang/String;

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v1}, Lcom/nrsmagic/sudoku/gui/c/v;->a(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/c/v;->d:Lcom/nrsmagic/sudoku/gui/c/z;

    iput-object p2, v2, Lcom/nrsmagic/sudoku/gui/c/z;->r:Ljava/lang/String;

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/c/v;->d:Lcom/nrsmagic/sudoku/gui/c/z;

    iput-object p1, v2, Lcom/nrsmagic/sudoku/gui/c/z;->t:Ljava/lang/String;

    invoke-direct {p0}, Lcom/nrsmagic/sudoku/gui/c/v;->a()[B

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/nrsmagic/sudoku/gui/c/v;->a(Ljava/lang/String;[B)Ljava/io/InputStream;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-direct {p0, v1}, Lcom/nrsmagic/sudoku/gui/c/v;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-class v0, Lcom/nrsmagic/sudoku/gui/c/aa;

    invoke-static {v0, v1}, Lcom/nrsmagic/sudoku/gui/c/af;->a(Ljava/lang/Class;Ljava/lang/String;)Lcom/nrsmagic/sudoku/gui/c/y;

    move-result-object v0

    check-cast v0, Lcom/nrsmagic/sudoku/gui/c/aa;

    const-class v3, Lcom/nrsmagic/sudoku/gui/c/x;

    invoke-static {v3, v1}, Lcom/nrsmagic/sudoku/gui/c/af;->b(Ljava/lang/Class;Ljava/lang/String;)[Lcom/nrsmagic/sudoku/gui/c/y;

    move-result-object v1

    check-cast v1, [Lcom/nrsmagic/sudoku/gui/c/x;

    check-cast v1, [Lcom/nrsmagic/sudoku/gui/c/x;

    if-eqz v1, :cond_2

    :cond_2
    const-class v3, Lcom/nrsmagic/sudoku/gui/c/aa;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v0, Lcom/nrsmagic/sudoku/gui/c/x;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v2

    goto :goto_0
.end method
