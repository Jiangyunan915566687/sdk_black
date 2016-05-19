.class Lcom/cnvcs/GLView$SimpleEGLConfigChooser;
.super Lcom/cnvcs/GLView$ComponentSizeChooser;
.source "GLView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnvcs/GLView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimpleEGLConfigChooser"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnvcs/GLView;


# direct methods
.method public constructor <init>(Lcom/cnvcs/GLView;Z)V
    .locals 8
    .parameter
    .parameter "withDepthBuffer"

    .prologue
    const/4 v2, 0x5

    const/4 v5, 0x0

    .line 339
    iput-object p1, p0, Lcom/cnvcs/GLView$SimpleEGLConfigChooser;->this$0:Lcom/cnvcs/GLView;

    .line 338
    const/4 v3, 0x6

    if-eqz p2, :cond_0

    const/16 v6, 0x10

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move v4, v2

    move v7, v5

    invoke-direct/range {v0 .. v7}, Lcom/cnvcs/GLView$ComponentSizeChooser;-><init>(Lcom/cnvcs/GLView;IIIIII)V

    return-void

    :cond_0
    move v6, v5

    goto :goto_0
.end method
