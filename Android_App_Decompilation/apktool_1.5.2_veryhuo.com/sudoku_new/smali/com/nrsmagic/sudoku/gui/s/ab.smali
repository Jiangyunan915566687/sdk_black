.class public Lcom/nrsmagic/sudoku/gui/s/ab;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/os/Handler;

.field private c:Z

.field private d:Lcom/nrsmagic/sudoku/gui/s/ae;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/s/ab;->b:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nrsmagic/sudoku/gui/s/ab;->c:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/s/ab;->d:Lcom/nrsmagic/sudoku/gui/s/ae;

    iput-object p1, p0, Lcom/nrsmagic/sudoku/gui/s/ab;->a:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/nrsmagic/sudoku/gui/s/ab;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/s/ab;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/nrsmagic/sudoku/gui/s/ab;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/nrsmagic/sudoku/gui/s/ab;->c:Z

    return p1
.end method

.method static synthetic b(Lcom/nrsmagic/sudoku/gui/s/ab;)Lcom/nrsmagic/sudoku/gui/s/ae;
    .locals 1

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/s/ab;->d:Lcom/nrsmagic/sudoku/gui/s/ae;

    return-object v0
.end method

.method static synthetic c(Lcom/nrsmagic/sudoku/gui/s/ab;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/s/ab;->b:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/nrsmagic/sudoku/gui/s/ae;)V
    .locals 0

    iput-object p1, p0, Lcom/nrsmagic/sudoku/gui/s/ab;->d:Lcom/nrsmagic/sudoku/gui/s/ae;

    return-void
.end method

.method public a(Lcom/nrsmagic/sudoku/gui/s/an;)V
    .locals 1

    new-instance v0, Lcom/nrsmagic/sudoku/gui/s/ac;

    invoke-direct {v0, p0, p1}, Lcom/nrsmagic/sudoku/gui/s/ac;-><init>(Lcom/nrsmagic/sudoku/gui/s/ab;Lcom/nrsmagic/sudoku/gui/s/an;)V

    invoke-virtual {v0}, Lcom/nrsmagic/sudoku/gui/s/ac;->start()V

    return-void
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nrsmagic/sudoku/gui/s/ab;->c:Z

    return v0
.end method
