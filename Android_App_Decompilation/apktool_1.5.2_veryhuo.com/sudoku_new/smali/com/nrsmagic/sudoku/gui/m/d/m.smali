.class Lcom/nrsmagic/sudoku/gui/m/d/m;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/nrsmagic/sudoku/gui/m/d/l;


# direct methods
.method constructor <init>(Lcom/nrsmagic/sudoku/gui/m/d/l;)V
    .locals 0

    iput-object p1, p0, Lcom/nrsmagic/sudoku/gui/m/d/m;->a:Lcom/nrsmagic/sudoku/gui/m/d/l;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    const/4 v3, 0x1

    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/m/d/m;->a:Lcom/nrsmagic/sudoku/gui/m/d/l;

    iget-object v1, v0, Lcom/nrsmagic/sudoku/gui/m/d/l;->b:Ljava/util/Hashtable;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/m/d/m;->a:Lcom/nrsmagic/sudoku/gui/m/d/l;

    invoke-virtual {v0}, Lcom/nrsmagic/sudoku/gui/m/d/l;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method
