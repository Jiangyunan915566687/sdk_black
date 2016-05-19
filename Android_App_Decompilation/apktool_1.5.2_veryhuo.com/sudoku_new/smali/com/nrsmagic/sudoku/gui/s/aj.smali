.class Lcom/nrsmagic/sudoku/gui/s/aj;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/nrsmagic/sudoku/gui/s/ai;


# direct methods
.method constructor <init>(Lcom/nrsmagic/sudoku/gui/s/ai;)V
    .locals 0

    iput-object p1, p0, Lcom/nrsmagic/sudoku/gui/s/aj;->a:Lcom/nrsmagic/sudoku/gui/s/ai;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/s/aj;->a:Lcom/nrsmagic/sudoku/gui/s/ai;

    iget-object v0, v0, Lcom/nrsmagic/sudoku/gui/s/ai;->b:Lcom/nrsmagic/sudoku/gui/s/ah;

    iget-object v0, v0, Lcom/nrsmagic/sudoku/gui/s/ah;->a:Lcom/nrsmagic/sudoku/gui/s/ag;

    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/s/ag;->a(Lcom/nrsmagic/sudoku/gui/s/ag;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/s/aj;->a:Lcom/nrsmagic/sudoku/gui/s/ai;

    iget-object v1, v1, Lcom/nrsmagic/sudoku/gui/s/ai;->a:Lcom/nrsmagic/sudoku/gui/s/an;

    invoke-static {v0, v1}, Lcom/nrsmagic/sudoku/gui/s/ag;->a(Landroid/content/Context;Lcom/nrsmagic/sudoku/gui/s/an;)V

    return-void
.end method
