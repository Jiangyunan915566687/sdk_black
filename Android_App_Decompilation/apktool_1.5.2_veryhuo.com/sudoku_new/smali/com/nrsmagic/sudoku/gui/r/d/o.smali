.class public Lcom/nrsmagic/sudoku/gui/r/d/o;
.super Landroid/app/Dialog;


# instance fields
.field private a:Z

.field private b:Lcom/nrsmagic/sudoku/gui/r/b/f;

.field private c:Lcom/nrsmagic/sudoku/gui/r/d/q;


# direct methods
.method public constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;Lcom/nrsmagic/sudoku/gui/r/b/f;)V
    .locals 6

    invoke-direct {p0, p1, p2, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nrsmagic/sudoku/gui/r/d/o;->a:Z

    iput-object p4, p0, Lcom/nrsmagic/sudoku/gui/r/d/o;->b:Lcom/nrsmagic/sudoku/gui/r/b/f;

    new-instance v0, Lcom/nrsmagic/sudoku/gui/r/d/p;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/r/d/o;->b:Lcom/nrsmagic/sudoku/gui/r/b/f;

    iget v1, v1, Lcom/nrsmagic/sudoku/gui/r/b/f;->q:I

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v2, v1

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/nrsmagic/sudoku/gui/r/d/p;-><init>(Lcom/nrsmagic/sudoku/gui/r/d/o;JJ)V

    invoke-virtual {v0}, Lcom/nrsmagic/sudoku/gui/r/d/p;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method static synthetic a(Lcom/nrsmagic/sudoku/gui/r/d/o;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/nrsmagic/sudoku/gui/r/d/o;->a:Z

    return p1
.end method


# virtual methods
.method public a(Lcom/nrsmagic/sudoku/gui/r/d/q;)V
    .locals 0

    iput-object p1, p0, Lcom/nrsmagic/sudoku/gui/r/d/o;->c:Lcom/nrsmagic/sudoku/gui/r/d/q;

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    iget-boolean v0, p0, Lcom/nrsmagic/sudoku/gui/r/d/o;->a:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/app/Dialog;->onBackPressed()V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/d/o;->c:Lcom/nrsmagic/sudoku/gui/r/d/q;

    invoke-interface {v0}, Lcom/nrsmagic/sudoku/gui/r/d/q;->a()V

    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Dialog;->onWindowFocusChanged(Z)V

    return-void
.end method
