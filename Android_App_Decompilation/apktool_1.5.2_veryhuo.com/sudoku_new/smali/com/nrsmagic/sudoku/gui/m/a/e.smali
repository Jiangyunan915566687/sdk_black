.class Lcom/nrsmagic/sudoku/gui/m/a/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Landroid/os/Handler;

.field final synthetic d:Lcom/nrsmagic/sudoku/gui/m/a/c;


# direct methods
.method constructor <init>(Lcom/nrsmagic/sudoku/gui/m/a/c;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/nrsmagic/sudoku/gui/m/a/e;->d:Lcom/nrsmagic/sudoku/gui/m/a/c;

    iput-object p2, p0, Lcom/nrsmagic/sudoku/gui/m/a/e;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/nrsmagic/sudoku/gui/m/a/e;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/nrsmagic/sudoku/gui/m/a/e;->c:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/m/a/e;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/m/a/e;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/nrsmagic/sudoku/gui/m/c/i;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/m/a/e;->c:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
