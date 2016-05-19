.class Lcom/nrsmagic/sudoku/gui/s/ai;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nrsmagic/sudoku/gui/s/b/c;


# instance fields
.field final synthetic a:Lcom/nrsmagic/sudoku/gui/s/an;

.field final synthetic b:Lcom/nrsmagic/sudoku/gui/s/ah;


# direct methods
.method constructor <init>(Lcom/nrsmagic/sudoku/gui/s/ah;Lcom/nrsmagic/sudoku/gui/s/an;)V
    .locals 0

    iput-object p1, p0, Lcom/nrsmagic/sudoku/gui/s/ai;->b:Lcom/nrsmagic/sudoku/gui/s/ah;

    iput-object p2, p0, Lcom/nrsmagic/sudoku/gui/s/ai;->a:Lcom/nrsmagic/sudoku/gui/s/an;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/nrsmagic/sudoku/gui/s/b/h;I)V
    .locals 2

    const/4 v0, 0x4

    if-eq p2, v0, :cond_0

    const/4 v0, 0x5

    if-ne p2, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/s/ai;->b:Lcom/nrsmagic/sudoku/gui/s/ah;

    new-instance v1, Lcom/nrsmagic/sudoku/gui/s/aj;

    invoke-direct {v1, p0}, Lcom/nrsmagic/sudoku/gui/s/aj;-><init>(Lcom/nrsmagic/sudoku/gui/s/ai;)V

    invoke-virtual {v0, v1}, Lcom/nrsmagic/sudoku/gui/s/ah;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/s/ai;->a:Lcom/nrsmagic/sudoku/gui/s/an;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/nrsmagic/sudoku/gui/s/an;->l:Ljava/lang/Integer;

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/s/ai;->b:Lcom/nrsmagic/sudoku/gui/s/ah;

    iget-object v0, v0, Lcom/nrsmagic/sudoku/gui/s/ah;->a:Lcom/nrsmagic/sudoku/gui/s/ag;

    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/s/ag;->a(Lcom/nrsmagic/sudoku/gui/s/ag;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/s/ai;->a:Lcom/nrsmagic/sudoku/gui/s/an;

    invoke-static {v0, v1}, Lcom/nrsmagic/sudoku/gui/s/bb;->b(Landroid/content/Context;Lcom/nrsmagic/sudoku/gui/s/an;)Z

    invoke-static {}, Lcom/nrsmagic/sudoku/gui/s/ao;->a()V

    :cond_1
    return-void
.end method

.method public a(Lcom/nrsmagic/sudoku/gui/s/b/h;J)V
    .locals 0

    return-void
.end method
