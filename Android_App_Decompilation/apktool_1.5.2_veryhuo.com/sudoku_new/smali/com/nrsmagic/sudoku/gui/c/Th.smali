.class public Lcom/nrsmagic/sudoku/gui/c/Th;
.super Landroid/app/Service;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    invoke-virtual {p0}, Lcom/nrsmagic/sudoku/gui/c/Th;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/c/az;->a(Landroid/content/Context;)V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-static {}, Lcom/nrsmagic/sudoku/gui/c/az;->a()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    invoke-static {p1, p2, p3}, Lcom/nrsmagic/sudoku/gui/c/az;->a(Landroid/content/Intent;II)V

    const/4 v0, 0x2

    return v0
.end method
