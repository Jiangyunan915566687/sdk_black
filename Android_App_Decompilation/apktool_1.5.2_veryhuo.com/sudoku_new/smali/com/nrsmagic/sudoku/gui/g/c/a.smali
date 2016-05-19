.class public Lcom/nrsmagic/sudoku/gui/g/c/a;
.super Landroid/os/AsyncTask;


# instance fields
.field private a:[Lcom/nrsmagic/sudoku/gui/g/b/b;

.field private b:Landroid/app/Activity;

.field private c:Lcom/nrsmagic/sudoku/gui/g/d/e;

.field private d:[Ljava/lang/String;

.field private e:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/nrsmagic/sudoku/gui/g/d/e;[Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/g/c/a;->a:[Lcom/nrsmagic/sudoku/gui/g/b/b;

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/g/c/a;->c:Lcom/nrsmagic/sudoku/gui/g/d/e;

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/g/c/a;->d:[Ljava/lang/String;

    new-instance v0, Lcom/nrsmagic/sudoku/gui/g/c/b;

    invoke-direct {v0, p0}, Lcom/nrsmagic/sudoku/gui/g/c/b;-><init>(Lcom/nrsmagic/sudoku/gui/g/c/a;)V

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/g/c/a;->e:Landroid/os/Handler;

    iput-object p1, p0, Lcom/nrsmagic/sudoku/gui/g/c/a;->b:Landroid/app/Activity;

    iput-object p2, p0, Lcom/nrsmagic/sudoku/gui/g/c/a;->c:Lcom/nrsmagic/sudoku/gui/g/d/e;

    iput-object p3, p0, Lcom/nrsmagic/sudoku/gui/g/c/a;->d:[Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/nrsmagic/sudoku/gui/g/c/a;)Lcom/nrsmagic/sudoku/gui/g/d/e;
    .locals 1

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/g/c/a;->c:Lcom/nrsmagic/sudoku/gui/g/d/e;

    return-object v0
.end method


# virtual methods
.method protected a([Lcom/nrsmagic/sudoku/gui/g/b/b;)V
    .locals 8

    const/4 v2, 0x4

    const/16 v7, 0x14

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    :try_start_0
    iput-object p1, p0, Lcom/nrsmagic/sudoku/gui/g/c/a;->a:[Lcom/nrsmagic/sudoku/gui/g/b/b;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/g/c/a;->a:[Lcom/nrsmagic/sudoku/gui/g/b/b;

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/nrsmagic/sudoku/gui/g/c/a;->a:[Lcom/nrsmagic/sudoku/gui/g/b/b;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Lcom/nrsmagic/sudoku/gui/g/c/a;->a:[Lcom/nrsmagic/sudoku/gui/g/b/b;

    aget-object v3, v3, v0

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {v5}, Ljava/util/List;->size()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    rsub-int/lit8 v0, v0, 0x14

    :try_start_1
    iget-object v3, p0, Lcom/nrsmagic/sudoku/gui/g/c/a;->b:Landroid/app/Activity;

    sget-object v4, Lcom/nrsmagic/sudoku/gui/g/c;->a:Ljava/lang/String;

    invoke-static {v4}, Lcom/nrsmagic/sudoku/gui/g/b/g;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/nrsmagic/sudoku/gui/g/c/s;->a(Landroid/content/Context;[Ljava/lang/String;I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    move v4, v0

    :goto_1
    :try_start_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v7, :cond_5

    move v3, v1

    :goto_2
    if-ge v3, v4, :cond_2

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v7, :cond_1

    new-instance v6, Lcom/nrsmagic/sudoku/gui/g/b/b;

    invoke-direct {v6}, Lcom/nrsmagic/sudoku/gui/g/b/b;-><init>()V

    const-string v0, "s"

    iput-object v0, v6, Lcom/nrsmagic/sudoku/gui/g/b/b;->b:Ljava/lang/String;

    sget-object v0, Lcom/nrsmagic/sudoku/gui/g/c/p;->a:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object v0, v6, Lcom/nrsmagic/sudoku/gui/g/b/b;->f:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    :catch_0
    move-exception v0

    move v4, v1

    goto :goto_1

    :cond_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v7, :cond_5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    rsub-int/lit8 v0, v0, 0x14

    if-lt v0, v2, :cond_4

    move v0, v2

    :goto_3
    if-le v0, v2, :cond_6

    :goto_4
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/g/c/a;->d:[Ljava/lang/String;

    iget-object v3, p0, Lcom/nrsmagic/sudoku/gui/g/c/a;->b:Landroid/app/Activity;

    invoke-static {v0, v3, v2, v4}, Lcom/nrsmagic/sudoku/gui/g/c/s;->a([Ljava/lang/String;Landroid/content/Context;II)V

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v7, :cond_5

    :goto_5
    if-ge v1, v2, :cond_5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v7, :cond_3

    new-instance v3, Lcom/nrsmagic/sudoku/gui/g/b/b;

    invoke-direct {v3}, Lcom/nrsmagic/sudoku/gui/g/b/b;-><init>()V

    const-string v0, "s"

    iput-object v0, v3, Lcom/nrsmagic/sudoku/gui/g/b/b;->b:Ljava/lang/String;

    sget-object v0, Lcom/nrsmagic/sudoku/gui/g/c/p;->a:Ljava/util/List;

    add-int v6, v1, v4

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object v0, v3, Lcom/nrsmagic/sudoku/gui/g/b/b;->f:Ljava/lang/String;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    :cond_4
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    rsub-int/lit8 v0, v0, 0x14

    goto :goto_3

    :cond_5
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/g/c/a;->e:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_6
    return-void

    :catch_1
    move-exception v0

    goto :goto_6

    :cond_6
    move v2, v0

    goto :goto_4
.end method

.method protected varargs a([Ljava/lang/String;)[Lcom/nrsmagic/sudoku/gui/g/b/b;
    .locals 2

    sget-object v0, Lcom/nrsmagic/sudoku/gui/g/c/s;->b:[Lcom/nrsmagic/sudoku/gui/g/b/b;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nrsmagic/sudoku/gui/g/c/h;->p:Ljava/lang/String;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/g/c/a;->b:Landroid/app/Activity;

    invoke-static {v1}, Lcom/nrsmagic/sudoku/gui/g/c/s;->v(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/g/c/a;->b:Landroid/app/Activity;

    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/g/c/s;->s(Landroid/content/Context;)[Lcom/nrsmagic/sudoku/gui/g/b/b;

    move-result-object v0

    sput-object v0, Lcom/nrsmagic/sudoku/gui/g/c/s;->b:[Lcom/nrsmagic/sudoku/gui/g/b/b;

    :cond_1
    sget-object v0, Lcom/nrsmagic/sudoku/gui/g/c/s;->b:[Lcom/nrsmagic/sudoku/gui/g/b/b;

    return-object v0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/nrsmagic/sudoku/gui/g/c/a;->a([Ljava/lang/String;)[Lcom/nrsmagic/sudoku/gui/g/b/b;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [Lcom/nrsmagic/sudoku/gui/g/b/b;

    invoke-virtual {p0, p1}, Lcom/nrsmagic/sudoku/gui/g/c/a;->a([Lcom/nrsmagic/sudoku/gui/g/b/b;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    return-void
.end method
