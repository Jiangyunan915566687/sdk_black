.class final Lcom/nrsmagic/sudoku/gui/y/c;
.super Landroid/os/Handler;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    invoke-static {}, Lcom/nrsmagic/sudoku/gui/y/a;->e()Lcom/nrsmagic/sudoku/gui/y/d/i;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_1

    new-instance v0, Lcom/nrsmagic/sudoku/gui/y/d;

    invoke-direct {v0, p0}, Lcom/nrsmagic/sudoku/gui/y/d;-><init>(Lcom/nrsmagic/sudoku/gui/y/c;)V

    invoke-virtual {v0}, Lcom/nrsmagic/sudoku/gui/y/d;->start()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/nrsmagic/sudoku/gui/y/a;->a()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/y/c/e;->a(Landroid/content/Context;)Lcom/nrsmagic/sudoku/gui/y/c/e;

    move-result-object v0

    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/y/a;->a(Lcom/nrsmagic/sudoku/gui/y/c/e;)Lcom/nrsmagic/sudoku/gui/y/c/e;

    invoke-static {}, Lcom/nrsmagic/sudoku/gui/y/a;->c()Lcom/nrsmagic/sudoku/gui/y/c/e;

    invoke-static {}, Lcom/nrsmagic/sudoku/gui/y/a;->a()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/y/c/e;->b(Landroid/content/Context;)Ljava/util/List;

    :try_start_0
    invoke-static {}, Lcom/nrsmagic/sudoku/gui/y/a;->b()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/nrsmagic/sudoku/gui/y/a;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x14

    if-ge v0, v1, :cond_2

    const/4 v0, 0x1

    sput-boolean v0, Lcom/nrsmagic/sudoku/gui/y/a;->a:Z

    move v1, v2

    :goto_1
    sget-object v0, Lcom/nrsmagic/sudoku/gui/y/c/e;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    new-instance v3, Lcom/nrsmagic/sudoku/gui/y/b/b;

    invoke-direct {v3}, Lcom/nrsmagic/sudoku/gui/y/b/b;-><init>()V

    sget-object v0, Lcom/nrsmagic/sudoku/gui/y/c/e;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v3, Lcom/nrsmagic/sudoku/gui/y/b/b;->f:Ljava/lang/String;

    invoke-static {}, Lcom/nrsmagic/sudoku/gui/y/a;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :catch_0
    move-exception v0

    :cond_2
    invoke-static {}, Lcom/nrsmagic/sudoku/gui/y/a;->e()Lcom/nrsmagic/sudoku/gui/y/d/i;

    move-result-object v0

    invoke-static {}, Lcom/nrsmagic/sudoku/gui/y/a;->a()Landroid/app/Activity;

    move-result-object v1

    invoke-static {}, Lcom/nrsmagic/sudoku/gui/y/a;->b()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/nrsmagic/sudoku/gui/y/d/i;->a(Landroid/content/Context;Ljava/util/List;)V

    invoke-static {}, Lcom/nrsmagic/sudoku/gui/y/a;->e()Lcom/nrsmagic/sudoku/gui/y/d/i;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/nrsmagic/sudoku/gui/y/d/i;->a(Z)V

    goto :goto_0
.end method
