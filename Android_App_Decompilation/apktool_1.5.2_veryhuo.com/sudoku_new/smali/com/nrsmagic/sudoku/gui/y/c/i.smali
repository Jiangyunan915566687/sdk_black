.class final Lcom/nrsmagic/sudoku/gui/y/c/i;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/nrsmagic/sudoku/gui/y/c/i;->a:Landroid/content/Context;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/y/c/i;->a:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/y/c/i;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/nrsmagic/sudoku/gui/y/c/i;->a:Landroid/content/Context;

    const-class v4, Lcom/nrsmagic/sudoku/gui/y/Ep;

    invoke-static {v3, v4}, Lcom/nrsmagic/sudoku/gui/y/c/h;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/nrsmagic/sudoku/gui/y/d/c;->a:Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
