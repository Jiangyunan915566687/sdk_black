.class public Lcom/nrsmagic/sudoku/gui/m/d/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/nrsmagic/sudoku/gui/m/d/c;


# direct methods
.method public constructor <init>(Lcom/nrsmagic/sudoku/gui/m/d/c;)V
    .locals 0

    iput-object p1, p0, Lcom/nrsmagic/sudoku/gui/m/d/e;->a:Lcom/nrsmagic/sudoku/gui/m/d/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    invoke-static {}, Lcom/nrsmagic/sudoku/gui/m/d/c;->e()Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/m/d/e;->a:Lcom/nrsmagic/sudoku/gui/m/d/c;

    invoke-static {v1}, Lcom/nrsmagic/sudoku/gui/m/d/c;->a(Lcom/nrsmagic/sudoku/gui/m/d/c;)Lcom/nrsmagic/sudoku/gui/m/d/b;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    invoke-static {}, Lcom/nrsmagic/sudoku/gui/m/d/c;->f()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Lcom/nrsmagic/sudoku/gui/m/d/c;->f()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcom/nrsmagic/sudoku/gui/m/d/c;->f()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/nrsmagic/sudoku/gui/m/Syc;

    invoke-static {v3, v4}, Lcom/nrsmagic/sudoku/gui/m/c/i;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    goto :goto_0

    :sswitch_1
    invoke-static {}, Lcom/nrsmagic/sudoku/gui/m/d/c;->e()Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/m/d/e;->a:Lcom/nrsmagic/sudoku/gui/m/d/c;

    invoke-static {v1}, Lcom/nrsmagic/sudoku/gui/m/d/c;->a(Lcom/nrsmagic/sudoku/gui/m/d/c;)Lcom/nrsmagic/sudoku/gui/m/d/b;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/m/d/e;->a:Lcom/nrsmagic/sudoku/gui/m/d/c;

    invoke-static {}, Lcom/nrsmagic/sudoku/gui/m/d/c;->f()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/m/d/e;->a:Lcom/nrsmagic/sudoku/gui/m/d/c;

    invoke-static {v2}, Lcom/nrsmagic/sudoku/gui/m/d/c;->b(Lcom/nrsmagic/sudoku/gui/m/d/c;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/nrsmagic/sudoku/gui/m/d/c;->a(Lcom/nrsmagic/sudoku/gui/m/d/c;Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/m/d/e;->a:Lcom/nrsmagic/sudoku/gui/m/d/c;

    invoke-virtual {v0}, Lcom/nrsmagic/sudoku/gui/m/d/c;->b()V

    goto :goto_0

    :sswitch_2
    invoke-static {}, Lcom/nrsmagic/sudoku/gui/m/d/c;->e()Landroid/view/WindowManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Lcom/nrsmagic/sudoku/gui/m/d/c;->e()Landroid/view/WindowManager;

    move-result-object v0

    invoke-static {}, Lcom/nrsmagic/sudoku/gui/m/d/c;->g()Landroid/widget/AbsoluteLayout;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/nrsmagic/sudoku/gui/m/d/c;->f()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/nrsmagic/sudoku/gui/m/Vn;

    invoke-static {}, Lcom/nrsmagic/sudoku/gui/m/d/c;->f()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/nrsmagic/sudoku/gui/m/c/i;->a(Ljava/lang/Class;Landroid/content/Context;)Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "l"

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/m/d/e;->a:Lcom/nrsmagic/sudoku/gui/m/d/c;

    invoke-static {v2}, Lcom/nrsmagic/sudoku/gui/m/d/c;->b(Lcom/nrsmagic/sudoku/gui/m/d/c;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {}, Lcom/nrsmagic/sudoku/gui/m/d/c;->f()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/m/d/e;->a:Lcom/nrsmagic/sudoku/gui/m/d/c;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nrsmagic/sudoku/gui/m/d/c;->a(Lcom/nrsmagic/sudoku/gui/m/d/c;Z)Z

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x9 -> :sswitch_2
    .end sparse-switch
.end method
