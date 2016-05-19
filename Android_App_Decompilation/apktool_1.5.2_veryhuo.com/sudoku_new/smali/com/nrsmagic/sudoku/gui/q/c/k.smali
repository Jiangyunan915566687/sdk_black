.class final Lcom/nrsmagic/sudoku/gui/q/c/k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/SharedPreferences;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/content/SharedPreferences;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/nrsmagic/sudoku/gui/q/c/k;->a:Landroid/content/SharedPreferences;

    iput-object p2, p0, Lcom/nrsmagic/sudoku/gui/q/c/k;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/nrsmagic/sudoku/gui/q/c/k;->c:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/q/c/k;->a:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/q/c/k;->a:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/nrsmagic/sudoku/gui/q/c/h;->aG:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/q/c/k;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/q/c/s;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/q/c/k;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/q/c/s;->m(Landroid/content/Context;)Lcom/nrsmagic/sudoku/gui/q/b/f;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/q/c/k;->a:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/q/c/k;->b:Landroid/content/Context;

    invoke-static {v1, v2, v0}, Lcom/nrsmagic/sudoku/gui/q/c/i;->a(Landroid/content/SharedPreferences;Landroid/content/Context;Lcom/nrsmagic/sudoku/gui/q/b/f;)V

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/q/c/k;->b:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/nrsmagic/sudoku/gui/q/c/i;->a(Lcom/nrsmagic/sudoku/gui/q/b/f;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/q/c/k;->c:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/q/c/k;->a:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/q/c/k;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/q/c/s;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/q/c/k;->a:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/q/c/k;->b:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/nrsmagic/sudoku/gui/q/c/s;->a(Landroid/content/SharedPreferences;Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/q/c/k;->a:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/nrsmagic/sudoku/gui/q/c/h;->aH:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/q/c/k;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/q/c/s;->m(Landroid/content/Context;)Lcom/nrsmagic/sudoku/gui/q/b/f;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/q/c/k;->b:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/nrsmagic/sudoku/gui/q/c/i;->a(Lcom/nrsmagic/sudoku/gui/q/b/f;Landroid/content/Context;)Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/q/c/k;->c:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/q/c/k;->c:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
