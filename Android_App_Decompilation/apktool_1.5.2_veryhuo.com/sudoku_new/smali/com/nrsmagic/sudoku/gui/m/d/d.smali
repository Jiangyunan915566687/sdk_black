.class Lcom/nrsmagic/sudoku/gui/m/d/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/nrsmagic/sudoku/gui/m/d/c;


# direct methods
.method constructor <init>(Lcom/nrsmagic/sudoku/gui/m/d/c;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/nrsmagic/sudoku/gui/m/d/d;->b:Lcom/nrsmagic/sudoku/gui/m/d/c;

    iput-object p2, p0, Lcom/nrsmagic/sudoku/gui/m/d/d;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    sget-object v0, Lcom/nrsmagic/sudoku/gui/m/c/f;->b:Ljava/util/List;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/m/d/d;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/m/c/f;->a(Landroid/content/Context;)Lcom/nrsmagic/sudoku/gui/m/c/f;

    :cond_0
    return-void
.end method
