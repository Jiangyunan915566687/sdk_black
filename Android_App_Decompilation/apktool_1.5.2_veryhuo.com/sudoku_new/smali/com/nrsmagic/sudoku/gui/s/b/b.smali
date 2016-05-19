.class Lcom/nrsmagic/sudoku/gui/s/b/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Landroid/os/Handler;

.field final synthetic d:Landroid/os/Message;

.field final synthetic e:Lcom/nrsmagic/sudoku/gui/s/b/a;


# direct methods
.method constructor <init>(Lcom/nrsmagic/sudoku/gui/s/b/a;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;Landroid/os/Message;)V
    .locals 0

    iput-object p1, p0, Lcom/nrsmagic/sudoku/gui/s/b/b;->e:Lcom/nrsmagic/sudoku/gui/s/b/a;

    iput-object p2, p0, Lcom/nrsmagic/sudoku/gui/s/b/b;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/nrsmagic/sudoku/gui/s/b/b;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/nrsmagic/sudoku/gui/s/b/b;->c:Landroid/os/Handler;

    iput-object p5, p0, Lcom/nrsmagic/sudoku/gui/s/b/b;->d:Landroid/os/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/s/b/b;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/s/b/b;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/nrsmagic/sudoku/gui/s/bb;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/s/b/b;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/s/b/b;->d:Landroid/os/Message;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
