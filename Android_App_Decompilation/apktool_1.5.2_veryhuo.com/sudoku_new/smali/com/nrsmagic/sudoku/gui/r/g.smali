.class Lcom/nrsmagic/sudoku/gui/r/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/nrsmagic/sudoku/gui/r/f;


# direct methods
.method constructor <init>(Lcom/nrsmagic/sudoku/gui/r/f;)V
    .locals 0

    iput-object p1, p0, Lcom/nrsmagic/sudoku/gui/r/g;->a:Lcom/nrsmagic/sudoku/gui/r/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/g;->a:Lcom/nrsmagic/sudoku/gui/r/f;

    iget-object v0, v0, Lcom/nrsmagic/sudoku/gui/r/f;->b:Lcom/nrsmagic/sudoku/gui/r/e;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nrsmagic/sudoku/gui/r/e;->a(Lcom/nrsmagic/sudoku/gui/r/e;Z)Z

    return-void
.end method
