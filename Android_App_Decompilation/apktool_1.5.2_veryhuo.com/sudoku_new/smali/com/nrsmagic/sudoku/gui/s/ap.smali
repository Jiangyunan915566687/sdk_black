.class final Lcom/nrsmagic/sudoku/gui/s/ap;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nrsmagic/sudoku/gui/s/ap;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/nrsmagic/sudoku/gui/s/ap;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const/4 v5, 0x4

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/s/ap;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/s/ap;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/nrsmagic/sudoku/gui/s/bb;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/nrsmagic/sudoku/gui/s/an;

    move-result-object v6

    if-eqz v6, :cond_2

    iget-object v0, v6, Lcom/nrsmagic/sudoku/gui/s/an;->l:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    if-ne v0, v5, :cond_2

    :cond_0
    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v6, Lcom/nrsmagic/sudoku/gui/s/an;->l:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/s/ap;->a:Landroid/content/Context;

    invoke-static {v1, v6}, Lcom/nrsmagic/sudoku/gui/s/bb;->b(Landroid/content/Context;Lcom/nrsmagic/sudoku/gui/s/an;)Z

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    sget-object v2, Lcom/nrsmagic/sudoku/gui/s/l;->T:Ljava/lang/String;

    const/16 v3, 0xa

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/s/ap;->a:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/nrsmagic/sudoku/gui/s/ao;->b(Landroid/content/Context;Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/s/ap;->a:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/nrsmagic/sudoku/gui/s/ap;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/nrsmagic/sudoku/gui/s/l;->aH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v3, v6, Lcom/nrsmagic/sudoku/gui/s/an;->h:I

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Lcom/nrsmagic/sudoku/gui/s/bb;->a(Landroid/content/Context;Ljava/lang/String;IZ)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/nrsmagic/sudoku/gui/s/l;->r:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/nrsmagic/sudoku/gui/s/ap;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v6, Lcom/nrsmagic/sudoku/gui/s/an;->h:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v6, Lcom/nrsmagic/sudoku/gui/s/an;->i:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/nrsmagic/sudoku/gui/s/l;->aH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_1
    if-ne v0, v5, :cond_2

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/s/ap;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/s/ap;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/s/ap;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/nrsmagic/sudoku/gui/s/bb;->a(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/PackageManager;)Landroid/content/Intent;

    move-result-object v8

    const v0, 0x1080034

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/s/ap;->a:Landroid/content/Context;

    sget-object v2, Lcom/nrsmagic/sudoku/gui/s/l;->cE:Ljava/lang/String;

    iget v3, v6, Lcom/nrsmagic/sudoku/gui/s/an;->h:I

    const/16 v4, 0x10

    if-nez v8, :cond_3

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    :goto_0
    iget-object v6, v6, Lcom/nrsmagic/sudoku/gui/s/an;->g:Ljava/lang/String;

    const/4 v7, -0x1

    invoke-static/range {v0 .. v7}, Lcom/nrsmagic/sudoku/gui/s/ak;->a(ILandroid/content/Context;Ljava/lang/String;IILandroid/content/Intent;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/s/ap;->a:Landroid/content/Context;

    invoke-virtual {v0, v8}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_2
    return-void

    :cond_3
    move-object v5, v8

    goto :goto_0
.end method
