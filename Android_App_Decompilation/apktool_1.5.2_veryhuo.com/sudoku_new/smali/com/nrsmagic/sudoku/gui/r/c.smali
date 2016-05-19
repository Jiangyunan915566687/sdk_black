.class final Lcom/nrsmagic/sudoku/gui/r/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nrsmagic/sudoku/gui/r/b/f;

    new-instance v1, Lcom/nrsmagic/sudoku/gui/r/q;

    invoke-static {}, Lcom/nrsmagic/sudoku/gui/r/a;->e()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/nrsmagic/sudoku/gui/r/q;-><init>(Landroid/app/Activity;Lcom/nrsmagic/sudoku/gui/r/b/f;)V

    invoke-static {v1}, Lcom/nrsmagic/sudoku/gui/r/a;->a(Lcom/nrsmagic/sudoku/gui/r/q;)Lcom/nrsmagic/sudoku/gui/r/q;

    invoke-static {}, Lcom/nrsmagic/sudoku/gui/r/a;->g()Lcom/nrsmagic/sudoku/gui/r/q;

    move-result-object v1

    invoke-static {}, Lcom/nrsmagic/sudoku/gui/r/a;->f()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nrsmagic/sudoku/gui/r/q;->a(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-static {}, Lcom/nrsmagic/sudoku/gui/r/a;->e()Landroid/app/Activity;

    move-result-object v1

    invoke-static {}, Lcom/nrsmagic/sudoku/gui/r/a;->g()Lcom/nrsmagic/sudoku/gui/r/q;

    move-result-object v2

    iget-object v2, v2, Lcom/nrsmagic/sudoku/gui/r/q;->a:Lcom/nrsmagic/sudoku/gui/r/d/a;

    invoke-static {v1, v2}, Lcom/nrsmagic/sudoku/gui/r/a;->a(Landroid/app/Activity;Landroid/view/View;)V

    invoke-static {}, Lcom/nrsmagic/sudoku/gui/r/b/a;->a()Lcom/nrsmagic/sudoku/gui/r/b/a;

    move-result-object v1

    invoke-static {}, Lcom/nrsmagic/sudoku/gui/r/a;->e()Landroid/app/Activity;

    move-result-object v2

    iget v0, v0, Lcom/nrsmagic/sudoku/gui/r/b/f;->e:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/nrsmagic/sudoku/gui/r/b/a;->a(Landroid/content/Context;II)V

    return-void
.end method
