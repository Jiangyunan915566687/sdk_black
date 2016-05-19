.class public Lcom/nrsmagic/sudoku/gui/s/b/d;
.super Ljava/lang/Object;


# static fields
.field private static b:Lcom/nrsmagic/sudoku/gui/s/b/d;


# instance fields
.field a:Landroid/content/Context;

.field private c:Lcom/nrsmagic/sudoku/gui/s/c/b;

.field private d:Ljava/util/LinkedList;

.field private e:Lcom/nrsmagic/sudoku/gui/s/b/f;

.field private f:Z

.field private g:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lcom/nrsmagic/sudoku/gui/s/b/d;->b:Lcom/nrsmagic/sudoku/gui/s/b/d;

    iput-object p1, p0, Lcom/nrsmagic/sudoku/gui/s/b/d;->a:Landroid/content/Context;

    new-instance v0, Lcom/nrsmagic/sudoku/gui/s/c/b;

    invoke-direct {v0}, Lcom/nrsmagic/sudoku/gui/s/c/b;-><init>()V

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/s/b/d;->c:Lcom/nrsmagic/sudoku/gui/s/c/b;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/s/b/d;->d:Ljava/util/LinkedList;

    new-instance v0, Lcom/nrsmagic/sudoku/gui/s/b/f;

    invoke-direct {v0, p1}, Lcom/nrsmagic/sudoku/gui/s/b/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/s/b/d;->e:Lcom/nrsmagic/sudoku/gui/s/b/f;

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/s/b/d;->e:Lcom/nrsmagic/sudoku/gui/s/b/f;

    invoke-virtual {v0}, Lcom/nrsmagic/sudoku/gui/s/b/f;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nrsmagic/sudoku/gui/s/b/e;

    new-instance v2, Lcom/nrsmagic/sudoku/gui/s/b/h;

    invoke-direct {v2, p1, v0}, Lcom/nrsmagic/sudoku/gui/s/b/h;-><init>(Landroid/content/Context;Lcom/nrsmagic/sudoku/gui/s/b/e;)V

    invoke-virtual {v2}, Lcom/nrsmagic/sudoku/gui/s/b/h;->g()I

    move-result v0

    const/4 v3, 0x4

    if-eq v0, v3, :cond_0

    packed-switch v0, :pswitch_data_0

    :goto_1
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/s/b/d;->d:Ljava/util/LinkedList;

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x5

    invoke-virtual {v2, v0}, Lcom/nrsmagic/sudoku/gui/s/b/h;->a(I)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/s/b/d;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nrsmagic/sudoku/gui/s/b/h;

    goto :goto_2

    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static a()Lcom/nrsmagic/sudoku/gui/s/b/d;
    .locals 1

    sget-object v0, Lcom/nrsmagic/sudoku/gui/s/b/d;->b:Lcom/nrsmagic/sudoku/gui/s/b/d;

    return-object v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/nrsmagic/sudoku/gui/s/b/d;
    .locals 3

    const-class v1, Lcom/nrsmagic/sudoku/gui/s/b/d;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/nrsmagic/sudoku/gui/s/b/d;->b:Lcom/nrsmagic/sudoku/gui/s/b/d;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Lcom/nrsmagic/sudoku/gui/s/b/d;

    invoke-direct {v2, v0}, Lcom/nrsmagic/sudoku/gui/s/b/d;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/nrsmagic/sudoku/gui/s/b/d;->b:Lcom/nrsmagic/sudoku/gui/s/b/d;

    :cond_0
    sget-object v0, Lcom/nrsmagic/sudoku/gui/s/b/d;->b:Lcom/nrsmagic/sudoku/gui/s/b/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private f(Lcom/nrsmagic/sudoku/gui/s/b/h;)Lcom/nrsmagic/sudoku/gui/s/b/e;
    .locals 2

    new-instance v1, Lcom/nrsmagic/sudoku/gui/s/b/e;

    invoke-direct {v1}, Lcom/nrsmagic/sudoku/gui/s/b/e;-><init>()V

    invoke-virtual {p1}, Lcom/nrsmagic/sudoku/gui/s/b/h;->m()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/nrsmagic/sudoku/gui/s/b/e;->k:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/nrsmagic/sudoku/gui/s/b/h;->c()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    iput-object v0, v1, Lcom/nrsmagic/sudoku/gui/s/b/e;->l:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/nrsmagic/sudoku/gui/s/b/h;->g()I

    move-result v0

    iput v0, v1, Lcom/nrsmagic/sudoku/gui/s/b/e;->o:I

    invoke-virtual {p1}, Lcom/nrsmagic/sudoku/gui/s/b/h;->h()I

    move-result v0

    iput v0, v1, Lcom/nrsmagic/sudoku/gui/s/b/e;->n:I

    invoke-virtual {p1}, Lcom/nrsmagic/sudoku/gui/s/b/h;->i()I

    move-result v0

    iput v0, v1, Lcom/nrsmagic/sudoku/gui/s/b/e;->m:I

    invoke-virtual {p1}, Lcom/nrsmagic/sudoku/gui/s/b/h;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/nrsmagic/sudoku/gui/s/b/e;->p:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/nrsmagic/sudoku/gui/s/b/h;->k()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/nrsmagic/sudoku/gui/s/b/e;->q:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/nrsmagic/sudoku/gui/s/b/h;->l()I

    move-result v0

    iput v0, v1, Lcom/nrsmagic/sudoku/gui/s/b/e;->r:I

    invoke-virtual {p1}, Lcom/nrsmagic/sudoku/gui/s/b/h;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/nrsmagic/sudoku/gui/s/b/e;->s:Ljava/lang/String;

    return-object v1

    :cond_0
    invoke-virtual {p1}, Lcom/nrsmagic/sudoku/gui/s/b/h;->c()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/nrsmagic/sudoku/gui/s/b/h;)Lcom/nrsmagic/sudoku/gui/s/b/h;
    .locals 4

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/s/b/d;->d:Ljava/util/LinkedList;

    monitor-enter v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/s/b/d;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/s/b/d;->d:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nrsmagic/sudoku/gui/s/b/h;

    invoke-virtual {v0, p1}, Lcom/nrsmagic/sudoku/gui/s/b/h;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    monitor-exit v2

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method b(Lcom/nrsmagic/sudoku/gui/s/b/h;)V
    .locals 3

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/s/b/d;->d:Ljava/util/LinkedList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/s/b/d;->d:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/s/b/d;->e:Lcom/nrsmagic/sudoku/gui/s/b/f;

    invoke-direct {p0, p1}, Lcom/nrsmagic/sudoku/gui/s/b/d;->f(Lcom/nrsmagic/sudoku/gui/s/b/h;)Lcom/nrsmagic/sudoku/gui/s/b/e;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/nrsmagic/sudoku/gui/s/b/f;->a(Lcom/nrsmagic/sudoku/gui/s/b/e;)V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/s/b/d;->c:Lcom/nrsmagic/sudoku/gui/s/c/b;

    invoke-virtual {p1}, Lcom/nrsmagic/sudoku/gui/s/b/h;->b()Lcom/nrsmagic/sudoku/gui/s/c/e;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/nrsmagic/sudoku/gui/s/c/b;->a(Lcom/nrsmagic/sudoku/gui/s/c/e;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nrsmagic/sudoku/gui/s/b/d;->f:Z

    return v0
.end method

.method public c(Lcom/nrsmagic/sudoku/gui/s/b/h;)V
    .locals 3

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/s/b/d;->d:Ljava/util/LinkedList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/s/b/d;->d:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/s/b/d;->e:Lcom/nrsmagic/sudoku/gui/s/b/f;

    invoke-direct {p0, p1}, Lcom/nrsmagic/sudoku/gui/s/b/d;->f(Lcom/nrsmagic/sudoku/gui/s/b/h;)Lcom/nrsmagic/sudoku/gui/s/b/e;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/nrsmagic/sudoku/gui/s/b/f;->b(Lcom/nrsmagic/sudoku/gui/s/b/e;)V

    invoke-virtual {p1}, Lcom/nrsmagic/sudoku/gui/s/b/h;->b()Lcom/nrsmagic/sudoku/gui/s/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nrsmagic/sudoku/gui/s/c/e;->b()V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nrsmagic/sudoku/gui/s/b/d;->g:Z

    return v0
.end method

.method public d()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/s/b/d;->d:Ljava/util/LinkedList;

    return-object v0
.end method

.method d(Lcom/nrsmagic/sudoku/gui/s/b/h;)V
    .locals 3

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/s/b/d;->d:Ljava/util/LinkedList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/s/b/d;->d:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/nrsmagic/sudoku/gui/s/b/h;->b()Lcom/nrsmagic/sudoku/gui/s/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nrsmagic/sudoku/gui/s/c/e;->e()V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/s/b/d;->c:Lcom/nrsmagic/sudoku/gui/s/c/b;

    invoke-virtual {p1}, Lcom/nrsmagic/sudoku/gui/s/b/h;->b()Lcom/nrsmagic/sudoku/gui/s/c/e;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/nrsmagic/sudoku/gui/s/c/b;->a(Lcom/nrsmagic/sudoku/gui/s/c/e;)V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public e(Lcom/nrsmagic/sudoku/gui/s/b/h;)V
    .locals 3

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/s/b/d;->d:Ljava/util/LinkedList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/s/b/d;->d:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/s/b/d;->e:Lcom/nrsmagic/sudoku/gui/s/b/f;

    invoke-direct {p0, p1}, Lcom/nrsmagic/sudoku/gui/s/b/d;->f(Lcom/nrsmagic/sudoku/gui/s/b/h;)Lcom/nrsmagic/sudoku/gui/s/b/e;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/nrsmagic/sudoku/gui/s/b/f;->c(Lcom/nrsmagic/sudoku/gui/s/b/e;)V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
