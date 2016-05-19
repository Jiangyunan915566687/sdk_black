.class public Lcom/nrsmagic/sudoku/gui/c/c/b;
.super Ljava/lang/Object;


# instance fields
.field private a:Z

.field private b:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nrsmagic/sudoku/gui/c/c/b;->a:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/c/c/b;->b:Ljava/util/List;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nrsmagic/sudoku/gui/c/c/b;->a(I)V

    return-void
.end method

.method private a()Lcom/nrsmagic/sudoku/gui/c/c/c;
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/c/c/b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nrsmagic/sudoku/gui/c/c/c;

    invoke-virtual {v0}, Lcom/nrsmagic/sudoku/gui/c/c/c;->a()V

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/nrsmagic/sudoku/gui/c/c/c;->size()I

    move-result v3

    invoke-virtual {v1}, Lcom/nrsmagic/sudoku/gui/c/c/c;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    :cond_0
    :goto_1
    move-object v1, v0

    goto :goto_0

    :cond_1
    return-object v1

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method static synthetic a(Lcom/nrsmagic/sudoku/gui/c/c/b;Lcom/nrsmagic/sudoku/gui/c/c/e;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/nrsmagic/sudoku/gui/c/c/b;->b(Lcom/nrsmagic/sudoku/gui/c/c/e;)Z

    move-result v0

    return v0
.end method

.method private b(Lcom/nrsmagic/sudoku/gui/c/c/e;)Z
    .locals 1

    invoke-virtual {p1}, Lcom/nrsmagic/sudoku/gui/c/c/e;->a()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a(I)V
    .locals 4

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/c/c/b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, p1, :cond_0

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/c/c/b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int v1, p1, v0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    new-instance v2, Lcom/nrsmagic/sudoku/gui/c/c/c;

    invoke-direct {v2, p0}, Lcom/nrsmagic/sudoku/gui/c/c/c;-><init>(Lcom/nrsmagic/sudoku/gui/c/c/b;)V

    iget-object v3, p0, Lcom/nrsmagic/sudoku/gui/c/c/b;->b:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Lcom/nrsmagic/sudoku/gui/c/c/e;)V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/nrsmagic/sudoku/gui/c/c/e;->a(I)V

    iget-boolean v0, p0, Lcom/nrsmagic/sudoku/gui/c/c/b;->a:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/nrsmagic/sudoku/gui/c/c/b;->b(Lcom/nrsmagic/sudoku/gui/c/c/e;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/nrsmagic/sudoku/gui/c/c/b;->a()Lcom/nrsmagic/sudoku/gui/c/c/c;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/nrsmagic/sudoku/gui/c/c/c;->a(Lcom/nrsmagic/sudoku/gui/c/c/e;)Z

    goto :goto_0
.end method
