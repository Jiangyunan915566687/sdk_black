.class final Lcom/nrsmagic/sudoku/gui/y/l;
.super Ljava/lang/Thread;


# instance fields
.field a:Ljava/util/List;

.field final synthetic b:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/os/Handler;)V
    .locals 1

    iput-object p1, p0, Lcom/nrsmagic/sudoku/gui/y/l;->b:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/y/l;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/nrsmagic/sudoku/gui/y/j;->b()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nrsmagic/sudoku/gui/y/c/h;->b(Landroid/content/Context;Z)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/y/l;->a:Ljava/util/List;

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/y/l;->a:Ljava/util/List;

    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/y/j;->a(Ljava/util/List;)Ljava/util/List;

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/y/l;->b:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
