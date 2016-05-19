.class Lcom/nrsmagic/sudoku/gui/c/aj;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/nrsmagic/sudoku/gui/c/ai;


# direct methods
.method constructor <init>(Lcom/nrsmagic/sudoku/gui/c/ai;)V
    .locals 0

    iput-object p1, p0, Lcom/nrsmagic/sudoku/gui/c/aj;->a:Lcom/nrsmagic/sudoku/gui/c/ai;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/c/aj;->a:Lcom/nrsmagic/sudoku/gui/c/ai;

    iget-object v0, v0, Lcom/nrsmagic/sudoku/gui/c/ai;->b:Lcom/nrsmagic/sudoku/gui/c/ah;

    iget-object v0, v0, Lcom/nrsmagic/sudoku/gui/c/ah;->a:Lcom/nrsmagic/sudoku/gui/c/ag;

    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/c/ag;->a(Lcom/nrsmagic/sudoku/gui/c/ag;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/c/aj;->a:Lcom/nrsmagic/sudoku/gui/c/ai;

    iget-object v1, v1, Lcom/nrsmagic/sudoku/gui/c/ai;->a:Lcom/nrsmagic/sudoku/gui/c/an;

    invoke-static {v0, v1}, Lcom/nrsmagic/sudoku/gui/c/ag;->a(Landroid/content/Context;Lcom/nrsmagic/sudoku/gui/c/an;)V

    return-void
.end method
