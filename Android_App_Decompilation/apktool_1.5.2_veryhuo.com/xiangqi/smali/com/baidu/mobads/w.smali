.class Lcom/baidu/mobads/w;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/baidu/mobads/GifAnimView;


# direct methods
.method constructor <init>(Lcom/baidu/mobads/GifAnimView;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mobads/w;->a:Lcom/baidu/mobads/GifAnimView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/baidu/mobads/w;->a:Lcom/baidu/mobads/GifAnimView;

    invoke-virtual {v0}, Lcom/baidu/mobads/GifAnimView;->invalidate()V

    const-string v0, "redrawHandler.handleMessage"

    invoke-static {v0}, Lcom/baidu/mobads/b/e;->a(Ljava/lang/String;)I

    iget-object v0, p0, Lcom/baidu/mobads/w;->a:Lcom/baidu/mobads/GifAnimView;

    invoke-static {v0}, Lcom/baidu/mobads/GifAnimView;->a(Lcom/baidu/mobads/GifAnimView;)Lcom/baidu/mobads/x;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/mobads/w;->a:Lcom/baidu/mobads/GifAnimView;

    invoke-static {v0}, Lcom/baidu/mobads/GifAnimView;->a(Lcom/baidu/mobads/GifAnimView;)Lcom/baidu/mobads/x;

    move-result-object v0

    invoke-interface {v0}, Lcom/baidu/mobads/x;->a()V

    :cond_0
    return-void
.end method
