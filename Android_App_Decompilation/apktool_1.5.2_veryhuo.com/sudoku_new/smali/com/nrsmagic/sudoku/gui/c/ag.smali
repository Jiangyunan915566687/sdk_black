.class public Lcom/nrsmagic/sudoku/gui/c/ag;
.super Ljava/lang/Object;


# static fields
.field private static b:Lcom/nrsmagic/sudoku/gui/c/ag;


# instance fields
.field private a:Landroid/content/Context;

.field private c:Landroid/os/Handler;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/nrsmagic/sudoku/gui/c/ah;

    invoke-direct {v0, p0}, Lcom/nrsmagic/sudoku/gui/c/ah;-><init>(Lcom/nrsmagic/sudoku/gui/c/ag;)V

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/c/ag;->c:Landroid/os/Handler;

    iput-object p1, p0, Lcom/nrsmagic/sudoku/gui/c/ag;->a:Landroid/content/Context;

    return-void
.end method

.method protected static a(I)I
    .locals 1

    const v0, 0x1080052

    packed-switch p0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    const v0, 0x108008e

    goto :goto_0

    :pswitch_2
    const v0, 0x108008f

    goto :goto_0

    :pswitch_3
    const v0, 0x108002b

    goto :goto_0

    :pswitch_4
    const v0, 0x1080093

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method static synthetic a(Lcom/nrsmagic/sudoku/gui/c/ag;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/c/ag;->a:Landroid/content/Context;

    return-object v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/nrsmagic/sudoku/gui/c/ag;
    .locals 2

    const-class v1, Lcom/nrsmagic/sudoku/gui/c/ag;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/nrsmagic/sudoku/gui/c/ag;->b:Lcom/nrsmagic/sudoku/gui/c/ag;

    if-nez v0, :cond_0

    new-instance v0, Lcom/nrsmagic/sudoku/gui/c/ag;

    invoke-direct {v0, p0}, Lcom/nrsmagic/sudoku/gui/c/ag;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/nrsmagic/sudoku/gui/c/ag;->b:Lcom/nrsmagic/sudoku/gui/c/ag;

    :cond_0
    sget-object v0, Lcom/nrsmagic/sudoku/gui/c/ag;->b:Lcom/nrsmagic/sudoku/gui/c/ag;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected static a(Landroid/content/Context;Lcom/nrsmagic/sudoku/gui/c/an;)V
    .locals 7

    const/4 v5, 0x1

    iget-byte v0, p1, Lcom/nrsmagic/sudoku/gui/c/an;->e:B

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-static {p0, p1}, Lcom/nrsmagic/sudoku/gui/c/ag;->b(Landroid/content/Context;Lcom/nrsmagic/sudoku/gui/c/an;)Landroid/content/Intent;

    move-result-object v1

    iget v0, p1, Lcom/nrsmagic/sudoku/gui/c/an;->F:I

    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/c/ag;->a(I)I

    move-result v2

    iget v0, p1, Lcom/nrsmagic/sudoku/gui/c/an;->v:I

    if-ne v0, v5, :cond_0

    const/16 v4, 0x20

    :goto_1
    const/4 v6, 0x0

    move-object v0, p0

    move-object v3, p1

    invoke-static/range {v0 .. v6}, Lcom/nrsmagic/sudoku/gui/c/bb;->a(Landroid/content/Context;Landroid/content/Intent;ILcom/nrsmagic/sudoku/gui/c/an;IZZ)V

    goto :goto_0

    :cond_0
    sget v4, Lcom/nrsmagic/sudoku/gui/c/bb;->a:I

    goto :goto_1

    :pswitch_1
    invoke-static {p0, p1}, Lcom/nrsmagic/sudoku/gui/c/a;->a(Landroid/content/Context;Lcom/nrsmagic/sudoku/gui/c/an;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected static b(Landroid/content/Context;Lcom/nrsmagic/sudoku/gui/c/an;)Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-static {p0}, Lcom/nrsmagic/sudoku/gui/c/bb;->r(Landroid/content/Context;)Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    sget-object v1, Lcom/nrsmagic/sudoku/gui/c/l;->aA:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/nrsmagic/sudoku/gui/c/an;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lcom/nrsmagic/sudoku/gui/c/l;->R:Ljava/lang/String;

    iget v2, p1, Lcom/nrsmagic/sudoku/gui/c/an;->f:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object v1, Lcom/nrsmagic/sudoku/gui/c/l;->S:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object v0
.end method

.method private c(Lcom/nrsmagic/sudoku/gui/c/an;)V
    .locals 5

    new-instance v1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/c/ag;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/c/ag;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/nrsmagic/sudoku/gui/c/bb;->s(Landroid/content/Context;)Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1, v1}, Lcom/nrsmagic/sudoku/gui/c/ag;->a(Lcom/nrsmagic/sudoku/gui/c/an;Landroid/content/Intent;)V

    sget-object v0, Lcom/nrsmagic/sudoku/gui/c/l;->ax:Ljava/lang/String;

    sget-object v2, Lcom/nrsmagic/sudoku/gui/c/l;->U:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, p1, v1}, Lcom/nrsmagic/sudoku/gui/c/ag;->b(Lcom/nrsmagic/sudoku/gui/c/an;Landroid/content/Intent;)V

    sget-object v0, Lcom/nrsmagic/sudoku/gui/c/l;->aA:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/nrsmagic/sudoku/gui/c/an;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v0, Lcom/nrsmagic/sudoku/gui/c/l;->by:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    sget-object v0, Lcom/nrsmagic/sudoku/gui/c/l;->by:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :try_start_0
    iget-object v3, p0, Lcom/nrsmagic/sudoku/gui/c/ag;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/c/ag;->a:Landroid/content/Context;

    const-class v4, Lcom/nrsmagic/sudoku/gui/c/Od;

    invoke-static {v0, v4}, Lcom/nrsmagic/sudoku/gui/c/bb;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/c/ag;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method protected a()V
    .locals 1

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/c/ag;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/c/bb;->b(Landroid/content/Context;)[Lcom/nrsmagic/sudoku/gui/c/an;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nrsmagic/sudoku/gui/c/ag;->a([Lcom/nrsmagic/sudoku/gui/c/an;)V

    return-void
.end method

.method protected a(Lcom/nrsmagic/sudoku/gui/c/an;)V
    .locals 11

    const/4 v10, 0x0

    const/4 v1, 0x0

    const/4 v9, -0x3

    const/4 v6, 0x1

    sget-object v0, Lcom/nrsmagic/sudoku/gui/c/l;->aw:Ljava/lang/String;

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/c/ag;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/nrsmagic/sudoku/gui/c/ak;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/nrsmagic/sudoku/gui/c/an;->t:I

    if-eq v0, v6, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-byte v0, p1, Lcom/nrsmagic/sudoku/gui/c/an;->e:B

    if-eq v0, v6, :cond_2

    iget-byte v0, p1, Lcom/nrsmagic/sudoku/gui/c/an;->e:B

    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    :cond_2
    new-instance v0, Lcom/nrsmagic/sudoku/gui/c/b/h;

    iget-object v2, p1, Lcom/nrsmagic/sudoku/gui/c/an;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/nrsmagic/sudoku/gui/c/ag;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/nrsmagic/sudoku/gui/c/bb;->b(Lcom/nrsmagic/sudoku/gui/c/an;)Ljava/lang/String;

    move-result-object v4

    iget v5, p1, Lcom/nrsmagic/sudoku/gui/c/an;->h:I

    invoke-static {v3, v4, v5}, Lcom/nrsmagic/sudoku/gui/c/bb;->b(Landroid/content/Context;Ljava/lang/String;I)Ljava/io/File;

    move-result-object v3

    invoke-direct {v0, v2, v3, v6}, Lcom/nrsmagic/sudoku/gui/c/b/h;-><init>(Ljava/lang/String;Ljava/io/File;I)V

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/nrsmagic/sudoku/gui/c/b/h;->a(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/c/ag;->a:Landroid/content/Context;

    invoke-static {v2, v0, v10}, Lcom/nrsmagic/sudoku/gui/c/ak;->a(Landroid/content/Context;Lcom/nrsmagic/sudoku/gui/c/b/h;Lcom/nrsmagic/sudoku/gui/c/b/c;)V

    :cond_3
    iget-object v0, p1, Lcom/nrsmagic/sudoku/gui/c/an;->r:Ljava/lang/String;

    const-string v2, ";"

    invoke-static {v0, v2}, Lcom/nrsmagic/sudoku/gui/c/bb;->a(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_0

    new-instance v4, Lcom/nrsmagic/sudoku/gui/c/b/h;

    aget-object v5, v2, v0

    iget-object v6, p0, Lcom/nrsmagic/sudoku/gui/c/ag;->a:Landroid/content/Context;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/nrsmagic/sudoku/gui/c/l;->s:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget v8, p1, Lcom/nrsmagic/sudoku/gui/c/an;->h:I

    invoke-static {v6, v7, v8}, Lcom/nrsmagic/sudoku/gui/c/bb;->b(Landroid/content/Context;Ljava/lang/String;I)Ljava/io/File;

    move-result-object v6

    invoke-direct {v4, v5, v6, v1}, Lcom/nrsmagic/sudoku/gui/c/b/h;-><init>(Ljava/lang/String;Ljava/io/File;I)V

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/nrsmagic/sudoku/gui/c/b/h;->a(Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/nrsmagic/sudoku/gui/c/ag;->a:Landroid/content/Context;

    invoke-static {v5, v4, v10}, Lcom/nrsmagic/sudoku/gui/c/ak;->a(Landroid/content/Context;Lcom/nrsmagic/sudoku/gui/c/b/h;Lcom/nrsmagic/sudoku/gui/c/b/c;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public a(Lcom/nrsmagic/sudoku/gui/c/an;Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    return-void
.end method

.method protected a(Ljava/io/InputStream;)V
    .locals 8

    const/4 v2, 0x0

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    const/16 v2, 0x200

    :try_start_2
    new-array v2, v2, [B

    :goto_0
    invoke-virtual {v3, v2}, Ljava/io/DataInputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v2, v3

    :goto_1
    :try_start_3
    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    move-object v3, v2

    :goto_2
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    :cond_0
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V

    :cond_1
    throw v0

    :cond_2
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    if-eqz v2, :cond_3

    array-length v4, v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    if-nez v4, :cond_6

    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    :cond_4
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V

    :cond_5
    :goto_3
    return-void

    :cond_6
    :try_start_5
    invoke-static {v2}, Lcom/nrsmagic/sudoku/gui/c/an;->a([B)[Lcom/nrsmagic/sudoku/gui/c/an;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    move-result-object v2

    if-nez v2, :cond_8

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    :cond_7
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V

    goto :goto_3

    :cond_8
    :try_start_6
    array-length v4, v2

    :goto_4
    if-ge v0, v4, :cond_a

    aget-object v5, v2, v0

    iget-object v6, p0, Lcom/nrsmagic/sudoku/gui/c/ag;->a:Landroid/content/Context;

    invoke-static {v6, v5}, Lcom/nrsmagic/sudoku/gui/c/bb;->a(Landroid/content/Context;Lcom/nrsmagic/sudoku/gui/c/an;)Z

    iget v6, v5, Lcom/nrsmagic/sudoku/gui/c/an;->A:I

    const/4 v7, 0x1

    if-eq v6, v7, :cond_9

    iget-object v6, v5, Lcom/nrsmagic/sudoku/gui/c/an;->H:Ljava/lang/String;

    invoke-static {v6}, Lcom/nrsmagic/sudoku/gui/c/bb;->c(Ljava/lang/String;)Z

    iget v5, v5, Lcom/nrsmagic/sudoku/gui/c/an;->C:I

    int-to-long v5, v5

    invoke-static {v5, v6}, Lcom/nrsmagic/sudoku/gui/c/bb;->a(J)V

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_a
    invoke-virtual {p0, v2}, Lcom/nrsmagic/sudoku/gui/c/ag;->a([Lcom/nrsmagic/sudoku/gui/c/an;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    :cond_b
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object v3, v2

    goto :goto_2

    :catchall_3
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v1, v2

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method protected varargs a([Lcom/nrsmagic/sudoku/gui/c/an;)V
    .locals 7

    const/4 v6, -0x1

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/c/ag;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/c/b/d;->a(Landroid/content/Context;)Lcom/nrsmagic/sudoku/gui/c/b/d;

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/c/ag;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/c/bb;->g(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    array-length v2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, p1, v0

    iget v4, v3, Lcom/nrsmagic/sudoku/gui/c/an;->h:I

    if-ne v4, v6, :cond_3

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v3}, Lcom/nrsmagic/sudoku/gui/c/an;->b()V

    iget-object v4, v3, Lcom/nrsmagic/sudoku/gui/c/an;->i:Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget v4, v3, Lcom/nrsmagic/sudoku/gui/c/an;->A:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    :cond_4
    iget-object v4, v3, Lcom/nrsmagic/sudoku/gui/c/an;->l:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v6, :cond_2

    invoke-virtual {p0, v3}, Lcom/nrsmagic/sudoku/gui/c/ag;->a(Lcom/nrsmagic/sudoku/gui/c/an;)V

    invoke-direct {p0, v3}, Lcom/nrsmagic/sudoku/gui/c/ag;->c(Lcom/nrsmagic/sudoku/gui/c/an;)V

    goto :goto_1
.end method

.method protected b(Lcom/nrsmagic/sudoku/gui/c/an;)V
    .locals 2

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/c/ag;->c:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public b(Lcom/nrsmagic/sudoku/gui/c/an;Landroid/content/Intent;)V
    .locals 2

    sget-object v0, Lcom/nrsmagic/sudoku/gui/c/l;->R:Ljava/lang/String;

    iget v1, p1, Lcom/nrsmagic/sudoku/gui/c/an;->f:I

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-void
.end method
