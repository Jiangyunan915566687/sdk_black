.class Lcom/nrsmagic/sudoku/gui/r/b/o;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:[Lcom/nrsmagic/sudoku/gui/r/b/k;

.field final synthetic b:Lcom/nrsmagic/sudoku/gui/r/b/n;


# direct methods
.method constructor <init>(Lcom/nrsmagic/sudoku/gui/r/b/n;[Lcom/nrsmagic/sudoku/gui/r/b/k;)V
    .locals 0

    iput-object p1, p0, Lcom/nrsmagic/sudoku/gui/r/b/o;->b:Lcom/nrsmagic/sudoku/gui/r/b/n;

    iput-object p2, p0, Lcom/nrsmagic/sudoku/gui/r/b/o;->a:[Lcom/nrsmagic/sudoku/gui/r/b/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/b/o;->b:Lcom/nrsmagic/sudoku/gui/r/b/n;

    iget-object v0, v0, Lcom/nrsmagic/sudoku/gui/r/b/n;->b:Lcom/nrsmagic/sudoku/gui/r/b/m;

    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/r/b/m;->b(Lcom/nrsmagic/sudoku/gui/r/b/m;)Lcom/nrsmagic/sudoku/gui/r/b/p;

    move-result-object v0

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/r/b/o;->a:[Lcom/nrsmagic/sudoku/gui/r/b/k;

    invoke-interface {v0, v1}, Lcom/nrsmagic/sudoku/gui/r/b/p;->a([Lcom/nrsmagic/sudoku/gui/r/b/k;)V

    return-void
.end method
