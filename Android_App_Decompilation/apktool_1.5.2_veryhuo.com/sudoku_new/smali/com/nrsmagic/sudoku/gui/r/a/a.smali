.class public Lcom/nrsmagic/sudoku/gui/r/a/a;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/nrsmagic/sudoku/gui/r/a/b;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/nrsmagic/sudoku/gui/r/a/b;-><init>(Lcom/nrsmagic/sudoku/gui/r/a/a;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
