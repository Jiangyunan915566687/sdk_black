.class Lcom/nrsmagic/sudoku/gui/l/o;
.super Landroid/os/CountDownTimer;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/nrsmagic/sudoku/gui/l/l;


# direct methods
.method constructor <init>(Lcom/nrsmagic/sudoku/gui/l/l;JJI)V
    .locals 0

    iput-object p1, p0, Lcom/nrsmagic/sudoku/gui/l/o;->b:Lcom/nrsmagic/sudoku/gui/l/l;

    iput p6, p0, Lcom/nrsmagic/sudoku/gui/l/o;->a:I

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/l/o;->b:Lcom/nrsmagic/sudoku/gui/l/l;

    iget v1, p0, Lcom/nrsmagic/sudoku/gui/l/o;->a:I

    invoke-virtual {v0, v1}, Lcom/nrsmagic/sudoku/gui/l/l;->a(I)V

    return-void
.end method

.method public onTick(J)V
    .locals 0

    return-void
.end method
