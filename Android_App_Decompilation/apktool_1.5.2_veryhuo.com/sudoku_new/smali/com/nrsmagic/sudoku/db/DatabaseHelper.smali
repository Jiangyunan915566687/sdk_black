.class public Lcom/nrsmagic/sudoku/db/DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DatabaseHelper.java"


# static fields
.field public static final DATABASE_VERSION:I = 0x8

.field private static final TAG:Ljava/lang/String; = "DatabaseHelper"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 51
    const-string v0, "opensudoku"

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 52
    iput-object p1, p0, Lcom/nrsmagic/sudoku/db/DatabaseHelper;->mContext:Landroid/content/Context;

    .line 53
    return-void
.end method

.method private createIndexes(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 284
    const-string v0, "create index sudoku_idx1 on sudoku (folder_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 287
    return-void
.end method

.method private getNewSudokuId(Landroid/database/sqlite/SQLiteDatabase;)I
    .locals 11
    .parameter "db"

    .prologue
    const/4 v10, 0x1

    .line 229
    const/4 v8, 0x0

    .line 232
    .local v8, c:Landroid/database/Cursor;
    :try_start_0
    const-string v1, "sudoku"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "MAX(%s) as  maxId"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 233
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    .line 232
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 235
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 236
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    .line 237
    .local v9, maxId:I
    add-int/lit8 v0, v9, 0x1

    .line 241
    if-eqz v8, :cond_0

    .line 242
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 247
    .end local v9           #maxId:I
    :cond_0
    :goto_0
    return v0

    .line 239
    :catchall_0
    move-exception v0

    .line 241
    if-eqz v8, :cond_1

    .line 242
    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 245
    :cond_1
    :goto_1
    throw v0

    .line 241
    :cond_2
    if-eqz v8, :cond_3

    .line 242
    :try_start_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :cond_3
    :goto_2
    move v0, v10

    .line 247
    goto :goto_0

    .line 243
    .restart local v9       #maxId:I
    :catch_0
    move-exception v1

    goto :goto_0

    .end local v9           #maxId:I
    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_2
.end method

.method private insertFolder(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;)V
    .locals 4
    .parameter "db"
    .parameter "folderID"
    .parameter "folderName"

    .prologue
    .line 267
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 268
    .local v0, now:J
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "INSERT INTO folder VALUES ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\');"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 269
    return-void
.end method

.method private insertSudoku(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteStatement;JJLjava/lang/String;)V
    .locals 5
    .parameter "db"
    .parameter "insertStmt"
    .parameter "folderID"
    .parameter "sudokuID"
    .parameter "data"

    .prologue
    const-wide/16 v3, 0x0

    .line 251
    const/4 v0, 0x1

    invoke-virtual {p2, v0, p5, p6}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 252
    const/4 v0, 0x2

    invoke-virtual {p2, v0, p3, p4}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 253
    const/4 v0, 0x3

    invoke-virtual {p2, v0, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 254
    const/4 v0, 0x4

    const-wide/16 v1, 0x1

    invoke-virtual {p2, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 255
    const/4 v0, 0x5

    invoke-virtual {p2, v0, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 256
    const/4 v0, 0x6

    invoke-virtual {p2, v0}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    .line 257
    const/4 v0, 0x7

    invoke-virtual {p2, v0, p7}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 258
    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    .line 260
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    .line 261
    return-void
.end method

.method private loadAssets(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;I)V
    .locals 18
    .parameter "assetName"
    .parameter "db"
    .parameter "folderId"

    .prologue
    .line 194
    const-string v2, "INSERT INTO %s (%s,%s,%s,%s,%s,%s,%s,%s) VALUES (?,?,?,?,?,?,?,?)"

    const/16 v3, 0x9

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 195
    const-string v6, "sudoku"

    aput-object v6, v3, v5

    const/4 v5, 0x1

    .line 196
    const-string v6, "_id"

    aput-object v6, v3, v5

    const/4 v5, 0x2

    const-string v6, "folder_id"

    aput-object v6, v3, v5

    const/4 v5, 0x3

    const-string v6, "created"

    aput-object v6, v3, v5

    const/4 v5, 0x4

    .line 197
    const-string v6, "state"

    aput-object v6, v3, v5

    const/4 v5, 0x5

    const-string v6, "time"

    aput-object v6, v3, v5

    const/4 v5, 0x6

    const-string v6, "last_played"

    aput-object v6, v3, v5

    const/4 v5, 0x7

    .line 198
    const-string v6, "data"

    aput-object v6, v3, v5

    const/16 v5, 0x8

    const-string v6, "puzzle_note"

    aput-object v6, v3, v5

    .line 194
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    .line 201
    .local v15, insertStatementString:Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v4

    .line 203
    .local v4, insertStmt:Landroid/database/sqlite/SQLiteStatement;
    const/16 v16, 0x0

    .line 204
    .local v16, is:Ljava/io/InputStream;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/nrsmagic/sudoku/db/DatabaseHelper;->getNewSudokuId(Landroid/database/sqlite/SQLiteDatabase;)I

    move-result v14

    .line 205
    .local v14, initSudokuId:I
    const/16 v17, 0x0

    .line 207
    .local v17, loadedPuzzles:I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nrsmagic/sudoku/db/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v16

    .line 208
    new-instance v13, Ljava/util/zip/GZIPInputStream;

    move-object/from16 v0, v16

    invoke-direct {v13, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 209
    .local v13, gzipStream:Ljava/util/zip/GZIPInputStream;
    new-instance v11, Ljava/io/InputStreamReader;

    invoke-direct {v11, v13}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 210
    .local v11, decoder:Ljava/io/InputStreamReader;
    new-instance v10, Ljava/io/BufferedReader;

    invoke-direct {v10, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 212
    .local v10, br:Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .local v9, line:Ljava/lang/String;
    if-nez v9, :cond_1

    .line 221
    if-eqz v16, :cond_0

    .line 222
    :try_start_1
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 226
    :cond_0
    :goto_1
    return-void

    .line 213
    :cond_1
    move/from16 v0, p3

    int-to-long v5, v0

    add-int v2, v14, v17

    int-to-long v7, v2

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    :try_start_2
    invoke-direct/range {v2 .. v9}, Lcom/nrsmagic/sudoku/db/DatabaseHelper;->insertSudoku(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteStatement;JJLjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 214
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    .line 216
    .end local v9           #line:Ljava/lang/String;
    .end local v10           #br:Ljava/io/BufferedReader;
    .end local v11           #decoder:Ljava/io/InputStreamReader;
    .end local v13           #gzipStream:Ljava/util/zip/GZIPInputStream;
    :catch_0
    move-exception v12

    .line 217
    .local v12, e:Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v12}, Ljava/io/IOException;->printStackTrace()V

    .line 218
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v12}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 219
    .end local v12           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v2

    .line 221
    if-eqz v16, :cond_2

    .line 222
    :try_start_4
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 225
    :cond_2
    :goto_2
    throw v2

    .line 223
    :catch_1
    move-exception v3

    goto :goto_2

    .restart local v9       #line:Ljava/lang/String;
    .restart local v10       #br:Ljava/io/BufferedReader;
    .restart local v11       #decoder:Ljava/io/InputStreamReader;
    .restart local v13       #gzipStream:Ljava/util/zip/GZIPInputStream;
    :catch_2
    move-exception v2

    goto :goto_1
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .parameter "db"

    .prologue
    .line 57
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 59
    :try_start_0
    const-string v0, "CREATE TABLE sudoku (_id INTEGER PRIMARY KEY,folder_id INTEGER,created INTEGER,state INTEGER,time INTEGER,last_played INTEGER,data Text,puzzle_note Text);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 70
    const-string v0, "CREATE TABLE folder (_id INTEGER PRIMARY KEY,created INTEGER,name TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 76
    const-wide/16 v0, 0x1

    iget-object v2, p0, Lcom/nrsmagic/sudoku/db/DatabaseHelper;->mContext:Landroid/content/Context;

    const v3, 0x7f09007d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/nrsmagic/sudoku/db/DatabaseHelper;->insertFolder(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;)V

    .line 77
    const-string v0, "easy"

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/nrsmagic/sudoku/db/DatabaseHelper;->loadAssets(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;I)V

    .line 78
    const-wide/16 v0, 0x2

    iget-object v2, p0, Lcom/nrsmagic/sudoku/db/DatabaseHelper;->mContext:Landroid/content/Context;

    const v3, 0x7f09007c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/nrsmagic/sudoku/db/DatabaseHelper;->insertFolder(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;)V

    .line 79
    const-string v0, "medium"

    const/4 v1, 0x2

    invoke-direct {p0, v0, p1, v1}, Lcom/nrsmagic/sudoku/db/DatabaseHelper;->loadAssets(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;I)V

    .line 80
    const-wide/16 v0, 0x3

    iget-object v2, p0, Lcom/nrsmagic/sudoku/db/DatabaseHelper;->mContext:Landroid/content/Context;

    const v3, 0x7f09007b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/nrsmagic/sudoku/db/DatabaseHelper;->insertFolder(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;)V

    .line 81
    const-string v0, "hard"

    const/4 v1, 0x3

    invoke-direct {p0, v0, p1, v1}, Lcom/nrsmagic/sudoku/db/DatabaseHelper;->loadAssets(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;I)V

    .line 82
    const-wide/16 v0, 0x4

    iget-object v2, p0, Lcom/nrsmagic/sudoku/db/DatabaseHelper;->mContext:Landroid/content/Context;

    const v3, 0x7f090088

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/nrsmagic/sudoku/db/DatabaseHelper;->insertFolder(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;)V

    .line 83
    const-string v0, "very_hard"

    const/4 v1, 0x4

    invoke-direct {p0, v0, p1, v1}, Lcom/nrsmagic/sudoku/db/DatabaseHelper;->loadAssets(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;I)V

    .line 182
    invoke-direct {p0, p1}, Lcom/nrsmagic/sudoku/db/DatabaseHelper;->createIndexes(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 184
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 188
    return-void

    .line 185
    :catchall_0
    move-exception v0

    .line 186
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 187
    throw v0
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 279
    const-string v0, "DatabaseHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Upgrading database from version "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 280
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 279
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    return-void
.end method
