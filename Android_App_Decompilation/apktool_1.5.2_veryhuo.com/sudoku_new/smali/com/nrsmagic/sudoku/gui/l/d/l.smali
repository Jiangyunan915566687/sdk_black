.class Lcom/nrsmagic/sudoku/gui/l/d/l;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:I

.field final synthetic c:Lcom/nrsmagic/sudoku/gui/l/d/k;


# direct methods
.method constructor <init>(Lcom/nrsmagic/sudoku/gui/l/d/k;Landroid/content/Context;I)V
    .locals 0

    iput-object p1, p0, Lcom/nrsmagic/sudoku/gui/l/d/l;->c:Lcom/nrsmagic/sudoku/gui/l/d/k;

    iput-object p2, p0, Lcom/nrsmagic/sudoku/gui/l/d/l;->a:Landroid/content/Context;

    iput p3, p0, Lcom/nrsmagic/sudoku/gui/l/d/l;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/l/d/l;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/l/l;->a(Landroid/content/Context;)Lcom/nrsmagic/sudoku/gui/l/l;

    move-result-object v0

    iget v1, p0, Lcom/nrsmagic/sudoku/gui/l/d/l;->b:I

    invoke-virtual {v0, v1}, Lcom/nrsmagic/sudoku/gui/l/l;->a(I)V

    return-void
.end method
