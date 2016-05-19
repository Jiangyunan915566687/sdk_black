.class final Lcom/nrsmagic/sudoku/gui/g/c/j;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Landroid/content/SharedPreferences;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Ljava/lang/Class;


# direct methods
.method constructor <init>(Landroid/content/SharedPreferences;Landroid/content/Context;Ljava/lang/Class;)V
    .locals 0

    iput-object p1, p0, Lcom/nrsmagic/sudoku/gui/g/c/j;->a:Landroid/content/SharedPreferences;

    iput-object p2, p0, Lcom/nrsmagic/sudoku/gui/g/c/j;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/nrsmagic/sudoku/gui/g/c/j;->c:Ljava/lang/Class;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    const/4 v2, 0x1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    :try_start_0
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/g/c/j;->a:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/nrsmagic/sudoku/gui/g/c/h;->aG:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/nrsmagic/sudoku/gui/g/c/h;->aP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/g/c/j;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/nrsmagic/sudoku/gui/g/c/s;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/nrsmagic/sudoku/gui/g/c/h;->aJ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/g/c/g;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/g/c/j;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/g/c/j;->a:Landroid/content/SharedPreferences;

    sget-object v3, Lcom/nrsmagic/sudoku/gui/g/c/h;->aG:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/nrsmagic/sudoku/gui/g/c/j;->b:Landroid/content/Context;

    const/16 v4, 0x48

    const/16 v5, 0x48

    invoke-static {v0, v3, v4, v5}, Lcom/nrsmagic/sudoku/gui/g/c/t;->a(Landroid/graphics/Bitmap;Landroid/content/Context;II)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v3, p0, Lcom/nrsmagic/sudoku/gui/g/c/j;->c:Ljava/lang/Class;

    invoke-static {v1, v2, v0, v3}, Lcom/nrsmagic/sudoku/gui/g/c/t;->a(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/g/c/j;->b:Landroid/content/Context;

    sget-object v1, Lcom/nrsmagic/sudoku/gui/g/c/h;->aK:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x5

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/nrsmagic/sudoku/gui/g/c/i;->a(Landroid/content/SharedPreferences;IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/g/c/j;->b:Landroid/content/Context;

    sget-object v1, Lcom/nrsmagic/sudoku/gui/g/c/h;->bf:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
