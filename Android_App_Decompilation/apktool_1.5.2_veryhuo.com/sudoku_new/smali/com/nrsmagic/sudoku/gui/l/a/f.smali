.class Lcom/nrsmagic/sudoku/gui/l/a/f;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/nrsmagic/sudoku/gui/l/a/g;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/nrsmagic/sudoku/gui/l/a/g;

    invoke-direct {v0, p1}, Lcom/nrsmagic/sudoku/gui/l/a/g;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/l/a/f;->a:Lcom/nrsmagic/sudoku/gui/l/a/g;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 9

    const/4 v2, 0x0

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/l/a/f;->a:Lcom/nrsmagic/sudoku/gui/l/a/g;

    invoke-virtual {v0}, Lcom/nrsmagic/sudoku/gui/l/a/g;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sget-object v1, Lcom/nrsmagic/sudoku/gui/l/e/b;->p:Ljava/lang/String;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lcom/nrsmagic/sudoku/gui/l/a/e;

    invoke-direct {v2}, Lcom/nrsmagic/sudoku/gui/l/a/e;-><init>()V

    sget-object v3, Lcom/nrsmagic/sudoku/gui/l/e/b;->r:Ljava/lang/String;

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/nrsmagic/sudoku/gui/l/a/e;->a:Ljava/lang/String;

    sget-object v3, Lcom/nrsmagic/sudoku/gui/l/e/b;->s:Ljava/lang/String;

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/nrsmagic/sudoku/gui/l/a/e;->b:Ljava/lang/String;

    sget-object v3, Lcom/nrsmagic/sudoku/gui/l/e/b;->t:Ljava/lang/String;

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v2, Lcom/nrsmagic/sudoku/gui/l/a/e;->c:I

    sget-object v3, Lcom/nrsmagic/sudoku/gui/l/e/b;->u:Ljava/lang/String;

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v2, Lcom/nrsmagic/sudoku/gui/l/a/e;->d:I

    sget-object v3, Lcom/nrsmagic/sudoku/gui/l/e/b;->v:Ljava/lang/String;

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v2, Lcom/nrsmagic/sudoku/gui/l/a/e;->e:I

    sget-object v3, Lcom/nrsmagic/sudoku/gui/l/e/b;->x:Ljava/lang/String;

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/nrsmagic/sudoku/gui/l/a/e;->f:Ljava/lang/String;

    sget-object v3, Lcom/nrsmagic/sudoku/gui/l/e/b;->w:Ljava/lang/String;

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/nrsmagic/sudoku/gui/l/a/e;->g:Ljava/lang/String;

    sget-object v3, Lcom/nrsmagic/sudoku/gui/l/e/b;->y:Ljava/lang/String;

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v2, Lcom/nrsmagic/sudoku/gui/l/a/e;->h:I

    sget-object v3, Lcom/nrsmagic/sudoku/gui/l/e/b;->z:Ljava/lang/String;

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/nrsmagic/sudoku/gui/l/a/e;->i:Ljava/lang/String;

    sget-object v3, Lcom/nrsmagic/sudoku/gui/l/e/b;->A:Ljava/lang/String;

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/nrsmagic/sudoku/gui/l/a/e;->j:J

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    return-object v8
.end method

.method public declared-synchronized a(Lcom/nrsmagic/sudoku/gui/l/a/e;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/l/a/f;->a:Lcom/nrsmagic/sudoku/gui/l/a/g;

    invoke-virtual {v0}, Lcom/nrsmagic/sudoku/gui/l/a/g;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    sget-object v2, Lcom/nrsmagic/sudoku/gui/l/e/b;->r:Ljava/lang/String;

    iget-object v3, p1, Lcom/nrsmagic/sudoku/gui/l/a/e;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/nrsmagic/sudoku/gui/l/e/b;->s:Ljava/lang/String;

    iget-object v3, p1, Lcom/nrsmagic/sudoku/gui/l/a/e;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/nrsmagic/sudoku/gui/l/e/b;->t:Ljava/lang/String;

    iget v3, p1, Lcom/nrsmagic/sudoku/gui/l/a/e;->c:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v2, Lcom/nrsmagic/sudoku/gui/l/e/b;->u:Ljava/lang/String;

    iget v3, p1, Lcom/nrsmagic/sudoku/gui/l/a/e;->d:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v2, Lcom/nrsmagic/sudoku/gui/l/e/b;->v:Ljava/lang/String;

    iget v3, p1, Lcom/nrsmagic/sudoku/gui/l/a/e;->e:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v2, Lcom/nrsmagic/sudoku/gui/l/e/b;->x:Ljava/lang/String;

    iget-object v3, p1, Lcom/nrsmagic/sudoku/gui/l/a/e;->f:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/nrsmagic/sudoku/gui/l/e/b;->w:Ljava/lang/String;

    iget-object v3, p1, Lcom/nrsmagic/sudoku/gui/l/a/e;->g:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/nrsmagic/sudoku/gui/l/e/b;->y:Ljava/lang/String;

    iget v3, p1, Lcom/nrsmagic/sudoku/gui/l/a/e;->h:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v2, Lcom/nrsmagic/sudoku/gui/l/e/b;->z:Ljava/lang/String;

    iget-object v3, p1, Lcom/nrsmagic/sudoku/gui/l/a/e;->i:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/nrsmagic/sudoku/gui/l/e/b;->A:Ljava/lang/String;

    iget-wide v3, p1, Lcom/nrsmagic/sudoku/gui/l/a/e;->j:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    sget-object v2, Lcom/nrsmagic/sudoku/gui/l/e/b;->p:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(Lcom/nrsmagic/sudoku/gui/l/a/e;)V
    .locals 6

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/l/a/f;->a:Lcom/nrsmagic/sudoku/gui/l/a/g;

    invoke-virtual {v0}, Lcom/nrsmagic/sudoku/gui/l/a/g;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sget-object v1, Lcom/nrsmagic/sudoku/gui/l/e/b;->p:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/nrsmagic/sudoku/gui/l/e/b;->r:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " = ? and "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/nrsmagic/sudoku/gui/l/e/b;->bI:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " = ?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p1, Lcom/nrsmagic/sudoku/gui/l/a/e;->a:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p1, Lcom/nrsmagic/sudoku/gui/l/a/e;->b:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    return-void
.end method

.method public declared-synchronized c(Lcom/nrsmagic/sudoku/gui/l/a/e;)V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/l/a/f;->a:Lcom/nrsmagic/sudoku/gui/l/a/g;

    invoke-virtual {v0}, Lcom/nrsmagic/sudoku/gui/l/a/g;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    sget-object v2, Lcom/nrsmagic/sudoku/gui/l/e/b;->r:Ljava/lang/String;

    iget-object v3, p1, Lcom/nrsmagic/sudoku/gui/l/a/e;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/nrsmagic/sudoku/gui/l/e/b;->s:Ljava/lang/String;

    iget-object v3, p1, Lcom/nrsmagic/sudoku/gui/l/a/e;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/nrsmagic/sudoku/gui/l/e/b;->t:Ljava/lang/String;

    iget v3, p1, Lcom/nrsmagic/sudoku/gui/l/a/e;->c:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v2, Lcom/nrsmagic/sudoku/gui/l/e/b;->u:Ljava/lang/String;

    iget v3, p1, Lcom/nrsmagic/sudoku/gui/l/a/e;->d:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v2, Lcom/nrsmagic/sudoku/gui/l/e/b;->v:Ljava/lang/String;

    iget v3, p1, Lcom/nrsmagic/sudoku/gui/l/a/e;->e:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v2, Lcom/nrsmagic/sudoku/gui/l/e/b;->x:Ljava/lang/String;

    iget-object v3, p1, Lcom/nrsmagic/sudoku/gui/l/a/e;->f:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/nrsmagic/sudoku/gui/l/e/b;->w:Ljava/lang/String;

    iget-object v3, p1, Lcom/nrsmagic/sudoku/gui/l/a/e;->g:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/nrsmagic/sudoku/gui/l/e/b;->y:Ljava/lang/String;

    iget v3, p1, Lcom/nrsmagic/sudoku/gui/l/a/e;->h:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v2, Lcom/nrsmagic/sudoku/gui/l/e/b;->z:Ljava/lang/String;

    iget-object v3, p1, Lcom/nrsmagic/sudoku/gui/l/a/e;->i:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/nrsmagic/sudoku/gui/l/e/b;->A:Ljava/lang/String;

    iget-wide v3, p1, Lcom/nrsmagic/sudoku/gui/l/a/e;->j:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    sget-object v2, Lcom/nrsmagic/sudoku/gui/l/e/b;->p:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/nrsmagic/sudoku/gui/l/e/b;->r:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = ? and "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/nrsmagic/sudoku/gui/l/e/b;->bI:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = ?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p1, Lcom/nrsmagic/sudoku/gui/l/a/e;->a:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p1, Lcom/nrsmagic/sudoku/gui/l/a/e;->b:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
