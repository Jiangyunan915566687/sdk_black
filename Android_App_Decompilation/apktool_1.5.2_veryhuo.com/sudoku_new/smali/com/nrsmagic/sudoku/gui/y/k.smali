.class final Lcom/nrsmagic/sudoku/gui/y/k;
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

    const/4 v2, 0x1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-static {}, Lcom/nrsmagic/sudoku/gui/y/j;->a()Lcom/nrsmagic/sudoku/gui/y/d/c;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/nrsmagic/sudoku/gui/y/d/c;

    invoke-static {}, Lcom/nrsmagic/sudoku/gui/y/j;->b()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/nrsmagic/sudoku/gui/y/j;->c()Ljava/util/List;

    move-result-object v2

    invoke-static {}, Lcom/nrsmagic/sudoku/gui/y/j;->b()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/nrsmagic/sudoku/gui/y/c/h;->o(Landroid/content/Context;)I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/nrsmagic/sudoku/gui/y/d/c;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/y/j;->a(Lcom/nrsmagic/sudoku/gui/y/d/c;)Lcom/nrsmagic/sudoku/gui/y/d/c;

    invoke-static {}, Lcom/nrsmagic/sudoku/gui/y/j;->a()Lcom/nrsmagic/sudoku/gui/y/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nrsmagic/sudoku/gui/y/d/c;->b()V

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lcom/nrsmagic/sudoku/gui/y/j;->a()Lcom/nrsmagic/sudoku/gui/y/d/c;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/nrsmagic/sudoku/gui/y/j;->a()Lcom/nrsmagic/sudoku/gui/y/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nrsmagic/sudoku/gui/y/d/c;->c()V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/y/j;->a(Lcom/nrsmagic/sudoku/gui/y/d/c;)Lcom/nrsmagic/sudoku/gui/y/d/c;

    goto :goto_0

    :pswitch_2
    invoke-static {}, Lcom/nrsmagic/sudoku/gui/y/j;->c()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/nrsmagic/sudoku/gui/y/j;->d()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    invoke-static {}, Lcom/nrsmagic/sudoku/gui/y/j;->e()Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/y/j;->a(Landroid/os/Handler;)V

    :cond_1
    invoke-static {}, Lcom/nrsmagic/sudoku/gui/y/j;->c()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/nrsmagic/sudoku/gui/y/j;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0, v2}, Lcom/nrsmagic/sudoku/gui/y/k;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/nrsmagic/sudoku/gui/y/j;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/y/c/h;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/y/c/h;->d(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/nrsmagic/sudoku/gui/y/j;->b()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nrsmagic/sudoku/gui/y/c/h;->a([Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v2}, Lcom/nrsmagic/sudoku/gui/y/k;->sendEmptyMessage(I)Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
