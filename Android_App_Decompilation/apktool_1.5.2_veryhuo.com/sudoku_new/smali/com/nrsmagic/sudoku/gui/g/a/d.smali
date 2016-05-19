.class Lcom/nrsmagic/sudoku/gui/g/a/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field a:Landroid/graphics/Bitmap;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:I

.field final synthetic d:Landroid/os/Handler;

.field final synthetic e:Lcom/nrsmagic/sudoku/gui/g/a/c;


# direct methods
.method constructor <init>(Lcom/nrsmagic/sudoku/gui/g/a/c;Ljava/lang/String;ILandroid/os/Handler;)V
    .locals 1

    iput-object p1, p0, Lcom/nrsmagic/sudoku/gui/g/a/d;->e:Lcom/nrsmagic/sudoku/gui/g/a/c;

    iput-object p2, p0, Lcom/nrsmagic/sudoku/gui/g/a/d;->b:Ljava/lang/String;

    iput p3, p0, Lcom/nrsmagic/sudoku/gui/g/a/d;->c:I

    iput-object p4, p0, Lcom/nrsmagic/sudoku/gui/g/a/d;->d:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/g/a/d;->a:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/g/a/d;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/g/c/s;->c(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/g/a/d;->a:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/g/a/d;->a:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/g/a/d;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/g/c/s;->c(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/g/a/d;->a:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-wide/16 v0, 0x7d0

    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    sget-object v0, Lcom/nrsmagic/sudoku/gui/g/d/a;->b:Ljava/util/Hashtable;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/g/a/d;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/g/a/d;->d:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/g/a/d;->a:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/g/a/d;->b:Ljava/lang/String;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/g/a/d;->d:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    :goto_2
    return-void

    :cond_1
    :try_start_2
    iget v0, p0, Lcom/nrsmagic/sudoku/gui/g/a/d;->c:I

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/g/a/d;->a:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lcom/nrsmagic/sudoku/gui/g/c/s;->a(ILandroid/graphics/Bitmap;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/g/a/d;->d:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_2
.end method
