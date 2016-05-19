.class Lcom/baidu/mobads/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/baidu/mobads/Ad;

.field final synthetic b:Lcom/baidu/mobads/b;


# direct methods
.method constructor <init>(Lcom/baidu/mobads/b;Lcom/baidu/mobads/Ad;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mobads/c;->b:Lcom/baidu/mobads/b;

    iput-object p2, p0, Lcom/baidu/mobads/c;->a:Lcom/baidu/mobads/Ad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "init"

    iget-object v1, p0, Lcom/baidu/mobads/c;->b:Lcom/baidu/mobads/b;

    iget-object v1, v1, Lcom/baidu/mobads/b;->d:Lcom/baidu/mobads/AdContainer;

    invoke-static {v1}, Lcom/baidu/mobads/AdContainer;->a(Lcom/baidu/mobads/AdContainer;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/mobads/c;->b:Lcom/baidu/mobads/b;

    iget-object v0, v0, Lcom/baidu/mobads/b;->d:Lcom/baidu/mobads/AdContainer;

    const-string v1, "loadFinished"

    invoke-static {v0, v1}, Lcom/baidu/mobads/AdContainer;->a(Lcom/baidu/mobads/AdContainer;Ljava/lang/String;)Ljava/lang/String;

    :try_start_0
    iget-object v0, p0, Lcom/baidu/mobads/c;->b:Lcom/baidu/mobads/b;

    iget-object v0, v0, Lcom/baidu/mobads/b;->d:Lcom/baidu/mobads/AdContainer;

    iget-object v1, p0, Lcom/baidu/mobads/c;->b:Lcom/baidu/mobads/b;

    iget v1, v1, Lcom/baidu/mobads/b;->b:I

    iget-object v2, p0, Lcom/baidu/mobads/c;->b:Lcom/baidu/mobads/b;

    iget v2, v2, Lcom/baidu/mobads/b;->c:I

    iget-object v3, p0, Lcom/baidu/mobads/c;->a:Lcom/baidu/mobads/Ad;

    invoke-static {v0, v1, v2, v3}, Lcom/baidu/mobads/AdContainer;->a(Lcom/baidu/mobads/AdContainer;IILcom/baidu/mobads/Ad;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/baidu/mobads/c;->b:Lcom/baidu/mobads/b;

    iget-object v1, v1, Lcom/baidu/mobads/b;->d:Lcom/baidu/mobads/AdContainer;

    const-string v2, "ad can not be displayed"

    invoke-static {v1, v0, v2}, Lcom/baidu/mobads/AdContainer;->a(Lcom/baidu/mobads/AdContainer;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0
.end method
