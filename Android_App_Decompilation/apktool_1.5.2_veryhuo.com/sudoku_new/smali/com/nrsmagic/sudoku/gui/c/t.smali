.class Lcom/nrsmagic/sudoku/gui/c/t;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/nrsmagic/sudoku/gui/c/s;


# direct methods
.method constructor <init>(Lcom/nrsmagic/sudoku/gui/c/s;)V
    .locals 0

    iput-object p1, p0, Lcom/nrsmagic/sudoku/gui/c/t;->a:Lcom/nrsmagic/sudoku/gui/c/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/c/t;->a:Lcom/nrsmagic/sudoku/gui/c/s;

    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/c/s;->a(Lcom/nrsmagic/sudoku/gui/c/s;)Lcom/nrsmagic/sudoku/gui/c/u;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/nrsmagic/sudoku/gui/c/u;->c(I)V

    return-void
.end method
