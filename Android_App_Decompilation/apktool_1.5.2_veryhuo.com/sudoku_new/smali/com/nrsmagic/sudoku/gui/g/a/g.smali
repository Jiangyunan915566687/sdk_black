.class Lcom/nrsmagic/sudoku/gui/g/a/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nrsmagic/sudoku/gui/g/a/e;


# instance fields
.field final synthetic a:Lcom/nrsmagic/sudoku/gui/g/a/f;


# direct methods
.method constructor <init>(Lcom/nrsmagic/sudoku/gui/g/a/f;)V
    .locals 0

    iput-object p1, p0, Lcom/nrsmagic/sudoku/gui/g/a/g;->a:Lcom/nrsmagic/sudoku/gui/g/a/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 8

    const/16 v1, 0x64

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/g/a/g;->a:Lcom/nrsmagic/sudoku/gui/g/a/f;

    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/g/a/f;->a(Lcom/nrsmagic/sudoku/gui/g/a/f;)I

    move-result v0

    if-ne v0, v2, :cond_1

    sget-object v0, Lcom/nrsmagic/sudoku/gui/g/c/r;->a:Ljava/util/Map;

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/g/a/g;->a:Lcom/nrsmagic/sudoku/gui/g/a/f;

    invoke-static {v2}, Lcom/nrsmagic/sudoku/gui/g/a/f;->b(Lcom/nrsmagic/sudoku/gui/g/a/f;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/nrsmagic/sudoku/gui/g/c/r;->a:Ljava/util/Map;

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/g/a/g;->a:Lcom/nrsmagic/sudoku/gui/g/a/f;

    invoke-static {v2}, Lcom/nrsmagic/sudoku/gui/g/a/f;->b(Lcom/nrsmagic/sudoku/gui/g/a/f;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    int-to-float v2, p1

    sget-object v0, Lcom/nrsmagic/sudoku/gui/g/a/h;->a:Ljava/util/Map;

    iget-object v3, p0, Lcom/nrsmagic/sudoku/gui/g/a/g;->a:Lcom/nrsmagic/sudoku/gui/g/a/f;

    invoke-static {v3}, Lcom/nrsmagic/sudoku/gui/g/a/f;->b(Lcom/nrsmagic/sudoku/gui/g/a/f;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    div-float v0, v2, v0

    const/high16 v2, 0x42c8

    mul-float/2addr v0, v2

    float-to-int v3, v0

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/g/a/g;->a:Lcom/nrsmagic/sudoku/gui/g/a/f;

    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/g/a/f;->c(Lcom/nrsmagic/sudoku/gui/g/a/f;)I

    move-result v0

    sub-int v4, v3, v0

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/g/a/g;->a:Lcom/nrsmagic/sudoku/gui/g/a/f;

    invoke-static {v0, v3}, Lcom/nrsmagic/sudoku/gui/g/a/f;->a(Lcom/nrsmagic/sudoku/gui/g/a/f;I)I

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v4, :cond_1

    const-wide/16 v5, 0x64

    :try_start_0
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V

    sub-int v0, v3, v4

    add-int/2addr v0, v2

    const/16 v5, 0x63

    if-ne v0, v5, :cond_0

    move v0, v1

    :cond_0
    new-instance v5, Landroid/os/Message;

    invoke-direct {v5}, Landroid/os/Message;-><init>()V

    const/4 v6, 0x1

    iput v6, v5, Landroid/os/Message;->what:I

    iget-object v6, p0, Lcom/nrsmagic/sudoku/gui/g/a/g;->a:Lcom/nrsmagic/sudoku/gui/g/a/f;

    invoke-static {v6}, Lcom/nrsmagic/sudoku/gui/g/a/f;->b(Lcom/nrsmagic/sudoku/gui/g/a/f;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v5}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    sget-object v7, Lcom/nrsmagic/sudoku/gui/g/c/h;->ba:Ljava/lang/String;

    invoke-virtual {v6, v7, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v0, Lcom/nrsmagic/sudoku/gui/g/d/c;->a:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_1
    return-void
.end method
