.class public Lcom/nrsmagic/sudoku/gui/l/ae;
.super Ljava/util/TimerTask;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()Z
    .locals 1

    invoke-super {p0}, Ljava/util/TimerTask;->cancel()Z

    move-result v0

    return v0
.end method

.method public run()V
    .locals 1

    new-instance v0, Lcom/nrsmagic/sudoku/gui/l/af;

    invoke-direct {v0, p0}, Lcom/nrsmagic/sudoku/gui/l/af;-><init>(Lcom/nrsmagic/sudoku/gui/l/ae;)V

    invoke-virtual {v0}, Lcom/nrsmagic/sudoku/gui/l/af;->start()V

    return-void
.end method
