.class public Lcom/nrsmagic/sudoku/gui/y/c/a;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/util/Map;

.field private static b:I

.field private static final c:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/nrsmagic/sudoku/gui/y/c/a;->a:Ljava/util/Map;

    const/4 v0, 0x0

    sput v0, Lcom/nrsmagic/sudoku/gui/y/c/a;->b:I

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/nrsmagic/sudoku/gui/y/c/a;->c:[I

    return-void

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xd0t 0x19t 0x0t 0x0t
        0x93t 0x33t 0x0t 0x0t
        0x1bt 0x77t 0x0t 0x0t
        0xct 0x90t 0x0t 0x0t
        0x18t 0xa9t 0x0t 0x0t
        0xd5t 0xeft 0x0t 0x0t
        0xa7t 0xfat 0x0t 0x0t
    .end array-data
.end method

.method public static declared-synchronized a(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 9

    const/4 v1, 0x0

    const-class v4, Lcom/nrsmagic/sudoku/gui/y/c/a;

    monitor-enter v4

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/nrsmagic/sudoku/gui/y/c/b;->bA:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/nrsmagic/sudoku/gui/y/c/b;->J:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Ljava/io/RandomAccessFile;

    sget-object v3, Lcom/nrsmagic/sudoku/gui/y/c/b;->s:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    if-eqz v0, :cond_0

    :try_start_2
    sget-object v3, Lcom/nrsmagic/sudoku/gui/y/c/a;->c:[I

    add-int/lit8 v5, p1, -0x1

    aget v3, v3, v5

    int-to-long v5, v3

    invoke-virtual {v0, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    :cond_0
    move-object v3, v0

    :goto_0
    :try_start_3
    sget-object v0, Lcom/nrsmagic/sudoku/gui/y/c/a;->c:[I

    aget v0, v0, p1

    sget-object v5, Lcom/nrsmagic/sudoku/gui/y/c/a;->c:[I

    add-int/lit8 v6, p1, -0x1

    aget v5, v5, v6

    sub-int/2addr v0, v5

    new-array v0, v0, [B

    if-eqz v3, :cond_1

    const/4 v5, 0x0

    array-length v6, v0

    invoke-virtual {v3, v0, v5, v6}, Ljava/io/RandomAccessFile;->read([BII)I

    :cond_1
    const/4 v5, 0x0

    array-length v6, v0

    invoke-static {v0, v5, v6}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_4

    sget v5, Lcom/nrsmagic/sudoku/gui/y/c/a;->b:I

    const/4 v6, 0x2

    if-ge v5, v6, :cond_4

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_2
    new-instance v0, Lcom/nrsmagic/sudoku/gui/y/a/c;

    invoke-direct {v0}, Lcom/nrsmagic/sudoku/gui/y/a/c;-><init>()V

    sget-object v5, Lcom/nrsmagic/sudoku/gui/y/c/b;->bB:Ljava/lang/String;

    sget-object v6, Lcom/nrsmagic/sudoku/gui/y/c/b;->bA:Ljava/lang/String;

    new-instance v7, Landroid/os/Handler;

    invoke-direct {v7}, Landroid/os/Handler;-><init>()V

    invoke-virtual {v0, v5, v6, v7}, Lcom/nrsmagic/sudoku/gui/y/a/c;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V

    sget v0, Lcom/nrsmagic/sudoku/gui/y/c/a;->b:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/nrsmagic/sudoku/gui/y/c/a;->b:I

    invoke-static {p0, p1}, Lcom/nrsmagic/sudoku/gui/y/c/a;->a(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7

    move-result-object v0

    if-eqz v3, :cond_3

    :try_start_4
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_3
    :goto_1
    monitor-exit v4

    return-object v0

    :cond_4
    const/4 v5, 0x0

    :try_start_5
    sput v5, Lcom/nrsmagic/sudoku/gui/y/c/a;->b:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_7

    if-eqz v3, :cond_3

    :try_start_6
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v0, v1

    move-object v2, v1

    :goto_2
    :try_start_7
    invoke-static {}, Ljava/lang/System;->gc()V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :cond_5
    if-eqz v2, :cond_6

    :try_start_8
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    :cond_6
    :goto_3
    move-object v0, v1

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v3, v1

    :goto_4
    if-eqz v3, :cond_7

    :try_start_9
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    :cond_7
    :goto_5
    :try_start_a
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit v4

    throw v0

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_5

    :catchall_2
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    goto :goto_4

    :catchall_3
    move-exception v0

    goto :goto_4

    :catchall_4
    move-exception v0

    move-object v3, v2

    goto :goto_4

    :catch_5
    move-exception v0

    move-object v0, v2

    move-object v2, v1

    goto :goto_2

    :catch_6
    move-exception v3

    move-object v8, v2

    move-object v2, v0

    move-object v0, v8

    goto :goto_2

    :catch_7
    move-exception v0

    move-object v0, v2

    move-object v2, v3

    goto :goto_2

    :cond_8
    move-object v3, v1

    goto/16 :goto_0
.end method
