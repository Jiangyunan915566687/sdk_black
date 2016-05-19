.class public Lcom/nrsmagic/sudoku/gui/importing/SdmImportTask;
.super Lcom/nrsmagic/sudoku/gui/importing/AbstractImportTask;
.source "SdmImportTask.java"


# instance fields
.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .locals 0
    .parameter "uri"

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/nrsmagic/sudoku/gui/importing/AbstractImportTask;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/nrsmagic/sudoku/gui/importing/SdmImportTask;->mUri:Landroid/net/Uri;

    .line 24
    return-void
.end method


# virtual methods
.method protected processImport()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nrsmagic/sudoku/db/SudokuInvalidFormatException;
        }
    .end annotation

    .prologue
    .line 28
    iget-object v6, p0, Lcom/nrsmagic/sudoku/gui/importing/SdmImportTask;->mUri:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/nrsmagic/sudoku/gui/importing/SdmImportTask;->importFolder(Ljava/lang/String;)V

    .line 31
    :try_start_0
    new-instance v5, Ljava/net/URL;

    iget-object v6, p0, Lcom/nrsmagic/sudoku/gui/importing/SdmImportTask;->mUri:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 32
    .local v5, url:Ljava/net/URL;
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v5}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 33
    .local v3, isr:Ljava/io/InputStreamReader;
    const/4 v0, 0x0

    .line 35
    .local v0, br:Ljava/io/BufferedReader;
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 37
    .end local v0           #br:Ljava/io/BufferedReader;
    .local v1, br:Ljava/io/BufferedReader;
    :cond_0
    :goto_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v4

    .local v4, s:Ljava/lang/String;
    if-nez v4, :cond_2

    .line 43
    if-eqz v1, :cond_1

    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 50
    :cond_1
    return-void

    .line 38
    :cond_2
    :try_start_4
    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 39
    invoke-virtual {p0, v4}, Lcom/nrsmagic/sudoku/gui/importing/SdmImportTask;->importGame(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 42
    .end local v4           #s:Ljava/lang/String;
    :catchall_0
    move-exception v6

    move-object v0, v1

    .line 43
    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    :goto_1
    if-eqz v0, :cond_3

    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 44
    :cond_3
    throw v6
    :try_end_5
    .catch Ljava/net/MalformedURLException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 45
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v3           #isr:Ljava/io/InputStreamReader;
    .end local v5           #url:Ljava/net/URL;
    :catch_0
    move-exception v2

    .line 46
    .local v2, e:Ljava/net/MalformedURLException;
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 47
    .end local v2           #e:Ljava/net/MalformedURLException;
    :catch_1
    move-exception v2

    .line 48
    .local v2, e:Ljava/io/IOException;
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 42
    .end local v2           #e:Ljava/io/IOException;
    .restart local v0       #br:Ljava/io/BufferedReader;
    .restart local v3       #isr:Ljava/io/InputStreamReader;
    .restart local v5       #url:Ljava/net/URL;
    :catchall_1
    move-exception v6

    goto :goto_1
.end method
