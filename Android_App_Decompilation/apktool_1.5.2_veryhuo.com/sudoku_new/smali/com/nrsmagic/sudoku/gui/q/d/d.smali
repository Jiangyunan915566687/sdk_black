.class final Lcom/nrsmagic/sudoku/gui/q/d/d;
.super Landroid/os/Handler;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-static {p1}, Lcom/nrsmagic/sudoku/gui/q/a/b;->a(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lcom/nrsmagic/sudoku/gui/q/d/c;->b()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v5}, Lcom/nrsmagic/sudoku/gui/q/a/b;->a(Landroid/content/Context;I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/q/c/s;->d(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    invoke-static {}, Lcom/nrsmagic/sudoku/gui/q/d/c;->b()Landroid/app/Activity;

    move-result-object v1

    aget-object v2, v0, v4

    const/4 v3, 0x2

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x3

    aget-object v4, v0, v4

    aget-object v0, v0, v5

    invoke-static {v1, v2, v3, v4, v0}, Lcom/nrsmagic/sudoku/gui/q/a/b;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_4
    invoke-static {}, Lcom/nrsmagic/sudoku/gui/q/d/c;->c()Lcom/nrsmagic/sudoku/gui/q/d/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nrsmagic/sudoku/gui/q/d/e;->c()V

    invoke-static {}, Lcom/nrsmagic/sudoku/gui/q/d/c;->b()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/q/a;->e(Landroid/app/Activity;)V

    goto :goto_0

    :pswitch_5
    new-instance v1, Lcom/nrsmagic/sudoku/gui/q/c/a;

    invoke-static {}, Lcom/nrsmagic/sudoku/gui/q/d/c;->b()Landroid/app/Activity;

    move-result-object v2

    invoke-static {}, Lcom/nrsmagic/sudoku/gui/q/d/c;->c()Lcom/nrsmagic/sudoku/gui/q/d/e;

    move-result-object v3

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    invoke-direct {v1, v2, v3, v0}, Lcom/nrsmagic/sudoku/gui/q/c/a;-><init>(Landroid/app/Activity;Lcom/nrsmagic/sudoku/gui/q/d/e;[Ljava/lang/String;)V

    new-array v0, v4, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/nrsmagic/sudoku/gui/q/c/a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
