.class Lcom/baidu/mobads/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/baidu/mobads/AdContainer;


# direct methods
.method constructor <init>(Lcom/baidu/mobads/AdContainer;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mobads/d;->b:Lcom/baidu/mobads/AdContainer;

    iput-object p2, p0, Lcom/baidu/mobads/d;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/baidu/mobads/d;->b:Lcom/baidu/mobads/AdContainer;

    invoke-static {v0}, Lcom/baidu/mobads/AdContainer;->c(Lcom/baidu/mobads/AdContainer;)Lcom/baidu/mobads/SplashAdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mobads/d;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/baidu/mobads/SplashAdListener;->onAdFailed(Ljava/lang/String;)V

    return-void
.end method
