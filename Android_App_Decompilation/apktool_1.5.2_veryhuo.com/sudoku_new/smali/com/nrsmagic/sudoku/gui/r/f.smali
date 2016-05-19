.class Lcom/nrsmagic/sudoku/gui/r/f;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/nrsmagic/sudoku/gui/r/e;


# direct methods
.method constructor <init>(Lcom/nrsmagic/sudoku/gui/r/e;I)V
    .locals 0

    iput-object p1, p0, Lcom/nrsmagic/sudoku/gui/r/f;->b:Lcom/nrsmagic/sudoku/gui/r/e;

    iput p2, p0, Lcom/nrsmagic/sudoku/gui/r/f;->a:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const/4 v5, 0x1

    const/4 v1, 0x0

    invoke-super {p0}, Ljava/lang/Thread;->run()V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/f;->b:Lcom/nrsmagic/sudoku/gui/r/e;

    invoke-static {v0, v5}, Lcom/nrsmagic/sudoku/gui/r/e;->a(Lcom/nrsmagic/sudoku/gui/r/e;Z)Z

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/f;->b:Lcom/nrsmagic/sudoku/gui/r/e;

    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/r/e;->a(Lcom/nrsmagic/sudoku/gui/r/e;)Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/nrsmagic/sudoku/gui/r/g;

    invoke-direct {v2, p0}, Lcom/nrsmagic/sudoku/gui/r/g;-><init>(Lcom/nrsmagic/sudoku/gui/r/f;)V

    const-wide/16 v3, 0x2710

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/f;->b:Lcom/nrsmagic/sudoku/gui/r/e;

    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/r/e;->b(Lcom/nrsmagic/sudoku/gui/r/e;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/r/a/d;->a(Landroid/content/Context;)Lcom/nrsmagic/sudoku/gui/r/a/d;

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/f;->b:Lcom/nrsmagic/sudoku/gui/r/e;

    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/r/e;->b(Lcom/nrsmagic/sudoku/gui/r/e;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/r/e/h;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/r/f;->b:Lcom/nrsmagic/sudoku/gui/r/e;

    invoke-static {v2}, Lcom/nrsmagic/sudoku/gui/r/e;->b(Lcom/nrsmagic/sudoku/gui/r/e;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/nrsmagic/sudoku/gui/r/b/c;->a(Landroid/content/Context;)Lcom/nrsmagic/sudoku/gui/r/b/c;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/nrsmagic/sudoku/gui/r/b/c;->a(Ljava/lang/String;)[Lcom/nrsmagic/sudoku/gui/r/b/f;

    move-result-object v0

    if-eqz v0, :cond_3

    array-length v2, v0

    if-lez v2, :cond_3

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/r/f;->b:Lcom/nrsmagic/sudoku/gui/r/e;

    aget-object v0, v0, v1

    invoke-static {v2, v0}, Lcom/nrsmagic/sudoku/gui/r/e;->a(Lcom/nrsmagic/sudoku/gui/r/e;Lcom/nrsmagic/sudoku/gui/r/b/f;)Lcom/nrsmagic/sudoku/gui/r/b/f;

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/f;->b:Lcom/nrsmagic/sudoku/gui/r/e;

    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/r/e;->c(Lcom/nrsmagic/sudoku/gui/r/e;)Lcom/nrsmagic/sudoku/gui/r/b/f;

    move-result-object v0

    iput v5, v0, Lcom/nrsmagic/sudoku/gui/r/b/f;->y:I

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/f;->b:Lcom/nrsmagic/sudoku/gui/r/e;

    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/r/e;->b(Lcom/nrsmagic/sudoku/gui/r/e;)Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/r/f;->b:Lcom/nrsmagic/sudoku/gui/r/e;

    invoke-static {v2}, Lcom/nrsmagic/sudoku/gui/r/e;->c(Lcom/nrsmagic/sudoku/gui/r/e;)Lcom/nrsmagic/sudoku/gui/r/b/f;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/nrsmagic/sudoku/gui/r/e/h;->c(Landroid/content/Context;Lcom/nrsmagic/sudoku/gui/r/b/f;)Z

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/f;->b:Lcom/nrsmagic/sudoku/gui/r/e;

    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/r/e;->b(Lcom/nrsmagic/sudoku/gui/r/e;)Landroid/content/Context;

    move-result-object v0

    sget-object v2, Lcom/nrsmagic/sudoku/gui/r/e/b;->F:Ljava/lang/String;

    iget-object v3, p0, Lcom/nrsmagic/sudoku/gui/r/f;->b:Lcom/nrsmagic/sudoku/gui/r/e;

    invoke-static {v3}, Lcom/nrsmagic/sudoku/gui/r/e;->c(Lcom/nrsmagic/sudoku/gui/r/e;)Lcom/nrsmagic/sudoku/gui/r/b/f;

    move-result-object v3

    iget v3, v3, Lcom/nrsmagic/sudoku/gui/r/b/f;->e:I

    invoke-static {v0, v2, v3}, Lcom/nrsmagic/sudoku/gui/r/e/h;->a(Landroid/content/Context;Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/r/e;->a(Ljava/io/File;)Ljava/io/File;

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/f;->b:Lcom/nrsmagic/sudoku/gui/r/e;

    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/r/e;->b(Lcom/nrsmagic/sudoku/gui/r/e;)Landroid/content/Context;

    move-result-object v0

    sget-object v2, Lcom/nrsmagic/sudoku/gui/r/e/b;->G:Ljava/lang/String;

    iget-object v3, p0, Lcom/nrsmagic/sudoku/gui/r/f;->b:Lcom/nrsmagic/sudoku/gui/r/e;

    invoke-static {v3}, Lcom/nrsmagic/sudoku/gui/r/e;->c(Lcom/nrsmagic/sudoku/gui/r/e;)Lcom/nrsmagic/sudoku/gui/r/b/f;

    move-result-object v3

    iget v3, v3, Lcom/nrsmagic/sudoku/gui/r/b/f;->e:I

    invoke-static {v0, v2, v3}, Lcom/nrsmagic/sudoku/gui/r/e/h;->a(Landroid/content/Context;Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/r/e;->b(Ljava/io/File;)Ljava/io/File;

    invoke-static {}, Lcom/nrsmagic/sudoku/gui/r/e;->b()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/nrsmagic/sudoku/gui/r/e;->b()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/nrsmagic/sudoku/gui/r/e;->c()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/nrsmagic/sudoku/gui/r/e;->c()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/f;->b:Lcom/nrsmagic/sudoku/gui/r/e;

    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/r/e;->c(Lcom/nrsmagic/sudoku/gui/r/e;)Lcom/nrsmagic/sudoku/gui/r/b/f;

    move-result-object v0

    iget-object v0, v0, Lcom/nrsmagic/sudoku/gui/r/b/f;->r:Ljava/lang/String;

    const-string v2, ";"

    invoke-static {v0, v2}, Lcom/nrsmagic/sudoku/gui/r/e/h;->a(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    array-length v3, v2

    const/4 v0, 0x2

    if-lt v3, v0, :cond_3

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_3

    new-instance v4, Lcom/nrsmagic/sudoku/gui/r/a/h;

    aget-object v5, v2, v0

    iget-object v6, p0, Lcom/nrsmagic/sudoku/gui/r/f;->b:Lcom/nrsmagic/sudoku/gui/r/e;

    invoke-static {v6}, Lcom/nrsmagic/sudoku/gui/r/e;->b(Lcom/nrsmagic/sudoku/gui/r/e;)Landroid/content/Context;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/nrsmagic/sudoku/gui/r/e/b;->H:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/nrsmagic/sudoku/gui/r/e/b;->I:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/nrsmagic/sudoku/gui/r/f;->b:Lcom/nrsmagic/sudoku/gui/r/e;

    invoke-static {v8}, Lcom/nrsmagic/sudoku/gui/r/e;->c(Lcom/nrsmagic/sudoku/gui/r/e;)Lcom/nrsmagic/sudoku/gui/r/b/f;

    move-result-object v8

    iget v8, v8, Lcom/nrsmagic/sudoku/gui/r/b/f;->e:I

    invoke-static {v6, v7, v8}, Lcom/nrsmagic/sudoku/gui/r/e/h;->a(Landroid/content/Context;Ljava/lang/String;I)Ljava/io/File;

    move-result-object v6

    invoke-direct {v4, v5, v6, v1}, Lcom/nrsmagic/sudoku/gui/r/a/h;-><init>(Ljava/lang/String;Ljava/io/File;I)V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/nrsmagic/sudoku/gui/r/a/h;->a(Ljava/lang/Object;)V

    new-instance v5, Lcom/nrsmagic/sudoku/gui/r/i;

    iget-object v6, p0, Lcom/nrsmagic/sudoku/gui/r/f;->b:Lcom/nrsmagic/sudoku/gui/r/e;

    invoke-static {v6}, Lcom/nrsmagic/sudoku/gui/r/e;->b(Lcom/nrsmagic/sudoku/gui/r/e;)Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/nrsmagic/sudoku/gui/r/f;->b:Lcom/nrsmagic/sudoku/gui/r/e;

    invoke-static {v7}, Lcom/nrsmagic/sudoku/gui/r/e;->c(Lcom/nrsmagic/sudoku/gui/r/e;)Lcom/nrsmagic/sudoku/gui/r/b/f;

    move-result-object v7

    iget-object v8, p0, Lcom/nrsmagic/sudoku/gui/r/f;->b:Lcom/nrsmagic/sudoku/gui/r/e;

    invoke-static {v8}, Lcom/nrsmagic/sudoku/gui/r/e;->a(Lcom/nrsmagic/sudoku/gui/r/e;)Landroid/os/Handler;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8}, Lcom/nrsmagic/sudoku/gui/r/i;-><init>(Landroid/content/Context;Lcom/nrsmagic/sudoku/gui/r/b/f;Landroid/os/Handler;)V

    iget-object v6, p0, Lcom/nrsmagic/sudoku/gui/r/f;->b:Lcom/nrsmagic/sudoku/gui/r/e;

    invoke-static {v6}, Lcom/nrsmagic/sudoku/gui/r/e;->b(Lcom/nrsmagic/sudoku/gui/r/e;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v4, v5}, Lcom/nrsmagic/sudoku/gui/r/p;->a(Landroid/content/Context;Lcom/nrsmagic/sudoku/gui/r/a/h;Lcom/nrsmagic/sudoku/gui/r/a/c;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/f;->b:Lcom/nrsmagic/sudoku/gui/r/e;

    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/r/e;->a(Lcom/nrsmagic/sudoku/gui/r/e;)Landroid/os/Handler;

    move-result-object v0

    iget v1, p0, Lcom/nrsmagic/sudoku/gui/r/f;->a:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_3
    return-void
.end method
