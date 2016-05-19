.class Lcom/nrsmagic/sudoku/gui/r/v;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/nrsmagic/sudoku/gui/r/q;


# direct methods
.method constructor <init>(Lcom/nrsmagic/sudoku/gui/r/q;)V
    .locals 0

    iput-object p1, p0, Lcom/nrsmagic/sudoku/gui/r/v;->a:Lcom/nrsmagic/sudoku/gui/r/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/v;->a:Lcom/nrsmagic/sudoku/gui/r/q;

    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/r/q;->b(Lcom/nrsmagic/sudoku/gui/r/q;)Lcom/nrsmagic/sudoku/gui/r/b/f;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/nrsmagic/sudoku/gui/r/b/f;->u:Z

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/v;->a:Lcom/nrsmagic/sudoku/gui/r/q;

    iget-object v0, v0, Lcom/nrsmagic/sudoku/gui/r/q;->a:Lcom/nrsmagic/sudoku/gui/r/d/a;

    sget-object v1, Lcom/nrsmagic/sudoku/gui/r/e/b;->ag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nrsmagic/sudoku/gui/r/d/a;->h(Ljava/lang/String;)V

    return-void
.end method
