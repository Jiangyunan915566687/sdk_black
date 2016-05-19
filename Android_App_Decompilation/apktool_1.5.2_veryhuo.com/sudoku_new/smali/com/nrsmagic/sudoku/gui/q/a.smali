.class public Lcom/nrsmagic/sudoku/gui/q/a;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/app/Activity;)V
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->requestWindowFeature(I)Z

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    invoke-static {}, Lcom/nrsmagic/sudoku/gui/q/Pht;->a()Lcom/nrsmagic/sudoku/gui/q/Pht;

    move-result-object v0

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-static {p0}, Lcom/nrsmagic/sudoku/gui/q/a;->e(Landroid/app/Activity;)V

    return-void
.end method

.method public static a(Landroid/app/Activity;ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    sput-boolean v0, Lcom/nrsmagic/sudoku/gui/q/c/r;->d:Z

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v2, "android.intent.category.HOME"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/nrsmagic/sudoku/gui/q/c/p;->b:Ljava/util/List;

    invoke-static {p0}, Lcom/nrsmagic/sudoku/gui/q/c/p;->a(Landroid/content/Context;)Lcom/nrsmagic/sudoku/gui/q/c/p;

    return-void
.end method

.method public static c(Landroid/app/Activity;)V
    .locals 1

    sget-boolean v0, Lcom/nrsmagic/sudoku/gui/q/c/c;->a:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public static d(Landroid/app/Activity;)V
    .locals 1

    invoke-static {}, Lcom/nrsmagic/sudoku/gui/q/Pht;->a()Lcom/nrsmagic/sudoku/gui/q/Pht;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public static e(Landroid/app/Activity;)V
    .locals 2

    const/4 v0, 0x0

    sput-boolean v0, Lcom/nrsmagic/sudoku/gui/q/c/c;->a:Z

    invoke-static {p0}, Lcom/nrsmagic/sudoku/gui/q/c/s;->t(Landroid/content/Context;)V

    invoke-static {}, Lcom/nrsmagic/sudoku/gui/q/d/c;->a()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/nrsmagic/sudoku/gui/q/d/c;->a(Landroid/app/Activity;)V

    :cond_0
    invoke-static {}, Lcom/nrsmagic/sudoku/gui/q/c/c;->a()Lcom/nrsmagic/sudoku/gui/q/c/c;

    move-result-object v0

    new-instance v1, Lcom/nrsmagic/sudoku/gui/q/d/e;

    invoke-direct {v1, p0}, Lcom/nrsmagic/sudoku/gui/q/d/e;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1}, Lcom/nrsmagic/sudoku/gui/q/d/e;->b()V

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    invoke-static {v1}, Lcom/nrsmagic/sudoku/gui/q/d/c;->a(Lcom/nrsmagic/sudoku/gui/q/d/e;)V

    invoke-virtual {v0, p0}, Lcom/nrsmagic/sudoku/gui/q/c/c;->b(Landroid/content/Context;)V

    invoke-virtual {v0, p0}, Lcom/nrsmagic/sudoku/gui/q/c/c;->a(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/nrsmagic/sudoku/gui/q/c/c;->b()V

    return-void
.end method
