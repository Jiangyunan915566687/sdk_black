.class Lcom/baidu/mobads/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/baidu/mobads/AdContainer;


# direct methods
.method constructor <init>(Lcom/baidu/mobads/AdContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mobads/g;->a:Lcom/baidu/mobads/AdContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/baidu/mobads/g;->a:Lcom/baidu/mobads/AdContainer;

    invoke-virtual {v0}, Lcom/baidu/mobads/AdContainer;->performClick()Z

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
