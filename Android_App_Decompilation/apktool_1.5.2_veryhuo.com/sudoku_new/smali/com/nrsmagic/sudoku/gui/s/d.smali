.class final Lcom/nrsmagic/sudoku/gui/s/d;
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
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nrsmagic/sudoku/gui/s/x;

    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/s/bb;->a(Lcom/nrsmagic/sudoku/gui/s/x;)Lcom/nrsmagic/sudoku/gui/s/an;

    move-result-object v1

    new-instance v2, Lcom/nrsmagic/sudoku/gui/s/g;

    invoke-static {}, Lcom/nrsmagic/sudoku/gui/s/a;->b()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3, v1, v4}, Lcom/nrsmagic/sudoku/gui/s/g;-><init>(Landroid/app/Activity;Lcom/nrsmagic/sudoku/gui/s/an;Z)V

    invoke-static {v2}, Lcom/nrsmagic/sudoku/gui/s/a;->a(Lcom/nrsmagic/sudoku/gui/s/g;)Lcom/nrsmagic/sudoku/gui/s/g;

    invoke-static {}, Lcom/nrsmagic/sudoku/gui/s/a;->c()Lcom/nrsmagic/sudoku/gui/s/g;

    move-result-object v1

    sget-object v2, Lcom/nrsmagic/sudoku/gui/s/a;->b:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Lcom/nrsmagic/sudoku/gui/s/g;->a(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-static {}, Lcom/nrsmagic/sudoku/gui/s/a;->b()Landroid/app/Activity;

    move-result-object v1

    invoke-static {}, Lcom/nrsmagic/sudoku/gui/s/a;->c()Lcom/nrsmagic/sudoku/gui/s/g;

    move-result-object v2

    iget-object v2, v2, Lcom/nrsmagic/sudoku/gui/s/g;->a:Lcom/nrsmagic/sudoku/gui/s/m;

    invoke-static {v1, v2}, Lcom/nrsmagic/sudoku/gui/s/a;->a(Landroid/app/Activity;Lcom/nrsmagic/sudoku/gui/s/m;)V

    invoke-static {}, Lcom/nrsmagic/sudoku/gui/s/a;->b()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, v0, Lcom/nrsmagic/sudoku/gui/s/x;->e:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/nrsmagic/sudoku/gui/s/bb;->g(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
