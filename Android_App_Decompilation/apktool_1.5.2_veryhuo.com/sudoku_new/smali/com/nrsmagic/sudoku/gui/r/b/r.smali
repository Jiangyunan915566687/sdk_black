.class Lcom/nrsmagic/sudoku/gui/r/b/r;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/nrsmagic/sudoku/gui/r/b/q;


# direct methods
.method constructor <init>(Lcom/nrsmagic/sudoku/gui/r/b/q;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/nrsmagic/sudoku/gui/r/b/r;->b:Lcom/nrsmagic/sudoku/gui/r/b/q;

    iput-object p2, p0, Lcom/nrsmagic/sudoku/gui/r/b/r;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-super {p0}, Ljava/lang/Thread;->run()V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/b/r;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/r/b/c;->a(Landroid/content/Context;)Lcom/nrsmagic/sudoku/gui/r/b/c;

    move-result-object v0

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/r/b/r;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/nrsmagic/sudoku/gui/r/e/h;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nrsmagic/sudoku/gui/r/b/c;->b(Ljava/lang/String;)Lcom/nrsmagic/sudoku/gui/r/b/i;

    return-void
.end method
