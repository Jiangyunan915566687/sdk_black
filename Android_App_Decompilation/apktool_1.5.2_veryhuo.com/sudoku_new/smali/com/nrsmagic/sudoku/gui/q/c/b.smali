.class Lcom/nrsmagic/sudoku/gui/q/c/b;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/nrsmagic/sudoku/gui/q/c/a;


# direct methods
.method constructor <init>(Lcom/nrsmagic/sudoku/gui/q/c/a;)V
    .locals 0

    iput-object p1, p0, Lcom/nrsmagic/sudoku/gui/q/c/b;->a:Lcom/nrsmagic/sudoku/gui/q/c/a;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/q/c/b;->a:Lcom/nrsmagic/sudoku/gui/q/c/a;

    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/q/c/a;->a(Lcom/nrsmagic/sudoku/gui/q/c/a;)Lcom/nrsmagic/sudoku/gui/q/d/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nrsmagic/sudoku/gui/q/d/e;->a()V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/nrsmagic/sudoku/gui/q/c/r;->d:Z

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/q/c/b;->a:Lcom/nrsmagic/sudoku/gui/q/c/a;

    invoke-static {v1}, Lcom/nrsmagic/sudoku/gui/q/c/a;->a(Lcom/nrsmagic/sudoku/gui/q/c/a;)Lcom/nrsmagic/sudoku/gui/q/d/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/nrsmagic/sudoku/gui/q/d/e;->a(Ljava/util/List;)V

    return-void
.end method
