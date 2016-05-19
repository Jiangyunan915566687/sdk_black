.class public Lcom/cnvcs/GLView;
.super Landroid/view/SurfaceView;
.source "GLView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cnvcs/GLView$BaseConfigChooser;,
        Lcom/cnvcs/GLView$ComponentSizeChooser;,
        Lcom/cnvcs/GLView$DefaultContextFactory;,
        Lcom/cnvcs/GLView$DefaultWindowSurfaceFactory;,
        Lcom/cnvcs/GLView$EGLConfigChooser;,
        Lcom/cnvcs/GLView$EGLContextFactory;,
        Lcom/cnvcs/GLView$EGLWindowSurfaceFactory;,
        Lcom/cnvcs/GLView$EglHelper;,
        Lcom/cnvcs/GLView$GLThread;,
        Lcom/cnvcs/GLView$GLThreadManager;,
        Lcom/cnvcs/GLView$GLWrapper;,
        Lcom/cnvcs/GLView$Renderer;,
        Lcom/cnvcs/GLView$SimpleEGLConfigChooser;
    }
.end annotation


# static fields
.field private static final DRAW_TWICE_AFTER_SIZE_CHANGED:Z = true

.field public static final RENDERMODE_CONTINUOUSLY:I = 0x1

.field public static final RENDERMODE_WHEN_DIRTY:I = 0x0

.field private static final TAG:Ljava/lang/String; = "GLView"

.field private static final sGLThreadManager:Lcom/cnvcs/GLView$GLThreadManager;


# instance fields
.field private mDetached:Z

.field private mEGLConfigChooser:Lcom/cnvcs/GLView$EGLConfigChooser;

.field private mEGLContextClientVersion:I

.field private mEGLContextFactory:Lcom/cnvcs/GLView$EGLContextFactory;

.field private mEGLWindowSurfaceFactory:Lcom/cnvcs/GLView$EGLWindowSurfaceFactory;

.field private mGLThread:Lcom/cnvcs/GLView$GLThread;

.field private mPreserveEGLContextOnPause:Z

.field private mRenderer:Lcom/cnvcs/GLView$Renderer;

.field private mSizeChanged:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 920
    new-instance v0, Lcom/cnvcs/GLView$GLThreadManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/cnvcs/GLView$GLThreadManager;-><init>(Lcom/cnvcs/GLView$GLThreadManager;)V

    sput-object v0, Lcom/cnvcs/GLView;->sGLThreadManager:Lcom/cnvcs/GLView$GLThreadManager;

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 921
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cnvcs/GLView;->mSizeChanged:Z

    .line 29
    invoke-direct {p0}, Lcom/cnvcs/GLView;->init()V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 921
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cnvcs/GLView;->mSizeChanged:Z

    .line 34
    invoke-direct {p0}, Lcom/cnvcs/GLView;->init()V

    .line 35
    return-void
.end method

.method static synthetic access$0(Lcom/cnvcs/GLView;)I
    .locals 1
    .parameter

    .prologue
    .line 928
    iget v0, p0, Lcom/cnvcs/GLView;->mEGLContextClientVersion:I

    return v0
.end method

.method static synthetic access$1(Lcom/cnvcs/GLView;)Lcom/cnvcs/GLView$EGLConfigChooser;
    .locals 1
    .parameter

    .prologue
    .line 925
    iget-object v0, p0, Lcom/cnvcs/GLView;->mEGLConfigChooser:Lcom/cnvcs/GLView$EGLConfigChooser;

    return-object v0
.end method

.method static synthetic access$2(Lcom/cnvcs/GLView;)Lcom/cnvcs/GLView$EGLContextFactory;
    .locals 1
    .parameter

    .prologue
    .line 926
    iget-object v0, p0, Lcom/cnvcs/GLView;->mEGLContextFactory:Lcom/cnvcs/GLView$EGLContextFactory;

    return-object v0
.end method

.method static synthetic access$3(Lcom/cnvcs/GLView;)Lcom/cnvcs/GLView$EGLWindowSurfaceFactory;
    .locals 1
    .parameter

    .prologue
    .line 927
    iget-object v0, p0, Lcom/cnvcs/GLView;->mEGLWindowSurfaceFactory:Lcom/cnvcs/GLView$EGLWindowSurfaceFactory;

    return-object v0
.end method

.method static synthetic access$4()Lcom/cnvcs/GLView$GLThreadManager;
    .locals 1

    .prologue
    .line 920
    sget-object v0, Lcom/cnvcs/GLView;->sGLThreadManager:Lcom/cnvcs/GLView$GLThreadManager;

    return-object v0
.end method

.method static synthetic access$5(Lcom/cnvcs/GLView;)Z
    .locals 1
    .parameter

    .prologue
    .line 929
    iget-boolean v0, p0, Lcom/cnvcs/GLView;->mPreserveEGLContextOnPause:Z

    return v0
.end method

.method static synthetic access$6(Lcom/cnvcs/GLView;)Z
    .locals 1
    .parameter

    .prologue
    .line 921
    iget-boolean v0, p0, Lcom/cnvcs/GLView;->mSizeChanged:Z

    return v0
.end method

.method static synthetic access$7(Lcom/cnvcs/GLView;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 921
    iput-boolean p1, p0, Lcom/cnvcs/GLView;->mSizeChanged:Z

    return-void
.end method

.method static synthetic access$8(Lcom/cnvcs/GLView;)Lcom/cnvcs/GLView$GLThread;
    .locals 1
    .parameter

    .prologue
    .line 922
    iget-object v0, p0, Lcom/cnvcs/GLView;->mGLThread:Lcom/cnvcs/GLView$GLThread;

    return-object v0
.end method

.method private checkRenderThreadState()V
    .locals 2

    .prologue
    .line 837
    iget-object v0, p0, Lcom/cnvcs/GLView;->mGLThread:Lcom/cnvcs/GLView$GLThread;

    if-eqz v0, :cond_0

    .line 838
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 839
    const-string v1, "setRenderer has already been called for this instance."

    .line 838
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 841
    :cond_0
    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/cnvcs/GLView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 39
    .local v0, holder:Landroid/view/SurfaceHolder;
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 40
    return-void
.end method


# virtual methods
.method public getPreserveEGLContextOnPause()Z
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/cnvcs/GLView;->mPreserveEGLContextOnPause:Z

    return v0
.end method

.method public getRenderMode()I
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/cnvcs/GLView;->mGLThread:Lcom/cnvcs/GLView$GLThread;

    invoke-virtual {v0}, Lcom/cnvcs/GLView$GLThread;->getRenderMode()I

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 133
    invoke-super {p0}, Landroid/view/SurfaceView;->onAttachedToWindow()V

    .line 134
    iget-boolean v1, p0, Lcom/cnvcs/GLView;->mDetached:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/cnvcs/GLView;->mRenderer:Lcom/cnvcs/GLView$Renderer;

    if-eqz v1, :cond_2

    .line 135
    const/4 v0, 0x1

    .line 136
    .local v0, renderMode:I
    iget-object v1, p0, Lcom/cnvcs/GLView;->mGLThread:Lcom/cnvcs/GLView$GLThread;

    if-eqz v1, :cond_0

    .line 137
    iget-object v1, p0, Lcom/cnvcs/GLView;->mGLThread:Lcom/cnvcs/GLView$GLThread;

    invoke-virtual {v1}, Lcom/cnvcs/GLView$GLThread;->getRenderMode()I

    move-result v0

    .line 139
    :cond_0
    new-instance v1, Lcom/cnvcs/GLView$GLThread;

    iget-object v2, p0, Lcom/cnvcs/GLView;->mRenderer:Lcom/cnvcs/GLView$Renderer;

    invoke-direct {v1, p0, v2}, Lcom/cnvcs/GLView$GLThread;-><init>(Lcom/cnvcs/GLView;Lcom/cnvcs/GLView$Renderer;)V

    iput-object v1, p0, Lcom/cnvcs/GLView;->mGLThread:Lcom/cnvcs/GLView$GLThread;

    .line 140
    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 141
    iget-object v1, p0, Lcom/cnvcs/GLView;->mGLThread:Lcom/cnvcs/GLView$GLThread;

    invoke-virtual {v1, v0}, Lcom/cnvcs/GLView$GLThread;->setRenderMode(I)V

    .line 143
    :cond_1
    iget-object v1, p0, Lcom/cnvcs/GLView;->mGLThread:Lcom/cnvcs/GLView$GLThread;

    invoke-virtual {v1}, Lcom/cnvcs/GLView$GLThread;->start()V

    .line 145
    .end local v0           #renderMode:I
    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/cnvcs/GLView;->mDetached:Z

    .line 146
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/cnvcs/GLView;->mGLThread:Lcom/cnvcs/GLView$GLThread;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/cnvcs/GLView;->mGLThread:Lcom/cnvcs/GLView$GLThread;

    invoke-virtual {v0}, Lcom/cnvcs/GLView$GLThread;->requestExitAndWait()V

    .line 152
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cnvcs/GLView;->mDetached:Z

    .line 153
    invoke-super {p0}, Landroid/view/SurfaceView;->onDetachedFromWindow()V

    .line 154
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/cnvcs/GLView;->mGLThread:Lcom/cnvcs/GLView$GLThread;

    invoke-virtual {v0}, Lcom/cnvcs/GLView$GLThread;->onPause()V

    .line 122
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/cnvcs/GLView;->mGLThread:Lcom/cnvcs/GLView$GLThread;

    invoke-virtual {v0}, Lcom/cnvcs/GLView$GLThread;->onResume()V

    .line 126
    return-void
.end method

.method public queueEvent(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "r"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/cnvcs/GLView;->mGLThread:Lcom/cnvcs/GLView$GLThread;

    invoke-virtual {v0, p1}, Lcom/cnvcs/GLView$GLThread;->queueEvent(Ljava/lang/Runnable;)V

    .line 130
    return-void
.end method

.method public requestRender()V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/cnvcs/GLView;->mGLThread:Lcom/cnvcs/GLView$GLThread;

    invoke-virtual {v0}, Lcom/cnvcs/GLView$GLThread;->requestRender()V

    .line 106
    return-void
.end method

.method public setEGLConfigChooser(IIIIII)V
    .locals 8
    .parameter "redSize"
    .parameter "greenSize"
    .parameter "blueSize"
    .parameter "alphaSize"
    .parameter "depthSize"
    .parameter "stencilSize"

    .prologue
    .line 87
    new-instance v0, Lcom/cnvcs/GLView$ComponentSizeChooser;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    .line 88
    invoke-direct/range {v0 .. v7}, Lcom/cnvcs/GLView$ComponentSizeChooser;-><init>(Lcom/cnvcs/GLView;IIIIII)V

    .line 87
    invoke-virtual {p0, v0}, Lcom/cnvcs/GLView;->setEGLConfigChooser(Lcom/cnvcs/GLView$EGLConfigChooser;)V

    .line 89
    return-void
.end method

.method public setEGLConfigChooser(Lcom/cnvcs/GLView$EGLConfigChooser;)V
    .locals 0
    .parameter "configChooser"

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/cnvcs/GLView;->checkRenderThreadState()V

    .line 78
    iput-object p1, p0, Lcom/cnvcs/GLView;->mEGLConfigChooser:Lcom/cnvcs/GLView$EGLConfigChooser;

    .line 79
    return-void
.end method

.method public setEGLConfigChooser(Z)V
    .locals 1
    .parameter "needDepth"

    .prologue
    .line 82
    new-instance v0, Lcom/cnvcs/GLView$SimpleEGLConfigChooser;

    invoke-direct {v0, p0, p1}, Lcom/cnvcs/GLView$SimpleEGLConfigChooser;-><init>(Lcom/cnvcs/GLView;Z)V

    invoke-virtual {p0, v0}, Lcom/cnvcs/GLView;->setEGLConfigChooser(Lcom/cnvcs/GLView$EGLConfigChooser;)V

    .line 83
    return-void
.end method

.method public setEGLContextClientVersion(I)V
    .locals 0
    .parameter "version"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/cnvcs/GLView;->checkRenderThreadState()V

    .line 93
    iput p1, p0, Lcom/cnvcs/GLView;->mEGLContextClientVersion:I

    .line 94
    return-void
.end method

.method public setEGLContextFactory(Lcom/cnvcs/GLView$EGLContextFactory;)V
    .locals 0
    .parameter "factory"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/cnvcs/GLView;->checkRenderThreadState()V

    .line 68
    iput-object p1, p0, Lcom/cnvcs/GLView;->mEGLContextFactory:Lcom/cnvcs/GLView$EGLContextFactory;

    .line 69
    return-void
.end method

.method public setEGLWindowSurfaceFactory(Lcom/cnvcs/GLView$EGLWindowSurfaceFactory;)V
    .locals 0
    .parameter "factory"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/cnvcs/GLView;->checkRenderThreadState()V

    .line 73
    iput-object p1, p0, Lcom/cnvcs/GLView;->mEGLWindowSurfaceFactory:Lcom/cnvcs/GLView$EGLWindowSurfaceFactory;

    .line 74
    return-void
.end method

.method public setPreserveEGLContextOnPause(Z)V
    .locals 0
    .parameter "preserveOnPause"

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/cnvcs/GLView;->mPreserveEGLContextOnPause:Z

    .line 44
    return-void
.end method

.method public setRenderMode(I)V
    .locals 1
    .parameter "renderMode"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/cnvcs/GLView;->mGLThread:Lcom/cnvcs/GLView$GLThread;

    invoke-virtual {v0, p1}, Lcom/cnvcs/GLView$GLThread;->setRenderMode(I)V

    .line 98
    return-void
.end method

.method public setRenderer(Lcom/cnvcs/GLView$Renderer;)V
    .locals 3
    .parameter "renderer"

    .prologue
    const/4 v2, 0x0

    .line 51
    invoke-direct {p0}, Lcom/cnvcs/GLView;->checkRenderThreadState()V

    .line 52
    iget-object v0, p0, Lcom/cnvcs/GLView;->mEGLConfigChooser:Lcom/cnvcs/GLView$EGLConfigChooser;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Lcom/cnvcs/GLView$SimpleEGLConfigChooser;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/cnvcs/GLView$SimpleEGLConfigChooser;-><init>(Lcom/cnvcs/GLView;Z)V

    iput-object v0, p0, Lcom/cnvcs/GLView;->mEGLConfigChooser:Lcom/cnvcs/GLView$EGLConfigChooser;

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/cnvcs/GLView;->mEGLContextFactory:Lcom/cnvcs/GLView$EGLContextFactory;

    if-nez v0, :cond_1

    .line 56
    new-instance v0, Lcom/cnvcs/GLView$DefaultContextFactory;

    invoke-direct {v0, p0, v2}, Lcom/cnvcs/GLView$DefaultContextFactory;-><init>(Lcom/cnvcs/GLView;Lcom/cnvcs/GLView$DefaultContextFactory;)V

    iput-object v0, p0, Lcom/cnvcs/GLView;->mEGLContextFactory:Lcom/cnvcs/GLView$EGLContextFactory;

    .line 58
    :cond_1
    iget-object v0, p0, Lcom/cnvcs/GLView;->mEGLWindowSurfaceFactory:Lcom/cnvcs/GLView$EGLWindowSurfaceFactory;

    if-nez v0, :cond_2

    .line 59
    new-instance v0, Lcom/cnvcs/GLView$DefaultWindowSurfaceFactory;

    invoke-direct {v0, v2}, Lcom/cnvcs/GLView$DefaultWindowSurfaceFactory;-><init>(Lcom/cnvcs/GLView$DefaultWindowSurfaceFactory;)V

    iput-object v0, p0, Lcom/cnvcs/GLView;->mEGLWindowSurfaceFactory:Lcom/cnvcs/GLView$EGLWindowSurfaceFactory;

    .line 61
    :cond_2
    iput-object p1, p0, Lcom/cnvcs/GLView;->mRenderer:Lcom/cnvcs/GLView$Renderer;

    .line 62
    new-instance v0, Lcom/cnvcs/GLView$GLThread;

    invoke-direct {v0, p0, p1}, Lcom/cnvcs/GLView$GLThread;-><init>(Lcom/cnvcs/GLView;Lcom/cnvcs/GLView$Renderer;)V

    iput-object v0, p0, Lcom/cnvcs/GLView;->mGLThread:Lcom/cnvcs/GLView$GLThread;

    .line 63
    iget-object v0, p0, Lcom/cnvcs/GLView;->mGLThread:Lcom/cnvcs/GLView$GLThread;

    invoke-virtual {v0}, Lcom/cnvcs/GLView$GLThread;->start()V

    .line 64
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 1
    .parameter "holder"
    .parameter "format"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/cnvcs/GLView;->mGLThread:Lcom/cnvcs/GLView$GLThread;

    invoke-virtual {v0, p3, p4}, Lcom/cnvcs/GLView$GLThread;->onWindowResize(II)V

    .line 118
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1
    .parameter "holder"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/cnvcs/GLView;->mGLThread:Lcom/cnvcs/GLView$GLThread;

    invoke-virtual {v0}, Lcom/cnvcs/GLView$GLThread;->surfaceCreated()V

    .line 110
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .parameter "holder"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/cnvcs/GLView;->mGLThread:Lcom/cnvcs/GLView$GLThread;

    invoke-virtual {v0}, Lcom/cnvcs/GLView$GLThread;->surfaceDestroyed()V

    .line 114
    return-void
.end method
