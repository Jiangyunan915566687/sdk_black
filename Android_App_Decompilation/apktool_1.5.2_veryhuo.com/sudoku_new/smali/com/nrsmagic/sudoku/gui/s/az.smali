.class public Lcom/nrsmagic/sudoku/gui/s/az;
.super Ljava/lang/Object;


# static fields
.field public static a:I

.field private static final b:[Ljava/lang/String;

.field private static c:Lcom/nrsmagic/sudoku/gui/s/am;

.field private static d:I

.field private static e:Lcom/nrsmagic/sudoku/gui/s/ag;

.field private static f:Landroid/os/Looper;

.field private static g:Lcom/nrsmagic/sudoku/gui/s/ba;

.field private static h:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    sget-object v1, Lcom/nrsmagic/sudoku/gui/s/l;->a:Ljava/lang/String;

    aput-object v1, v0, v2

    sput-object v0, Lcom/nrsmagic/sudoku/gui/s/az;->b:[Ljava/lang/String;

    const/4 v0, -0x1

    sput v0, Lcom/nrsmagic/sudoku/gui/s/az;->a:I

    sput v2, Lcom/nrsmagic/sudoku/gui/s/az;->d:I

    return-void
.end method

.method public static a(Ljava/util/HashMap;I)Ljava/lang/String;
    .locals 6

    sget-object v0, Lcom/nrsmagic/sudoku/gui/s/az;->b:[Ljava/lang/String;

    aget-object v3, v0, p1

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

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

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

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

.method public static a()V
    .locals 2

    const/4 v1, 0x0

    sget-object v0, Lcom/nrsmagic/sudoku/gui/s/az;->f:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    sput-object v1, Lcom/nrsmagic/sudoku/gui/s/az;->c:Lcom/nrsmagic/sudoku/gui/s/am;

    sput-object v1, Lcom/nrsmagic/sudoku/gui/s/az;->e:Lcom/nrsmagic/sudoku/gui/s/ag;

    sput-object v1, Lcom/nrsmagic/sudoku/gui/s/az;->f:Landroid/os/Looper;

    sput-object v1, Lcom/nrsmagic/sudoku/gui/s/az;->g:Lcom/nrsmagic/sudoku/gui/s/ba;

    sput-object v1, Lcom/nrsmagic/sudoku/gui/s/az;->h:Landroid/content/Context;

    const/4 v0, 0x0

    sput v0, Lcom/nrsmagic/sudoku/gui/s/az;->d:I

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 3

    sput-object p0, Lcom/nrsmagic/sudoku/gui/s/az;->h:Landroid/content/Context;

    new-instance v0, Lcom/nrsmagic/sudoku/gui/s/am;

    invoke-direct {v0, p0}, Lcom/nrsmagic/sudoku/gui/s/am;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/nrsmagic/sudoku/gui/s/az;->c:Lcom/nrsmagic/sudoku/gui/s/am;

    invoke-static {p0}, Lcom/nrsmagic/sudoku/gui/s/ag;->a(Landroid/content/Context;)Lcom/nrsmagic/sudoku/gui/s/ag;

    move-result-object v0

    sput-object v0, Lcom/nrsmagic/sudoku/gui/s/az;->e:Lcom/nrsmagic/sudoku/gui/s/ag;

    sget-object v0, Lcom/nrsmagic/sudoku/gui/s/az;->e:Lcom/nrsmagic/sudoku/gui/s/ag;

    invoke-virtual {v0}, Lcom/nrsmagic/sudoku/gui/s/ag;->a()V

    new-instance v0, Landroid/os/HandlerThread;

    sget-object v1, Lcom/nrsmagic/sudoku/gui/s/l;->q:Ljava/lang/String;

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    sput-object v0, Lcom/nrsmagic/sudoku/gui/s/az;->f:Landroid/os/Looper;

    new-instance v0, Lcom/nrsmagic/sudoku/gui/s/ba;

    sget-object v1, Lcom/nrsmagic/sudoku/gui/s/az;->f:Landroid/os/Looper;

    invoke-direct {v0, v1}, Lcom/nrsmagic/sudoku/gui/s/ba;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/nrsmagic/sudoku/gui/s/az;->g:Lcom/nrsmagic/sudoku/gui/s/ba;

    return-void
.end method

.method public static a(Landroid/content/Context;Z)V
    .locals 7

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/nrsmagic/sudoku/gui/s/bb;->b(J)V

    :cond_0
    invoke-static {p0}, Lcom/nrsmagic/sudoku/gui/s/bb;->p(Landroid/content/Context;)I

    move-result v0

    move v2, v1

    :goto_0
    if-nez v1, :cond_4

    const/4 v3, 0x4

    if-ge v2, v3, :cond_4

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    const-string v4, "mounted"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {p0, v0}, Lcom/nrsmagic/sudoku/gui/s/az;->a(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p0, v0}, Lcom/nrsmagic/sudoku/gui/s/bb;->b(Landroid/content/Context;I)Z

    :goto_1
    if-nez v1, :cond_1

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    sget-object v3, Lcom/nrsmagic/sudoku/gui/s/az;->c:Lcom/nrsmagic/sudoku/gui/s/am;

    iget-object v3, v3, Lcom/nrsmagic/sudoku/gui/s/am;->j:Ljava/lang/String;

    invoke-static {p0, v3}, Lcom/nrsmagic/sudoku/gui/s/bb;->c(Landroid/content/Context;Ljava/lang/String;)Z

    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    const-wide/16 v3, 0x7d0

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    sget-object v3, Lcom/nrsmagic/sudoku/gui/s/az;->b:[Ljava/lang/String;

    array-length v3, v3

    rem-int/2addr v0, v3

    goto :goto_1

    :cond_3
    sget-object v4, Lcom/nrsmagic/sudoku/gui/s/d/b;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/nrsmagic/sudoku/gui/s/l;->cM:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_4
    const-string v0, "m"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/nrsmagic/sudoku/gui/s/bb;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/nrsmagic/sudoku/gui/s/az;->d:I

    return-void
.end method

.method public static a(Landroid/content/Intent;II)V
    .locals 5

    sget-object v0, Lcom/nrsmagic/sudoku/gui/s/az;->g:Lcom/nrsmagic/sudoku/gui/s/ba;

    invoke-virtual {v0}, Lcom/nrsmagic/sudoku/gui/s/ba;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput p2, v0, Landroid/os/Message;->arg1:I

    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/nrsmagic/sudoku/gui/s/l;->j:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/nrsmagic/sudoku/gui/s/l;->cf:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/nrsmagic/sudoku/gui/s/l;->B:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/nrsmagic/sudoku/gui/s/b/a;

    invoke-direct {v1}, Lcom/nrsmagic/sudoku/gui/s/b/a;-><init>()V

    sget-object v2, Lcom/nrsmagic/sudoku/gui/s/l;->cg:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/nrsmagic/sudoku/gui/s/l;->j:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/nrsmagic/sudoku/gui/s/l;->cf:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/nrsmagic/sudoku/gui/s/l;->B:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/nrsmagic/sudoku/gui/s/az;->g:Lcom/nrsmagic/sudoku/gui/s/ba;

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/nrsmagic/sudoku/gui/s/b/a;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;Landroid/os/Message;)V

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lcom/nrsmagic/sudoku/gui/s/az;->g:Lcom/nrsmagic/sudoku/gui/s/ba;

    invoke-virtual {v1, v0}, Lcom/nrsmagic/sudoku/gui/s/ba;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;I)Z
    .locals 6

    const/4 v1, 0x0

    const/4 v5, -0x1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sget-object v0, Lcom/nrsmagic/sudoku/gui/s/az;->b:[Ljava/lang/String;

    aget-object v0, v0, p1

    sget v3, Lcom/nrsmagic/sudoku/gui/s/az;->a:I

    if-le v3, v5, :cond_0

    sget-object v0, Lcom/nrsmagic/sudoku/gui/s/l;->bk:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/nrsmagic/sudoku/gui/s/az;->a:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2, p1}, Lcom/nrsmagic/sudoku/gui/s/az;->a(Ljava/util/HashMap;I)Ljava/lang/String;

    move-result-object v0

    sput v5, Lcom/nrsmagic/sudoku/gui/s/az;->a:I

    :cond_0
    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v2, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/nrsmagic/sudoku/gui/s/az;->c:Lcom/nrsmagic/sudoku/gui/s/am;

    invoke-virtual {v0}, Lcom/nrsmagic/sudoku/gui/s/am;->a()V

    :try_start_0
    new-instance v0, Lorg/apache/http/entity/ByteArrayEntity;

    sget-object v3, Lcom/nrsmagic/sudoku/gui/s/az;->c:Lcom/nrsmagic/sudoku/gui/s/am;

    invoke-virtual {v3}, Lcom/nrsmagic/sudoku/gui/s/am;->b()[B

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    invoke-virtual {v2, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    invoke-static {p0}, Lcom/nrsmagic/sudoku/gui/s/ak;->a(Landroid/content/Context;)Lorg/apache/http/client/HttpClient;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_1
    return v1

    :cond_1
    invoke-interface {v0, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    const/16 v4, 0xc8

    if-ne v0, v4, :cond_2

    const/4 v0, 0x1

    :try_start_2
    invoke-static {p0}, Lcom/nrsmagic/sudoku/gui/s/bb;->d(Landroid/content/Context;)V

    sget-object v1, Lcom/nrsmagic/sudoku/gui/s/az;->e:Lcom/nrsmagic/sudoku/gui/s/ag;

    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nrsmagic/sudoku/gui/s/ag;->a(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    move v1, v0

    goto :goto_1

    :cond_2
    :try_start_3
    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpPost;->abort()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move v0, v1

    goto :goto_2

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 2

    invoke-static {p0}, Lcom/nrsmagic/sudoku/gui/s/bb;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/nrsmagic/sudoku/gui/s/az;->c:Lcom/nrsmagic/sudoku/gui/s/am;

    iput-object v0, v1, Lcom/nrsmagic/sudoku/gui/s/am;->n:Ljava/lang/String;

    :cond_0
    invoke-static {p0}, Lcom/nrsmagic/sudoku/gui/s/bb;->o(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/nrsmagic/sudoku/gui/s/az;->c:Lcom/nrsmagic/sudoku/gui/s/am;

    invoke-static {p0}, Lcom/nrsmagic/sudoku/gui/s/bb;->o(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/nrsmagic/sudoku/gui/s/am;->o:Ljava/lang/String;

    :cond_1
    sget-object v0, Lcom/nrsmagic/sudoku/gui/s/az;->c:Lcom/nrsmagic/sudoku/gui/s/am;

    invoke-static {p0}, Lcom/nrsmagic/sudoku/gui/s/ak;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/nrsmagic/sudoku/gui/s/am;->l:Ljava/lang/String;

    invoke-static {p0}, Lcom/nrsmagic/sudoku/gui/s/bb;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/nrsmagic/sudoku/gui/s/az;->c:Lcom/nrsmagic/sudoku/gui/s/am;

    iput-object v0, v1, Lcom/nrsmagic/sudoku/gui/s/am;->j:Ljava/lang/String;

    sget-object v0, Lcom/nrsmagic/sudoku/gui/s/az;->c:Lcom/nrsmagic/sudoku/gui/s/am;

    invoke-static {}, Lcom/nrsmagic/sudoku/gui/s/bb;->b()I

    move-result v1

    iput v1, v0, Lcom/nrsmagic/sudoku/gui/s/am;->q:I

    sget-object v0, Lcom/nrsmagic/sudoku/gui/s/az;->c:Lcom/nrsmagic/sudoku/gui/s/am;

    invoke-static {p0}, Lcom/nrsmagic/sudoku/gui/s/bb;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/nrsmagic/sudoku/gui/s/am;->r:Ljava/lang/String;

    return-void
.end method

.method public static b()Z
    .locals 4

    const/4 v0, 0x1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x6

    if-ge v1, v2, :cond_0

    if-le v1, v0, :cond_0

    const/4 v0, 0x0

    sget-object v1, Lcom/nrsmagic/sudoku/gui/s/d/b;->a:Ljava/lang/String;

    sget-object v2, Lcom/nrsmagic/sudoku/gui/s/l;->cG:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v0
.end method

.method public static c()Z
    .locals 7

    invoke-static {}, Lcom/nrsmagic/sudoku/gui/s/bb;->d()J

    move-result-wide v0

    invoke-static {}, Lcom/nrsmagic/sudoku/gui/s/bb;->c()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v0, v4, v0

    const-wide/32 v4, 0xea60

    div-long/2addr v0, v4

    sget-object v4, Lcom/nrsmagic/sudoku/gui/s/d/b;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    sget-object v0, Lcom/nrsmagic/sudoku/gui/s/d/b;->a:Ljava/lang/String;

    sget-object v1, Lcom/nrsmagic/sudoku/gui/s/l;->cF:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic d()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/nrsmagic/sudoku/gui/s/az;->h:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic e()Lcom/nrsmagic/sudoku/gui/s/am;
    .locals 1

    sget-object v0, Lcom/nrsmagic/sudoku/gui/s/az;->c:Lcom/nrsmagic/sudoku/gui/s/am;

    return-object v0
.end method

.method static synthetic f()I
    .locals 1

    sget v0, Lcom/nrsmagic/sudoku/gui/s/az;->d:I

    return v0
.end method
