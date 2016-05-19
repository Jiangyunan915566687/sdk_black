.class Lcom/nrsmagic/sudoku/gui/l/v;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/nrsmagic/sudoku/gui/l/q;


# direct methods
.method constructor <init>(Lcom/nrsmagic/sudoku/gui/l/q;)V
    .locals 0

    iput-object p1, p0, Lcom/nrsmagic/sudoku/gui/l/v;->a:Lcom/nrsmagic/sudoku/gui/l/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/l/v;->a:Lcom/nrsmagic/sudoku/gui/l/q;

    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/l/q;->b(Lcom/nrsmagic/sudoku/gui/l/q;)Lcom/nrsmagic/sudoku/gui/l/b/f;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/nrsmagic/sudoku/gui/l/b/f;->u:Z

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/l/v;->a:Lcom/nrsmagic/sudoku/gui/l/q;

    iget-object v0, v0, Lcom/nrsmagic/sudoku/gui/l/q;->a:Lcom/nrsmagic/sudoku/gui/l/d/a;

    sget-object v1, Lcom/nrsmagic/sudoku/gui/l/e/b;->ag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nrsmagic/sudoku/gui/l/d/a;->h(Ljava/lang/String;)V

    return-void
.end method
