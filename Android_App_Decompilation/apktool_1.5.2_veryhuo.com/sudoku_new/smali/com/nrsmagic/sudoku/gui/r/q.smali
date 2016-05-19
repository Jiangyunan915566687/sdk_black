.class public Lcom/nrsmagic/sudoku/gui/r/q;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nrsmagic/sudoku/gui/r/b/p;
.implements Lcom/nrsmagic/sudoku/gui/r/x;


# instance fields
.field public a:Lcom/nrsmagic/sudoku/gui/r/d/a;

.field private b:Landroid/app/Activity;

.field private c:Lcom/nrsmagic/sudoku/gui/r/b/f;

.field private d:I

.field private e:Landroid/os/Handler;

.field private f:Landroid/os/Handler;

.field private g:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/nrsmagic/sudoku/gui/r/b/f;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/nrsmagic/sudoku/gui/r/s;

    invoke-direct {v0, p0}, Lcom/nrsmagic/sudoku/gui/r/s;-><init>(Lcom/nrsmagic/sudoku/gui/r/q;)V

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/q;->e:Landroid/os/Handler;

    new-instance v0, Lcom/nrsmagic/sudoku/gui/r/t;

    invoke-direct {v0, p0}, Lcom/nrsmagic/sudoku/gui/r/t;-><init>(Lcom/nrsmagic/sudoku/gui/r/q;)V

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/q;->f:Landroid/os/Handler;

    new-instance v0, Lcom/nrsmagic/sudoku/gui/r/u;

    invoke-direct {v0, p0}, Lcom/nrsmagic/sudoku/gui/r/u;-><init>(Lcom/nrsmagic/sudoku/gui/r/q;)V

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/q;->g:Landroid/view/View$OnClickListener;

    iput-object p1, p0, Lcom/nrsmagic/sudoku/gui/r/q;->b:Landroid/app/Activity;

    iput-object p2, p0, Lcom/nrsmagic/sudoku/gui/r/q;->c:Lcom/nrsmagic/sudoku/gui/r/b/f;

    new-instance v0, Lcom/nrsmagic/sudoku/gui/r/d/a;

    invoke-direct {v0, p1}, Lcom/nrsmagic/sudoku/gui/r/d/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/q;->a:Lcom/nrsmagic/sudoku/gui/r/d/a;

    invoke-direct {p0, p2}, Lcom/nrsmagic/sudoku/gui/r/q;->b(Lcom/nrsmagic/sudoku/gui/r/b/f;)V

    invoke-direct {p0}, Lcom/nrsmagic/sudoku/gui/r/q;->e()V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/q;->f:Landroid/os/Handler;

    new-instance v1, Lcom/nrsmagic/sudoku/gui/r/r;

    invoke-direct {v1, p0}, Lcom/nrsmagic/sudoku/gui/r/r;-><init>(Lcom/nrsmagic/sudoku/gui/r/q;)V

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/q;->e:Landroid/os/Handler;

    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/r/i;->a(Landroid/os/Handler;)V

    invoke-static {p0}, Lcom/nrsmagic/sudoku/gui/r/w;->a(Lcom/nrsmagic/sudoku/gui/r/x;)V

    invoke-direct {p0}, Lcom/nrsmagic/sudoku/gui/r/q;->c()V

    return-void
.end method

.method static synthetic a(Lcom/nrsmagic/sudoku/gui/r/q;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1

    invoke-direct {p0, p1}, Lcom/nrsmagic/sudoku/gui/r/q;->a(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/nrsmagic/sudoku/gui/r/e/b;->bb:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, p1, v0}, Lcom/nrsmagic/sudoku/gui/r/q;->a(Ljava/lang/String;Landroid/content/Intent;)V

    const-string v1, "android.intent.extra.SUBJECT"

    sget-object v2, Lcom/nrsmagic/sudoku/gui/r/e/b;->Y:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lcom/nrsmagic/sudoku/gui/r/e/b;->ar:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/nrsmagic/sudoku/gui/r/q;)V
    .locals 0

    invoke-direct {p0}, Lcom/nrsmagic/sudoku/gui/r/q;->d()V

    return-void
.end method

.method static synthetic b(Lcom/nrsmagic/sudoku/gui/r/q;)Lcom/nrsmagic/sudoku/gui/r/b/f;
    .locals 1

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/q;->c:Lcom/nrsmagic/sudoku/gui/r/b/f;

    return-object v0
.end method

.method private b(Lcom/nrsmagic/sudoku/gui/r/b/f;)V
    .locals 9

    const/4 v1, 0x0

    new-instance v2, Lcom/nrsmagic/sudoku/gui/r/i;

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/q;->b:Landroid/app/Activity;

    iget-object v3, p0, Lcom/nrsmagic/sudoku/gui/r/q;->f:Landroid/os/Handler;

    invoke-direct {v2, v0, p1, v3}, Lcom/nrsmagic/sudoku/gui/r/i;-><init>(Landroid/content/Context;Lcom/nrsmagic/sudoku/gui/r/b/f;Landroid/os/Handler;)V

    new-instance v0, Lcom/nrsmagic/sudoku/gui/r/a/h;

    iget-object v3, p1, Lcom/nrsmagic/sudoku/gui/r/b/f;->k:Ljava/lang/String;

    iget-object v4, p0, Lcom/nrsmagic/sudoku/gui/r/q;->b:Landroid/app/Activity;

    sget-object v5, Lcom/nrsmagic/sudoku/gui/r/e/b;->E:Ljava/lang/String;

    iget v6, p1, Lcom/nrsmagic/sudoku/gui/r/b/f;->e:I

    invoke-static {v4, v5, v6}, Lcom/nrsmagic/sudoku/gui/r/e/h;->a(Landroid/content/Context;Ljava/lang/String;I)Ljava/io/File;

    move-result-object v4

    invoke-direct {v0, v3, v4, v1}, Lcom/nrsmagic/sudoku/gui/r/a/h;-><init>(Ljava/lang/String;Ljava/io/File;I)V

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/nrsmagic/sudoku/gui/r/a/h;->a(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/nrsmagic/sudoku/gui/r/q;->b:Landroid/app/Activity;

    invoke-static {v3, v0, v2}, Lcom/nrsmagic/sudoku/gui/r/p;->a(Landroid/content/Context;Lcom/nrsmagic/sudoku/gui/r/a/h;Lcom/nrsmagic/sudoku/gui/r/a/c;)V

    iget-object v0, p1, Lcom/nrsmagic/sudoku/gui/r/b/f;->l:Ljava/lang/String;

    const-string v3, ";"

    invoke-static {v0, v3}, Lcom/nrsmagic/sudoku/gui/r/e/h;->a(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    array-length v0, v3

    iput v0, p0, Lcom/nrsmagic/sudoku/gui/r/q;->d:I

    :cond_0
    move v0, v1

    :goto_0
    iget v4, p0, Lcom/nrsmagic/sudoku/gui/r/q;->d:I

    if-ge v0, v4, :cond_1

    new-instance v4, Lcom/nrsmagic/sudoku/gui/r/a/h;

    aget-object v5, v3, v0

    iget-object v6, p0, Lcom/nrsmagic/sudoku/gui/r/q;->b:Landroid/app/Activity;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/nrsmagic/sudoku/gui/r/e/b;->I:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget v8, p1, Lcom/nrsmagic/sudoku/gui/r/b/f;->e:I

    invoke-static {v6, v7, v8}, Lcom/nrsmagic/sudoku/gui/r/e/h;->a(Landroid/content/Context;Ljava/lang/String;I)Ljava/io/File;

    move-result-object v6

    invoke-direct {v4, v5, v6, v1}, Lcom/nrsmagic/sudoku/gui/r/a/h;-><init>(Ljava/lang/String;Ljava/io/File;I)V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/nrsmagic/sudoku/gui/r/a/h;->a(Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/nrsmagic/sudoku/gui/r/q;->b:Landroid/app/Activity;

    invoke-static {v5, v4, v2}, Lcom/nrsmagic/sudoku/gui/r/p;->a(Landroid/content/Context;Lcom/nrsmagic/sudoku/gui/r/a/h;Lcom/nrsmagic/sudoku/gui/r/a/c;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic c(Lcom/nrsmagic/sudoku/gui/r/q;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/q;->b:Landroid/app/Activity;

    return-object v0
.end method

.method private c()V
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/q;->b:Landroid/app/Activity;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/r/q;->c:Lcom/nrsmagic/sudoku/gui/r/b/f;

    iget-object v1, v1, Lcom/nrsmagic/sudoku/gui/r/b/f;->f:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/nrsmagic/sudoku/gui/r/e/h;->i(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/q;->c:Lcom/nrsmagic/sudoku/gui/r/b/f;

    iput-boolean v4, v0, Lcom/nrsmagic/sudoku/gui/r/b/f;->u:Z

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/q;->a:Lcom/nrsmagic/sudoku/gui/r/d/a;

    sget-object v1, Lcom/nrsmagic/sudoku/gui/r/e/b;->ag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nrsmagic/sudoku/gui/r/d/a;->h(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/q;->b:Landroid/app/Activity;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/r/q;->c:Lcom/nrsmagic/sudoku/gui/r/b/f;

    invoke-static {v1}, Lcom/nrsmagic/sudoku/gui/r/e/h;->a(Lcom/nrsmagic/sudoku/gui/r/b/f;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/r/q;->c:Lcom/nrsmagic/sudoku/gui/r/b/f;

    iget v2, v2, Lcom/nrsmagic/sudoku/gui/r/b/f;->e:I

    invoke-static {v0, v1, v2}, Lcom/nrsmagic/sudoku/gui/r/e/h;->a(Landroid/content/Context;Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/q;->c:Lcom/nrsmagic/sudoku/gui/r/b/f;

    iput-boolean v4, v0, Lcom/nrsmagic/sudoku/gui/r/b/f;->v:Z

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/q;->a:Lcom/nrsmagic/sudoku/gui/r/d/a;

    sget-object v1, Lcom/nrsmagic/sudoku/gui/r/e/b;->ah:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nrsmagic/sudoku/gui/r/d/a;->h(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/nrsmagic/sudoku/gui/r/a/d;->a()Lcom/nrsmagic/sudoku/gui/r/a/d;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/nrsmagic/sudoku/gui/r/a/d;->a()Lcom/nrsmagic/sudoku/gui/r/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nrsmagic/sudoku/gui/r/a/d;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nrsmagic/sudoku/gui/r/a/h;

    invoke-virtual {v0}, Lcom/nrsmagic/sudoku/gui/r/a/h;->c()Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lcom/nrsmagic/sudoku/gui/r/a/h;->c()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/nrsmagic/sudoku/gui/r/q;->c:Lcom/nrsmagic/sudoku/gui/r/b/f;

    invoke-static {v3}, Lcom/nrsmagic/sudoku/gui/r/e/h;->a(Lcom/nrsmagic/sudoku/gui/r/b/f;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lcom/nrsmagic/sudoku/gui/r/a/h;->h()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/q;->c:Lcom/nrsmagic/sudoku/gui/r/b/f;

    iput-boolean v4, v0, Lcom/nrsmagic/sudoku/gui/r/b/f;->w:Z

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/q;->a:Lcom/nrsmagic/sudoku/gui/r/d/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/nrsmagic/sudoku/gui/r/e/b;->ai:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nrsmagic/sudoku/gui/r/d/a;->h(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Lcom/nrsmagic/sudoku/gui/r/a/h;->h()I

    move-result v0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/q;->a:Lcom/nrsmagic/sudoku/gui/r/d/a;

    sget-object v1, Lcom/nrsmagic/sudoku/gui/r/e/b;->aj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nrsmagic/sudoku/gui/r/d/a;->h(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private d()V
    .locals 2

    const/4 v0, 0x0

    if-eqz v0, :cond_0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/nrsmagic/sudoku/gui/r/b/m;->a()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Lcom/nrsmagic/sudoku/gui/r/b/m;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/r/q;->b:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/nrsmagic/sudoku/gui/r/b/m;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/r/q;->c:Lcom/nrsmagic/sudoku/gui/r/b/f;

    invoke-virtual {v0, v1}, Lcom/nrsmagic/sudoku/gui/r/b/m;->a(Lcom/nrsmagic/sudoku/gui/r/b/f;)V

    invoke-virtual {v0, p0}, Lcom/nrsmagic/sudoku/gui/r/b/m;->a(Lcom/nrsmagic/sudoku/gui/r/b/p;)V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/q;->a:Lcom/nrsmagic/sudoku/gui/r/d/a;

    invoke-virtual {v0}, Lcom/nrsmagic/sudoku/gui/r/d/a;->c()V

    :cond_1
    return-void
.end method

.method private e()V
    .locals 2

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/q;->a:Lcom/nrsmagic/sudoku/gui/r/d/a;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/r/q;->c:Lcom/nrsmagic/sudoku/gui/r/b/f;

    iget-object v1, v1, Lcom/nrsmagic/sudoku/gui/r/b/f;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nrsmagic/sudoku/gui/r/d/a;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/q;->a:Lcom/nrsmagic/sudoku/gui/r/d/a;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/r/q;->c:Lcom/nrsmagic/sudoku/gui/r/b/f;

    iget-object v1, v1, Lcom/nrsmagic/sudoku/gui/r/b/f;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nrsmagic/sudoku/gui/r/d/a;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/q;->a:Lcom/nrsmagic/sudoku/gui/r/d/a;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/r/q;->c:Lcom/nrsmagic/sudoku/gui/r/b/f;

    iget-object v1, v1, Lcom/nrsmagic/sudoku/gui/r/b/f;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nrsmagic/sudoku/gui/r/d/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/q;->a:Lcom/nrsmagic/sudoku/gui/r/d/a;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/r/q;->c:Lcom/nrsmagic/sudoku/gui/r/b/f;

    iget-object v1, v1, Lcom/nrsmagic/sudoku/gui/r/b/f;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nrsmagic/sudoku/gui/r/d/a;->g(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/q;->a:Lcom/nrsmagic/sudoku/gui/r/d/a;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/r/q;->c:Lcom/nrsmagic/sudoku/gui/r/b/f;

    iget-object v1, v1, Lcom/nrsmagic/sudoku/gui/r/b/f;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nrsmagic/sudoku/gui/r/d/a;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/q;->a:Lcom/nrsmagic/sudoku/gui/r/d/a;

    iget v1, p0, Lcom/nrsmagic/sudoku/gui/r/q;->d:I

    invoke-virtual {v0, v1}, Lcom/nrsmagic/sudoku/gui/r/d/a;->b(I)V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/q;->a:Lcom/nrsmagic/sudoku/gui/r/d/a;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/r/q;->c:Lcom/nrsmagic/sudoku/gui/r/b/f;

    iget-object v1, v1, Lcom/nrsmagic/sudoku/gui/r/b/f;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nrsmagic/sudoku/gui/r/d/a;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/q;->a:Lcom/nrsmagic/sudoku/gui/r/d/a;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/r/q;->c:Lcom/nrsmagic/sudoku/gui/r/b/f;

    iget-object v1, v1, Lcom/nrsmagic/sudoku/gui/r/b/f;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nrsmagic/sudoku/gui/r/d/a;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/q;->a:Lcom/nrsmagic/sudoku/gui/r/d/a;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/r/q;->c:Lcom/nrsmagic/sudoku/gui/r/b/f;

    iget v1, v1, Lcom/nrsmagic/sudoku/gui/r/b/f;->i:I

    invoke-virtual {v0, v1}, Lcom/nrsmagic/sudoku/gui/r/d/a;->a(I)V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/q;->a:Lcom/nrsmagic/sudoku/gui/r/d/a;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/r/q;->g:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/nrsmagic/sudoku/gui/r/d/a;->a(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/q;->b:Landroid/app/Activity;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/r/q;->a:Lcom/nrsmagic/sudoku/gui/r/d/a;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/q;->b:Landroid/app/Activity;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/r/q;->a:Lcom/nrsmagic/sudoku/gui/r/d/a;

    invoke-static {v0, v1}, Lcom/nrsmagic/sudoku/gui/r/a;->a(Landroid/app/Activity;Landroid/view/View;)V

    return-void
.end method

.method public a(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/q;->a:Lcom/nrsmagic/sudoku/gui/r/d/a;

    invoke-virtual {v0, p1}, Lcom/nrsmagic/sudoku/gui/r/d/a;->a(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public a(Lcom/nrsmagic/sudoku/gui/r/b/f;)V
    .locals 2

    iget v0, p1, Lcom/nrsmagic/sudoku/gui/r/b/f;->e:I

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/r/q;->c:Lcom/nrsmagic/sudoku/gui/r/b/f;

    iget v1, v1, Lcom/nrsmagic/sudoku/gui/r/b/f;->e:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/q;->f:Landroid/os/Handler;

    new-instance v1, Lcom/nrsmagic/sudoku/gui/r/v;

    invoke-direct {v1, p0}, Lcom/nrsmagic/sudoku/gui/r/v;-><init>(Lcom/nrsmagic/sudoku/gui/r/q;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 1

    const-string v0, "android.intent.extra.TEXT"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-void
.end method

.method public a([Lcom/nrsmagic/sudoku/gui/r/b/k;)V
    .locals 4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    array-length v2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, p1, v0

    invoke-static {v3}, Lcom/nrsmagic/sudoku/gui/r/e/h;->a(Lcom/nrsmagic/sudoku/gui/r/b/k;)Lcom/nrsmagic/sudoku/gui/r/b/f;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/q;->a:Lcom/nrsmagic/sudoku/gui/r/d/a;

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/q;->a:Lcom/nrsmagic/sudoku/gui/r/d/a;

    invoke-virtual {v0, v1}, Lcom/nrsmagic/sudoku/gui/r/d/a;->b(Ljava/util/List;)V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/q;->a:Lcom/nrsmagic/sudoku/gui/r/d/a;

    invoke-virtual {v0}, Lcom/nrsmagic/sudoku/gui/r/d/a;->b()V

    :cond_1
    return-void
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/q;->a:Lcom/nrsmagic/sudoku/gui/r/d/a;

    invoke-virtual {v0}, Lcom/nrsmagic/sudoku/gui/r/d/a;->a()Z

    move-result v0

    return v0
.end method
