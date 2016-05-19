.class Lcom/nrsmagic/sudoku/gui/q/c/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/nrsmagic/sudoku/gui/q/c/c;


# direct methods
.method constructor <init>(Lcom/nrsmagic/sudoku/gui/q/c/c;)V
    .locals 0

    iput-object p1, p0, Lcom/nrsmagic/sudoku/gui/q/c/e;->a:Lcom/nrsmagic/sudoku/gui/q/c/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    sget-object v0, Lcom/nrsmagic/sudoku/gui/q/a/f;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    sget-object v0, Lcom/nrsmagic/sudoku/gui/q/a/f;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    sget-object v0, Lcom/nrsmagic/sudoku/gui/q/a/f;->b:Ljava/util/List;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/nrsmagic/sudoku/gui/q/a/f;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/nrsmagic/sudoku/gui/q/a/f;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nrsmagic/sudoku/gui/q/a/i;

    invoke-virtual {v0}, Lcom/nrsmagic/sudoku/gui/q/a/i;->a()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x834

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    sget-object v0, Lcom/nrsmagic/sudoku/gui/q/d/c;->a:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
