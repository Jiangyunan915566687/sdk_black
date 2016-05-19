.class Lcom/baidu/mobads/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/baidu/mobads/AdContainer;


# direct methods
.method constructor <init>(Lcom/baidu/mobads/AdContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mobads/h;->a:Lcom/baidu/mobads/AdContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/baidu/mobads/h;->a:Lcom/baidu/mobads/AdContainer;

    invoke-static {v0}, Lcom/baidu/mobads/AdContainer;->c(Lcom/baidu/mobads/AdContainer;)Lcom/baidu/mobads/SplashAdListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/baidu/mobads/SplashAdListener;->onAdPresent()V

    return-void
.end method
