.class Lcom/nrsmagic/sudoku/gui/c/ad;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:[Lcom/nrsmagic/sudoku/gui/c/x;

.field final synthetic b:Lcom/nrsmagic/sudoku/gui/c/ac;


# direct methods
.method constructor <init>(Lcom/nrsmagic/sudoku/gui/c/ac;[Lcom/nrsmagic/sudoku/gui/c/x;)V
    .locals 0

    iput-object p1, p0, Lcom/nrsmagic/sudoku/gui/c/ad;->b:Lcom/nrsmagic/sudoku/gui/c/ac;

    iput-object p2, p0, Lcom/nrsmagic/sudoku/gui/c/ad;->a:[Lcom/nrsmagic/sudoku/gui/c/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/c/ad;->b:Lcom/nrsmagic/sudoku/gui/c/ac;

    iget-object v0, v0, Lcom/nrsmagic/sudoku/gui/c/ac;->b:Lcom/nrsmagic/sudoku/gui/c/ab;

    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/c/ab;->b(Lcom/nrsmagic/sudoku/gui/c/ab;)Lcom/nrsmagic/sudoku/gui/c/ae;

    move-result-object v0

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/c/ad;->a:[Lcom/nrsmagic/sudoku/gui/c/x;

    invoke-interface {v0, v1}, Lcom/nrsmagic/sudoku/gui/c/ae;->a([Lcom/nrsmagic/sudoku/gui/c/x;)V

    return-void
.end method
