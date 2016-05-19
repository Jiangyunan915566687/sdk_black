.class Lcom/nrsmagic/sudoku/gui/r/d/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/nrsmagic/sudoku/gui/r/d/a;


# direct methods
.method constructor <init>(Lcom/nrsmagic/sudoku/gui/r/d/a;)V
    .locals 0

    iput-object p1, p0, Lcom/nrsmagic/sudoku/gui/r/d/c;->a:Lcom/nrsmagic/sudoku/gui/r/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/d/c;->a:Lcom/nrsmagic/sudoku/gui/r/d/a;

    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/r/d/a;->a(Lcom/nrsmagic/sudoku/gui/r/d/a;)Lcom/nrsmagic/sudoku/gui/r/d/i;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nrsmagic/sudoku/gui/r/d/i;->setVisibility(I)V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/d/c;->a:Lcom/nrsmagic/sudoku/gui/r/d/a;

    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/r/d/a;->a(Lcom/nrsmagic/sudoku/gui/r/d/a;)Lcom/nrsmagic/sudoku/gui/r/d/i;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/nrsmagic/sudoku/gui/r/d/i;->setSelection(I)V

    return-void
.end method
