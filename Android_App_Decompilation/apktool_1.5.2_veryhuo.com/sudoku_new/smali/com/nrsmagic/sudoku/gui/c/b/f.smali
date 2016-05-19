.class Lcom/nrsmagic/sudoku/gui/c/b/f;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/lang/String;


# instance fields
.field private c:Lcom/nrsmagic/sudoku/gui/c/b/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/nrsmagic/sudoku/gui/c/l;->p:Ljava/lang/String;

    sput-object v0, Lcom/nrsmagic/sudoku/gui/c/b/f;->a:Ljava/lang/String;

    sget-object v0, Lcom/nrsmagic/sudoku/gui/c/l;->p:Ljava/lang/String;

    sput-object v0, Lcom/nrsmagic/sudoku/gui/c/b/f;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/nrsmagic/sudoku/gui/c/b/g;

    invoke-direct {v0, p1}, Lcom/nrsmagic/sudoku/gui/c/b/g;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/c/b/f;->c:Lcom/nrsmagic/sudoku/gui/c/b/g;

    return-void
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/nrsmagic/sudoku/gui/c/b/f;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/nrsmagic/sudoku/gui/c/b/f;->b:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 9

    const/4 v2, 0x0

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/c/b/f;->c:Lcom/nrsmagic/sudoku/gui/c/b/g;

    invoke-virtual {v0}, Lcom/nrsmagic/sudoku/gui/c/b/g;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sget-object v1, Lcom/nrsmagic/sudoku/gui/c/b/f;->b:Ljava/lang/String;

    sget-object v3, Lcom/nrsmagic/sudoku/gui/c/l;->bc:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "4"

    aput-object v6, v4, v5

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lcom/nrsmagic/sudoku/gui/c/b/e;

    invoke-direct {v2}, Lcom/nrsmagic/sudoku/gui/c/b/e;-><init>()V

    sget-object v3, Lcom/nrsmagic/sudoku/gui/c/b/e;->b:Ljava/lang/String;

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/nrsmagic/sudoku/gui/c/b/e;->k:Ljava/lang/String;

    sget-object v3, Lcom/nrsmagic/sudoku/gui/c/b/e;->c:Ljava/lang/String;

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/nrsmagic/sudoku/gui/c/b/e;->l:Ljava/lang/String;

    sget-object v3, Lcom/nrsmagic/sudoku/gui/c/b/e;->d:Ljava/lang/String;

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v2, Lcom/nrsmagic/sudoku/gui/c/b/e;->m:I

    sget-object v3, Lcom/nrsmagic/sudoku/gui/c/b/e;->e:Ljava/lang/String;

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v2, Lcom/nrsmagic/sudoku/gui/c/b/e;->n:I

    sget-object v3, Lcom/nrsmagic/sudoku/gui/c/b/e;->f:Ljava/lang/String;

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v2, Lcom/nrsmagic/sudoku/gui/c/b/e;->o:I

    sget-object v3, Lcom/nrsmagic/sudoku/gui/c/b/e;->h:Ljava/lang/String;

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/nrsmagic/sudoku/gui/c/b/e;->p:Ljava/lang/String;

    sget-object v3, Lcom/nrsmagic/sudoku/gui/c/b/e;->g:Ljava/lang/String;

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/nrsmagic/sudoku/gui/c/b/e;->q:Ljava/lang/String;

    sget-object v3, Lcom/nrsmagic/sudoku/gui/c/b/e;->i:Ljava/lang/String;

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v2, Lcom/nrsmagic/sudoku/gui/c/b/e;->r:I

    sget-object v3, Lcom/nrsmagic/sudoku/gui/c/b/e;->j:Ljava/lang/String;

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/nrsmagic/sudoku/gui/c/b/e;->s:Ljava/lang/String;

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    return-object v8
.end method

.method public declared-synchronized a(Lcom/nrsmagic/sudoku/gui/c/b/e;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/c/b/f;->c:Lcom/nrsmagic/sudoku/gui/c/b/g;

    invoke-virtual {v0}, Lcom/nrsmagic/sudoku/gui/c/b/g;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    sget-object v2, Lcom/nrsmagic/sudoku/gui/c/b/e;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/nrsmagic/sudoku/gui/c/b/e;->k:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/nrsmagic/sudoku/gui/c/b/e;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/nrsmagic/sudoku/gui/c/b/e;->l:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/nrsmagic/sudoku/gui/c/b/e;->d:Ljava/lang/String;

    iget v3, p1, Lcom/nrsmagic/sudoku/gui/c/b/e;->m:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v2, Lcom/nrsmagic/sudoku/gui/c/b/e;->e:Ljava/lang/String;

    iget v3, p1, Lcom/nrsmagic/sudoku/gui/c/b/e;->n:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v2, Lcom/nrsmagic/sudoku/gui/c/b/e;->f:Ljava/lang/String;

    iget v3, p1, Lcom/nrsmagic/sudoku/gui/c/b/e;->o:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v2, Lcom/nrsmagic/sudoku/gui/c/b/e;->h:Ljava/lang/String;

    iget-object v3, p1, Lcom/nrsmagic/sudoku/gui/c/b/e;->p:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/nrsmagic/sudoku/gui/c/b/e;->g:Ljava/lang/String;

    iget-object v3, p1, Lcom/nrsmagic/sudoku/gui/c/b/e;->q:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/nrsmagic/sudoku/gui/c/b/e;->i:Ljava/lang/String;

    iget v3, p1, Lcom/nrsmagic/sudoku/gui/c/b/e;->r:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v2, Lcom/nrsmagic/sudoku/gui/c/b/e;->j:Ljava/lang/String;

    iget-object v3, p1, Lcom/nrsmagic/sudoku/gui/c/b/e;->s:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/nrsmagic/sudoku/gui/c/b/f;->b:Ljava/lang/String;

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

.method public b(Lcom/nrsmagic/sudoku/gui/c/b/e;)V
    .locals 6

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/c/b/f;->c:Lcom/nrsmagic/sudoku/gui/c/b/g;

    invoke-virtual {v0}, Lcom/nrsmagic/sudoku/gui/c/b/g;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sget-object v1, Lcom/nrsmagic/sudoku/gui/c/b/f;->b:Ljava/lang/String;

    sget-object v2, Lcom/nrsmagic/sudoku/gui/c/l;->bd:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p1, Lcom/nrsmagic/sudoku/gui/c/b/e;->k:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p1, Lcom/nrsmagic/sudoku/gui/c/b/e;->l:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    return-void
.end method

.method public declared-synchronized c(Lcom/nrsmagic/sudoku/gui/c/b/e;)V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/c/b/f;->c:Lcom/nrsmagic/sudoku/gui/c/b/g;

    invoke-virtual {v0}, Lcom/nrsmagic/sudoku/gui/c/b/g;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    sget-object v2, Lcom/nrsmagic/sudoku/gui/c/b/e;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/nrsmagic/sudoku/gui/c/b/e;->k:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/nrsmagic/sudoku/gui/c/b/e;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/nrsmagic/sudoku/gui/c/b/e;->l:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/nrsmagic/sudoku/gui/c/b/e;->d:Ljava/lang/String;

    iget v3, p1, Lcom/nrsmagic/sudoku/gui/c/b/e;->m:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v2, Lcom/nrsmagic/sudoku/gui/c/b/e;->e:Ljava/lang/String;

    iget v3, p1, Lcom/nrsmagic/sudoku/gui/c/b/e;->n:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v2, Lcom/nrsmagic/sudoku/gui/c/b/e;->f:Ljava/lang/String;

    iget v3, p1, Lcom/nrsmagic/sudoku/gui/c/b/e;->o:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v2, Lcom/nrsmagic/sudoku/gui/c/b/e;->h:Ljava/lang/String;

    iget-object v3, p1, Lcom/nrsmagic/sudoku/gui/c/b/e;->p:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/nrsmagic/sudoku/gui/c/b/e;->g:Ljava/lang/String;

    iget-object v3, p1, Lcom/nrsmagic/sudoku/gui/c/b/e;->q:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/nrsmagic/sudoku/gui/c/b/e;->i:Ljava/lang/String;

    iget v3, p1, Lcom/nrsmagic/sudoku/gui/c/b/e;->r:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v2, Lcom/nrsmagic/sudoku/gui/c/b/e;->j:Ljava/lang/String;

    iget-object v3, p1, Lcom/nrsmagic/sudoku/gui/c/b/e;->s:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/nrsmagic/sudoku/gui/c/b/f;->b:Ljava/lang/String;

    sget-object v3, Lcom/nrsmagic/sudoku/gui/c/l;->bd:Ljava/lang/String;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p1, Lcom/nrsmagic/sudoku/gui/c/b/e;->k:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p1, Lcom/nrsmagic/sudoku/gui/c/b/e;->l:Ljava/lang/String;

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
