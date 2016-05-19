.class public Lcom/nrsmagic/sudoku/gui/m/a/j;
.super Ljava/lang/Object;


# static fields
.field private static o:Ljava/util/Map;


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:Landroid/content/Context;

.field private g:Z

.field private h:I

.field private i:I

.field private j:[Lcom/nrsmagic/sudoku/gui/m/a/i;

.field private k:Ljava/io/File;

.field private l:Ljava/util/Map;

.field private m:I

.field private n:Ljava/lang/String;

.field private p:I

.field private q:Ljava/net/HttpURLConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/nrsmagic/sudoku/gui/m/a/j;->o:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;IILjava/lang/String;ILjava/lang/String;)V
    .locals 5

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/nrsmagic/sudoku/gui/m/a/j;->h:I

    iput v1, p0, Lcom/nrsmagic/sudoku/gui/m/a/j;->i:I

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/m/a/j;->l:Ljava/util/Map;

    const/4 v0, 0x3

    iput v0, p0, Lcom/nrsmagic/sudoku/gui/m/a/j;->p:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/m/a/j;->q:Ljava/net/HttpURLConnection;

    :try_start_0
    iput p7, p0, Lcom/nrsmagic/sudoku/gui/m/a/j;->b:I

    iput-object p8, p0, Lcom/nrsmagic/sudoku/gui/m/a/j;->c:Ljava/lang/String;

    iput-object p6, p0, Lcom/nrsmagic/sudoku/gui/m/a/j;->d:Ljava/lang/String;

    iput-object p1, p0, Lcom/nrsmagic/sudoku/gui/m/a/j;->f:Landroid/content/Context;

    iput-object p2, p0, Lcom/nrsmagic/sudoku/gui/m/a/j;->n:Ljava/lang/String;

    iput p5, p0, Lcom/nrsmagic/sudoku/gui/m/a/j;->e:I

    new-instance v2, Ljava/net/URL;

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/m/a/j;->n:Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p3}, Ljava/io/File;->mkdirs()Z

    :cond_0
    new-array v0, p4, [Lcom/nrsmagic/sudoku/gui/m/a/i;

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/m/a/j;->j:[Lcom/nrsmagic/sudoku/gui/m/a/i;

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/m/a/j;->q:Ljava/net/HttpURLConnection;

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/m/a/j;->q:Ljava/net/HttpURLConnection;

    const/16 v3, 0x1388

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/m/a/j;->q:Ljava/net/HttpURLConnection;

    sget-object v3, Lcom/nrsmagic/sudoku/gui/m/c/b;->bc:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/m/a/j;->q:Ljava/net/HttpURLConnection;

    sget-object v3, Lcom/nrsmagic/sudoku/gui/m/c/b;->ai:Ljava/lang/String;

    sget-object v4, Lcom/nrsmagic/sudoku/gui/m/c/b;->aj:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/m/a/j;->q:Ljava/net/HttpURLConnection;

    sget-object v3, Lcom/nrsmagic/sudoku/gui/m/c/b;->ak:Ljava/lang/String;

    sget-object v4, Lcom/nrsmagic/sudoku/gui/m/c/b;->al:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/m/a/j;->q:Ljava/net/HttpURLConnection;

    sget-object v3, Lcom/nrsmagic/sudoku/gui/m/c/b;->bp:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/m/a/j;->q:Ljava/net/HttpURLConnection;

    sget-object v2, Lcom/nrsmagic/sudoku/gui/m/c/b;->am:Ljava/lang/String;

    sget-object v3, Lcom/nrsmagic/sudoku/gui/m/c/b;->ae:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/m/a/j;->q:Ljava/net/HttpURLConnection;

    sget-object v2, Lcom/nrsmagic/sudoku/gui/m/c/b;->an:Ljava/lang/String;

    sget-object v3, Lcom/nrsmagic/sudoku/gui/m/c/b;->ao:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/m/a/j;->q:Ljava/net/HttpURLConnection;

    sget-object v2, Lcom/nrsmagic/sudoku/gui/m/c/b;->ap:Ljava/lang/String;

    sget-object v3, Lcom/nrsmagic/sudoku/gui/m/c/b;->aq:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/m/a/j;->q:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/m/a/j;->q:Ljava/net/HttpURLConnection;

    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/m/a/j;->b(Ljava/net/HttpURLConnection;)V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/m/a/j;->q:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v2, 0xc8

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/m/a/j;->q:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v0

    iput v0, p0, Lcom/nrsmagic/sudoku/gui/m/a/j;->i:I

    sget-object v0, Lcom/nrsmagic/sudoku/gui/m/a/i;->b:Ljava/util/Map;

    iget v2, p0, Lcom/nrsmagic/sudoku/gui/m/a/j;->i:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/m/a/j;->n:Ljava/lang/String;

    invoke-static {v2}, Lcom/nrsmagic/sudoku/gui/m/c/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/nrsmagic/sudoku/gui/m/c/b;->t:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/m/a/j;->a:Ljava/lang/String;

    const/16 v0, 0x2b67

    if-ne p7, v0, :cond_2

    new-instance v0, Ljava/io/File;

    sget-object v2, Lcom/nrsmagic/sudoku/gui/m/c/b;->J:Ljava/lang/String;

    invoke-direct {v0, p3, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/m/a/j;->k:Ljava/io/File;

    :goto_0
    invoke-static {p2}, Lcom/nrsmagic/sudoku/gui/m/a/k;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_3

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v3, p0, Lcom/nrsmagic/sudoku/gui/m/a/j;->l:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catch_0
    move-exception v0

    :cond_1
    :goto_2
    return-void

    :cond_2
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/m/a/j;->a:Ljava/lang/String;

    invoke-direct {v0, p3, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/m/a/j;->k:Ljava/io/File;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/m/a/j;->l:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/m/a/j;->j:[Lcom/nrsmagic/sudoku/gui/m/a/i;

    array-length v2, v2

    if-ne v0, v2, :cond_4

    :goto_3
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/m/a/j;->j:[Lcom/nrsmagic/sudoku/gui/m/a/i;

    array-length v0, v0

    if-ge v1, v0, :cond_4

    iget v2, p0, Lcom/nrsmagic/sudoku/gui/m/a/j;->h:I

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/m/a/j;->l:Ljava/util/Map;

    add-int/lit8 v3, v1, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v2

    iput v0, p0, Lcom/nrsmagic/sudoku/gui/m/a/j;->h:I

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_4
    iget v0, p0, Lcom/nrsmagic/sudoku/gui/m/a/j;->i:I

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/m/a/j;->j:[Lcom/nrsmagic/sudoku/gui/m/a/i;

    array-length v1, v1

    rem-int/2addr v0, v1

    if-nez v0, :cond_5

    iget v0, p0, Lcom/nrsmagic/sudoku/gui/m/a/j;->i:I

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/m/a/j;->j:[Lcom/nrsmagic/sudoku/gui/m/a/i;

    array-length v1, v1

    div-int/2addr v0, v1

    :goto_4
    iput v0, p0, Lcom/nrsmagic/sudoku/gui/m/a/j;->m:I

    goto :goto_2

    :cond_5
    iget v0, p0, Lcom/nrsmagic/sudoku/gui/m/a/j;->i:I

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/m/a/j;->j:[Lcom/nrsmagic/sudoku/gui/m/a/i;

    array-length v1, v1

    div-int/2addr v0, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4
.end method

.method public static a(Ljava/net/HttpURLConnection;)Ljava/util/Map;
    .locals 4

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->getHeaderField(I)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private a(Z)V
    .locals 6

    :try_start_0
    sget-object v0, Lcom/nrsmagic/sudoku/gui/m/a/c;->b:Ljava/util/Map;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/m/a/j;->n:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nrsmagic/sudoku/gui/m/a/c;->c:Ljava/util/List;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/m/a/j;->n:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/m/a/j;->a:Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/m/a/j;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/m/a/j;->f:Landroid/content/Context;

    iget v2, p0, Lcom/nrsmagic/sudoku/gui/m/a/j;->b:I

    invoke-static {v0, v1, v2}, Lcom/nrsmagic/sudoku/gui/m/c/i;->a(Ljava/lang/String;Landroid/content/Context;I)V

    const-wide/16 v0, 0x7d0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/m/a/j;->n:Ljava/lang/String;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/m/a/j;->f:Landroid/content/Context;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/nrsmagic/sudoku/gui/m/a/j;->d:Ljava/lang/String;

    iget v4, p0, Lcom/nrsmagic/sudoku/gui/m/a/j;->b:I

    iget-object v5, p0, Lcom/nrsmagic/sudoku/gui/m/a/j;->c:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/nrsmagic/sudoku/gui/m/a/b;->a(Ljava/lang/String;Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private b()V
    .locals 10

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x4

    :try_start_0
    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/m/a/j;->n:Ljava/lang/String;

    invoke-static {v1}, Lcom/nrsmagic/sudoku/gui/m/a/k;->b(Ljava/lang/String;)V

    iget v1, p0, Lcom/nrsmagic/sudoku/gui/m/a/j;->b:I

    const/16 v2, 0x2b67

    if-eq v1, v2, :cond_8

    invoke-direct {p0}, Lcom/nrsmagic/sudoku/gui/m/a/j;->c()Ljava/io/File;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    sget-object v2, Lcom/nrsmagic/sudoku/gui/m/a/j;->o:Ljava/util/Map;

    iget-object v3, p0, Lcom/nrsmagic/sudoku/gui/m/a/j;->n:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/nrsmagic/sudoku/gui/m/a/j;->o:Ljava/util/Map;

    iget-object v3, p0, Lcom/nrsmagic/sudoku/gui/m/a/j;->n:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/m/a/j;->f:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/nrsmagic/sudoku/gui/m/a/j;->b:I

    invoke-static {v4}, Lcom/nrsmagic/sudoku/gui/m/c/i;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/nrsmagic/sudoku/gui/m/a/j;->a:Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/nrsmagic/sudoku/gui/m/a/j;->a:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/nrsmagic/sudoku/gui/m/c/i;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v2, Lcom/nrsmagic/sudoku/gui/m/a/k;->a:Landroid/os/Handler;

    iget v3, p0, Lcom/nrsmagic/sudoku/gui/m/a/j;->b:I

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    sget-object v2, Lcom/nrsmagic/sudoku/gui/m/a/c;->b:Ljava/util/Map;

    iget-object v3, p0, Lcom/nrsmagic/sudoku/gui/m/a/j;->n:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/nrsmagic/sudoku/gui/m/a/c;->c:Ljava/util/List;

    iget-object v3, p0, Lcom/nrsmagic/sudoku/gui/m/a/j;->n:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/nrsmagic/sudoku/gui/m/a/j;->d()V

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/m/a/j;->f:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/nrsmagic/sudoku/gui/m/c/i;->a(Landroid/content/Context;Ljava/io/File;)Landroid/content/Intent;

    move-result-object v6

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/m/a/j;->f:Landroid/content/Context;

    invoke-virtual {v1, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    sget-object v1, Lcom/nrsmagic/sudoku/gui/m/a/g;->a:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/nrsmagic/sudoku/gui/m/a/j;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/nrsmagic/sudoku/gui/m/a/g;->a:Ljava/util/Map;

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/m/a/j;->c:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/m/a/j;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v7, :cond_1

    sget-object v1, Lcom/nrsmagic/sudoku/gui/m/a/g;->a:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/nrsmagic/sudoku/gui/m/a/j;->c:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x4

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "../"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/nrsmagic/sudoku/gui/m/a/g;->a:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/nrsmagic/sudoku/gui/m/a/j;->c:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x4

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const v1, 0x1080082

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/m/a/j;->f:Landroid/content/Context;

    sget-object v3, Lcom/nrsmagic/sudoku/gui/m/c/b;->aA:Ljava/lang/String;

    iget v4, p0, Lcom/nrsmagic/sudoku/gui/m/a/j;->b:I

    const/16 v5, 0x20

    iget-object v7, p0, Lcom/nrsmagic/sudoku/gui/m/a/j;->c:Ljava/lang/String;

    const/4 v8, -0x1

    invoke-static/range {v1 .. v8}, Lcom/nrsmagic/sudoku/gui/m/h;->a(ILandroid/content/Context;Ljava/lang/String;IILandroid/content/Intent;Ljava/lang/String;I)V

    sget-object v1, Lcom/nrsmagic/sudoku/gui/m/a/c;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_3

    sget-object v1, Lcom/nrsmagic/sudoku/gui/m/a/c;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v1, v9, :cond_3

    sget-object v1, Lcom/nrsmagic/sudoku/gui/m/a/c;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/util/Map$Entry;

    move-object v6, v0

    sget-object v1, Lcom/nrsmagic/sudoku/gui/m/a/c;->c:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/m/a/j;->f:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    const/4 v7, 0x2

    aget-object v5, v5, v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    const/4 v7, 0x3

    aget-object v6, v6, v7

    invoke-static/range {v1 .. v6}, Lcom/nrsmagic/sudoku/gui/m/a/b;->a(Ljava/lang/String;Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    sget-object v1, Lcom/nrsmagic/sudoku/gui/m/a/g;->a:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/nrsmagic/sudoku/gui/m/a/j;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/nrsmagic/sudoku/gui/m/a/g;->a:Ljava/util/Map;

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/m/a/j;->c:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/m/a/j;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v7, :cond_5

    sget-object v1, Lcom/nrsmagic/sudoku/gui/m/a/g;->a:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/nrsmagic/sudoku/gui/m/a/j;->c:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x4

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "../"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/nrsmagic/sudoku/gui/m/a/g;->a:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/nrsmagic/sudoku/gui/m/a/j;->c:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x4

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    sget-object v1, Lcom/nrsmagic/sudoku/gui/m/a/g;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-ge v1, v8, :cond_6

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/m/a/j;->f:Landroid/content/Context;

    const/16 v2, 0x64

    invoke-static {v1, v2}, Lcom/nrsmagic/sudoku/gui/m/h;->a(Landroid/content/Context;I)V

    :cond_6
    const-wide/16 v1, 0xbb8

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    sget-object v1, Lcom/nrsmagic/sudoku/gui/m/a/j;->o:Ljava/util/Map;

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/m/a/j;->n:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    sget-object v2, Lcom/nrsmagic/sudoku/gui/m/a/j;->o:Ljava/util/Map;

    iget-object v3, p0, Lcom/nrsmagic/sudoku/gui/m/a/j;->n:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-ge v1, v8, :cond_7

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/nrsmagic/sudoku/gui/m/a/j;->a(Z)V

    goto/16 :goto_0

    :catch_0
    move-exception v1

    goto/16 :goto_0

    :cond_7
    sget-object v1, Lcom/nrsmagic/sudoku/gui/m/a/c;->b:Ljava/util/Map;

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/m/a/j;->n:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/nrsmagic/sudoku/gui/m/a/j;->o:Ljava/util/Map;

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/m/a/j;->n:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/nrsmagic/sudoku/gui/m/a/j;->a(Z)V

    goto/16 :goto_0

    :cond_8
    sget-object v1, Lcom/nrsmagic/sudoku/gui/m/a/k;->a:Landroid/os/Handler;

    const/16 v2, -0xa

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0
.end method

.method public static b(Ljava/net/HttpURLConnection;)V
    .locals 4

    invoke-static {p0}, Lcom/nrsmagic/sudoku/gui/m/a/j;->a(Ljava/net/HttpURLConnection;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/m/a/j;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v1, ""

    goto :goto_1

    :cond_1
    return-void
.end method

.method private c()Ljava/io/File;
    .locals 6

    const/4 v5, 0x0

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/nrsmagic/sudoku/gui/m/a/j;->b:I

    invoke-static {v2}, Lcom/nrsmagic/sudoku/gui/m/c/i;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/m/a/j;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/nrsmagic/sudoku/gui/m/a/j;->a:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/nrsmagic/sudoku/gui/m/a/j;->b:I

    invoke-static {v3}, Lcom/nrsmagic/sudoku/gui/m/c/i;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/nrsmagic/sudoku/gui/m/a/j;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/nrsmagic/sudoku/gui/m/a/j;->a:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    return-object v0
.end method

.method private d()V
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/m/a/j;->f:Landroid/content/Context;

    sget-object v1, Lcom/nrsmagic/sudoku/gui/m/c/b;->aY:Ljava/lang/String;

    invoke-virtual {v0, v1, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/m/a/j;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/nrsmagic/sudoku/gui/m/a/j;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/nrsmagic/sudoku/gui/m/a/j;->a:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/nrsmagic/sudoku/gui/m/a/j;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/nrsmagic/sudoku/gui/m/a/j;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method


# virtual methods
.method public a(Lcom/nrsmagic/sudoku/gui/m/a/f;)I
    .locals 14

    const/4 v9, 0x1

    const/4 v11, 0x0

    :try_start_0
    new-instance v2, Ljava/net/URL;

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/m/a/j;->n:Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/m/a/j;->l:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/m/a/j;->j:[Lcom/nrsmagic/sudoku/gui/m/a/i;

    array-length v1, v1

    if-eq v0, v1, :cond_b

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/m/a/j;->l:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    move v0, v11

    :goto_0
    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/m/a/j;->j:[Lcom/nrsmagic/sudoku/gui/m/a/i;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/m/a/j;->l:Ljava/util/Map;

    add-int/lit8 v3, v0, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/nrsmagic/sudoku/gui/m/a/j;->h:I

    const/16 v8, 0xa

    :goto_1
    move v10, v11

    :goto_2
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/m/a/j;->j:[Lcom/nrsmagic/sudoku/gui/m/a/i;

    array-length v0, v0

    if-ge v10, v0, :cond_3

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/m/a/j;->l:Ljava/util/Map;

    add-int/lit8 v1, v10, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p0, Lcom/nrsmagic/sudoku/gui/m/a/j;->m:I

    if-ge v0, v1, :cond_1

    iget v0, p0, Lcom/nrsmagic/sudoku/gui/m/a/j;->h:I

    iget v1, p0, Lcom/nrsmagic/sudoku/gui/m/a/j;->i:I

    if-ge v0, v1, :cond_1

    iget-object v12, p0, Lcom/nrsmagic/sudoku/gui/m/a/j;->j:[Lcom/nrsmagic/sudoku/gui/m/a/i;

    new-instance v0, Lcom/nrsmagic/sudoku/gui/m/a/i;

    iget-object v3, p0, Lcom/nrsmagic/sudoku/gui/m/a/j;->k:Ljava/io/File;

    iget v4, p0, Lcom/nrsmagic/sudoku/gui/m/a/j;->m:I

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/m/a/j;->l:Ljava/util/Map;

    add-int/lit8 v5, v10, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/lit8 v6, v10, 0x1

    iget-object v7, p0, Lcom/nrsmagic/sudoku/gui/m/a/j;->q:Ljava/net/HttpURLConnection;

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/nrsmagic/sudoku/gui/m/a/i;-><init>(Lcom/nrsmagic/sudoku/gui/m/a/j;Ljava/net/URL;Ljava/io/File;IIILjava/net/HttpURLConnection;I)V

    aput-object v0, v12, v10

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/m/a/j;->j:[Lcom/nrsmagic/sudoku/gui/m/a/i;

    aget-object v0, v0, v10

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/nrsmagic/sudoku/gui/m/a/i;->setPriority(I)V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/m/a/j;->j:[Lcom/nrsmagic/sudoku/gui/m/a/i;

    aget-object v0, v0, v10

    invoke-virtual {v0}, Lcom/nrsmagic/sudoku/gui/m/a/i;->start()V

    :goto_3
    add-int/lit8 v0, v10, 0x1

    move v10, v0

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/m/a/j;->j:[Lcom/nrsmagic/sudoku/gui/m/a/i;

    const/4 v1, 0x0

    aput-object v1, v0, v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    :cond_2
    :goto_4
    iget v0, p0, Lcom/nrsmagic/sudoku/gui/m/a/j;->h:I

    return v0

    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/m/a/j;->n:Ljava/lang/String;

    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/m/a/k;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/m/a/j;->c:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/m/a/j;->n:Ljava/lang/String;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/m/a/j;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/nrsmagic/sudoku/gui/m/a/j;->l:Ljava/util/Map;

    iget v4, p0, Lcom/nrsmagic/sudoku/gui/m/a/j;->b:I

    iget-object v5, p0, Lcom/nrsmagic/sudoku/gui/m/a/j;->c:Ljava/lang/String;

    invoke-static {v0, v1, v3, v4, v5}, Lcom/nrsmagic/sudoku/gui/m/a/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ILjava/lang/String;)V

    :cond_4
    move v0, v9

    :cond_5
    :goto_5
    if-eqz v0, :cond_8

    const-wide/16 v0, 0x3e8

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    move v12, v11

    move v0, v11

    :goto_6
    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/m/a/j;->j:[Lcom/nrsmagic/sudoku/gui/m/a/i;

    array-length v1, v1

    if-ge v12, v1, :cond_7

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/m/a/j;->j:[Lcom/nrsmagic/sudoku/gui/m/a/i;

    aget-object v1, v1, v12

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/m/a/j;->j:[Lcom/nrsmagic/sudoku/gui/m/a/i;

    aget-object v1, v1, v12

    invoke-virtual {v1}, Lcom/nrsmagic/sudoku/gui/m/a/i;->a()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/m/a/j;->j:[Lcom/nrsmagic/sudoku/gui/m/a/i;

    aget-object v0, v0, v12

    invoke-virtual {v0}, Lcom/nrsmagic/sudoku/gui/m/a/i;->b()J

    move-result-wide v0

    const-wide/16 v3, -0x1

    cmp-long v0, v0, v3

    if-nez v0, :cond_a

    iget v0, p0, Lcom/nrsmagic/sudoku/gui/m/a/j;->p:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/nrsmagic/sudoku/gui/m/a/j;->p:I

    iget v0, p0, Lcom/nrsmagic/sudoku/gui/m/a/j;->p:I

    if-gez v0, :cond_9

    move v10, v11

    :goto_7
    iget-object v13, p0, Lcom/nrsmagic/sudoku/gui/m/a/j;->j:[Lcom/nrsmagic/sudoku/gui/m/a/i;

    new-instance v0, Lcom/nrsmagic/sudoku/gui/m/a/i;

    iget-object v3, p0, Lcom/nrsmagic/sudoku/gui/m/a/j;->k:Ljava/io/File;

    iget v4, p0, Lcom/nrsmagic/sudoku/gui/m/a/j;->m:I

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/m/a/j;->l:Ljava/util/Map;

    add-int/lit8 v5, v12, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/lit8 v6, v12, 0x1

    iget-object v7, p0, Lcom/nrsmagic/sudoku/gui/m/a/j;->q:Ljava/net/HttpURLConnection;

    const/4 v8, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/nrsmagic/sudoku/gui/m/a/i;-><init>(Lcom/nrsmagic/sudoku/gui/m/a/j;Ljava/net/URL;Ljava/io/File;IIILjava/net/HttpURLConnection;I)V

    aput-object v0, v13, v12

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/m/a/j;->j:[Lcom/nrsmagic/sudoku/gui/m/a/i;

    aget-object v0, v0, v12

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/nrsmagic/sudoku/gui/m/a/i;->setPriority(I)V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/m/a/j;->j:[Lcom/nrsmagic/sudoku/gui/m/a/i;

    aget-object v0, v0, v12

    invoke-virtual {v0}, Lcom/nrsmagic/sudoku/gui/m/a/i;->start()V

    move v0, v10

    :cond_6
    :goto_8
    add-int/lit8 v1, v12, 0x1

    move v12, v1

    goto :goto_6

    :cond_7
    if-eqz p1, :cond_5

    iget v1, p0, Lcom/nrsmagic/sudoku/gui/m/a/j;->h:I

    invoke-interface {p1, v1}, Lcom/nrsmagic/sudoku/gui/m/a/f;->a(I)V

    goto :goto_5

    :cond_8
    iget v0, p0, Lcom/nrsmagic/sudoku/gui/m/a/j;->h:I

    iget v1, p0, Lcom/nrsmagic/sudoku/gui/m/a/j;->i:I

    if-ne v0, v1, :cond_2

    invoke-direct {p0}, Lcom/nrsmagic/sudoku/gui/m/a/j;->b()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_4

    :cond_9
    move v10, v9

    goto :goto_7

    :cond_a
    move v0, v9

    goto :goto_8

    :cond_b
    move v8, v9

    goto/16 :goto_1
.end method

.method protected declared-synchronized a(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/nrsmagic/sudoku/gui/m/a/j;->h:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized a(II)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/m/a/j;->l:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/m/a/j;->n:Ljava/lang/String;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/m/a/j;->f:Landroid/content/Context;

    invoke-static {v0, p1, p2, v1}, Lcom/nrsmagic/sudoku/gui/m/a/k;->a(Ljava/lang/String;IILandroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nrsmagic/sudoku/gui/m/a/j;->g:Z

    return v0
.end method
