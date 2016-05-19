.class Lcom/nrsmagic/sudoku/gui/l/m;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/nrsmagic/sudoku/gui/l/l;


# direct methods
.method constructor <init>(Lcom/nrsmagic/sudoku/gui/l/l;)V
    .locals 0

    iput-object p1, p0, Lcom/nrsmagic/sudoku/gui/l/m;->a:Lcom/nrsmagic/sudoku/gui/l/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/l/m;->a:Lcom/nrsmagic/sudoku/gui/l/l;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/nrsmagic/sudoku/gui/l/l;->a(Lcom/nrsmagic/sudoku/gui/l/l;I)V

    return-void
.end method
