.class Lcom/nrsmagic/sudoku/gui/s/ah;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/nrsmagic/sudoku/gui/s/ag;


# direct methods
.method constructor <init>(Lcom/nrsmagic/sudoku/gui/s/ag;)V
    .locals 0

    iput-object p1, p0, Lcom/nrsmagic/sudoku/gui/s/ah;->a:Lcom/nrsmagic/sudoku/gui/s/ag;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10

    const/4 v2, 0x0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    check-cast v0, Lcom/nrsmagic/sudoku/gui/s/an;

    new-instance v1, Lcom/nrsmagic/sudoku/gui/s/ai;

    invoke-direct {v1, p0, v0}, Lcom/nrsmagic/sudoku/gui/s/ai;-><init>(Lcom/nrsmagic/sudoku/gui/s/ah;Lcom/nrsmagic/sudoku/gui/s/an;)V

    new-instance v3, Lcom/nrsmagic/sudoku/gui/s/b/h;

    iget-object v4, v0, Lcom/nrsmagic/sudoku/gui/s/an;->q:Ljava/lang/String;

    iget-object v5, p0, Lcom/nrsmagic/sudoku/gui/s/ah;->a:Lcom/nrsmagic/sudoku/gui/s/ag;

    invoke-static {v5}, Lcom/nrsmagic/sudoku/gui/s/ag;->a(Lcom/nrsmagic/sudoku/gui/s/ag;)Landroid/content/Context;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/nrsmagic/sudoku/gui/s/l;->aB:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/nrsmagic/sudoku/gui/s/l;->s:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget v7, v0, Lcom/nrsmagic/sudoku/gui/s/an;->h:I

    invoke-static {v5, v6, v7}, Lcom/nrsmagic/sudoku/gui/s/bb;->b(Landroid/content/Context;Ljava/lang/String;I)Ljava/io/File;

    move-result-object v5

    invoke-direct {v3, v4, v5, v2}, Lcom/nrsmagic/sudoku/gui/s/b/h;-><init>(Ljava/lang/String;Ljava/io/File;I)V

    iget-object v4, p0, Lcom/nrsmagic/sudoku/gui/s/ah;->a:Lcom/nrsmagic/sudoku/gui/s/ag;

    invoke-static {v4}, Lcom/nrsmagic/sudoku/gui/s/ag;->a(Lcom/nrsmagic/sudoku/gui/s/ag;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3, v1}, Lcom/nrsmagic/sudoku/gui/s/ak;->a(Landroid/content/Context;Lcom/nrsmagic/sudoku/gui/s/b/h;Lcom/nrsmagic/sudoku/gui/s/b/c;)V

    iget-object v1, v0, Lcom/nrsmagic/sudoku/gui/s/an;->r:Ljava/lang/String;

    const-string v3, ";"

    invoke-static {v1, v3}, Lcom/nrsmagic/sudoku/gui/s/bb;->a(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    array-length v1, v4

    :goto_0
    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_0

    new-instance v5, Lcom/nrsmagic/sudoku/gui/s/b/h;

    aget-object v6, v4, v3

    iget-object v7, p0, Lcom/nrsmagic/sudoku/gui/s/ah;->a:Lcom/nrsmagic/sudoku/gui/s/ag;

    invoke-static {v7}, Lcom/nrsmagic/sudoku/gui/s/ag;->a(Lcom/nrsmagic/sudoku/gui/s/ag;)Landroid/content/Context;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/nrsmagic/sudoku/gui/s/l;->s:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget v9, v0, Lcom/nrsmagic/sudoku/gui/s/an;->h:I

    invoke-static {v7, v8, v9}, Lcom/nrsmagic/sudoku/gui/s/bb;->b(Landroid/content/Context;Ljava/lang/String;I)Ljava/io/File;

    move-result-object v7

    invoke-direct {v5, v6, v7, v2}, Lcom/nrsmagic/sudoku/gui/s/b/h;-><init>(Ljava/lang/String;Ljava/io/File;I)V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/nrsmagic/sudoku/gui/s/b/h;->a(Ljava/lang/Object;)V

    iget-object v6, p0, Lcom/nrsmagic/sudoku/gui/s/ah;->a:Lcom/nrsmagic/sudoku/gui/s/ag;

    invoke-static {v6}, Lcom/nrsmagic/sudoku/gui/s/ag;->a(Lcom/nrsmagic/sudoku/gui/s/ag;)Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v5, v7}, Lcom/nrsmagic/sudoku/gui/s/ak;->a(Landroid/content/Context;Lcom/nrsmagic/sudoku/gui/s/b/h;Lcom/nrsmagic/sudoku/gui/s/b/c;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    return-void

    :cond_1
    move v1, v2

    goto :goto_0
.end method
