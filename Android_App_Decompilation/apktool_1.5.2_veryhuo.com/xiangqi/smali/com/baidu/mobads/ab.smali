.class final Lcom/baidu/mobads/ab;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mobads/ab;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/baidu/mobads/ab;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/baidu/mobads/ab;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/baidu/mobads/ab;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/baidu/mobads/AdView;->setAppSid(Landroid/content/Context;Ljava/lang/String;)V

    invoke-super {p0}, Ljava/lang/Thread;->run()V

    return-void
.end method
