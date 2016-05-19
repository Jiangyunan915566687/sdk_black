.class Lcom/nrsmagic/sudoku/gui/y/a/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nrsmagic/sudoku/gui/y/a/f;


# instance fields
.field final synthetic a:Lcom/nrsmagic/sudoku/gui/y/a/g;


# direct methods
.method constructor <init>(Lcom/nrsmagic/sudoku/gui/y/a/g;)V
    .locals 0

    iput-object p1, p0, Lcom/nrsmagic/sudoku/gui/y/a/h;->a:Lcom/nrsmagic/sudoku/gui/y/a/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 8

    const/4 v3, 0x4

    :try_start_0
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/y/a/h;->a:Lcom/nrsmagic/sudoku/gui/y/a/g;

    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/y/a/g;->a(Lcom/nrsmagic/sudoku/gui/y/a/g;)I

    move-result v0

    const/16 v1, 0x2b67

    if-eq v0, v1, :cond_1

    const/4 v0, 0x0

    sget-object v1, Lcom/nrsmagic/sudoku/gui/y/a/i;->b:Ljava/util/Map;

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/y/a/h;->a:Lcom/nrsmagic/sudoku/gui/y/a/g;

    invoke-static {v2}, Lcom/nrsmagic/sudoku/gui/y/a/g;->b(Lcom/nrsmagic/sudoku/gui/y/a/g;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    int-to-float v1, p1

    sget-object v0, Lcom/nrsmagic/sudoku/gui/y/a/i;->b:Ljava/util/Map;

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/y/a/h;->a:Lcom/nrsmagic/sudoku/gui/y/a/g;

    invoke-static {v2}, Lcom/nrsmagic/sudoku/gui/y/a/g;->b(Lcom/nrsmagic/sudoku/gui/y/a/g;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    div-float v0, v1, v0

    :cond_0
    const/high16 v1, 0x42c8

    mul-float/2addr v0, v1

    float-to-int v7, v0

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/y/a/h;->a:Lcom/nrsmagic/sudoku/gui/y/a/g;

    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/y/a/g;->c(Lcom/nrsmagic/sudoku/gui/y/a/g;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v3, :cond_2

    sget-object v0, Lcom/nrsmagic/sudoku/gui/y/a/g;->a:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/y/a/h;->a:Lcom/nrsmagic/sudoku/gui/y/a/g;

    invoke-static {v2}, Lcom/nrsmagic/sudoku/gui/y/a/g;->c(Lcom/nrsmagic/sudoku/gui/y/a/g;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "../"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    const v0, 0x1080081

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/y/a/h;->a:Lcom/nrsmagic/sudoku/gui/y/a/g;

    invoke-static {v1}, Lcom/nrsmagic/sudoku/gui/y/a/g;->d(Lcom/nrsmagic/sudoku/gui/y/a/g;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/nrsmagic/sudoku/gui/y/c/b;->az:Ljava/lang/String;

    const/16 v3, 0x64

    const/16 v4, 0x10

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    iget-object v6, p0, Lcom/nrsmagic/sudoku/gui/y/a/h;->a:Lcom/nrsmagic/sudoku/gui/y/a/g;

    invoke-static {v6}, Lcom/nrsmagic/sudoku/gui/y/a/g;->c(Lcom/nrsmagic/sudoku/gui/y/a/g;)Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v0 .. v7}, Lcom/nrsmagic/sudoku/gui/y/h;->a(ILandroid/content/Context;Ljava/lang/String;IILandroid/content/Intent;Ljava/lang/String;I)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    sget-object v0, Lcom/nrsmagic/sudoku/gui/y/a/g;->a:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/y/a/h;->a:Lcom/nrsmagic/sudoku/gui/y/a/g;

    invoke-static {v2}, Lcom/nrsmagic/sudoku/gui/y/a/g;->c(Lcom/nrsmagic/sudoku/gui/y/a/g;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
