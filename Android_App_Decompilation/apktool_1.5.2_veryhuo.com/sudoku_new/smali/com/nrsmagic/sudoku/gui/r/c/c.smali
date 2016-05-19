.class Lcom/nrsmagic/sudoku/gui/r/c/c;
.super Ljava/util/concurrent/ConcurrentLinkedQueue;


# instance fields
.field final synthetic a:Lcom/nrsmagic/sudoku/gui/r/c/b;

.field private b:Ljava/lang/Thread;

.field private c:I


# direct methods
.method public constructor <init>(Lcom/nrsmagic/sudoku/gui/r/c/b;)V
    .locals 4

    iput-object p1, p0, Lcom/nrsmagic/sudoku/gui/r/c/c;->a:Lcom/nrsmagic/sudoku/gui/r/c/b;

    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide/high16 v2, 0x4100

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/nrsmagic/sudoku/gui/r/c/c;->c:I

    return-void
.end method

.method static synthetic a(Lcom/nrsmagic/sudoku/gui/r/c/c;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0

    iput-object p1, p0, Lcom/nrsmagic/sudoku/gui/r/c/c;->b:Ljava/lang/Thread;

    return-object p1
.end method


# virtual methods
.method public a()V
    .locals 3

    invoke-virtual {p0}, Lcom/nrsmagic/sudoku/gui/r/c/c;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nrsmagic/sudoku/gui/r/c/e;

    invoke-virtual {v0}, Lcom/nrsmagic/sudoku/gui/r/c/e;->h()I

    move-result v0

    const/4 v2, -0x3

    if-ne v0, v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public a(Lcom/nrsmagic/sudoku/gui/r/c/e;)Z
    .locals 2

    invoke-super {p0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/r/c/c;->b:Ljava/lang/Thread;

    if-nez v1, :cond_0

    new-instance v1, Lcom/nrsmagic/sudoku/gui/r/c/d;

    invoke-direct {v1, p0}, Lcom/nrsmagic/sudoku/gui/r/c/d;-><init>(Lcom/nrsmagic/sudoku/gui/r/c/c;)V

    iput-object v1, p0, Lcom/nrsmagic/sudoku/gui/r/c/c;->b:Ljava/lang/Thread;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/r/c/c;->b:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :cond_0
    return v0
.end method

.method public synthetic add(Ljava/lang/Object;)Z
    .locals 1

    check-cast p1, Lcom/nrsmagic/sudoku/gui/r/c/e;

    invoke-virtual {p0, p1}, Lcom/nrsmagic/sudoku/gui/r/c/c;->a(Lcom/nrsmagic/sudoku/gui/r/c/e;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/nrsmagic/sudoku/gui/r/e/b;->bv:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nrsmagic/sudoku/gui/r/c/c;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
