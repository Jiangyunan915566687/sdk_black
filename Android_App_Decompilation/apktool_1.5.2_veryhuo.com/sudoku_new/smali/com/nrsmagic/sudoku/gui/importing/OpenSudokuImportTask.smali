.class public Lcom/nrsmagic/sudoku/gui/importing/OpenSudokuImportTask;
.super Lcom/nrsmagic/sudoku/gui/importing/AbstractImportTask;
.source "OpenSudokuImportTask.java"


# instance fields
.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .locals 0
    .parameter "uri"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/nrsmagic/sudoku/gui/importing/AbstractImportTask;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/nrsmagic/sudoku/gui/importing/OpenSudokuImportTask;->mUri:Landroid/net/Uri;

    .line 33
    return-void
.end method

.method private importV1(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 4
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Lcom/nrsmagic/sudoku/db/SudokuInvalidFormatException;
        }
    .end annotation

    .prologue
    .line 147
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 148
    .local v0, eventType:I
    const-string v1, ""

    .line 150
    .local v1, lastTag:Ljava/lang/String;
    :goto_0
    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 168
    return-void

    .line 151
    :cond_0
    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 152
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 153
    const-string v2, "game"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 154
    const/4 v2, 0x0

    const-string v3, "data"

    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/nrsmagic/sudoku/gui/importing/OpenSudokuImportTask;->importGame(Ljava/lang/String;)V

    .line 164
    :cond_1
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_0

    .line 156
    :cond_2
    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    .line 157
    const-string v1, ""

    .line 158
    goto :goto_1

    :cond_3
    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    .line 159
    const-string v2, "name"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 160
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/nrsmagic/sudoku/gui/importing/OpenSudokuImportTask;->importFolder(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private importV2(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 12
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Lcom/nrsmagic/sudoku/db/SudokuInvalidFormatException;
        }
    .end annotation

    .prologue
    const-wide/16 v10, 0x0

    const/4 v9, 0x0

    .line 108
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    .line 109
    .local v2, eventType:I
    const-string v4, ""

    .line 110
    .local v4, lastTag:Ljava/lang/String;
    new-instance v3, Lcom/nrsmagic/sudoku/db/SudokuImportParams;

    invoke-direct {v3}, Lcom/nrsmagic/sudoku/db/SudokuImportParams;-><init>()V

    .line 112
    .local v3, importParams:Lcom/nrsmagic/sudoku/db/SudokuImportParams;
    :goto_0
    const/4 v6, 0x1

    if-ne v2, v6, :cond_0

    .line 139
    return-void

    .line 113
    :cond_0
    const/4 v6, 0x2

    if-ne v2, v6, :cond_3

    .line 114
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 115
    const-string v6, "folder"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 116
    const-string v6, "name"

    invoke-interface {p1, v9, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 117
    .local v5, name:Ljava/lang/String;
    const-string v6, "created"

    invoke-interface {p1, v9, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-direct {p0, v6, v7, v8}, Lcom/nrsmagic/sudoku/gui/importing/OpenSudokuImportTask;->parseLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 118
    .local v0, created:J
    invoke-virtual {p0, v5, v0, v1}, Lcom/nrsmagic/sudoku/gui/importing/OpenSudokuImportTask;->importFolder(Ljava/lang/String;J)V

    .line 137
    .end local v0           #created:J
    .end local v5           #name:Ljava/lang/String;
    :cond_1
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    goto :goto_0

    .line 119
    :cond_2
    const-string v6, "game"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 120
    invoke-virtual {v3}, Lcom/nrsmagic/sudoku/db/SudokuImportParams;->clear()V

    .line 121
    const-string v6, "created"

    invoke-interface {p1, v9, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-direct {p0, v6, v7, v8}, Lcom/nrsmagic/sudoku/gui/importing/OpenSudokuImportTask;->parseLong(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, v3, Lcom/nrsmagic/sudoku/db/SudokuImportParams;->created:J

    .line 122
    const-string v6, "state"

    invoke-interface {p1, v9, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-wide/16 v7, 0x1

    invoke-direct {p0, v6, v7, v8}, Lcom/nrsmagic/sudoku/gui/importing/OpenSudokuImportTask;->parseLong(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, v3, Lcom/nrsmagic/sudoku/db/SudokuImportParams;->state:J

    .line 123
    const-string v6, "time"

    invoke-interface {p1, v9, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6, v10, v11}, Lcom/nrsmagic/sudoku/gui/importing/OpenSudokuImportTask;->parseLong(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, v3, Lcom/nrsmagic/sudoku/db/SudokuImportParams;->time:J

    .line 124
    const-string v6, "last_played"

    invoke-interface {p1, v9, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6, v10, v11}, Lcom/nrsmagic/sudoku/gui/importing/OpenSudokuImportTask;->parseLong(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, v3, Lcom/nrsmagic/sudoku/db/SudokuImportParams;->lastPlayed:J

    .line 125
    const-string v6, "data"

    invoke-interface {p1, v9, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/nrsmagic/sudoku/db/SudokuImportParams;->data:Ljava/lang/String;

    .line 126
    const-string v6, "note"

    invoke-interface {p1, v9, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/nrsmagic/sudoku/db/SudokuImportParams;->note:Ljava/lang/String;

    .line 128
    invoke-virtual {p0, v3}, Lcom/nrsmagic/sudoku/gui/importing/OpenSudokuImportTask;->importGame(Lcom/nrsmagic/sudoku/db/SudokuImportParams;)V

    goto :goto_1

    .line 130
    :cond_3
    const/4 v6, 0x3

    if-ne v2, v6, :cond_4

    .line 131
    const-string v4, ""

    .line 132
    goto :goto_1

    :cond_4
    const/4 v6, 0x4

    if-ne v2, v6, :cond_1

    .line 133
    const-string v6, "name"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private importXml(Ljava/io/Reader;)V
    .locals 9
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nrsmagic/sudoku/db/SudokuInvalidFormatException;
        }
    .end annotation

    .prologue
    .line 64
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 73
    .local v3, inBR:Ljava/io/BufferedReader;
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v2

    .line 74
    .local v2, factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 75
    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v6

    .line 76
    .local v6, xpp:Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v6, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 77
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 78
    .local v1, eventType:I
    const-string v4, ""

    .line 79
    .local v4, rootTag:Ljava/lang/String;
    :goto_0
    const/4 v7, 0x1

    if-ne v1, v7, :cond_0

    .line 104
    :goto_1
    return-void

    .line 80
    :cond_0
    const/4 v7, 0x2

    if-ne v1, v7, :cond_1

    .line 81
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 82
    const-string v7, "opensudoku"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 83
    const/4 v7, 0x0

    const-string v8, "version"

    invoke-interface {v6, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 84
    .local v5, version:Ljava/lang/String;
    if-nez v5, :cond_2

    .line 86
    invoke-direct {p0, v6}, Lcom/nrsmagic/sudoku/gui/importing/OpenSudokuImportTask;->importV1(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 97
    .end local v5           #version:Ljava/lang/String;
    :cond_1
    :goto_2
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_0

    .line 87
    .restart local v5       #version:Ljava/lang/String;
    :cond_2
    const-string v7, "2"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 88
    invoke-direct {p0, v6}, Lcom/nrsmagic/sudoku/gui/importing/OpenSudokuImportTask;->importV2(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    .line 99
    .end local v1           #eventType:I
    .end local v2           #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v4           #rootTag:Ljava/lang/String;
    .end local v5           #version:Ljava/lang/String;
    .end local v6           #xpp:Lorg/xmlpull/v1/XmlPullParser;
    :catch_0
    move-exception v0

    .line 100
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 90
    .end local v0           #e:Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v1       #eventType:I
    .restart local v2       #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v4       #rootTag:Ljava/lang/String;
    .restart local v5       #version:Ljava/lang/String;
    .restart local v6       #xpp:Lorg/xmlpull/v1/XmlPullParser;
    :cond_3
    :try_start_1
    const-string v7, "Unknown version of data."

    invoke-virtual {p0, v7}, Lcom/nrsmagic/sudoku/gui/importing/OpenSudokuImportTask;->setError(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 101
    .end local v1           #eventType:I
    .end local v2           #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v4           #rootTag:Ljava/lang/String;
    .end local v5           #version:Ljava/lang/String;
    .end local v6           #xpp:Lorg/xmlpull/v1/XmlPullParser;
    :catch_1
    move-exception v0

    .line 102
    .local v0, e:Ljava/io/IOException;
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 93
    .end local v0           #e:Ljava/io/IOException;
    .restart local v1       #eventType:I
    .restart local v2       #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v4       #rootTag:Ljava/lang/String;
    .restart local v6       #xpp:Lorg/xmlpull/v1/XmlPullParser;
    :cond_4
    :try_start_2
    iget-object v7, p0, Lcom/nrsmagic/sudoku/gui/importing/OpenSudokuImportTask;->mContext:Landroid/content/Context;

    const v8, 0x7f090060

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/nrsmagic/sudoku/gui/importing/OpenSudokuImportTask;->setError(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1
.end method

.method private parseLong(Ljava/lang/String;J)J
    .locals 0
    .parameter "string"
    .parameter "defaultValue"

    .prologue
    .line 142
    if-eqz p1, :cond_0

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p2

    .end local p2
    :cond_0
    return-wide p2
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
    .line 39
    :try_start_0
    iget-object v4, p0, Lcom/nrsmagic/sudoku/gui/importing/OpenSudokuImportTask;->mUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    const-string v5, "content"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 40
    iget-object v4, p0, Lcom/nrsmagic/sudoku/gui/importing/OpenSudokuImportTask;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 41
    .local v0, contentResolver:Landroid/content/ContentResolver;
    new-instance v3, Ljava/io/InputStreamReader;

    iget-object v4, p0, Lcom/nrsmagic/sudoku/gui/importing/OpenSudokuImportTask;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_2

    .line 50
    .end local v0           #contentResolver:Landroid/content/ContentResolver;
    .local v3, streamReader:Ljava/io/InputStreamReader;
    :goto_0
    :try_start_1
    invoke-direct {p0, v3}, Lcom/nrsmagic/sudoku/gui/importing/OpenSudokuImportTask;->importXml(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V

    .line 61
    return-void

    .line 44
    .end local v3           #streamReader:Ljava/io/InputStreamReader;
    :cond_0
    new-instance v2, Ljava/net/URI;

    iget-object v4, p0, Lcom/nrsmagic/sudoku/gui/importing/OpenSudokuImportTask;->mUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/nrsmagic/sudoku/gui/importing/OpenSudokuImportTask;->mUri:Landroid/net/Uri;

    .line 45
    invoke-virtual {v5}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/nrsmagic/sudoku/gui/importing/OpenSudokuImportTask;->mUri:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v6

    .line 44
    invoke-direct {v2, v4, v5, v6}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .local v2, juri:Ljava/net/URI;
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .restart local v3       #streamReader:Ljava/io/InputStreamReader;
    goto :goto_0

    .line 51
    .end local v2           #juri:Ljava/net/URI;
    :catchall_0
    move-exception v4

    .line 52
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V

    .line 53
    throw v4
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_2

    .line 54
    .end local v3           #streamReader:Ljava/io/InputStreamReader;
    :catch_0
    move-exception v1

    .line 55
    .local v1, e:Ljava/net/MalformedURLException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 56
    .end local v1           #e:Ljava/net/MalformedURLException;
    :catch_1
    move-exception v1

    .line 57
    .local v1, e:Ljava/io/IOException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 58
    .end local v1           #e:Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 59
    .local v1, e:Ljava/net/URISyntaxException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method
