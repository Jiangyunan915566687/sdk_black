.class Lcom/nrsmagic/sudoku/gui/y/d/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/nrsmagic/sudoku/gui/y/d/f;


# direct methods
.method constructor <init>(Lcom/nrsmagic/sudoku/gui/y/d/f;)V
    .locals 0

    iput-object p1, p0, Lcom/nrsmagic/sudoku/gui/y/d/g;->a:Lcom/nrsmagic/sudoku/gui/y/d/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/y/d/g;->a:Lcom/nrsmagic/sudoku/gui/y/d/f;

    iget-object v0, v0, Lcom/nrsmagic/sudoku/gui/y/d/f;->c:Lcom/nrsmagic/sudoku/gui/y/d/c;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/nrsmagic/sudoku/gui/y/d/c;->b(Lcom/nrsmagic/sudoku/gui/y/d/c;Z)Z

    return-void
.end method
