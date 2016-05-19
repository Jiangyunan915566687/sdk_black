.class Lcom/nrsmagic/sudoku/gui/y/n;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/nrsmagic/sudoku/gui/y/m;


# direct methods
.method constructor <init>(Lcom/nrsmagic/sudoku/gui/y/m;)V
    .locals 0

    iput-object p1, p0, Lcom/nrsmagic/sudoku/gui/y/n;->a:Lcom/nrsmagic/sudoku/gui/y/m;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    invoke-static {}, Lcom/nrsmagic/sudoku/gui/y/j;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/y/j;->d(Landroid/content/Context;)V

    invoke-static {}, Lcom/nrsmagic/sudoku/gui/y/j;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/y/j;->c(Landroid/content/Context;)V

    return-void
.end method
