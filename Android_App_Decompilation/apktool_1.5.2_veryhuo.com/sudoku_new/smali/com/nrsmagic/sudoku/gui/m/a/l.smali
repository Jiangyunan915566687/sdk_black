.class final Lcom/nrsmagic/sudoku/gui/m/a/l;
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

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lcom/nrsmagic/sudoku/gui/m/o;->a()Lcom/nrsmagic/sudoku/gui/m/o;

    move-result-object v0

    invoke-static {}, Lcom/nrsmagic/sudoku/gui/m/a/k;->a()Landroid/content/Context;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Lcom/nrsmagic/sudoku/gui/m/o;->a(Landroid/content/Context;II)V

    :goto_0
    return-void

    :pswitch_0
    invoke-static {}, Lcom/nrsmagic/sudoku/gui/m/a/k;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/m/f;->a(Landroid/content/Context;)Lcom/nrsmagic/sudoku/gui/m/f;

    move-result-object v0

    invoke-static {}, Lcom/nrsmagic/sudoku/gui/m/a/k;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nrsmagic/sudoku/gui/m/c/i;->p(Landroid/content/Context;)I

    move-result v1

    invoke-static {}, Lcom/nrsmagic/sudoku/gui/m/a/k;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/nrsmagic/sudoku/gui/m/c/i;->o(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/nrsmagic/sudoku/gui/m/f;->a(II)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0xa
        :pswitch_0
    .end packed-switch
.end method
