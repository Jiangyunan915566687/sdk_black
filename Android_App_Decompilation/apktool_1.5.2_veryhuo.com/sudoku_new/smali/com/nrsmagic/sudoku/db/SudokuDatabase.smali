.class public Lcom/nrsmagic/sudoku/db/SudokuDatabase;
.super Ljava/lang/Object;
.source "SudokuDatabase.java"


# static fields
.field public static final DATABASE_NAME:Ljava/lang/String; = "opensudoku"

.field public static final FOLDER_TABLE_NAME:Ljava/lang/String; = "folder"

.field private static final INBOX_FOLDER_NAME:Ljava/lang/String; = "Inbox"

.field public static final SUDOKU_TABLE_NAME:Ljava/lang/String; = "sudoku"


# instance fields
.field private mBackupManager:Landroid/app/backup/BackupManager;

.field private mInsertSudokuStatement:Landroid/database/sqlite/SQLiteStatement;

.field private mOpenHelper:Lcom/nrsmagic/sudoku/db/DatabaseHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Lcom/nrsmagic/sudoku/db/DatabaseHelper;

    invoke-direct {v0, p1}, Lcom/nrsmagic/sudoku/db/DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nrsmagic/sudoku/db/SudokuDatabase;->mOpenHelper:Lcom/nrsmagic/sudoku/db/DatabaseHelper;

    .line 66
    new-instance v0, Landroid/app/backup/BackupManager;

    invoke-direct {v0, p1}, Landroid/app/backup/BackupManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nrsmagic/sudoku/db/SudokuDatabase;->mBackupManager:Landroid/app/backup/BackupManager;

    .line 67
    return-void
.end method


# virtual methods
.method public beginTransaction()V
    .locals 1

    .prologue
    .line 490
    iget-object v0, p0, Lcom/nrsmagic/sudoku/db/SudokuDatabase;->mOpenHelper:Lcom/nrsmagic/sudoku/db/DatabaseHelper;

    invoke-virtual {v0}, Lcom/nrsmagic/sudoku/db/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 491
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 482
    iget-object v0, p0, Lcom/nrsmagic/sudoku/db/SudokuDatabase;->mInsertSudokuStatement:Landroid/database/sqlite/SQLiteStatement;

    if-eqz v0, :cond_0

    .line 483
    iget-object v0, p0, Lcom/nrsmagic/sudoku/db/SudokuDatabase;->mInsertSudokuStatement:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 486
    :cond_0
    iget-object v0, p0, Lcom/nrsmagic/sudoku/db/SudokuDatabase;->mOpenHelper:Lcom/nrsmagic/sudoku/db/DatabaseHelper;

    invoke-virtual {v0}, Lcom/nrsmagic/sudoku/db/DatabaseHelper;->close()V

    .line 487
    return-void
.end method

.method public deleteFolder(J)V
    .locals 5
    .parameter "folderID"

    .prologue
    const/4 v4, 0x0

    .line 269
    iget-object v1, p0, Lcom/nrsmagic/sudoku/db/SudokuDatabase;->mOpenHelper:Lcom/nrsmagic/sudoku/db/DatabaseHelper;

    invoke-virtual {v1}, Lcom/nrsmagic/sudoku/db/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 271
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "sudoku"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "folder_id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 273
    const-string v1, "folder"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "_id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 275
    iget-object v1, p0, Lcom/nrsmagic/sudoku/db/SudokuDatabase;->mBackupManager:Landroid/app/backup/BackupManager;

    invoke-virtual {v1}, Landroid/app/backup/BackupManager;->dataChanged()V

    .line 276
    return-void
.end method

.method public deleteSudoku(J)V
    .locals 4
    .parameter "sudokuID"

    .prologue
    .line 476
    iget-object v1, p0, Lcom/nrsmagic/sudoku/db/SudokuDatabase;->mOpenHelper:Lcom/nrsmagic/sudoku/db/DatabaseHelper;

    invoke-virtual {v1}, Lcom/nrsmagic/sudoku/db/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 477
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "sudoku"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "_id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 478
    iget-object v1, p0, Lcom/nrsmagic/sudoku/db/SudokuDatabase;->mBackupManager:Landroid/app/backup/BackupManager;

    invoke-virtual {v1}, Landroid/app/backup/BackupManager;->dataChanged()V

    .line 479
    return-void
.end method

.method public endTransaction()V
    .locals 1

    .prologue
    .line 499
    iget-object v0, p0, Lcom/nrsmagic/sudoku/db/SudokuDatabase;->mOpenHelper:Lcom/nrsmagic/sudoku/db/DatabaseHelper;

    invoke-virtual {v0}, Lcom/nrsmagic/sudoku/db/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 500
    return-void
.end method

.method public exportFolder(J)Landroid/database/Cursor;
    .locals 6
    .parameter "folderID"

    .prologue
    const-wide/16 v4, -0x1

    .line 431
    const-string v1, "select f._id as folder_id, f.name as folder_name, f.created as folder_created, s.created, s.state, s.time, s.last_played, s.data, s.puzzle_note from folder f left outer join sudoku s on f._id = s.folder_id"

    .line 432
    .local v1, query:Ljava/lang/String;
    iget-object v2, p0, Lcom/nrsmagic/sudoku/db/SudokuDatabase;->mOpenHelper:Lcom/nrsmagic/sudoku/db/DatabaseHelper;

    invoke-virtual {v2}, Lcom/nrsmagic/sudoku/db/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 433
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    cmp-long v2, p1, v4

    if-eqz v2, :cond_0

    .line 434
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " where f._id = ?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 436
    :cond_0
    cmp-long v2, p1, v4

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public exportSudoku(J)Landroid/database/Cursor;
    .locals 5
    .parameter "sudokuID"

    .prologue
    .line 446
    const-string v1, "select f._id as folder_id, f.name as folder_name, f.created as folder_created, s.created, s.state, s.time, s.last_played, s.data, s.puzzle_note from sudoku s inner join folder f on s.folder_id = f._id where s._id = ?"

    .line 447
    .local v1, query:Ljava/lang/String;
    iget-object v2, p0, Lcom/nrsmagic/sudoku/db/SudokuDatabase;->mOpenHelper:Lcom/nrsmagic/sudoku/db/DatabaseHelper;

    invoke-virtual {v2}, Lcom/nrsmagic/sudoku/db/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 448
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    return-object v2
.end method

.method public findFolder(Ljava/lang/String;)Lcom/nrsmagic/sudoku/game/FolderInfo;
    .locals 13
    .parameter "folderName"

    .prologue
    const/4 v9, 0x0

    .line 189
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 191
    .local v0, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v2, "folder"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 192
    const-string v2, "name = ?"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 194
    const/4 v8, 0x0

    .line 197
    .local v8, c:Landroid/database/Cursor;
    :try_start_0
    iget-object v2, p0, Lcom/nrsmagic/sudoku/db/SudokuDatabase;->mOpenHelper:Lcom/nrsmagic/sudoku/db/DatabaseHelper;

    invoke-virtual {v2}, Lcom/nrsmagic/sudoku/db/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 198
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 200
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 201
    const-string v2, "_id"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 202
    .local v10, id:J
    const-string v2, "name"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 204
    .local v12, name:Ljava/lang/String;
    new-instance v9, Lcom/nrsmagic/sudoku/game/FolderInfo;

    invoke-direct {v9}, Lcom/nrsmagic/sudoku/game/FolderInfo;-><init>()V

    .line 205
    .local v9, folderInfo:Lcom/nrsmagic/sudoku/game/FolderInfo;
    iput-wide v10, v9, Lcom/nrsmagic/sudoku/game/FolderInfo;->id:J

    .line 206
    iput-object v12, v9, Lcom/nrsmagic/sudoku/game/FolderInfo;->name:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 210
    .end local v9           #folderInfo:Lcom/nrsmagic/sudoku/game/FolderInfo;
    .end local v10           #id:J
    .end local v12           #name:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v9

    .line 213
    :cond_1
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 212
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    :catchall_0
    move-exception v2

    .line 213
    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 214
    :cond_2
    throw v2
.end method

.method public getFolderInfo(J)Lcom/nrsmagic/sudoku/game/FolderInfo;
    .locals 13
    .parameter "folderID"

    .prologue
    const/4 v9, 0x0

    .line 90
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 92
    .local v0, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v2, "folder"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 93
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "_id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 95
    const/4 v8, 0x0

    .line 98
    .local v8, c:Landroid/database/Cursor;
    :try_start_0
    iget-object v2, p0, Lcom/nrsmagic/sudoku/db/SudokuDatabase;->mOpenHelper:Lcom/nrsmagic/sudoku/db/DatabaseHelper;

    invoke-virtual {v2}, Lcom/nrsmagic/sudoku/db/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 99
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 101
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 102
    const-string v2, "_id"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 103
    .local v10, id:J
    const-string v2, "name"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 105
    .local v12, name:Ljava/lang/String;
    new-instance v9, Lcom/nrsmagic/sudoku/game/FolderInfo;

    invoke-direct {v9}, Lcom/nrsmagic/sudoku/game/FolderInfo;-><init>()V

    .line 106
    .local v9, folderInfo:Lcom/nrsmagic/sudoku/game/FolderInfo;
    iput-wide v10, v9, Lcom/nrsmagic/sudoku/game/FolderInfo;->id:J

    .line 107
    iput-object v12, v9, Lcom/nrsmagic/sudoku/game/FolderInfo;->name:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 111
    .end local v9           #folderInfo:Lcom/nrsmagic/sudoku/game/FolderInfo;
    .end local v10           #id:J
    .end local v12           #name:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v9

    .line 114
    :cond_1
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 113
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    :catchall_0
    move-exception v2

    .line 114
    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 115
    :cond_2
    throw v2
.end method

.method public getFolderInfoFull(J)Lcom/nrsmagic/sudoku/game/FolderInfo;
    .locals 12
    .parameter "folderID"

    .prologue
    .line 125
    const/4 v3, 0x0

    .line 127
    .local v3, folder:Lcom/nrsmagic/sudoku/game/FolderInfo;
    const/4 v2, 0x0

    .line 128
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v0, 0x0

    .line 131
    .local v0, c:Landroid/database/Cursor;
    :try_start_0
    iget-object v10, p0, Lcom/nrsmagic/sudoku/db/SudokuDatabase;->mOpenHelper:Lcom/nrsmagic/sudoku/db/DatabaseHelper;

    invoke-virtual {v10}, Lcom/nrsmagic/sudoku/db/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 134
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "select folder._id as _id, folder.name as name, sudoku.state as state, count(sudoku.state) as count from folder left join sudoku on folder._id = sudoku.folder_id where folder._id = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " group by sudoku.state"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 135
    .local v8, q:Ljava/lang/String;
    const/4 v10, 0x0

    invoke-virtual {v2, v8, v10}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    move-object v4, v3

    .line 137
    .end local v3           #folder:Lcom/nrsmagic/sudoku/game/FolderInfo;
    .local v4, folder:Lcom/nrsmagic/sudoku/game/FolderInfo;
    :goto_0
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v10

    if-nez v10, :cond_1

    .line 157
    if-eqz v0, :cond_0

    .line 158
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 162
    :cond_0
    return-object v4

    .line 138
    :cond_1
    :try_start_2
    const-string v10, "_id"

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 139
    .local v5, id:J
    const-string v10, "name"

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 140
    .local v7, name:Ljava/lang/String;
    const-string v10, "state"

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 141
    .local v9, state:I
    const-string v10, "count"

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 143
    .local v1, count:I
    if-nez v4, :cond_5

    .line 144
    new-instance v3, Lcom/nrsmagic/sudoku/game/FolderInfo;

    invoke-direct {v3, v5, v6, v7}, Lcom/nrsmagic/sudoku/game/FolderInfo;-><init>(JLjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 147
    .end local v4           #folder:Lcom/nrsmagic/sudoku/game/FolderInfo;
    .restart local v3       #folder:Lcom/nrsmagic/sudoku/game/FolderInfo;
    :goto_1
    :try_start_3
    iget v10, v3, Lcom/nrsmagic/sudoku/game/FolderInfo;->puzzleCount:I

    add-int/2addr v10, v1

    iput v10, v3, Lcom/nrsmagic/sudoku/game/FolderInfo;->puzzleCount:I

    .line 148
    const/4 v10, 0x2

    if-ne v9, v10, :cond_2

    .line 149
    iget v10, v3, Lcom/nrsmagic/sudoku/game/FolderInfo;->solvedCount:I

    add-int/2addr v10, v1

    iput v10, v3, Lcom/nrsmagic/sudoku/game/FolderInfo;->solvedCount:I

    .line 151
    :cond_2
    if-nez v9, :cond_3

    .line 152
    iget v10, v3, Lcom/nrsmagic/sudoku/game/FolderInfo;->playingCount:I

    add-int/2addr v10, v1

    iput v10, v3, Lcom/nrsmagic/sudoku/game/FolderInfo;->playingCount:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_3
    move-object v4, v3

    .end local v3           #folder:Lcom/nrsmagic/sudoku/game/FolderInfo;
    .restart local v4       #folder:Lcom/nrsmagic/sudoku/game/FolderInfo;
    goto :goto_0

    .line 156
    .end local v1           #count:I
    .end local v4           #folder:Lcom/nrsmagic/sudoku/game/FolderInfo;
    .end local v5           #id:J
    .end local v7           #name:Ljava/lang/String;
    .end local v8           #q:Ljava/lang/String;
    .end local v9           #state:I
    .restart local v3       #folder:Lcom/nrsmagic/sudoku/game/FolderInfo;
    :catchall_0
    move-exception v10

    .line 157
    :goto_2
    if-eqz v0, :cond_4

    .line 158
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 160
    :cond_4
    throw v10

    .line 156
    .end local v3           #folder:Lcom/nrsmagic/sudoku/game/FolderInfo;
    .restart local v4       #folder:Lcom/nrsmagic/sudoku/game/FolderInfo;
    .restart local v8       #q:Ljava/lang/String;
    :catchall_1
    move-exception v10

    move-object v3, v4

    .end local v4           #folder:Lcom/nrsmagic/sudoku/game/FolderInfo;
    .restart local v3       #folder:Lcom/nrsmagic/sudoku/game/FolderInfo;
    goto :goto_2

    .end local v3           #folder:Lcom/nrsmagic/sudoku/game/FolderInfo;
    .restart local v1       #count:I
    .restart local v4       #folder:Lcom/nrsmagic/sudoku/game/FolderInfo;
    .restart local v5       #id:J
    .restart local v7       #name:Ljava/lang/String;
    .restart local v9       #state:I
    :cond_5
    move-object v3, v4

    .end local v4           #folder:Lcom/nrsmagic/sudoku/game/FolderInfo;
    .restart local v3       #folder:Lcom/nrsmagic/sudoku/game/FolderInfo;
    goto :goto_1
.end method

.method public getFolderList()Landroid/database/Cursor;
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 75
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 77
    .local v0, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v3, "folder"

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 79
    iget-object v3, p0, Lcom/nrsmagic/sudoku/db/SudokuDatabase;->mOpenHelper:Lcom/nrsmagic/sudoku/db/DatabaseHelper;

    invoke-virtual {v3}, Lcom/nrsmagic/sudoku/db/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 80
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v7, "created ASC"

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    return-object v2
.end method

.method public getInboxFolder()Lcom/nrsmagic/sudoku/game/FolderInfo;
    .locals 4

    .prologue
    .line 174
    const-string v1, "Inbox"

    invoke-virtual {p0, v1}, Lcom/nrsmagic/sudoku/db/SudokuDatabase;->findFolder(Ljava/lang/String;)Lcom/nrsmagic/sudoku/game/FolderInfo;

    move-result-object v0

    .line 175
    .local v0, inbox:Lcom/nrsmagic/sudoku/game/FolderInfo;
    if-eqz v0, :cond_0

    .line 176
    const-string v1, "Inbox"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/nrsmagic/sudoku/db/SudokuDatabase;->insertFolder(Ljava/lang/String;Ljava/lang/Long;)Lcom/nrsmagic/sudoku/game/FolderInfo;

    move-result-object v0

    .line 178
    :cond_0
    return-object v0
.end method

.method public getSudoku(J)Lcom/nrsmagic/sudoku/game/SudokuGame;
    .locals 25
    .parameter "sudokuID"

    .prologue
    .line 314
    new-instance v3, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v3}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 316
    .local v3, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v5, "sudoku"

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 317
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "_id="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v0, p1

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 321
    const/4 v4, 0x0

    .line 322
    .local v4, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v11, 0x0

    .line 323
    .local v11, c:Landroid/database/Cursor;
    const/16 v20, 0x0

    .line 325
    .local v20, s:Lcom/nrsmagic/sudoku/game/SudokuGame;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nrsmagic/sudoku/db/SudokuDatabase;->mOpenHelper:Lcom/nrsmagic/sudoku/db/DatabaseHelper;

    invoke-virtual {v5}, Lcom/nrsmagic/sudoku/db/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 326
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 328
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 329
    const-string v5, "_id"

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 330
    .local v15, id:J
    const-string v5, "created"

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 331
    .local v12, created:J
    const-string v5, "data"

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 332
    .local v14, data:Ljava/lang/String;
    const-string v5, "last_played"

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    .line 333
    .local v17, lastPlayed:J
    const-string v5, "state"

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    .line 334
    .local v22, state:I
    const-string v5, "time"

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v23

    .line 335
    .local v23, time:J
    const-string v5, "puzzle_note"

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 337
    .local v19, note:Ljava/lang/String;
    new-instance v21, Lcom/nrsmagic/sudoku/game/SudokuGame;

    invoke-direct/range {v21 .. v21}, Lcom/nrsmagic/sudoku/game/SudokuGame;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 338
    .end local v20           #s:Lcom/nrsmagic/sudoku/game/SudokuGame;
    .local v21, s:Lcom/nrsmagic/sudoku/game/SudokuGame;
    :try_start_1
    move-object/from16 v0, v21

    move-wide v1, v15

    invoke-virtual {v0, v1, v2}, Lcom/nrsmagic/sudoku/game/SudokuGame;->setId(J)V

    .line 339
    move-object/from16 v0, v21

    invoke-virtual {v0, v12, v13}, Lcom/nrsmagic/sudoku/game/SudokuGame;->setCreated(J)V

    .line 340
    invoke-static {v14}, Lcom/nrsmagic/sudoku/game/CellCollection;->deserialize(Ljava/lang/String;)Lcom/nrsmagic/sudoku/game/CellCollection;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Lcom/nrsmagic/sudoku/game/SudokuGame;->setCells(Lcom/nrsmagic/sudoku/game/CellCollection;)V

    .line 341
    move-object/from16 v0, v21

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Lcom/nrsmagic/sudoku/game/SudokuGame;->setLastPlayed(J)V

    .line 342
    invoke-virtual/range {v21 .. v22}, Lcom/nrsmagic/sudoku/game/SudokuGame;->setState(I)V

    .line 343
    move-object/from16 v0, v21

    move-wide/from16 v1, v23

    invoke-virtual {v0, v1, v2}, Lcom/nrsmagic/sudoku/game/SudokuGame;->setTime(J)V

    .line 344
    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/nrsmagic/sudoku/game/SudokuGame;->setNote(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v20, v21

    .line 347
    .end local v12           #created:J
    .end local v14           #data:Ljava/lang/String;
    .end local v15           #id:J
    .end local v17           #lastPlayed:J
    .end local v19           #note:Ljava/lang/String;
    .end local v21           #s:Lcom/nrsmagic/sudoku/game/SudokuGame;
    .end local v22           #state:I
    .end local v23           #time:J
    .restart local v20       #s:Lcom/nrsmagic/sudoku/game/SudokuGame;
    :cond_0
    if-eqz v11, :cond_1

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 350
    :cond_1
    return-object v20

    .line 346
    :catchall_0
    move-exception v5

    .line 347
    :goto_0
    if-eqz v11, :cond_2

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 348
    :cond_2
    throw v5

    .line 346
    .end local v20           #s:Lcom/nrsmagic/sudoku/game/SudokuGame;
    .restart local v12       #created:J
    .restart local v14       #data:Ljava/lang/String;
    .restart local v15       #id:J
    .restart local v17       #lastPlayed:J
    .restart local v19       #note:Ljava/lang/String;
    .restart local v21       #s:Lcom/nrsmagic/sudoku/game/SudokuGame;
    .restart local v22       #state:I
    .restart local v23       #time:J
    :catchall_1
    move-exception v5

    move-object/from16 v20, v21

    .end local v21           #s:Lcom/nrsmagic/sudoku/game/SudokuGame;
    .restart local v20       #s:Lcom/nrsmagic/sudoku/game/SudokuGame;
    goto :goto_0
.end method

.method public getSudokuList(JLcom/nrsmagic/sudoku/gui/SudokuListFilter;)Landroid/database/Cursor;
    .locals 8
    .parameter "folderID"
    .parameter "filter"

    .prologue
    const/4 v2, 0x0

    .line 285
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 287
    .local v0, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v3, "sudoku"

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 289
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "folder_id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 291
    if-eqz p3, :cond_2

    .line 292
    iget-boolean v3, p3, Lcom/nrsmagic/sudoku/gui/SudokuListFilter;->showStateCompleted:Z

    if-nez v3, :cond_0

    .line 293
    const-string v3, " and state!=2"

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 295
    :cond_0
    iget-boolean v3, p3, Lcom/nrsmagic/sudoku/gui/SudokuListFilter;->showStateNotStarted:Z

    if-nez v3, :cond_1

    .line 296
    const-string v3, " and state!=1"

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 298
    :cond_1
    iget-boolean v3, p3, Lcom/nrsmagic/sudoku/gui/SudokuListFilter;->showStatePlaying:Z

    if-nez v3, :cond_2

    .line 299
    const-string v3, " and state!=0"

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 303
    :cond_2
    iget-object v3, p0, Lcom/nrsmagic/sudoku/db/SudokuDatabase;->mOpenHelper:Lcom/nrsmagic/sudoku/db/DatabaseHelper;

    invoke-virtual {v3}, Lcom/nrsmagic/sudoku/db/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 304
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v7, "created DESC"

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    return-object v2
.end method

.method public importSudoku(JLcom/nrsmagic/sudoku/db/SudokuImportParams;)J
    .locals 8
    .parameter "folderID"
    .parameter "pars"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nrsmagic/sudoku/db/SudokuInvalidFormatException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x7

    .line 385
    iget-object v3, p3, Lcom/nrsmagic/sudoku/db/SudokuImportParams;->data:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 386
    new-instance v3, Lcom/nrsmagic/sudoku/db/SudokuInvalidFormatException;

    iget-object v4, p3, Lcom/nrsmagic/sudoku/db/SudokuImportParams;->data:Ljava/lang/String;

    invoke-direct {v3, v4}, Lcom/nrsmagic/sudoku/db/SudokuInvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 389
    :cond_0
    iget-object v3, p3, Lcom/nrsmagic/sudoku/db/SudokuImportParams;->data:Ljava/lang/String;

    sget v4, Lcom/nrsmagic/sudoku/game/CellCollection;->DATA_VERSION_PLAIN:I

    invoke-static {v3, v4}, Lcom/nrsmagic/sudoku/game/CellCollection;->isValid(Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 390
    iget-object v3, p3, Lcom/nrsmagic/sudoku/db/SudokuImportParams;->data:Ljava/lang/String;

    sget v4, Lcom/nrsmagic/sudoku/game/CellCollection;->DATA_VERSION_1:I

    invoke-static {v3, v4}, Lcom/nrsmagic/sudoku/game/CellCollection;->isValid(Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 391
    new-instance v3, Lcom/nrsmagic/sudoku/db/SudokuInvalidFormatException;

    iget-object v4, p3, Lcom/nrsmagic/sudoku/db/SudokuImportParams;->data:Ljava/lang/String;

    invoke-direct {v3, v4}, Lcom/nrsmagic/sudoku/db/SudokuInvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 395
    :cond_1
    iget-object v3, p0, Lcom/nrsmagic/sudoku/db/SudokuDatabase;->mInsertSudokuStatement:Landroid/database/sqlite/SQLiteStatement;

    if-nez v3, :cond_2

    .line 396
    iget-object v3, p0, Lcom/nrsmagic/sudoku/db/SudokuDatabase;->mOpenHelper:Lcom/nrsmagic/sudoku/db/DatabaseHelper;

    invoke-virtual {v3}, Lcom/nrsmagic/sudoku/db/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 398
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "insert into sudoku (folder_id, created, state, time, last_played, data, puzzle_note) values (?, ?, ?, ?, ?, ?, ?)"

    .line 397
    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v3

    iput-object v3, p0, Lcom/nrsmagic/sudoku/db/SudokuDatabase;->mInsertSudokuStatement:Landroid/database/sqlite/SQLiteStatement;

    .line 402
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_2
    iget-object v3, p0, Lcom/nrsmagic/sudoku/db/SudokuDatabase;->mInsertSudokuStatement:Landroid/database/sqlite/SQLiteStatement;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 403
    iget-object v3, p0, Lcom/nrsmagic/sudoku/db/SudokuDatabase;->mInsertSudokuStatement:Landroid/database/sqlite/SQLiteStatement;

    const/4 v4, 0x2

    iget-wide v5, p3, Lcom/nrsmagic/sudoku/db/SudokuImportParams;->created:J

    invoke-virtual {v3, v4, v5, v6}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 404
    iget-object v3, p0, Lcom/nrsmagic/sudoku/db/SudokuDatabase;->mInsertSudokuStatement:Landroid/database/sqlite/SQLiteStatement;

    const/4 v4, 0x3

    iget-wide v5, p3, Lcom/nrsmagic/sudoku/db/SudokuImportParams;->state:J

    invoke-virtual {v3, v4, v5, v6}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 405
    iget-object v3, p0, Lcom/nrsmagic/sudoku/db/SudokuDatabase;->mInsertSudokuStatement:Landroid/database/sqlite/SQLiteStatement;

    const/4 v4, 0x4

    iget-wide v5, p3, Lcom/nrsmagic/sudoku/db/SudokuImportParams;->time:J

    invoke-virtual {v3, v4, v5, v6}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 406
    iget-object v3, p0, Lcom/nrsmagic/sudoku/db/SudokuDatabase;->mInsertSudokuStatement:Landroid/database/sqlite/SQLiteStatement;

    const/4 v4, 0x5

    iget-wide v5, p3, Lcom/nrsmagic/sudoku/db/SudokuImportParams;->lastPlayed:J

    invoke-virtual {v3, v4, v5, v6}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 407
    iget-object v3, p0, Lcom/nrsmagic/sudoku/db/SudokuDatabase;->mInsertSudokuStatement:Landroid/database/sqlite/SQLiteStatement;

    const/4 v4, 0x6

    iget-object v5, p3, Lcom/nrsmagic/sudoku/db/SudokuImportParams;->data:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 408
    iget-object v3, p3, Lcom/nrsmagic/sudoku/db/SudokuImportParams;->note:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 409
    iget-object v3, p0, Lcom/nrsmagic/sudoku/db/SudokuDatabase;->mInsertSudokuStatement:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v3, v7}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    .line 414
    :goto_0
    iget-object v3, p0, Lcom/nrsmagic/sudoku/db/SudokuDatabase;->mInsertSudokuStatement:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    move-result-wide v1

    .line 415
    .local v1, rowId:J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_4

    .line 416
    iget-object v3, p0, Lcom/nrsmagic/sudoku/db/SudokuDatabase;->mBackupManager:Landroid/app/backup/BackupManager;

    invoke-virtual {v3}, Landroid/app/backup/BackupManager;->dataChanged()V

    .line 418
    return-wide v1

    .line 411
    .end local v1           #rowId:J
    :cond_3
    iget-object v3, p0, Lcom/nrsmagic/sudoku/db/SudokuDatabase;->mInsertSudokuStatement:Landroid/database/sqlite/SQLiteStatement;

    iget-object v4, p3, Lcom/nrsmagic/sudoku/db/SudokuImportParams;->note:Ljava/lang/String;

    invoke-virtual {v3, v7, v4}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    goto :goto_0

    .line 421
    .restart local v1       #rowId:J
    :cond_4
    new-instance v3, Landroid/database/SQLException;

    const-string v4, "Failed to insert sudoku."

    invoke-direct {v3, v4}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public insertFolder(Ljava/lang/String;Ljava/lang/Long;)Lcom/nrsmagic/sudoku/game/FolderInfo;
    .locals 9
    .parameter "name"
    .parameter "created"

    .prologue
    .line 224
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 225
    .local v4, values:Landroid/content/ContentValues;
    const-string v5, "created"

    invoke-virtual {v4, v5, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 226
    const-string v5, "name"

    invoke-virtual {v4, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    iget-object v5, p0, Lcom/nrsmagic/sudoku/db/SudokuDatabase;->mOpenHelper:Lcom/nrsmagic/sudoku/db/DatabaseHelper;

    invoke-virtual {v5}, Lcom/nrsmagic/sudoku/db/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 230
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v5, "folder"

    const-string v6, "_id"

    invoke-virtual {v0, v5, v6, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 232
    .local v2, rowId:J
    const-wide/16 v5, 0x0

    cmp-long v5, v2, v5

    if-lez v5, :cond_0

    .line 233
    new-instance v1, Lcom/nrsmagic/sudoku/game/FolderInfo;

    invoke-direct {v1}, Lcom/nrsmagic/sudoku/game/FolderInfo;-><init>()V

    .line 234
    .local v1, fi:Lcom/nrsmagic/sudoku/game/FolderInfo;
    iput-wide v2, v1, Lcom/nrsmagic/sudoku/game/FolderInfo;->id:J

    .line 235
    iput-object p1, v1, Lcom/nrsmagic/sudoku/game/FolderInfo;->name:Ljava/lang/String;

    .line 237
    iget-object v5, p0, Lcom/nrsmagic/sudoku/db/SudokuDatabase;->mBackupManager:Landroid/app/backup/BackupManager;

    invoke-virtual {v5}, Landroid/app/backup/BackupManager;->dataChanged()V

    .line 239
    return-object v1

    .line 242
    .end local v1           #fi:Lcom/nrsmagic/sudoku/game/FolderInfo;
    :cond_0
    new-instance v5, Landroid/database/SQLException;

    const-string v6, "Failed to insert folder \'%s\'."

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public insertSudoku(JLcom/nrsmagic/sudoku/game/SudokuGame;)J
    .locals 7
    .parameter "folderID"
    .parameter "sudoku"

    .prologue
    .line 363
    iget-object v4, p0, Lcom/nrsmagic/sudoku/db/SudokuDatabase;->mOpenHelper:Lcom/nrsmagic/sudoku/db/DatabaseHelper;

    invoke-virtual {v4}, Lcom/nrsmagic/sudoku/db/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 364
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 365
    .local v3, values:Landroid/content/ContentValues;
    const-string v4, "data"

    invoke-virtual {p3}, Lcom/nrsmagic/sudoku/game/SudokuGame;->getCells()Lcom/nrsmagic/sudoku/game/CellCollection;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nrsmagic/sudoku/game/CellCollection;->serialize()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    const-string v4, "created"

    invoke-virtual {p3}, Lcom/nrsmagic/sudoku/game/SudokuGame;->getCreated()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 367
    const-string v4, "last_played"

    invoke-virtual {p3}, Lcom/nrsmagic/sudoku/game/SudokuGame;->getLastPlayed()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 368
    const-string v4, "state"

    invoke-virtual {p3}, Lcom/nrsmagic/sudoku/game/SudokuGame;->getState()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 369
    const-string v4, "time"

    invoke-virtual {p3}, Lcom/nrsmagic/sudoku/game/SudokuGame;->getTime()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 370
    const-string v4, "puzzle_note"

    invoke-virtual {p3}, Lcom/nrsmagic/sudoku/game/SudokuGame;->getNote()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    const-string v4, "folder_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 373
    const-string v4, "sudoku"

    const-string v5, "name"

    invoke-virtual {v0, v4, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 374
    .local v1, rowId:J
    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-lez v4, :cond_0

    .line 375
    iget-object v4, p0, Lcom/nrsmagic/sudoku/db/SudokuDatabase;->mBackupManager:Landroid/app/backup/BackupManager;

    invoke-virtual {v4}, Landroid/app/backup/BackupManager;->dataChanged()V

    .line 377
    return-wide v1

    .line 380
    :cond_0
    new-instance v4, Landroid/database/SQLException;

    const-string v5, "Failed to insert sudoku."

    invoke-direct {v4, v5}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public setTransactionSuccessful()V
    .locals 1

    .prologue
    .line 494
    iget-object v0, p0, Lcom/nrsmagic/sudoku/db/SudokuDatabase;->mOpenHelper:Lcom/nrsmagic/sudoku/db/DatabaseHelper;

    invoke-virtual {v0}, Lcom/nrsmagic/sudoku/db/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 495
    iget-object v0, p0, Lcom/nrsmagic/sudoku/db/SudokuDatabase;->mBackupManager:Landroid/app/backup/BackupManager;

    invoke-virtual {v0}, Landroid/app/backup/BackupManager;->dataChanged()V

    .line 496
    return-void
.end method

.method public updateFolder(JLjava/lang/String;)V
    .locals 5
    .parameter "folderID"
    .parameter "name"

    .prologue
    .line 252
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 253
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "name"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    const/4 v0, 0x0

    .line 256
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    iget-object v2, p0, Lcom/nrsmagic/sudoku/db/SudokuDatabase;->mOpenHelper:Lcom/nrsmagic/sudoku/db/DatabaseHelper;

    invoke-virtual {v2}, Lcom/nrsmagic/sudoku/db/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 257
    const-string v2, "folder"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "_id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 258
    iget-object v2, p0, Lcom/nrsmagic/sudoku/db/SudokuDatabase;->mBackupManager:Landroid/app/backup/BackupManager;

    invoke-virtual {v2}, Landroid/app/backup/BackupManager;->dataChanged()V

    .line 259
    return-void
.end method

.method public updateSudoku(Lcom/nrsmagic/sudoku/game/SudokuGame;)V
    .locals 6
    .parameter "sudoku"

    .prologue
    .line 457
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 458
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "data"

    invoke-virtual {p1}, Lcom/nrsmagic/sudoku/game/SudokuGame;->getCells()Lcom/nrsmagic/sudoku/game/CellCollection;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nrsmagic/sudoku/game/CellCollection;->serialize()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    const-string v2, "last_played"

    invoke-virtual {p1}, Lcom/nrsmagic/sudoku/game/SudokuGame;->getLastPlayed()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 460
    const-string v2, "state"

    invoke-virtual {p1}, Lcom/nrsmagic/sudoku/game/SudokuGame;->getState()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 461
    const-string v2, "time"

    invoke-virtual {p1}, Lcom/nrsmagic/sudoku/game/SudokuGame;->getTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 462
    const-string v2, "puzzle_note"

    invoke-virtual {p1}, Lcom/nrsmagic/sudoku/game/SudokuGame;->getNote()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    iget-object v2, p0, Lcom/nrsmagic/sudoku/db/SudokuDatabase;->mOpenHelper:Lcom/nrsmagic/sudoku/db/DatabaseHelper;

    invoke-virtual {v2}, Lcom/nrsmagic/sudoku/db/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 465
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "sudoku"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "_id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/nrsmagic/sudoku/game/SudokuGame;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 466
    iget-object v2, p0, Lcom/nrsmagic/sudoku/db/SudokuDatabase;->mBackupManager:Landroid/app/backup/BackupManager;

    invoke-virtual {v2}, Landroid/app/backup/BackupManager;->dataChanged()V

    .line 467
    return-void
.end method
