.class Lcom/nrsmagic/sudoku/gui/l/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/nrsmagic/sudoku/gui/l/f;


# direct methods
.method constructor <init>(Lcom/nrsmagic/sudoku/gui/l/f;)V
    .locals 0

    iput-object p1, p0, Lcom/nrsmagic/sudoku/gui/l/g;->a:Lcom/nrsmagic/sudoku/gui/l/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/l/g;->a:Lcom/nrsmagic/sudoku/gui/l/f;

    iget-object v0, v0, Lcom/nrsmagic/sudoku/gui/l/f;->b:Lcom/nrsmagic/sudoku/gui/l/e;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nrsmagic/sudoku/gui/l/e;->a(Lcom/nrsmagic/sudoku/gui/l/e;Z)Z

    return-void
.end method
