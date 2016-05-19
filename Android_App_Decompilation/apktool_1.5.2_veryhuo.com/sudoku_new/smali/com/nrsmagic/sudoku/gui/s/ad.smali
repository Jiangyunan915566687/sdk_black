.class Lcom/nrsmagic/sudoku/gui/s/ad;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:[Lcom/nrsmagic/sudoku/gui/s/x;

.field final synthetic b:Lcom/nrsmagic/sudoku/gui/s/ac;


# direct methods
.method constructor <init>(Lcom/nrsmagic/sudoku/gui/s/ac;[Lcom/nrsmagic/sudoku/gui/s/x;)V
    .locals 0

    iput-object p1, p0, Lcom/nrsmagic/sudoku/gui/s/ad;->b:Lcom/nrsmagic/sudoku/gui/s/ac;

    iput-object p2, p0, Lcom/nrsmagic/sudoku/gui/s/ad;->a:[Lcom/nrsmagic/sudoku/gui/s/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/s/ad;->b:Lcom/nrsmagic/sudoku/gui/s/ac;

    iget-object v0, v0, Lcom/nrsmagic/sudoku/gui/s/ac;->b:Lcom/nrsmagic/sudoku/gui/s/ab;

    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/s/ab;->b(Lcom/nrsmagic/sudoku/gui/s/ab;)Lcom/nrsmagic/sudoku/gui/s/ae;

    move-result-object v0

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/s/ad;->a:[Lcom/nrsmagic/sudoku/gui/s/x;

    invoke-interface {v0, v1}, Lcom/nrsmagic/sudoku/gui/s/ae;->a([Lcom/nrsmagic/sudoku/gui/s/x;)V

    return-void
.end method
