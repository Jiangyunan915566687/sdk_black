.class Lcom/nrsmagic/sudoku/gui/c/ai;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nrsmagic/sudoku/gui/c/b/c;


# instance fields
.field final synthetic a:Lcom/nrsmagic/sudoku/gui/c/an;

.field final synthetic b:Lcom/nrsmagic/sudoku/gui/c/ah;


# direct methods
.method constructor <init>(Lcom/nrsmagic/sudoku/gui/c/ah;Lcom/nrsmagic/sudoku/gui/c/an;)V
    .locals 0

    iput-object p1, p0, Lcom/nrsmagic/sudoku/gui/c/ai;->b:Lcom/nrsmagic/sudoku/gui/c/ah;

    iput-object p2, p0, Lcom/nrsmagic/sudoku/gui/c/ai;->a:Lcom/nrsmagic/sudoku/gui/c/an;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/nrsmagic/sudoku/gui/c/b/h;I)V
    .locals 2

    const/4 v0, 0x4

    if-eq p2, v0, :cond_0

    const/4 v0, 0x5

    if-ne p2, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/c/ai;->b:Lcom/nrsmagic/sudoku/gui/c/ah;

    new-instance v1, Lcom/nrsmagic/sudoku/gui/c/aj;

    invoke-direct {v1, p0}, Lcom/nrsmagic/sudoku/gui/c/aj;-><init>(Lcom/nrsmagic/sudoku/gui/c/ai;)V

    invoke-virtual {v0, v1}, Lcom/nrsmagic/sudoku/gui/c/ah;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/c/ai;->a:Lcom/nrsmagic/sudoku/gui/c/an;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/nrsmagic/sudoku/gui/c/an;->l:Ljava/lang/Integer;

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/c/ai;->b:Lcom/nrsmagic/sudoku/gui/c/ah;

    iget-object v0, v0, Lcom/nrsmagic/sudoku/gui/c/ah;->a:Lcom/nrsmagic/sudoku/gui/c/ag;

    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/c/ag;->a(Lcom/nrsmagic/sudoku/gui/c/ag;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/c/ai;->a:Lcom/nrsmagic/sudoku/gui/c/an;

    invoke-static {v0, v1}, Lcom/nrsmagic/sudoku/gui/c/bb;->b(Landroid/content/Context;Lcom/nrsmagic/sudoku/gui/c/an;)Z

    invoke-static {}, Lcom/nrsmagic/sudoku/gui/c/ao;->a()V

    :cond_1
    return-void
.end method

.method public a(Lcom/nrsmagic/sudoku/gui/c/b/h;J)V
    .locals 0

    return-void
.end method
