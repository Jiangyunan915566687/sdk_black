.class public Lcom/nrsmagic/sudoku/gui/r/a/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nrsmagic/sudoku/gui/r/c/f;


# instance fields
.field private a:Lcom/nrsmagic/sudoku/gui/r/c/e;

.field private b:Ljava/io/File;

.field private c:I

.field private d:I

.field private e:I

.field private f:Lcom/nrsmagic/sudoku/gui/r/a/c;

.field private g:I

.field private h:Lcom/nrsmagic/sudoku/gui/r/a/d;

.field private i:Ljava/io/BufferedInputStream;

.field private j:I

.field private k:I

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/Object;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:J


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/nrsmagic/sudoku/gui/r/a/e;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/nrsmagic/sudoku/gui/r/a/h;->k:I

    new-instance v0, Lcom/nrsmagic/sudoku/gui/r/c/h;

    iget-object v1, p2, Lcom/nrsmagic/sudoku/gui/r/a/e;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/nrsmagic/sudoku/gui/r/c/h;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/nrsmagic/sudoku/gui/r/c/a;

    invoke-direct {v1, p1, v0}, Lcom/nrsmagic/sudoku/gui/r/c/a;-><init>(Landroid/content/Context;Lcom/nrsmagic/sudoku/gui/r/c/h;)V

    iput-object v1, p0, Lcom/nrsmagic/sudoku/gui/r/a/h;->a:Lcom/nrsmagic/sudoku/gui/r/c/e;

    invoke-static {}, Lcom/nrsmagic/sudoku/gui/r/a/d;->a()Lcom/nrsmagic/sudoku/gui/r/a/d;

    move-result-object v0

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/a/h;->h:Lcom/nrsmagic/sudoku/gui/r/a/d;

    iget-object v0, p2, Lcom/nrsmagic/sudoku/gui/r/a/e;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/a/h;->l:Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    iget-object v1, p2, Lcom/nrsmagic/sudoku/gui/r/a/e;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/a/h;->b:Ljava/io/File;

    iget v0, p2, Lcom/nrsmagic/sudoku/gui/r/a/e;->c:I

    iput v0, p0, Lcom/nrsmagic/sudoku/gui/r/a/h;->d:I

    iget v0, p2, Lcom/nrsmagic/sudoku/gui/r/a/e;->d:I

    iput v0, p0, Lcom/nrsmagic/sudoku/gui/r/a/h;->e:I

    iget v0, p2, Lcom/nrsmagic/sudoku/gui/r/a/e;->e:I

    iput v0, p0, Lcom/nrsmagic/sudoku/gui/r/a/h;->c:I

    iget-object v0, p2, Lcom/nrsmagic/sudoku/gui/r/a/e;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/a/h;->o:Ljava/lang/String;

    iget-object v0, p2, Lcom/nrsmagic/sudoku/gui/r/a/e;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/a/h;->n:Ljava/lang/String;

    iget v0, p2, Lcom/nrsmagic/sudoku/gui/r/a/e;->h:I

    iput v0, p0, Lcom/nrsmagic/sudoku/gui/r/a/h;->g:I

    iget-object v0, p2, Lcom/nrsmagic/sudoku/gui/r/a/e;->i:Ljava/lang/String;

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/a/h;->p:Ljava/lang/String;

    iget-wide v0, p2, Lcom/nrsmagic/sudoku/gui/r/a/e;->j:J

    iput-wide v0, p0, Lcom/nrsmagic/sudoku/gui/r/a/h;->q:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/File;I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/nrsmagic/sudoku/gui/r/a/h;->k:I

    iput-object p2, p0, Lcom/nrsmagic/sudoku/gui/r/a/h;->b:Ljava/io/File;

    iput-object p1, p0, Lcom/nrsmagic/sudoku/gui/r/a/h;->l:Ljava/lang/String;

    new-instance v0, Lcom/nrsmagic/sudoku/gui/r/c/a;

    invoke-static {}, Lcom/nrsmagic/sudoku/gui/r/a/d;->a()Lcom/nrsmagic/sudoku/gui/r/a/d;

    move-result-object v1

    iget-object v1, v1, Lcom/nrsmagic/sudoku/gui/r/a/d;->a:Landroid/content/Context;

    new-instance v2, Lcom/nrsmagic/sudoku/gui/r/c/h;

    invoke-direct {v2, p1}, Lcom/nrsmagic/sudoku/gui/r/c/h;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lcom/nrsmagic/sudoku/gui/r/c/a;-><init>(Landroid/content/Context;Lcom/nrsmagic/sudoku/gui/r/c/h;)V

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/a/h;->a:Lcom/nrsmagic/sudoku/gui/r/c/e;

    const/4 v0, -0x1

    iput v0, p0, Lcom/nrsmagic/sudoku/gui/r/a/h;->e:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/nrsmagic/sudoku/gui/r/a/h;->c:I

    iput p3, p0, Lcom/nrsmagic/sudoku/gui/r/a/h;->g:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nrsmagic/sudoku/gui/r/a/h;->q:J

    invoke-direct {p0}, Lcom/nrsmagic/sudoku/gui/r/a/h;->r()V

    return-void
.end method

.method private a(Ljava/io/InputStream;)V
    .locals 10

    const/4 v1, 0x0

    const/4 v5, 0x1

    const/4 v9, -0x1

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/r/a/h;->b:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/nrsmagic/sudoku/gui/r/e/b;->L:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    new-instance v2, Ljava/io/RandomAccessFile;

    sget-object v0, Lcom/nrsmagic/sudoku/gui/r/e/b;->bJ:Ljava/lang/String;

    invoke-direct {v2, v4, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    :try_start_1
    iget v0, p0, Lcom/nrsmagic/sudoku/gui/r/a/h;->g:I

    if-ne v0, v5, :cond_2

    sget-object v1, Lcom/nrsmagic/sudoku/gui/r/e/b;->bR:Ljava/lang/String;

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/a/h;->a:Lcom/nrsmagic/sudoku/gui/r/c/e;

    invoke-virtual {v0}, Lcom/nrsmagic/sudoku/gui/r/c/e;->g()Ljava/util/Map;

    move-result-object v0

    sget-object v5, Lcom/nrsmagic/sudoku/gui/r/e/b;->bc:Ljava/lang/String;

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/a/h;->a:Lcom/nrsmagic/sudoku/gui/r/c/e;

    invoke-virtual {v0}, Lcom/nrsmagic/sudoku/gui/r/c/e;->g()Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lcom/nrsmagic/sudoku/gui/r/e/b;->bd:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {p0, v0}, Lcom/nrsmagic/sudoku/gui/r/a/h;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v5, v1

    invoke-virtual {p0, v2}, Lcom/nrsmagic/sudoku/gui/r/a/h;->a(Ljava/io/RandomAccessFile;)J

    move-result-wide v7

    cmp-long v1, v5, v7

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v5, 0x3

    const/16 v6, 0x22b8

    aput v6, v1, v5

    :cond_1
    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, v2}, Lcom/nrsmagic/sudoku/gui/r/a/h;->a(Ljava/io/RandomAccessFile;)J

    move-result-wide v5

    cmp-long v0, v0, v5

    if-nez v0, :cond_2

    invoke-virtual {p0, v2}, Lcom/nrsmagic/sudoku/gui/r/a/h;->a(Ljava/io/RandomAccessFile;)J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    :cond_2
    :goto_0
    const/16 v0, 0x1000

    new-array v1, v0, [B

    move v0, v3

    :cond_3
    :goto_1
    iget v3, p0, Lcom/nrsmagic/sudoku/gui/r/a/h;->c:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_7

    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    if-eq v0, v9, :cond_7

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v0}, Ljava/io/RandomAccessFile;->write([BII)V

    iget v3, p0, Lcom/nrsmagic/sudoku/gui/r/a/h;->d:I

    add-int/2addr v3, v0

    iput v3, p0, Lcom/nrsmagic/sudoku/gui/r/a/h;->d:I

    iget-object v3, p0, Lcom/nrsmagic/sudoku/gui/r/a/h;->f:Lcom/nrsmagic/sudoku/gui/r/a/c;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/nrsmagic/sudoku/gui/r/a/h;->f:Lcom/nrsmagic/sudoku/gui/r/a/c;

    int-to-long v5, v0

    invoke-interface {v3, p0, v5, v6}, Lcom/nrsmagic/sudoku/gui/r/a/c;->a(Lcom/nrsmagic/sudoku/gui/r/a/h;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v1, v2

    :goto_2
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-direct {p0, v0}, Lcom/nrsmagic/sudoku/gui/r/a/h;->a(Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz p1, :cond_4

    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_4
    :goto_3
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/a/h;->a:Lcom/nrsmagic/sudoku/gui/r/c/e;

    invoke-virtual {v0}, Lcom/nrsmagic/sudoku/gui/r/c/e;->b()V

    :goto_4
    return-void

    :cond_5
    const/4 v0, 0x0

    :try_start_4
    iput v0, p0, Lcom/nrsmagic/sudoku/gui/r/a/h;->g:I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/nrsmagic/sudoku/gui/r/a/h;->a(Ljava/lang/Exception;)V

    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x3

    const/16 v5, 0x58

    aput v5, v0, v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_5
    if-eqz p1, :cond_6

    :try_start_5
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_6
    :goto_6
    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/r/a/h;->a:Lcom/nrsmagic/sudoku/gui/r/c/e;

    invoke-virtual {v1}, Lcom/nrsmagic/sudoku/gui/r/c/e;->b()V

    throw v0

    :cond_7
    :try_start_6
    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/r/a/h;->b:Ljava/io/File;

    invoke-virtual {v4, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    if-ne v0, v9, :cond_8

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/nrsmagic/sudoku/gui/r/a/h;->a(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :cond_8
    if-eqz p1, :cond_9

    :try_start_7
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    :cond_9
    :goto_7
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/a/h;->a:Lcom/nrsmagic/sudoku/gui/r/c/e;

    invoke-virtual {v0}, Lcom/nrsmagic/sudoku/gui/r/c/e;->b()V

    goto :goto_4

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object v2, v1

    goto :goto_5

    :catch_4
    move-exception v0

    goto :goto_2
.end method

.method private a(Ljava/lang/Exception;)V
    .locals 2

    iget v0, p0, Lcom/nrsmagic/sudoku/gui/r/a/h;->j:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/nrsmagic/sudoku/gui/r/a/h;->j:I

    iget v1, p0, Lcom/nrsmagic/sudoku/gui/r/a/h;->k:I

    if-ge v0, v1, :cond_0

    invoke-direct {p0}, Lcom/nrsmagic/sudoku/gui/r/a/h;->s()V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/nrsmagic/sudoku/gui/r/a/h;->j:I

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/nrsmagic/sudoku/gui/r/a/h;->a(I)V

    goto :goto_0
.end method

.method private b(I)I
    .locals 0

    return p1
.end method

.method private r()V
    .locals 4

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/a/h;->a:Lcom/nrsmagic/sudoku/gui/r/c/e;

    invoke-virtual {v0, p0}, Lcom/nrsmagic/sudoku/gui/r/c/e;->a(Lcom/nrsmagic/sudoku/gui/r/c/f;)V

    iget v0, p0, Lcom/nrsmagic/sudoku/gui/r/a/h;->g:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/nrsmagic/sudoku/gui/r/a/h;->p()J

    move-result-wide v0

    long-to-int v2, v0

    iput v2, p0, Lcom/nrsmagic/sudoku/gui/r/a/h;->d:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/nrsmagic/sudoku/gui/r/e/b;->bl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/r/a/h;->a:Lcom/nrsmagic/sudoku/gui/r/c/e;

    invoke-virtual {v1}, Lcom/nrsmagic/sudoku/gui/r/c/e;->d()Lcom/nrsmagic/sudoku/gui/r/c/h;

    move-result-object v1

    sget-object v2, Lcom/nrsmagic/sudoku/gui/r/e/b;->bm:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/nrsmagic/sudoku/gui/r/c/h;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    invoke-static {}, Lcom/nrsmagic/sudoku/gui/r/a/d;->a()Lcom/nrsmagic/sudoku/gui/r/a/d;

    move-result-object v0

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/a/h;->h:Lcom/nrsmagic/sudoku/gui/r/a/d;

    return-void

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/nrsmagic/sudoku/gui/r/a/h;->d:I

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/a/h;->a:Lcom/nrsmagic/sudoku/gui/r/c/e;

    invoke-virtual {v0}, Lcom/nrsmagic/sudoku/gui/r/c/e;->d()Lcom/nrsmagic/sudoku/gui/r/c/h;

    move-result-object v0

    sget-object v1, Lcom/nrsmagic/sudoku/gui/r/e/b;->bm:Ljava/lang/String;

    sget-object v2, Lcom/nrsmagic/sudoku/gui/r/e/b;->bn:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/nrsmagic/sudoku/gui/r/c/h;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private s()V
    .locals 4

    new-instance v0, Lcom/nrsmagic/sudoku/gui/r/c/a;

    invoke-static {}, Lcom/nrsmagic/sudoku/gui/r/a/d;->a()Lcom/nrsmagic/sudoku/gui/r/a/d;

    move-result-object v1

    iget-object v1, v1, Lcom/nrsmagic/sudoku/gui/r/a/d;->a:Landroid/content/Context;

    new-instance v2, Lcom/nrsmagic/sudoku/gui/r/c/h;

    iget-object v3, p0, Lcom/nrsmagic/sudoku/gui/r/a/h;->l:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/nrsmagic/sudoku/gui/r/c/h;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lcom/nrsmagic/sudoku/gui/r/c/a;-><init>(Landroid/content/Context;Lcom/nrsmagic/sudoku/gui/r/c/h;)V

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/a/h;->a:Lcom/nrsmagic/sudoku/gui/r/c/e;

    invoke-direct {p0}, Lcom/nrsmagic/sudoku/gui/r/a/h;->t()V

    invoke-direct {p0}, Lcom/nrsmagic/sudoku/gui/r/a/h;->r()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nrsmagic/sudoku/gui/r/a/h;->a(I)V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/a/h;->h:Lcom/nrsmagic/sudoku/gui/r/a/d;

    invoke-virtual {v0, p0}, Lcom/nrsmagic/sudoku/gui/r/a/d;->f(Lcom/nrsmagic/sudoku/gui/r/a/h;)V

    return-void
.end method

.method private t()V
    .locals 4

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/a/h;->a:Lcom/nrsmagic/sudoku/gui/r/c/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/a/h;->a:Lcom/nrsmagic/sudoku/gui/r/c/e;

    invoke-virtual {v0}, Lcom/nrsmagic/sudoku/gui/r/c/e;->d()Lcom/nrsmagic/sudoku/gui/r/c/h;

    move-result-object v0

    sget-object v1, Lcom/nrsmagic/sudoku/gui/r/e/b;->bf:Ljava/lang/String;

    sget-object v2, Lcom/nrsmagic/sudoku/gui/r/e/b;->bg:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/nrsmagic/sudoku/gui/r/c/h;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/a/h;->a:Lcom/nrsmagic/sudoku/gui/r/c/e;

    invoke-virtual {v0}, Lcom/nrsmagic/sudoku/gui/r/c/e;->d()Lcom/nrsmagic/sudoku/gui/r/c/h;

    move-result-object v0

    sget-object v1, Lcom/nrsmagic/sudoku/gui/r/e/b;->bh:Ljava/lang/String;

    sget-object v2, Lcom/nrsmagic/sudoku/gui/r/e/b;->bi:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/nrsmagic/sudoku/gui/r/c/h;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/a/h;->a:Lcom/nrsmagic/sudoku/gui/r/c/e;

    invoke-virtual {v0}, Lcom/nrsmagic/sudoku/gui/r/c/e;->d()Lcom/nrsmagic/sudoku/gui/r/c/h;

    move-result-object v0

    sget-object v1, Lcom/nrsmagic/sudoku/gui/r/e/b;->bj:Ljava/lang/String;

    sget-object v2, Lcom/nrsmagic/sudoku/gui/r/e/b;->bk:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/nrsmagic/sudoku/gui/r/c/h;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget v0, p0, Lcom/nrsmagic/sudoku/gui/r/a/h;->g:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/nrsmagic/sudoku/gui/r/a/h;->p()J

    move-result-wide v0

    long-to-int v2, v0

    iput v2, p0, Lcom/nrsmagic/sudoku/gui/r/a/h;->d:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/nrsmagic/sudoku/gui/r/e/b;->bl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/r/a/h;->a:Lcom/nrsmagic/sudoku/gui/r/c/e;

    invoke-virtual {v1}, Lcom/nrsmagic/sudoku/gui/r/c/e;->d()Lcom/nrsmagic/sudoku/gui/r/c/h;

    move-result-object v1

    sget-object v2, Lcom/nrsmagic/sudoku/gui/r/e/b;->bm:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/nrsmagic/sudoku/gui/r/c/h;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/a/h;->a:Lcom/nrsmagic/sudoku/gui/r/c/e;

    invoke-virtual {v0}, Lcom/nrsmagic/sudoku/gui/r/c/e;->d()Lcom/nrsmagic/sudoku/gui/r/c/h;

    move-result-object v0

    sget-object v1, Lcom/nrsmagic/sudoku/gui/r/e/b;->bo:Ljava/lang/String;

    sget-object v2, Lcom/nrsmagic/sudoku/gui/r/e/b;->bp:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/nrsmagic/sudoku/gui/r/c/h;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/a/h;->a:Lcom/nrsmagic/sudoku/gui/r/c/e;

    invoke-virtual {v0}, Lcom/nrsmagic/sudoku/gui/r/c/e;->d()Lcom/nrsmagic/sudoku/gui/r/c/h;

    move-result-object v0

    sget-object v1, Lcom/nrsmagic/sudoku/gui/r/e/b;->bq:Ljava/lang/String;

    sget-object v2, Lcom/nrsmagic/sudoku/gui/r/e/b;->br:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/nrsmagic/sudoku/gui/r/c/h;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/a/h;->a:Lcom/nrsmagic/sudoku/gui/r/c/e;

    invoke-virtual {v0}, Lcom/nrsmagic/sudoku/gui/r/c/e;->d()Lcom/nrsmagic/sudoku/gui/r/c/h;

    move-result-object v0

    sget-object v1, Lcom/nrsmagic/sudoku/gui/r/e/b;->bm:Ljava/lang/String;

    sget-object v2, Lcom/nrsmagic/sudoku/gui/r/e/b;->bn:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/nrsmagic/sudoku/gui/r/c/h;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/nrsmagic/sudoku/gui/r/a/h;->d:I

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/io/RandomAccessFile;)J
    .locals 2

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/a/h;->p:Ljava/lang/String;

    return-object v0
.end method

.method a(I)V
    .locals 2

    iget v0, p0, Lcom/nrsmagic/sudoku/gui/r/a/h;->c:I

    if-eq p1, v0, :cond_2

    iput p1, p0, Lcom/nrsmagic/sudoku/gui/r/a/h;->c:I

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/a/h;->h:Lcom/nrsmagic/sudoku/gui/r/a/d;

    invoke-virtual {v0}, Lcom/nrsmagic/sudoku/gui/r/a/d;->b()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x5

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/a/h;->h:Lcom/nrsmagic/sudoku/gui/r/a/d;

    invoke-virtual {v0}, Lcom/nrsmagic/sudoku/gui/r/a/d;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    invoke-virtual {p0}, Lcom/nrsmagic/sudoku/gui/r/a/h;->g()V

    :goto_0
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/a/h;->f:Lcom/nrsmagic/sudoku/gui/r/a/c;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/a/h;->f:Lcom/nrsmagic/sudoku/gui/r/a/c;

    invoke-direct {p0, p1}, Lcom/nrsmagic/sudoku/gui/r/a/h;->b(I)I

    move-result v1

    invoke-interface {v0, p0, v1}, Lcom/nrsmagic/sudoku/gui/r/a/c;->a(Lcom/nrsmagic/sudoku/gui/r/a/h;I)V

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/a/h;->h:Lcom/nrsmagic/sudoku/gui/r/a/d;

    invoke-virtual {v0, p0}, Lcom/nrsmagic/sudoku/gui/r/a/d;->g(Lcom/nrsmagic/sudoku/gui/r/a/h;)V

    goto :goto_0
.end method

.method public a(Lcom/nrsmagic/sudoku/gui/r/a/c;)V
    .locals 0

    iput-object p1, p0, Lcom/nrsmagic/sudoku/gui/r/a/h;->f:Lcom/nrsmagic/sudoku/gui/r/a/c;

    return-void
.end method

.method public a(Lcom/nrsmagic/sudoku/gui/r/c/e;I)V
    .locals 3

    iget v0, p0, Lcom/nrsmagic/sudoku/gui/r/a/h;->c:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    :sswitch_0
    return-void

    :pswitch_0
    sparse-switch p2, :sswitch_data_0

    invoke-virtual {p1}, Lcom/nrsmagic/sudoku/gui/r/c/e;->b()V

    goto :goto_0

    :sswitch_1
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/nrsmagic/sudoku/gui/r/a/h;->a(I)V

    invoke-virtual {p1}, Lcom/nrsmagic/sudoku/gui/r/c/e;->f()Ljava/io/InputStream;

    move-result-object v0

    new-instance v1, Ljava/io/BufferedInputStream;

    const/16 v2, 0x1000

    invoke-direct {v1, v0, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v1, p0, Lcom/nrsmagic/sudoku/gui/r/a/h;->i:Ljava/io/BufferedInputStream;

    const/4 v0, -0x1

    iput v0, p0, Lcom/nrsmagic/sudoku/gui/r/a/h;->e:I

    invoke-virtual {p0}, Lcom/nrsmagic/sudoku/gui/r/a/h;->i()I

    move-result v0

    iput v0, p0, Lcom/nrsmagic/sudoku/gui/r/a/h;->e:I

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/a/h;->i:Ljava/io/BufferedInputStream;

    invoke-direct {p0, v0}, Lcom/nrsmagic/sudoku/gui/r/a/h;->a(Ljava/io/InputStream;)V

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/nrsmagic/sudoku/gui/r/c/e;->i()Ljava/lang/Exception;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nrsmagic/sudoku/gui/r/a/h;->a(Ljava/lang/Exception;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        -0x4 -> :sswitch_2
        -0x3 -> :sswitch_2
        -0x2 -> :sswitch_0
        0xc8 -> :sswitch_1
    .end sparse-switch
.end method

.method public a(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/nrsmagic/sudoku/gui/r/a/h;->m:Ljava/lang/Object;

    return-void
.end method

.method public a(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/nrsmagic/sudoku/gui/r/e/b;->be:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/nrsmagic/sudoku/gui/r/c/e;
    .locals 1

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/a/h;->a:Lcom/nrsmagic/sudoku/gui/r/c/e;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nrsmagic/sudoku/gui/r/a/h;->n:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/a/h;->b:Ljava/io/File;

    return-object v0
.end method

.method public d()J
    .locals 2

    iget-wide v0, p0, Lcom/nrsmagic/sudoku/gui/r/a/h;->q:J

    return-wide v0
.end method

.method public e()V
    .locals 4

    const/4 v3, 0x4

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/nrsmagic/sudoku/gui/r/a/h;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v3}, Lcom/nrsmagic/sudoku/gui/r/a/h;->a(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/nrsmagic/sudoku/gui/r/a/h;->c:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/a/h;->h:Lcom/nrsmagic/sudoku/gui/r/a/d;

    invoke-virtual {v0, p0}, Lcom/nrsmagic/sudoku/gui/r/a/d;->b(Lcom/nrsmagic/sudoku/gui/r/a/h;)Lcom/nrsmagic/sudoku/gui/r/a/h;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    iput v0, p0, Lcom/nrsmagic/sudoku/gui/r/a/h;->d:I

    invoke-virtual {p0, v2}, Lcom/nrsmagic/sudoku/gui/r/a/h;->a(I)V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/a/h;->h:Lcom/nrsmagic/sudoku/gui/r/a/d;

    invoke-virtual {v0, p0}, Lcom/nrsmagic/sudoku/gui/r/a/d;->c(Lcom/nrsmagic/sudoku/gui/r/a/h;)V

    goto :goto_0

    :cond_2
    iget v1, v0, Lcom/nrsmagic/sudoku/gui/r/a/h;->c:I

    if-eq v1, v3, :cond_3

    iget v0, v0, Lcom/nrsmagic/sudoku/gui/r/a/h;->c:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    :cond_3
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/a/h;->b:Ljava/io/File;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v2}, Lcom/nrsmagic/sudoku/gui/r/a/h;->a(I)V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/a/h;->h:Lcom/nrsmagic/sudoku/gui/r/a/d;

    invoke-virtual {v0, p0}, Lcom/nrsmagic/sudoku/gui/r/a/d;->c(Lcom/nrsmagic/sudoku/gui/r/a/h;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/nrsmagic/sudoku/gui/r/a/h;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/nrsmagic/sudoku/gui/r/a/h;

    invoke-virtual {p0}, Lcom/nrsmagic/sudoku/gui/r/a/h;->n()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/r/a/h;->b:Ljava/io/File;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Lcom/nrsmagic/sudoku/gui/r/a/h;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/r/a/h;->b:Ljava/io/File;

    invoke-virtual {p1}, Lcom/nrsmagic/sudoku/gui/r/a/h;->c()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public f()V
    .locals 1

    iget v0, p0, Lcom/nrsmagic/sudoku/gui/r/a/h;->c:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-direct {p0}, Lcom/nrsmagic/sudoku/gui/r/a/h;->s()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public g()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nrsmagic/sudoku/gui/r/a/h;->a(I)V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/a/h;->h:Lcom/nrsmagic/sudoku/gui/r/a/d;

    invoke-virtual {v0, p0}, Lcom/nrsmagic/sudoku/gui/r/a/d;->d(Lcom/nrsmagic/sudoku/gui/r/a/h;)V

    return-void
.end method

.method public h()I
    .locals 1

    iget v0, p0, Lcom/nrsmagic/sudoku/gui/r/a/h;->c:I

    return v0
.end method

.method public i()I
    .locals 2

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/a/h;->a:Lcom/nrsmagic/sudoku/gui/r/c/e;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/nrsmagic/sudoku/gui/r/a/h;->e:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/nrsmagic/sudoku/gui/r/a/h;->e:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/a/h;->a:Lcom/nrsmagic/sudoku/gui/r/c/e;

    invoke-virtual {v0}, Lcom/nrsmagic/sudoku/gui/r/c/e;->h()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/a/h;->a:Lcom/nrsmagic/sudoku/gui/r/c/e;

    invoke-virtual {v0}, Lcom/nrsmagic/sudoku/gui/r/c/e;->g()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v1, Lcom/nrsmagic/sudoku/gui/r/e/b;->bd:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/nrsmagic/sudoku/gui/r/a/h;->e:I

    :cond_1
    iget v0, p0, Lcom/nrsmagic/sudoku/gui/r/a/h;->e:I

    goto :goto_0
.end method

.method public j()I
    .locals 1

    iget v0, p0, Lcom/nrsmagic/sudoku/gui/r/a/h;->d:I

    return v0
.end method

.method public k()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/a/h;->o:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/a/h;->a:Lcom/nrsmagic/sudoku/gui/r/c/e;

    invoke-virtual {v0}, Lcom/nrsmagic/sudoku/gui/r/c/e;->h()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/a/h;->a:Lcom/nrsmagic/sudoku/gui/r/c/e;

    invoke-virtual {v0}, Lcom/nrsmagic/sudoku/gui/r/c/e;->g()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/nrsmagic/sudoku/gui/r/e/b;->bM:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/a/h;->o:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/a/h;->o:Ljava/lang/String;

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/a/h;->n:Ljava/lang/String;

    return-object v0
.end method

.method public m()I
    .locals 1

    iget v0, p0, Lcom/nrsmagic/sudoku/gui/r/a/h;->g:I

    return v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/a/h;->l:Ljava/lang/String;

    return-object v0
.end method

.method public o()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/a/h;->m:Ljava/lang/Object;

    return-object v0
.end method

.method public p()J
    .locals 5

    const-wide/16 v0, 0x0

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/nrsmagic/sudoku/gui/r/a/h;->b:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/nrsmagic/sudoku/gui/r/e/b;->L:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-wide v0

    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v0

    goto :goto_0
.end method

.method public q()Z
    .locals 1

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/a/h;->b:Ljava/io/File;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/a/h;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nrsmagic/sudoku/gui/r/a/h;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/r/a/h;->b:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nrsmagic/sudoku/gui/r/a/h;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nrsmagic/sudoku/gui/r/a/h;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nrsmagic/sudoku/gui/r/a/h;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
