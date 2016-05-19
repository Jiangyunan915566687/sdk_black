.class Lcom/nrsmagic/sudoku/gui/r/d/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/nrsmagic/sudoku/gui/r/d/a;


# direct methods
.method constructor <init>(Lcom/nrsmagic/sudoku/gui/r/d/a;)V
    .locals 0

    iput-object p1, p0, Lcom/nrsmagic/sudoku/gui/r/d/b;->a:Lcom/nrsmagic/sudoku/gui/r/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/d/b;->a:Lcom/nrsmagic/sudoku/gui/r/d/a;

    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/r/d/a;->a(Lcom/nrsmagic/sudoku/gui/r/d/a;)Lcom/nrsmagic/sudoku/gui/r/d/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nrsmagic/sudoku/gui/r/d/i;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/d/b;->a:Lcom/nrsmagic/sudoku/gui/r/d/a;

    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/r/d/a;->a(Lcom/nrsmagic/sudoku/gui/r/d/a;)Lcom/nrsmagic/sudoku/gui/r/d/i;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/nrsmagic/sudoku/gui/r/d/i;->setVisibility(I)V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/d/b;->a:Lcom/nrsmagic/sudoku/gui/r/d/a;

    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/r/d/a;->b(Lcom/nrsmagic/sudoku/gui/r/d/a;)Lcom/nrsmagic/sudoku/gui/r/d/i;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/nrsmagic/sudoku/gui/r/d/i;->setSelection(I)V

    :cond_0
    return-void
.end method
