.class final Lcom/nrsmagic/sudoku/gui/c/as;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/nrsmagic/sudoku/gui/c/as;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/nrsmagic/sudoku/gui/c/ao;->b()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/nrsmagic/sudoku/gui/c/at;

    invoke-direct {v1, p0}, Lcom/nrsmagic/sudoku/gui/c/at;-><init>(Lcom/nrsmagic/sudoku/gui/c/as;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
