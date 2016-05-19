.class public Lcom/nrsmagic/sudoku/gui/y/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8

    invoke-static {}, Lcom/nrsmagic/sudoku/gui/y/a;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/nrsmagic/sudoku/gui/y/b/b;

    iget-object v0, v5, Lcom/nrsmagic/sudoku/gui/y/b/b;->b:Ljava/lang/String;

    iget v1, v5, Lcom/nrsmagic/sudoku/gui/y/b/b;->e:I

    iget v2, v5, Lcom/nrsmagic/sudoku/gui/y/b/b;->c:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    invoke-static {}, Lcom/nrsmagic/sudoku/gui/y/a;->a()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/nrsmagic/sudoku/gui/y/h;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lcom/nrsmagic/sudoku/gui/y/o;->a()Lcom/nrsmagic/sudoku/gui/y/o;

    move-result-object v0

    invoke-static {}, Lcom/nrsmagic/sudoku/gui/y/a;->a()Landroid/app/Activity;

    move-result-object v1

    iget v2, v5, Lcom/nrsmagic/sudoku/gui/y/b/b;->e:I

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/nrsmagic/sudoku/gui/y/o;->a(Landroid/content/Context;II)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/nrsmagic/sudoku/gui/y/a;->a()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/nrsmagic/sudoku/gui/y/c/e;->a(Landroid/content/Context;)Lcom/nrsmagic/sudoku/gui/y/c/e;

    move-result-object v2

    invoke-static {v2}, Lcom/nrsmagic/sudoku/gui/y/a;->a(Lcom/nrsmagic/sudoku/gui/y/c/e;)Lcom/nrsmagic/sudoku/gui/y/c/e;

    sget-object v2, Lcom/nrsmagic/sudoku/gui/y/c/e;->c:Ljava/util/List;

    iget-object v3, v5, Lcom/nrsmagic/sudoku/gui/y/b/b;->f:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v0, v5, Lcom/nrsmagic/sudoku/gui/y/b/b;->f:Ljava/lang/String;

    invoke-static {}, Lcom/nrsmagic/sudoku/gui/y/a;->a()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nrsmagic/sudoku/gui/y/c/h;->a(Ljava/lang/String;Landroid/content/Context;)Landroid/content/Intent;

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/nrsmagic/sudoku/gui/y/a;->c()Lcom/nrsmagic/sudoku/gui/y/c/e;

    move-result-object v2

    invoke-static {}, Lcom/nrsmagic/sudoku/gui/y/a;->c()Lcom/nrsmagic/sudoku/gui/y/c/e;

    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/y/c/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/nrsmagic/sudoku/gui/y/c/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/nrsmagic/sudoku/gui/y/c/e;->a(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/nrsmagic/sudoku/gui/y/a;->a()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Lcom/nrsmagic/sudoku/gui/y/c/h;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/y/c/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/nrsmagic/sudoku/gui/y/c/h;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {}, Lcom/nrsmagic/sudoku/gui/y/a;->a()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, v5, Lcom/nrsmagic/sudoku/gui/y/b/b;->f:Ljava/lang/String;

    iget v4, v5, Lcom/nrsmagic/sudoku/gui/y/b/b;->e:I

    iget-object v5, v5, Lcom/nrsmagic/sudoku/gui/y/b/b;->d:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/nrsmagic/sudoku/gui/y/a/b;->a(Ljava/lang/String;Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    :cond_3
    :try_start_0
    iget-object v0, v5, Lcom/nrsmagic/sudoku/gui/y/b/b;->b:Ljava/lang/String;

    invoke-static {}, Lcom/nrsmagic/sudoku/gui/y/a;->a()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v0, v2, v1, v5}, Lcom/nrsmagic/sudoku/gui/y/c/h;->a(Ljava/lang/String;Landroid/content/Context;ILcom/nrsmagic/sudoku/gui/y/b/b;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/nrsmagic/sudoku/gui/y/a;->a()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/nrsmagic/sudoku/gui/y/c/h;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    sget-object v1, Lcom/nrsmagic/sudoku/gui/y/a/c;->b:Ljava/util/Map;

    iget-object v2, v5, Lcom/nrsmagic/sudoku/gui/y/b/b;->b:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/nrsmagic/sudoku/gui/y/a/c;->b:Ljava/util/Map;

    iget-object v2, v5, Lcom/nrsmagic/sudoku/gui/y/b/b;->b:Ljava/lang/String;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v6, v5, Lcom/nrsmagic/sudoku/gui/y/b/b;->b:Ljava/lang/String;

    aput-object v6, v3, v4

    const/4 v4, 0x1

    iget-object v6, v5, Lcom/nrsmagic/sudoku/gui/y/b/b;->f:Ljava/lang/String;

    aput-object v6, v3, v4

    const/4 v4, 0x2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v5, Lcom/nrsmagic/sudoku/gui/y/b/b;->e:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v4

    const/4 v4, 0x3

    iget-object v6, v5, Lcom/nrsmagic/sudoku/gui/y/b/b;->d:Ljava/lang/String;

    aput-object v6, v3, v4

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/nrsmagic/sudoku/gui/y/a/i;->a:Ljava/util/Map;

    iget-object v2, v5, Lcom/nrsmagic/sudoku/gui/y/b/b;->b:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_5

    sget-object v2, Lcom/nrsmagic/sudoku/gui/y/c/b;->az:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    sget-object v1, Lcom/nrsmagic/sudoku/gui/y/a/c;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_6

    iget-object v0, v5, Lcom/nrsmagic/sudoku/gui/y/b/b;->b:Ljava/lang/String;

    invoke-static {}, Lcom/nrsmagic/sudoku/gui/y/a;->a()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, v5, Lcom/nrsmagic/sudoku/gui/y/b/b;->f:Ljava/lang/String;

    iget v4, v5, Lcom/nrsmagic/sudoku/gui/y/b/b;->e:I

    iget-object v5, v5, Lcom/nrsmagic/sudoku/gui/y/b/b;->d:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/nrsmagic/sudoku/gui/y/a/b;->a(Ljava/lang/String;Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    invoke-static {}, Lcom/nrsmagic/sudoku/gui/y/a;->d()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_7

    invoke-static {}, Lcom/nrsmagic/sudoku/gui/y/a;->d()Ljava/util/Map;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    iget-object v1, v5, Lcom/nrsmagic/sudoku/gui/y/b/b;->f:Ljava/lang/String;

    invoke-static {}, Lcom/nrsmagic/sudoku/gui/y/a;->d()Ljava/util/Map;

    move-result-object v2

    iget v3, v5, Lcom/nrsmagic/sudoku/gui/y/b/b;->e:I

    iget-object v4, v5, Lcom/nrsmagic/sudoku/gui/y/b/b;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/nrsmagic/sudoku/gui/y/a/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    invoke-static {}, Lcom/nrsmagic/sudoku/gui/y/a;->a()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/y/c/h;->g(Landroid/content/Context;)V

    goto/16 :goto_0
.end method
