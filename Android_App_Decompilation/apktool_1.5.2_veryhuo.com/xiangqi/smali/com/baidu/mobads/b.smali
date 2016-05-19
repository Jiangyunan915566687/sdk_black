.class Lcom/baidu/mobads/b;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Lcom/baidu/mobads/AdContainer;


# direct methods
.method constructor <init>(Lcom/baidu/mobads/AdContainer;Landroid/content/Context;II)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mobads/b;->d:Lcom/baidu/mobads/AdContainer;

    iput-object p2, p0, Lcom/baidu/mobads/b;->a:Landroid/content/Context;

    iput p3, p0, Lcom/baidu/mobads/b;->b:I

    iput p4, p0, Lcom/baidu/mobads/b;->c:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/baidu/mobads/b;->d:Lcom/baidu/mobads/AdContainer;

    invoke-static {v0}, Lcom/baidu/mobads/AdContainer;->b(Lcom/baidu/mobads/AdContainer;)Lcom/baidu/mobads/l;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mobads/b;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/baidu/mobads/l;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mobads/b;->d:Lcom/baidu/mobads/AdContainer;

    invoke-static {v1}, Lcom/baidu/mobads/AdContainer;->b(Lcom/baidu/mobads/AdContainer;)Lcom/baidu/mobads/l;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/mobads/b;->a:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/baidu/mobads/l;->d(Landroid/content/Context;Ljava/lang/String;)Lcom/baidu/mobads/Ad;

    move-result-object v0

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/baidu/mobads/c;

    invoke-direct {v2, p0, v0}, Lcom/baidu/mobads/c;-><init>(Lcom/baidu/mobads/b;Lcom/baidu/mobads/Ad;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/baidu/mobads/b;->d:Lcom/baidu/mobads/AdContainer;

    const-string v2, "Internal Error"

    invoke-static {v1, v0, v2}, Lcom/baidu/mobads/AdContainer;->a(Lcom/baidu/mobads/AdContainer;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0
.end method
