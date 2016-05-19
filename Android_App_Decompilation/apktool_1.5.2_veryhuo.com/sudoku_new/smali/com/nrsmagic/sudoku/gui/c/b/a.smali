.class public Lcom/nrsmagic/sudoku/gui/c/b/a;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;Landroid/os/Message;)V
    .locals 7

    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lcom/nrsmagic/sudoku/gui/c/b/b;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/nrsmagic/sudoku/gui/c/b/b;-><init>(Lcom/nrsmagic/sudoku/gui/c/b/a;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;Landroid/os/Message;)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    return-void
.end method
