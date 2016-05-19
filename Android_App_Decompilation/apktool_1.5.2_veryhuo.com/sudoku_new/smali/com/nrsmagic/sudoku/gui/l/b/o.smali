.class Lcom/nrsmagic/sudoku/gui/l/b/o;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:[Lcom/nrsmagic/sudoku/gui/l/b/k;

.field final synthetic b:Lcom/nrsmagic/sudoku/gui/l/b/n;


# direct methods
.method constructor <init>(Lcom/nrsmagic/sudoku/gui/l/b/n;[Lcom/nrsmagic/sudoku/gui/l/b/k;)V
    .locals 0

    iput-object p1, p0, Lcom/nrsmagic/sudoku/gui/l/b/o;->b:Lcom/nrsmagic/sudoku/gui/l/b/n;

    iput-object p2, p0, Lcom/nrsmagic/sudoku/gui/l/b/o;->a:[Lcom/nrsmagic/sudoku/gui/l/b/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/l/b/o;->b:Lcom/nrsmagic/sudoku/gui/l/b/n;

    iget-object v0, v0, Lcom/nrsmagic/sudoku/gui/l/b/n;->b:Lcom/nrsmagic/sudoku/gui/l/b/m;

    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/l/b/m;->b(Lcom/nrsmagic/sudoku/gui/l/b/m;)Lcom/nrsmagic/sudoku/gui/l/b/p;

    move-result-object v0

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/l/b/o;->a:[Lcom/nrsmagic/sudoku/gui/l/b/k;

    invoke-interface {v0, v1}, Lcom/nrsmagic/sudoku/gui/l/b/p;->a([Lcom/nrsmagic/sudoku/gui/l/b/k;)V

    return-void
.end method
