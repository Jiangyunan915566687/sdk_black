.class final Lcom/nrsmagic/sudoku/gui/l/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    invoke-static {}, Lcom/nrsmagic/sudoku/gui/l/a;->e()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/l/a;->b(Landroid/app/Activity;)Landroid/view/View;

    return-void
.end method
