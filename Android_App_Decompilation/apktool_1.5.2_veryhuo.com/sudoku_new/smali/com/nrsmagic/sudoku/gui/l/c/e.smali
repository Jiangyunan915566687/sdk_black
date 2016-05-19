.class public abstract Lcom/nrsmagic/sudoku/gui/l/c/e;
.super Ljava/lang/Object;


# instance fields
.field protected a:Landroid/content/Context;

.field private b:Lcom/nrsmagic/sudoku/gui/l/c/h;

.field private c:Ljava/lang/Exception;

.field private d:I

.field private e:Ljava/util/Map;

.field private f:Lcom/nrsmagic/sudoku/gui/l/c/f;

.field private g:F

.field private h:Lcom/nrsmagic/sudoku/gui/l/c/g;

.field private i:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/nrsmagic/sudoku/gui/l/c/h;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nrsmagic/sudoku/gui/l/c/e;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/nrsmagic/sudoku/gui/l/c/e;->b:Lcom/nrsmagic/sudoku/gui/l/c/h;

    const/4 v0, -0x1

    iput v0, p0, Lcom/nrsmagic/sudoku/gui/l/c/e;->d:I

    const/high16 v0, 0x41f0

    iput v0, p0, Lcom/nrsmagic/sudoku/gui/l/c/e;->g:F

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Landroid/net/ConnectivityManager;
    .locals 1

    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method protected a(I)V
    .locals 1

    iget v0, p0, Lcom/nrsmagic/sudoku/gui/l/c/e;->d:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Lcom/nrsmagic/sudoku/gui/l/c/e;->d:I

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/l/c/e;->f:Lcom/nrsmagic/sudoku/gui/l/c/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/l/c/e;->f:Lcom/nrsmagic/sudoku/gui/l/c/f;

    invoke-interface {v0, p0, p1}, Lcom/nrsmagic/sudoku/gui/l/c/f;->a(Lcom/nrsmagic/sudoku/gui/l/c/e;I)V

    :cond_0
    return-void
.end method

.method public a(Lcom/nrsmagic/sudoku/gui/l/c/f;)V
    .locals 0

    iput-object p1, p0, Lcom/nrsmagic/sudoku/gui/l/c/e;->f:Lcom/nrsmagic/sudoku/gui/l/c/f;

    return-void
.end method

.method protected a(Ljava/io/InputStream;)V
    .locals 0

    iput-object p1, p0, Lcom/nrsmagic/sudoku/gui/l/c/e;->i:Ljava/io/InputStream;

    return-void
.end method

.method protected a(Ljava/lang/Exception;)V
    .locals 0

    iput-object p1, p0, Lcom/nrsmagic/sudoku/gui/l/c/e;->c:Ljava/lang/Exception;

    return-void
.end method

.method protected a(Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/nrsmagic/sudoku/gui/l/c/e;->e:Ljava/util/Map;

    return-void
.end method

.method public abstract a()Z
.end method

.method public abstract b()V
.end method

.method public c()Z
    .locals 1

    iget v0, p0, Lcom/nrsmagic/sudoku/gui/l/c/e;->d:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public d()Lcom/nrsmagic/sudoku/gui/l/c/h;
    .locals 1

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/l/c/e;->b:Lcom/nrsmagic/sudoku/gui/l/c/h;

    return-object v0
.end method

.method public e()V
    .locals 1

    invoke-virtual {p0}, Lcom/nrsmagic/sudoku/gui/l/c/e;->b()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/nrsmagic/sudoku/gui/l/c/e;->d:I

    return-void
.end method

.method public f()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/l/c/e;->i:Ljava/io/InputStream;

    return-object v0
.end method

.method public g()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/l/c/e;->e:Ljava/util/Map;

    return-object v0
.end method

.method public h()I
    .locals 1

    iget v0, p0, Lcom/nrsmagic/sudoku/gui/l/c/e;->d:I

    return v0
.end method

.method public i()Ljava/lang/Exception;
    .locals 1

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/l/c/e;->c:Ljava/lang/Exception;

    return-object v0
.end method

.method public j()F
    .locals 1

    iget v0, p0, Lcom/nrsmagic/sudoku/gui/l/c/e;->g:F

    return v0
.end method

.method public k()Lcom/nrsmagic/sudoku/gui/l/c/g;
    .locals 3

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/l/c/e;->h:Lcom/nrsmagic/sudoku/gui/l/c/g;

    if-nez v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/l/c/e;->a:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/nrsmagic/sudoku/gui/l/c/e;->a(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/nrsmagic/sudoku/gui/l/e/b;->S:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/nrsmagic/sudoku/gui/l/e/b;->U:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/nrsmagic/sudoku/gui/l/e/b;->T:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/nrsmagic/sudoku/gui/l/e/b;->bw:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    new-instance v0, Lcom/nrsmagic/sudoku/gui/l/c/g;

    sget-object v1, Lcom/nrsmagic/sudoku/gui/l/e/b;->m:Ljava/lang/String;

    const/16 v2, 0x50

    invoke-direct {v0, v1, v2}, Lcom/nrsmagic/sudoku/gui/l/c/g;-><init>(Ljava/lang/String;I)V

    :goto_0
    return-object v0

    :cond_1
    sget-object v1, Lcom/nrsmagic/sudoku/gui/l/e/b;->R:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/nrsmagic/sudoku/gui/l/c/g;

    sget-object v1, Lcom/nrsmagic/sudoku/gui/l/e/b;->n:Ljava/lang/String;

    const/16 v2, 0x50

    invoke-direct {v0, v1, v2}, Lcom/nrsmagic/sudoku/gui/l/c/g;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_2
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/l/c/e;->h:Lcom/nrsmagic/sudoku/gui/l/c/g;

    goto :goto_0
.end method

.method public l()Z
    .locals 3

    const/4 v1, 0x1

    :try_start_0
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/l/c/e;->a:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0
.end method
