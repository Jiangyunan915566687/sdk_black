.class public Lcom/nrsmagic/sudoku/gui/r/d/t;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/nrsmagic/sudoku/gui/r/d/s;

.field private b:Z


# direct methods
.method public constructor <init>(Lcom/nrsmagic/sudoku/gui/r/d/s;)V
    .locals 1

    iput-object p1, p0, Lcom/nrsmagic/sudoku/gui/r/d/t;->a:Lcom/nrsmagic/sudoku/gui/r/d/s;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nrsmagic/sudoku/gui/r/d/t;->b:Z

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/nrsmagic/sudoku/gui/r/d/t;->b:Z

    return-void
.end method

.method public run()V
    .locals 2

    :goto_0
    iget-boolean v0, p0, Lcom/nrsmagic/sudoku/gui/r/d/t;->b:Z

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/d/t;->a:Lcom/nrsmagic/sudoku/gui/r/d/s;

    invoke-virtual {v0}, Lcom/nrsmagic/sudoku/gui/r/d/s;->b()V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/d/t;->a:Lcom/nrsmagic/sudoku/gui/r/d/s;

    invoke-virtual {v0}, Lcom/nrsmagic/sudoku/gui/r/d/s;->postInvalidate()V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/d/t;->a:Lcom/nrsmagic/sudoku/gui/r/d/s;

    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/r/d/s;->a(Lcom/nrsmagic/sudoku/gui/r/d/s;)I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :cond_0
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    return-void
.end method
