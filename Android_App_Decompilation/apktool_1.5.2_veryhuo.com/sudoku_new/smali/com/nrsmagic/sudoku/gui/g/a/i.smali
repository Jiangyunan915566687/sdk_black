.class public Lcom/nrsmagic/sudoku/gui/g/a/i;
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

.field private j:[Lcom/nrsmagic/sudoku/gui/g/a/h;

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

    sput-object v0, Lcom/nrsmagic/sudoku/gui/g/a/i;->o:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;IILjava/lang/String;ILjava/lang/String;)V
    .locals 7

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/nrsmagic/sudoku/gui/g/a/i;->h:I

    iput v1, p0, Lcom/nrsmagic/sudoku/gui/g/a/i;->i:I

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/g/a/i;->l:Ljava/util/Map;

    const/4 v0, 0x3

    iput v0, p0, Lcom/nrsmagic/sudoku/gui/g/a/i;->p:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/g/a/i;->q:Ljava/net/HttpURLConnection;

    :try_start_0
    iput p7, p0, Lcom/nrsmagic/sudoku/gui/g/a/i;->b:I

    iput-object p8, p0, Lcom/nrsmagic/sudoku/gui/g/a/i;->c:Ljava/lang/String;

    iput-object p6, p0, Lcom/nrsmagic/sudoku/gui/g/a/i;->d:Ljava/lang/String;

    iput-object p1, p0, Lcom/nrsmagic/sudoku/gui/g/a/i;->f:Landroid/content/Context;

    iput-object p2, p0, Lcom/nrsmagic/sudoku/gui/g/a/i;->n:Ljava/lang/String;

    iput p5, p0, Lcom/nrsmagic/sudoku/gui/g/a/i;->e:I

    invoke-static {p1}, Lcom/nrsmagic/sudoku/gui/g/a/j;->a(Landroid/content/Context;)V

    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p3}, Ljava/io/File;->mkdirs()Z

    :cond_0
    new-array v0, p4, [Lcom/nrsmagic/sudoku/gui/g/a/h;

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/g/a/i;->j:[Lcom/nrsmagic/sudoku/gui/g/a/h;

    invoke-static {p1}, Lcom/nrsmagic/sudoku/gui/g/c/s;->k(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/net/Proxy;

    sget-object v3, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v4, Ljava/net/InetSocketAddress;

    sget-object v5, Lcom/nrsmagic/sudoku/gui/g/c/h;->ab:Ljava/lang/String;

    const/16 v6, 0x50

    invoke-direct {v4, v5, v6}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v0, v3, v4}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    invoke-virtual {v2, v0}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/g/a/i;->q:Ljava/net/HttpURLConnection;

    sget-object v0, Lcom/nrsmagic/sudoku/gui/g/c/h;->ac:Ljava/lang/String;

    invoke-static {p1}, Lcom/nrsmagic/sudoku/gui/g/c/s;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/net/Proxy;

    sget-object v3, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v4, Ljava/net/InetSocketAddress;

    sget-object v5, Lcom/nrsmagic/sudoku/gui/g/c/h;->ad:Ljava/lang/String;

    const/16 v6, 0x50

    invoke-direct {v4, v5, v6}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v0, v3, v4}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    invoke-virtual {v2, v0}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/g/a/i;->q:Ljava/net/HttpURLConnection;

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/g/a/i;->q:Ljava/net/HttpURLConnection;

    const/16 v3, 0x1388

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/g/a/i;->q:Ljava/net/HttpURLConnection;

    sget-object v3, Lcom/nrsmagic/sudoku/gui/g/c/h;->be:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/g/a/i;->q:Ljava/net/HttpURLConnection;

    sget-object v3, Lcom/nrsmagic/sudoku/gui/g/c/h;->al:Ljava/lang/String;

    sget-object v4, Lcom/nrsmagic/sudoku/gui/g/c/h;->am:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/g/a/i;->q:Ljava/net/HttpURLConnection;

    sget-object v3, Lcom/nrsmagic/sudoku/gui/g/c/h;->an:Ljava/lang/String;

    sget-object v4, Lcom/nrsmagic/sudoku/gui/g/c/h;->ao:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/g/a/i;->q:Ljava/net/HttpURLConnection;

    sget-object v3, Lcom/nrsmagic/sudoku/gui/g/c/h;->by:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/g/a/i;->q:Ljava/net/HttpURLConnection;

    sget-object v2, Lcom/nrsmagic/sudoku/gui/g/c/h;->ap:Ljava/lang/String;

    sget-object v3, Lcom/nrsmagic/sudoku/gui/g/c/h;->ah:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/g/a/i;->q:Ljava/net/HttpURLConnection;

    sget-object v2, Lcom/nrsmagic/sudoku/gui/g/c/h;->aq:Ljava/lang/String;

    sget-object v3, Lcom/nrsmagic/sudoku/gui/g/c/h;->ar:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/g/a/i;->q:Ljava/net/HttpURLConnection;

    sget-object v2, Lcom/nrsmagic/sudoku/gui/g/c/h;->as:Ljava/lang/String;

    sget-object v3, Lcom/nrsmagic/sudoku/gui/g/c/h;->at:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/g/a/i;->q:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/g/a/i;->q:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v2, 0xc8

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/g/a/i;->q:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v0

    iput v0, p0, Lcom/nrsmagic/sudoku/gui/g/a/i;->i:I

    sget-object v0, Lcom/nrsmagic/sudoku/gui/g/a/h;->a:Ljava/util/Map;

    iget v2, p0, Lcom/nrsmagic/sudoku/gui/g/a/i;->i:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/g/a/i;->n:Ljava/lang/String;

    invoke-static {v2}, Lcom/nrsmagic/sudoku/gui/g/c/p;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "s"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/g/a/i;->a:Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/g/a/i;->a:Ljava/lang/String;

    invoke-direct {v0, p3, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/g/a/i;->k:Ljava/io/File;

    invoke-static {p2}, Lcom/nrsmagic/sudoku/gui/g/a/j;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_4

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v3, p0, Lcom/nrsmagic/sudoku/gui/g/a/i;->l:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catch_0
    move-exception v0

    :cond_2
    :goto_2
    return-void

    :cond_3
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/g/a/i;->q:Ljava/net/HttpURLConnection;

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/g/a/i;->l:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/g/a/i;->j:[Lcom/nrsmagic/sudoku/gui/g/a/h;

    array-length v2, v2

    if-ne v0, v2, :cond_5

    :goto_3
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/g/a/i;->j:[Lcom/nrsmagic/sudoku/gui/g/a/h;

    array-length v0, v0

    if-ge v1, v0, :cond_5

    iget v2, p0, Lcom/nrsmagic/sudoku/gui/g/a/i;->h:I

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/g/a/i;->l:Ljava/util/Map;

    add-int/lit8 v3, v1, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v2

    iput v0, p0, Lcom/nrsmagic/sudoku/gui/g/a/i;->h:I

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_5
    iget v0, p0, Lcom/nrsmagic/sudoku/gui/g/a/i;->i:I

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/g/a/i;->j:[Lcom/nrsmagic/sudoku/gui/g/a/h;

    array-length v1, v1

    rem-int/2addr v0, v1

    if-nez v0, :cond_6

    iget v0, p0, Lcom/nrsmagic/sudoku/gui/g/a/i;->i:I

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/g/a/i;->j:[Lcom/nrsmagic/sudoku/gui/g/a/h;

    array-length v1, v1

    div-int/2addr v0, v1

    :goto_4
    iput v0, p0, Lcom/nrsmagic/sudoku/gui/g/a/i;->m:I

    goto :goto_2

    :cond_6
    iget v0, p0, Lcom/nrsmagic/sudoku/gui/g/a/i;->i:I

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/g/a/i;->j:[Lcom/nrsmagic/sudoku/gui/g/a/h;

    array-length v1, v1

    div-int/2addr v0, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4
.end method

.method private c()V
    .locals 8

    const/4 v5, 0x2

    const/4 v3, 0x1

    :try_start_0
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/g/a/i;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/g/a/i;->f:Landroid/content/Context;

    sget-object v2, Lcom/nrsmagic/sudoku/gui/g/c/h;->aS:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/nrsmagic/sudoku/gui/g/a/j;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/nrsmagic/sudoku/gui/g/a/i;->d()Ljava/io/File;

    move-result-object v6

    const-wide/16 v0, 0x64

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    iget v0, p0, Lcom/nrsmagic/sudoku/gui/g/a/i;->e:I

    if-ne v0, v3, :cond_0

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/g/a/i;->n:Ljava/lang/String;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    sget-object v1, Lcom/nrsmagic/sudoku/gui/g/d/c;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    const-wide/16 v0, 0x1f4

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    sget-object v0, Lcom/nrsmagic/sudoku/gui/g/a/i;->o:Ljava/util/Map;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/g/a/i;->n:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/nrsmagic/sudoku/gui/g/a/i;->o:Ljava/util/Map;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/g/a/i;->n:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/g/a/i;->f:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/nrsmagic/sudoku/gui/g/a/i;->b:I

    invoke-static {v2}, Lcom/nrsmagic/sudoku/gui/g/c/s;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/g/a/i;->a:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/nrsmagic/sudoku/gui/g/a/i;->a:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nrsmagic/sudoku/gui/g/c/s;->h(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/nrsmagic/sudoku/gui/g/g;->a()Lcom/nrsmagic/sudoku/gui/g/g;

    move-result-object v0

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/g/a/i;->f:Landroid/content/Context;

    iget v2, p0, Lcom/nrsmagic/sudoku/gui/g/a/i;->b:I

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Lcom/nrsmagic/sudoku/gui/g/g;->a(Landroid/content/Context;II)V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/g/a/i;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/g/a/i;->n:Ljava/lang/String;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/g/a/i;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/g/a/i;->l:Ljava/util/Map;

    iget v3, p0, Lcom/nrsmagic/sudoku/gui/g/a/i;->b:I

    iget-object v4, p0, Lcom/nrsmagic/sudoku/gui/g/a/i;->c:Ljava/lang/String;

    const-string v5, "f"

    invoke-static/range {v0 .. v5}, Lcom/nrsmagic/sudoku/gui/g/a/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ILjava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/g/a/i;->f:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v6, v1}, Lcom/nrsmagic/sudoku/gui/g/c/s;->a(Landroid/content/Context;Ljava/io/File;Z)Landroid/content/Intent;

    move-result-object v5

    const v0, 0x1080082

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/g/a/i;->f:Landroid/content/Context;

    sget-object v2, Lcom/nrsmagic/sudoku/gui/g/c/h;->P:Ljava/lang/String;

    iget v3, p0, Lcom/nrsmagic/sudoku/gui/g/a/i;->b:I

    const/16 v4, 0x20

    iget-object v6, p0, Lcom/nrsmagic/sudoku/gui/g/a/i;->c:Ljava/lang/String;

    const/4 v7, -0x1

    invoke-static/range {v0 .. v7}, Lcom/nrsmagic/sudoku/gui/g/d;->a(ILandroid/content/Context;Ljava/lang/String;IILandroid/content/Intent;Ljava/lang/String;I)V

    :goto_0
    return-void

    :cond_3
    const-wide/16 v0, 0xbb8

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    sget-object v0, Lcom/nrsmagic/sudoku/gui/g/a/i;->o:Ljava/util/Map;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/g/a/i;->n:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    sget-object v1, Lcom/nrsmagic/sudoku/gui/g/a/i;->o:Ljava/util/Map;

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/g/a/i;->n:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-gt v0, v5, :cond_4

    invoke-direct {p0}, Lcom/nrsmagic/sudoku/gui/g/a/i;->e()V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/nrsmagic/sudoku/gui/g/a/i;->o:Ljava/util/Map;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/g/a/i;->n:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/g/a/i;->a:Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/g/a/i;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/g/a/i;->f:Landroid/content/Context;

    iget v2, p0, Lcom/nrsmagic/sudoku/gui/g/a/i;->b:I

    invoke-static {v0, v1, v2}, Lcom/nrsmagic/sudoku/gui/g/c/s;->a(Ljava/lang/String;Landroid/content/Context;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method private d()Ljava/io/File;
    .locals 6

    const/4 v5, 0x0

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/nrsmagic/sudoku/gui/g/a/i;->b:I

    invoke-static {v2}, Lcom/nrsmagic/sudoku/gui/g/c/s;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/g/a/i;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/nrsmagic/sudoku/gui/g/a/i;->a:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v5, v3}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/nrsmagic/sudoku/gui/g/a/i;->b:I

    invoke-static {v3}, Lcom/nrsmagic/sudoku/gui/g/c/s;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/nrsmagic/sudoku/gui/g/a/i;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/nrsmagic/sudoku/gui/g/a/i;->a:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    return-object v0
.end method

.method private e()V
    .locals 6

    const/4 v3, 0x1

    :try_start_0
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/g/a/i;->a:Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/g/a/i;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/g/a/i;->f:Landroid/content/Context;

    iget v2, p0, Lcom/nrsmagic/sudoku/gui/g/a/i;->b:I

    invoke-static {v0, v1, v2}, Lcom/nrsmagic/sudoku/gui/g/c/s;->a(Ljava/lang/String;Landroid/content/Context;I)V

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/g/a/i;->n:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/g/a/i;->d:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/nrsmagic/sudoku/gui/g/a/i;->b:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/g/a/i;->c:Ljava/lang/String;

    aput-object v2, v0, v1

    const-wide/16 v1, 0x7d0

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    iget v1, p0, Lcom/nrsmagic/sudoku/gui/g/a/i;->e:I

    if-ne v1, v3, :cond_0

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    const/4 v2, 0x4

    iput v2, v1, Landroid/os/Message;->what:I

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    sget-object v0, Lcom/nrsmagic/sudoku/gui/g/d/c;->a:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/g/a/i;->n:Ljava/lang/String;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/g/a/i;->f:Landroid/content/Context;

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/nrsmagic/sudoku/gui/g/a/i;->d:Ljava/lang/String;

    iget v4, p0, Lcom/nrsmagic/sudoku/gui/g/a/i;->b:I

    iget-object v5, p0, Lcom/nrsmagic/sudoku/gui/g/a/i;->c:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/nrsmagic/sudoku/gui/g/a/b;->a(Ljava/lang/String;Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/nrsmagic/sudoku/gui/g/a/e;)I
    .locals 14

    const/4 v9, 0x1

    const/4 v11, 0x0

    :try_start_0
    new-instance v2, Ljava/net/URL;

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/g/a/i;->n:Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/g/a/i;->l:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/g/a/i;->j:[Lcom/nrsmagic/sudoku/gui/g/a/h;

    array-length v1, v1

    if-eq v0, v1, :cond_b

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/g/a/i;->l:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    move v0, v11

    :goto_0
    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/g/a/i;->j:[Lcom/nrsmagic/sudoku/gui/g/a/h;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/g/a/i;->l:Ljava/util/Map;

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

    iput v0, p0, Lcom/nrsmagic/sudoku/gui/g/a/i;->h:I

    const/16 v8, 0xa

    :goto_1
    move v10, v11

    :goto_2
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/g/a/i;->j:[Lcom/nrsmagic/sudoku/gui/g/a/h;

    array-length v0, v0

    if-ge v10, v0, :cond_3

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/g/a/i;->l:Ljava/util/Map;

    add-int/lit8 v1, v10, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p0, Lcom/nrsmagic/sudoku/gui/g/a/i;->m:I

    if-ge v0, v1, :cond_1

    iget v0, p0, Lcom/nrsmagic/sudoku/gui/g/a/i;->h:I

    iget v1, p0, Lcom/nrsmagic/sudoku/gui/g/a/i;->i:I

    if-ge v0, v1, :cond_1

    iget-object v12, p0, Lcom/nrsmagic/sudoku/gui/g/a/i;->j:[Lcom/nrsmagic/sudoku/gui/g/a/h;

    new-instance v0, Lcom/nrsmagic/sudoku/gui/g/a/h;

    iget-object v3, p0, Lcom/nrsmagic/sudoku/gui/g/a/i;->k:Ljava/io/File;

    iget v4, p0, Lcom/nrsmagic/sudoku/gui/g/a/i;->m:I

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/g/a/i;->l:Ljava/util/Map;

    add-int/lit8 v5, v10, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/lit8 v6, v10, 0x1

    iget-object v7, p0, Lcom/nrsmagic/sudoku/gui/g/a/i;->q:Ljava/net/HttpURLConnection;

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/nrsmagic/sudoku/gui/g/a/h;-><init>(Lcom/nrsmagic/sudoku/gui/g/a/i;Ljava/net/URL;Ljava/io/File;IIILjava/net/HttpURLConnection;I)V

    aput-object v0, v12, v10

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/g/a/i;->j:[Lcom/nrsmagic/sudoku/gui/g/a/h;

    aget-object v0, v0, v10

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/nrsmagic/sudoku/gui/g/a/h;->setPriority(I)V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/g/a/i;->j:[Lcom/nrsmagic/sudoku/gui/g/a/h;

    aget-object v0, v0, v10

    invoke-virtual {v0}, Lcom/nrsmagic/sudoku/gui/g/a/h;->start()V

    :goto_3
    add-int/lit8 v0, v10, 0x1

    move v10, v0

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/g/a/i;->j:[Lcom/nrsmagic/sudoku/gui/g/a/h;

    const/4 v1, 0x0

    aput-object v1, v0, v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    :cond_2
    :goto_4
    iget v0, p0, Lcom/nrsmagic/sudoku/gui/g/a/i;->h:I

    return v0

    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/g/a/i;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/g/a/i;->f:Landroid/content/Context;

    sget-object v3, Lcom/nrsmagic/sudoku/gui/g/c/h;->aS:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lcom/nrsmagic/sudoku/gui/g/a/j;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/g/a/i;->c:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v3, p0, Lcom/nrsmagic/sudoku/gui/g/a/i;->n:Ljava/lang/String;

    iget-object v4, p0, Lcom/nrsmagic/sudoku/gui/g/a/i;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/nrsmagic/sudoku/gui/g/a/i;->l:Ljava/util/Map;

    iget v6, p0, Lcom/nrsmagic/sudoku/gui/g/a/i;->b:I

    iget-object v7, p0, Lcom/nrsmagic/sudoku/gui/g/a/i;->c:Ljava/lang/String;

    sget-object v8, Lcom/nrsmagic/sudoku/gui/g/c/h;->aS:Ljava/lang/String;

    invoke-static/range {v3 .. v8}, Lcom/nrsmagic/sudoku/gui/g/a/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ILjava/lang/String;Ljava/lang/String;)V

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
    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/g/a/i;->j:[Lcom/nrsmagic/sudoku/gui/g/a/h;

    array-length v1, v1

    if-ge v12, v1, :cond_7

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/g/a/i;->j:[Lcom/nrsmagic/sudoku/gui/g/a/h;

    aget-object v1, v1, v12

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/g/a/i;->j:[Lcom/nrsmagic/sudoku/gui/g/a/h;

    aget-object v1, v1, v12

    invoke-virtual {v1}, Lcom/nrsmagic/sudoku/gui/g/a/h;->a()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/g/a/i;->j:[Lcom/nrsmagic/sudoku/gui/g/a/h;

    aget-object v0, v0, v12

    invoke-virtual {v0}, Lcom/nrsmagic/sudoku/gui/g/a/h;->b()J

    move-result-wide v0

    const-wide/16 v3, -0x1

    cmp-long v0, v0, v3

    if-nez v0, :cond_a

    iget v0, p0, Lcom/nrsmagic/sudoku/gui/g/a/i;->p:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/nrsmagic/sudoku/gui/g/a/i;->p:I

    iget v0, p0, Lcom/nrsmagic/sudoku/gui/g/a/i;->p:I

    if-gez v0, :cond_9

    move v10, v11

    :goto_7
    iget-object v13, p0, Lcom/nrsmagic/sudoku/gui/g/a/i;->j:[Lcom/nrsmagic/sudoku/gui/g/a/h;

    new-instance v0, Lcom/nrsmagic/sudoku/gui/g/a/h;

    iget-object v3, p0, Lcom/nrsmagic/sudoku/gui/g/a/i;->k:Ljava/io/File;

    iget v4, p0, Lcom/nrsmagic/sudoku/gui/g/a/i;->m:I

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/g/a/i;->l:Ljava/util/Map;

    add-int/lit8 v5, v12, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/lit8 v6, v12, 0x1

    iget-object v7, p0, Lcom/nrsmagic/sudoku/gui/g/a/i;->q:Ljava/net/HttpURLConnection;

    const/4 v8, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/nrsmagic/sudoku/gui/g/a/h;-><init>(Lcom/nrsmagic/sudoku/gui/g/a/i;Ljava/net/URL;Ljava/io/File;IIILjava/net/HttpURLConnection;I)V

    aput-object v0, v13, v12

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/g/a/i;->j:[Lcom/nrsmagic/sudoku/gui/g/a/h;

    aget-object v0, v0, v12

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/nrsmagic/sudoku/gui/g/a/h;->setPriority(I)V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/g/a/i;->j:[Lcom/nrsmagic/sudoku/gui/g/a/h;

    aget-object v0, v0, v12

    invoke-virtual {v0}, Lcom/nrsmagic/sudoku/gui/g/a/h;->start()V

    move v0, v10

    :cond_6
    :goto_8
    add-int/lit8 v1, v12, 0x1

    move v12, v1

    goto :goto_6

    :cond_7
    if-eqz p1, :cond_5

    iget v1, p0, Lcom/nrsmagic/sudoku/gui/g/a/i;->h:I

    invoke-interface {p1, v1}, Lcom/nrsmagic/sudoku/gui/g/a/e;->a(I)V

    goto :goto_5

    :cond_8
    iget v0, p0, Lcom/nrsmagic/sudoku/gui/g/a/i;->h:I

    iget v1, p0, Lcom/nrsmagic/sudoku/gui/g/a/i;->i:I

    if-ne v0, v1, :cond_2

    invoke-direct {p0}, Lcom/nrsmagic/sudoku/gui/g/a/i;->c()V
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

.method public a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nrsmagic/sudoku/gui/g/a/i;->g:Z

    return-void
.end method

.method protected declared-synchronized a(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/nrsmagic/sudoku/gui/g/a/i;->h:I
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
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/g/a/i;->l:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/g/a/i;->n:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Lcom/nrsmagic/sudoku/gui/g/a/j;->a(Ljava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nrsmagic/sudoku/gui/g/a/i;->g:Z

    return v0
.end method
