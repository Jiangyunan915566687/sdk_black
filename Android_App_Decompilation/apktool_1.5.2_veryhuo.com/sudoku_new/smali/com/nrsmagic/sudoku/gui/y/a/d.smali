.class Lcom/nrsmagic/sudoku/gui/y/a/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Landroid/os/Handler;

.field final synthetic d:Lcom/nrsmagic/sudoku/gui/y/a/c;


# direct methods
.method constructor <init>(Lcom/nrsmagic/sudoku/gui/y/a/c;Ljava/lang/String;ILandroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/nrsmagic/sudoku/gui/y/a/d;->d:Lcom/nrsmagic/sudoku/gui/y/a/c;

    iput-object p2, p0, Lcom/nrsmagic/sudoku/gui/y/a/d;->a:Ljava/lang/String;

    iput p3, p0, Lcom/nrsmagic/sudoku/gui/y/a/d;->b:I

    iput-object p4, p0, Lcom/nrsmagic/sudoku/gui/y/a/d;->c:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/y/a/d;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/y/c/h;->c(Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    if-nez v0, :cond_0

    :try_start_1
    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/y/a/d;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/nrsmagic/sudoku/gui/y/c/h;->c(Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    :goto_0
    const-wide/16 v1, 0x7d0

    :try_start_2
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    sget-object v1, Lcom/nrsmagic/sudoku/gui/y/d/l;->a:Ljava/util/Hashtable;

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/y/a/d;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v0, :cond_1

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/y/a/d;->a:Ljava/lang/String;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/y/a/d;->c:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_2
    return-void

    :cond_0
    :try_start_3
    iget v1, p0, Lcom/nrsmagic/sudoku/gui/y/a/d;->b:I

    invoke-static {v1, v0}, Lcom/nrsmagic/sudoku/gui/y/c/h;->a(ILandroid/graphics/Bitmap;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/y/a/d;->c:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_3
.end method
