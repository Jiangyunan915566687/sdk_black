.class public Lcom/nrsmagic/sudoku/gui/c/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nrsmagic/sudoku/gui/c/ae;


# instance fields
.field public a:Lcom/nrsmagic/sudoku/gui/c/m;

.field b:Landroid/view/View$OnClickListener;

.field private c:I

.field private d:Lcom/nrsmagic/sudoku/gui/c/an;

.field private e:Landroid/app/Activity;

.field private f:Z

.field private g:Lcom/nrsmagic/sudoku/gui/c/q;

.field private h:Lcom/nrsmagic/sudoku/gui/c/ab;

.field private i:Z

.field private j:Landroid/os/Handler;

.field private k:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/nrsmagic/sudoku/gui/c/an;Z)V
    .locals 7

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/nrsmagic/sudoku/gui/c/g;->c:I

    iput-boolean v1, p0, Lcom/nrsmagic/sudoku/gui/c/g;->f:Z

    iput-boolean v1, p0, Lcom/nrsmagic/sudoku/gui/c/g;->i:Z

    new-instance v0, Lcom/nrsmagic/sudoku/gui/c/i;

    invoke-direct {v0, p0}, Lcom/nrsmagic/sudoku/gui/c/i;-><init>(Lcom/nrsmagic/sudoku/gui/c/g;)V

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/c/g;->j:Landroid/os/Handler;

    iput-boolean v1, p0, Lcom/nrsmagic/sudoku/gui/c/g;->k:Z

    new-instance v0, Lcom/nrsmagic/sudoku/gui/c/j;

    invoke-direct {v0, p0}, Lcom/nrsmagic/sudoku/gui/c/j;-><init>(Lcom/nrsmagic/sudoku/gui/c/g;)V

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/c/g;->b:Landroid/view/View$OnClickListener;

    if-nez p2, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_0
    iput-object p1, p0, Lcom/nrsmagic/sudoku/gui/c/g;->e:Landroid/app/Activity;

    iput-object p2, p0, Lcom/nrsmagic/sudoku/gui/c/g;->d:Lcom/nrsmagic/sudoku/gui/c/an;

    new-instance v0, Lcom/nrsmagic/sudoku/gui/c/q;

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/c/g;->j:Landroid/os/Handler;

    invoke-direct {v0, p1, p2, v2}, Lcom/nrsmagic/sudoku/gui/c/q;-><init>(Landroid/content/Context;Lcom/nrsmagic/sudoku/gui/c/an;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/c/g;->g:Lcom/nrsmagic/sudoku/gui/c/q;

    new-instance v0, Lcom/nrsmagic/sudoku/gui/c/b/h;

    iget-object v2, p2, Lcom/nrsmagic/sudoku/gui/c/an;->q:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/nrsmagic/sudoku/gui/c/l;->aB:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/nrsmagic/sudoku/gui/c/l;->s:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget v4, p2, Lcom/nrsmagic/sudoku/gui/c/an;->h:I

    invoke-static {p1, v3, v4}, Lcom/nrsmagic/sudoku/gui/c/bb;->b(Landroid/content/Context;Ljava/lang/String;I)Ljava/io/File;

    move-result-object v3

    invoke-direct {v0, v2, v3, v1}, Lcom/nrsmagic/sudoku/gui/c/b/h;-><init>(Ljava/lang/String;Ljava/io/File;I)V

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/nrsmagic/sudoku/gui/c/b/h;->a(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/c/g;->g:Lcom/nrsmagic/sudoku/gui/c/q;

    invoke-static {p1, v0, v2}, Lcom/nrsmagic/sudoku/gui/c/ak;->a(Landroid/content/Context;Lcom/nrsmagic/sudoku/gui/c/b/h;Lcom/nrsmagic/sudoku/gui/c/b/c;)V

    iget-object v0, p2, Lcom/nrsmagic/sudoku/gui/c/an;->r:Ljava/lang/String;

    const-string v2, ";"

    invoke-static {v0, v2}, Lcom/nrsmagic/sudoku/gui/c/bb;->a(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    array-length v0, v2

    iput v0, p0, Lcom/nrsmagic/sudoku/gui/c/g;->c:I

    :cond_1
    invoke-direct {p0}, Lcom/nrsmagic/sudoku/gui/c/g;->c()V

    move v0, v1

    :goto_0
    iget v3, p0, Lcom/nrsmagic/sudoku/gui/c/g;->c:I

    if-ge v0, v3, :cond_2

    new-instance v3, Lcom/nrsmagic/sudoku/gui/c/b/h;

    aget-object v4, v2, v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/nrsmagic/sudoku/gui/c/l;->s:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget v6, p2, Lcom/nrsmagic/sudoku/gui/c/an;->h:I

    invoke-static {p1, v5, v6}, Lcom/nrsmagic/sudoku/gui/c/bb;->b(Landroid/content/Context;Ljava/lang/String;I)Ljava/io/File;

    move-result-object v5

    invoke-direct {v3, v4, v5, v1}, Lcom/nrsmagic/sudoku/gui/c/b/h;-><init>(Ljava/lang/String;Ljava/io/File;I)V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/nrsmagic/sudoku/gui/c/b/h;->a(Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/nrsmagic/sudoku/gui/c/g;->e:Landroid/app/Activity;

    iget-object v5, p0, Lcom/nrsmagic/sudoku/gui/c/g;->g:Lcom/nrsmagic/sudoku/gui/c/q;

    invoke-static {v4, v3, v5}, Lcom/nrsmagic/sudoku/gui/c/ak;->a(Landroid/content/Context;Lcom/nrsmagic/sudoku/gui/c/b/h;Lcom/nrsmagic/sudoku/gui/c/b/c;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/c/g;->j:Landroid/os/Handler;

    new-instance v1, Lcom/nrsmagic/sudoku/gui/c/h;

    invoke-direct {v1, p0}, Lcom/nrsmagic/sudoku/gui/c/h;-><init>(Lcom/nrsmagic/sudoku/gui/c/g;)V

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic a(Lcom/nrsmagic/sudoku/gui/c/g;)V
    .locals 0

    invoke-direct {p0}, Lcom/nrsmagic/sudoku/gui/c/g;->b()V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 6

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/c/g;->e:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nrsmagic/sudoku/gui/c/x;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    iget-object v5, v0, Lcom/nrsmagic/sudoku/gui/c/x;->f:Ljava/lang/String;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/nrsmagic/sudoku/gui/c/x;->B:Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/nrsmagic/sudoku/gui/c/g;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/nrsmagic/sudoku/gui/c/g;->i:Z

    return p1
.end method

.method static synthetic b(Lcom/nrsmagic/sudoku/gui/c/g;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/c/g;->e:Landroid/app/Activity;

    return-object v0
.end method

.method private b()V
    .locals 2

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/c/g;->h:Lcom/nrsmagic/sudoku/gui/c/ab;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/c/g;->h:Lcom/nrsmagic/sudoku/gui/c/ab;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/c/g;->h:Lcom/nrsmagic/sudoku/gui/c/ab;

    invoke-virtual {v0}, Lcom/nrsmagic/sudoku/gui/c/ab;->a()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Lcom/nrsmagic/sudoku/gui/c/ab;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/c/g;->e:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/nrsmagic/sudoku/gui/c/ab;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/c/g;->h:Lcom/nrsmagic/sudoku/gui/c/ab;

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/c/g;->h:Lcom/nrsmagic/sudoku/gui/c/ab;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/c/g;->d:Lcom/nrsmagic/sudoku/gui/c/an;

    invoke-virtual {v0, v1}, Lcom/nrsmagic/sudoku/gui/c/ab;->a(Lcom/nrsmagic/sudoku/gui/c/an;)V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/c/g;->h:Lcom/nrsmagic/sudoku/gui/c/ab;

    invoke-virtual {v0, p0}, Lcom/nrsmagic/sudoku/gui/c/ab;->a(Lcom/nrsmagic/sudoku/gui/c/ae;)V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/c/g;->a:Lcom/nrsmagic/sudoku/gui/c/m;

    invoke-virtual {v0}, Lcom/nrsmagic/sudoku/gui/c/m;->c()V

    :cond_1
    return-void
.end method

.method static synthetic c(Lcom/nrsmagic/sudoku/gui/c/g;)I
    .locals 1

    iget v0, p0, Lcom/nrsmagic/sudoku/gui/c/g;->c:I

    return v0
.end method

.method private c()V
    .locals 2

    new-instance v0, Lcom/nrsmagic/sudoku/gui/c/m;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/c/g;->e:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/nrsmagic/sudoku/gui/c/m;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/c/g;->a:Lcom/nrsmagic/sudoku/gui/c/m;

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/c/g;->a:Lcom/nrsmagic/sudoku/gui/c/m;

    iget v1, p0, Lcom/nrsmagic/sudoku/gui/c/g;->c:I

    invoke-virtual {v0, v1}, Lcom/nrsmagic/sudoku/gui/c/m;->b(I)V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/c/g;->a:Lcom/nrsmagic/sudoku/gui/c/m;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/c/g;->d:Lcom/nrsmagic/sudoku/gui/c/an;

    iget-object v1, v1, Lcom/nrsmagic/sudoku/gui/c/an;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nrsmagic/sudoku/gui/c/m;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/c/g;->a:Lcom/nrsmagic/sudoku/gui/c/m;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/c/g;->d:Lcom/nrsmagic/sudoku/gui/c/an;

    iget-object v1, v1, Lcom/nrsmagic/sudoku/gui/c/an;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nrsmagic/sudoku/gui/c/m;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/c/g;->a:Lcom/nrsmagic/sudoku/gui/c/m;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/c/g;->d:Lcom/nrsmagic/sudoku/gui/c/an;

    iget-object v1, v1, Lcom/nrsmagic/sudoku/gui/c/an;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nrsmagic/sudoku/gui/c/m;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/c/g;->a:Lcom/nrsmagic/sudoku/gui/c/m;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/c/g;->d:Lcom/nrsmagic/sudoku/gui/c/an;

    iget-object v1, v1, Lcom/nrsmagic/sudoku/gui/c/an;->L:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nrsmagic/sudoku/gui/c/m;->g(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/c/g;->a:Lcom/nrsmagic/sudoku/gui/c/m;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/c/g;->d:Lcom/nrsmagic/sudoku/gui/c/an;

    iget-object v1, v1, Lcom/nrsmagic/sudoku/gui/c/an;->M:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nrsmagic/sudoku/gui/c/m;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/c/g;->d:Lcom/nrsmagic/sudoku/gui/c/an;

    iget-boolean v0, v0, Lcom/nrsmagic/sudoku/gui/c/an;->j:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/c/g;->a:Lcom/nrsmagic/sudoku/gui/c/m;

    invoke-virtual {v0}, Lcom/nrsmagic/sudoku/gui/c/m;->d()V

    :cond_0
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/c/g;->a:Lcom/nrsmagic/sudoku/gui/c/m;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/c/g;->b:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/nrsmagic/sudoku/gui/c/m;->a(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/c/g;->d:Lcom/nrsmagic/sudoku/gui/c/an;

    iget-byte v0, v0, Lcom/nrsmagic/sudoku/gui/c/an;->e:B

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/c/g;->a:Lcom/nrsmagic/sudoku/gui/c/m;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/c/g;->d:Lcom/nrsmagic/sudoku/gui/c/an;

    iget-object v1, v1, Lcom/nrsmagic/sudoku/gui/c/an;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nrsmagic/sudoku/gui/c/m;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/c/g;->a:Lcom/nrsmagic/sudoku/gui/c/m;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/c/g;->d:Lcom/nrsmagic/sudoku/gui/c/an;

    iget-object v1, v1, Lcom/nrsmagic/sudoku/gui/c/an;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nrsmagic/sudoku/gui/c/m;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/c/g;->a:Lcom/nrsmagic/sudoku/gui/c/m;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/c/g;->d:Lcom/nrsmagic/sudoku/gui/c/an;

    iget v1, v1, Lcom/nrsmagic/sudoku/gui/c/an;->o:I

    invoke-virtual {v0, v1}, Lcom/nrsmagic/sudoku/gui/c/m;->a(I)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x3 -> :sswitch_0
        0x5 -> :sswitch_0
        0x7 -> :sswitch_0
        0xc -> :sswitch_0
    .end sparse-switch
.end method

.method static synthetic d(Lcom/nrsmagic/sudoku/gui/c/g;)Lcom/nrsmagic/sudoku/gui/c/an;
    .locals 1

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/c/g;->d:Lcom/nrsmagic/sudoku/gui/c/an;

    return-object v0
.end method

.method static synthetic e(Lcom/nrsmagic/sudoku/gui/c/g;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/nrsmagic/sudoku/gui/c/g;->i:Z

    return v0
.end method

.method static synthetic f(Lcom/nrsmagic/sudoku/gui/c/g;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/nrsmagic/sudoku/gui/c/g;->k:Z

    return v0
.end method


# virtual methods
.method public a(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/c/g;->a:Lcom/nrsmagic/sudoku/gui/c/m;

    invoke-virtual {v0, p1}, Lcom/nrsmagic/sudoku/gui/c/m;->a(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method protected a(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/nrsmagic/sudoku/gui/c/g;->k:Z

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/c/g;->e:Landroid/app/Activity;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/c/g;->a:Lcom/nrsmagic/sudoku/gui/c/m;

    invoke-static {v0, v1}, Lcom/nrsmagic/sudoku/gui/c/a;->a(Landroid/app/Activity;Lcom/nrsmagic/sudoku/gui/c/m;)V

    return-void
.end method

.method public a([Lcom/nrsmagic/sudoku/gui/c/x;)V
    .locals 5

    const/4 v1, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    array-length v3, p1

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, p1, v0

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/c/g;->a:Lcom/nrsmagic/sudoku/gui/c/m;

    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v2}, Lcom/nrsmagic/sudoku/gui/c/g;->a(Ljava/util/List;)V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/c/g;->a:Lcom/nrsmagic/sudoku/gui/c/m;

    invoke-virtual {v0, v2}, Lcom/nrsmagic/sudoku/gui/c/m;->b(Ljava/util/List;)V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/c/g;->a:Lcom/nrsmagic/sudoku/gui/c/m;

    invoke-virtual {v0}, Lcom/nrsmagic/sudoku/gui/c/m;->b()V

    :cond_1
    iput-boolean v1, p0, Lcom/nrsmagic/sudoku/gui/c/g;->f:Z

    return-void
.end method

.method public a()Z
    .locals 1

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/c/g;->a:Lcom/nrsmagic/sudoku/gui/c/m;

    invoke-virtual {v0}, Lcom/nrsmagic/sudoku/gui/c/m;->a()Z

    move-result v0

    return v0
.end method
