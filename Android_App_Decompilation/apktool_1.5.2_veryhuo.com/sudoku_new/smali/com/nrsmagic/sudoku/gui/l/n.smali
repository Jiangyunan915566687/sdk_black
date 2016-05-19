.class Lcom/nrsmagic/sudoku/gui/l/n;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nrsmagic/sudoku/gui/l/d/q;


# instance fields
.field final synthetic a:Lcom/nrsmagic/sudoku/gui/l/l;


# direct methods
.method constructor <init>(Lcom/nrsmagic/sudoku/gui/l/l;)V
    .locals 0

    iput-object p1, p0, Lcom/nrsmagic/sudoku/gui/l/n;->a:Lcom/nrsmagic/sudoku/gui/l/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/l/n;->a:Lcom/nrsmagic/sudoku/gui/l/l;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nrsmagic/sudoku/gui/l/l;->a(Lcom/nrsmagic/sudoku/gui/l/l;Z)Z

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/l/n;->a:Lcom/nrsmagic/sudoku/gui/l/l;

    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/l/l;->a(Lcom/nrsmagic/sudoku/gui/l/l;)Landroid/os/CountDownTimer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/l/n;->a:Lcom/nrsmagic/sudoku/gui/l/l;

    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/l/l;->a(Lcom/nrsmagic/sudoku/gui/l/l;)Landroid/os/CountDownTimer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/l/n;->a:Lcom/nrsmagic/sudoku/gui/l/l;

    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/l/l;->b(Lcom/nrsmagic/sudoku/gui/l/l;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/l/e;->a(Landroid/content/Context;)Lcom/nrsmagic/sudoku/gui/l/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nrsmagic/sudoku/gui/l/e;->a()V

    return-void
.end method
