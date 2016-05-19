.class Lcom/nrsmagic/sudoku/gui/m/n;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/nrsmagic/sudoku/gui/m/m;


# direct methods
.method constructor <init>(Lcom/nrsmagic/sudoku/gui/m/m;)V
    .locals 0

    iput-object p1, p0, Lcom/nrsmagic/sudoku/gui/m/n;->a:Lcom/nrsmagic/sudoku/gui/m/m;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    invoke-static {}, Lcom/nrsmagic/sudoku/gui/m/j;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/m/j;->d(Landroid/content/Context;)V

    invoke-static {}, Lcom/nrsmagic/sudoku/gui/m/j;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/m/j;->c(Landroid/content/Context;)V

    return-void
.end method
