.class Lcom/nrsmagic/sudoku/gui/g/c/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/nrsmagic/sudoku/gui/g/c/c;


# direct methods
.method constructor <init>(Lcom/nrsmagic/sudoku/gui/g/c/c;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/nrsmagic/sudoku/gui/g/c/f;->b:Lcom/nrsmagic/sudoku/gui/g/c/c;

    iput-object p2, p0, Lcom/nrsmagic/sudoku/gui/g/c/f;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x1e

    if-ge v0, v1, :cond_1

    sget-boolean v1, Lcom/nrsmagic/sudoku/gui/g/c/r;->d:Z

    if-eqz v1, :cond_0

    :goto_1
    return-void

    :cond_0
    const-wide/16 v1, 0x3e8

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/g/c/f;->a:Landroid/content/Context;

    const-string v1, "c"

    invoke-static {v0, v1}, Lcom/nrsmagic/sudoku/gui/g/c/s;->g(Landroid/content/Context;Ljava/lang/String;)V

    sget-object v0, Lcom/nrsmagic/sudoku/gui/g/d/c;->a:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1
.end method
