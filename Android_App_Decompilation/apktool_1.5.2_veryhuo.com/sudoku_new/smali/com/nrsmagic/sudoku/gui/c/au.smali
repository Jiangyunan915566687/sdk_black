.class final Lcom/nrsmagic/sudoku/gui/c/au;
.super Landroid/os/Handler;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/nrsmagic/sudoku/gui/c/ao;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/c/ao;->b(Landroid/content/Context;)V

    :goto_0
    return-void

    :cond_0
    iget v9, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Lcom/nrsmagic/sudoku/gui/c/x;

    invoke-static {}, Lcom/nrsmagic/sudoku/gui/c/ao;->c()Landroid/content/Context;

    move-result-object v0

    iget-object v1, v6, Lcom/nrsmagic/sudoku/gui/c/x;->f:Ljava/lang/String;

    invoke-static {}, Lcom/nrsmagic/sudoku/gui/c/ao;->c()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/nrsmagic/sudoku/gui/c/bb;->a(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/PackageManager;)Landroid/content/Intent;

    move-result-object v8

    const v0, 0x1080034

    invoke-static {}, Lcom/nrsmagic/sudoku/gui/c/ao;->c()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/nrsmagic/sudoku/gui/c/l;->cE:Ljava/lang/String;

    iget v3, v6, Lcom/nrsmagic/sudoku/gui/c/x;->e:I

    const/16 v4, 0x10

    if-nez v8, :cond_1

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    :goto_1
    iget-object v6, v6, Lcom/nrsmagic/sudoku/gui/c/x;->d:Ljava/lang/String;

    const/4 v7, -0x1

    invoke-static/range {v0 .. v7}, Lcom/nrsmagic/sudoku/gui/c/ak;->a(ILandroid/content/Context;Ljava/lang/String;IILandroid/content/Intent;Ljava/lang/String;I)V

    invoke-static {}, Lcom/nrsmagic/sudoku/gui/c/e;->a()Lcom/nrsmagic/sudoku/gui/c/e;

    move-result-object v0

    invoke-static {}, Lcom/nrsmagic/sudoku/gui/c/ao;->c()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v9, v2}, Lcom/nrsmagic/sudoku/gui/c/e;->a(Landroid/content/Context;II)V

    invoke-static {}, Lcom/nrsmagic/sudoku/gui/c/ao;->c()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    move-object v5, v8

    goto :goto_1
.end method
