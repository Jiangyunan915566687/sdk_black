.class Lcom/nrsmagic/sudoku/gui/g/d/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/nrsmagic/sudoku/gui/g/d/e;


# direct methods
.method constructor <init>(Lcom/nrsmagic/sudoku/gui/g/d/e;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/nrsmagic/sudoku/gui/g/d/f;->b:Lcom/nrsmagic/sudoku/gui/g/d/e;

    iput-object p2, p0, Lcom/nrsmagic/sudoku/gui/g/d/f;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/g/d/f;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/g/c/s;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/g/d/f;->a:Landroid/app/Activity;

    sget-object v1, Lcom/nrsmagic/sudoku/gui/g/c/h;->p:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/nrsmagic/sudoku/gui/g/c/s;->g(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/g/d/f;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/g/a;->e(Landroid/app/Activity;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/g/d/f;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/g/c/s;->w(Landroid/content/Context;)V

    goto :goto_0
.end method
