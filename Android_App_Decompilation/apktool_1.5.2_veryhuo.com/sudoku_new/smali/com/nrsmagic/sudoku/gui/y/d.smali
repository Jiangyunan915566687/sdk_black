.class Lcom/nrsmagic/sudoku/gui/y/d;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/nrsmagic/sudoku/gui/y/c;


# direct methods
.method constructor <init>(Lcom/nrsmagic/sudoku/gui/y/c;)V
    .locals 0

    iput-object p1, p0, Lcom/nrsmagic/sudoku/gui/y/d;->a:Lcom/nrsmagic/sudoku/gui/y/c;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const/4 v1, 0x1

    invoke-super {p0}, Ljava/lang/Thread;->run()V

    invoke-static {}, Lcom/nrsmagic/sudoku/gui/y/a;->a()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/nrsmagic/sudoku/gui/y/c/h;->b(Landroid/content/Context;Z)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/y/a;->a(Ljava/util/List;)Ljava/util/List;

    sget-object v0, Lcom/nrsmagic/sudoku/gui/y/a;->c:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method
