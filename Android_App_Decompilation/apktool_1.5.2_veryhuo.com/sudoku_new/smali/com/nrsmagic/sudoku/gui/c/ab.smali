.class public Lcom/nrsmagic/sudoku/gui/c/ab;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/os/Handler;

.field private c:Z

.field private d:Lcom/nrsmagic/sudoku/gui/c/ae;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/c/ab;->b:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nrsmagic/sudoku/gui/c/ab;->c:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/c/ab;->d:Lcom/nrsmagic/sudoku/gui/c/ae;

    iput-object p1, p0, Lcom/nrsmagic/sudoku/gui/c/ab;->a:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/nrsmagic/sudoku/gui/c/ab;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/c/ab;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/nrsmagic/sudoku/gui/c/ab;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/nrsmagic/sudoku/gui/c/ab;->c:Z

    return p1
.end method

.method static synthetic b(Lcom/nrsmagic/sudoku/gui/c/ab;)Lcom/nrsmagic/sudoku/gui/c/ae;
    .locals 1

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/c/ab;->d:Lcom/nrsmagic/sudoku/gui/c/ae;

    return-object v0
.end method

.method static synthetic c(Lcom/nrsmagic/sudoku/gui/c/ab;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/c/ab;->b:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/nrsmagic/sudoku/gui/c/ae;)V
    .locals 0

    iput-object p1, p0, Lcom/nrsmagic/sudoku/gui/c/ab;->d:Lcom/nrsmagic/sudoku/gui/c/ae;

    return-void
.end method

.method public a(Lcom/nrsmagic/sudoku/gui/c/an;)V
    .locals 1

    new-instance v0, Lcom/nrsmagic/sudoku/gui/c/ac;

    invoke-direct {v0, p0, p1}, Lcom/nrsmagic/sudoku/gui/c/ac;-><init>(Lcom/nrsmagic/sudoku/gui/c/ab;Lcom/nrsmagic/sudoku/gui/c/an;)V

    invoke-virtual {v0}, Lcom/nrsmagic/sudoku/gui/c/ac;->start()V

    return-void
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nrsmagic/sudoku/gui/c/ab;->c:Z

    return v0
.end method
