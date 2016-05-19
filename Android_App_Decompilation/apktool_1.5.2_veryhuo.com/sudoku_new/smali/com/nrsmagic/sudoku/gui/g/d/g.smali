.class Lcom/nrsmagic/sudoku/gui/g/d/g;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/nrsmagic/sudoku/gui/g/d/e;


# direct methods
.method constructor <init>(Lcom/nrsmagic/sudoku/gui/g/d/e;)V
    .locals 0

    iput-object p1, p0, Lcom/nrsmagic/sudoku/gui/g/d/g;->a:Lcom/nrsmagic/sudoku/gui/g/d/e;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    const/4 v2, 0x1

    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/g/d/g;->a:Lcom/nrsmagic/sudoku/gui/g/d/e;

    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/g/d/e;->a(Lcom/nrsmagic/sudoku/gui/g/d/e;)Lcom/nrsmagic/sudoku/gui/g/d/h;

    move-result-object v0

    sget-object v1, Lcom/nrsmagic/sudoku/gui/g/d/e;->c:Lcom/nrsmagic/sudoku/gui/g/d/a;

    invoke-virtual {v0, v1}, Lcom/nrsmagic/sudoku/gui/g/d/h;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/nrsmagic/sudoku/gui/g/d/e;->c:Lcom/nrsmagic/sudoku/gui/g/d/a;

    iget-object v1, v0, Lcom/nrsmagic/sudoku/gui/g/d/a;->c:Ljava/util/Hashtable;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method
