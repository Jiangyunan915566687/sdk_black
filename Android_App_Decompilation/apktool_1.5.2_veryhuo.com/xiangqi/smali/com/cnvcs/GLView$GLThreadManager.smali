.class Lcom/cnvcs/GLView$GLThreadManager;
.super Ljava/lang/Object;
.source "GLView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnvcs/GLView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GLThreadManager"
.end annotation


# static fields
.field private static final kADRENO:Ljava/lang/String; = "Adreno"

.field private static final kGLES_20:I = 0x20000

.field private static final kMSM7K_RENDERER_PREFIX:Ljava/lang/String; = "Q3Dimension MSM7500 "


# instance fields
.field private mEglOwner:Lcom/cnvcs/GLView$GLThread;

.field private mGLESDriverCheckComplete:Z

.field private mGLESVersion:I

.field private mGLESVersionCheckComplete:Z

.field private mLimitedGLESContexts:Z

.field private mMultipleGLESContextsAllowed:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 843
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cnvcs/GLView$GLThreadManager;)V
    .locals 0
    .parameter

    .prologue
    .line 843
    invoke-direct {p0}, Lcom/cnvcs/GLView$GLThreadManager;-><init>()V

    return-void
.end method

.method private checkGLESVersion()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 899
    iget-boolean v0, p0, Lcom/cnvcs/GLView$GLThreadManager;->mGLESVersionCheckComplete:Z

    if-nez v0, :cond_1

    .line 900
    const/4 v0, 0x0

    iput v0, p0, Lcom/cnvcs/GLView$GLThreadManager;->mGLESVersion:I

    .line 901
    iget v0, p0, Lcom/cnvcs/GLView$GLThreadManager;->mGLESVersion:I

    const/high16 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 902
    iput-boolean v2, p0, Lcom/cnvcs/GLView$GLThreadManager;->mMultipleGLESContextsAllowed:Z

    .line 904
    :cond_0
    iput-boolean v2, p0, Lcom/cnvcs/GLView$GLThreadManager;->mGLESVersionCheckComplete:Z

    .line 906
    :cond_1
    return-void
.end method


# virtual methods
.method public declared-synchronized checkGLDriver(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 5
    .parameter "gl"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 885
    monitor-enter p0

    :try_start_0
    iget-boolean v3, p0, Lcom/cnvcs/GLView$GLThreadManager;->mGLESDriverCheckComplete:Z

    if-nez v3, :cond_1

    .line 886
    invoke-direct {p0}, Lcom/cnvcs/GLView$GLThreadManager;->checkGLESVersion()V

    .line 887
    const/16 v3, 0x1f01

    invoke-interface {p1, v3}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v0

    .line 888
    .local v0, renderer:Ljava/lang/String;
    iget v3, p0, Lcom/cnvcs/GLView$GLThreadManager;->mGLESVersion:I

    const/high16 v4, 0x2

    if-ge v3, v4, :cond_0

    .line 890
    const-string v3, "Q3Dimension MSM7500 "

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v1

    .line 889
    :goto_0
    iput-boolean v3, p0, Lcom/cnvcs/GLView$GLThreadManager;->mMultipleGLESContextsAllowed:Z

    .line 891
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 893
    :cond_0
    iget-boolean v3, p0, Lcom/cnvcs/GLView$GLThreadManager;->mMultipleGLESContextsAllowed:Z

    if-eqz v3, :cond_3

    const-string v3, "Adreno"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    :goto_1
    iput-boolean v1, p0, Lcom/cnvcs/GLView$GLThreadManager;->mLimitedGLESContexts:Z

    .line 894
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/cnvcs/GLView$GLThreadManager;->mGLESDriverCheckComplete:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 896
    .end local v0           #renderer:Ljava/lang/String;
    :cond_1
    monitor-exit p0

    return-void

    .restart local v0       #renderer:Ljava/lang/String;
    :cond_2
    move v3, v2

    .line 890
    goto :goto_0

    :cond_3
    move v1, v2

    .line 893
    goto :goto_1

    .line 885
    .end local v0           #renderer:Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public releaseEglContextLocked(Lcom/cnvcs/GLView$GLThread;)V
    .locals 1
    .parameter "thread"

    .prologue
    .line 869
    iget-object v0, p0, Lcom/cnvcs/GLView$GLThreadManager;->mEglOwner:Lcom/cnvcs/GLView$GLThread;

    if-ne v0, p1, :cond_0

    .line 870
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cnvcs/GLView$GLThreadManager;->mEglOwner:Lcom/cnvcs/GLView$GLThread;

    .line 872
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 873
    return-void
.end method

.method public declared-synchronized shouldReleaseEGLContextWhenPausing()Z
    .locals 1

    .prologue
    .line 876
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/cnvcs/GLView$GLThreadManager;->mLimitedGLESContexts:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized shouldTerminateEGLWhenPausing()Z
    .locals 1

    .prologue
    .line 880
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/cnvcs/GLView$GLThreadManager;->checkGLESVersion()V

    .line 881
    iget-boolean v0, p0, Lcom/cnvcs/GLView$GLThreadManager;->mMultipleGLESContextsAllowed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 880
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized threadExiting(Lcom/cnvcs/GLView$GLThread;)V
    .locals 1
    .parameter "thread"

    .prologue
    .line 845
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    #setter for: Lcom/cnvcs/GLView$GLThread;->mExited:Z
    invoke-static {p1, v0}, Lcom/cnvcs/GLView$GLThread;->access$0(Lcom/cnvcs/GLView$GLThread;Z)V

    .line 846
    iget-object v0, p0, Lcom/cnvcs/GLView$GLThreadManager;->mEglOwner:Lcom/cnvcs/GLView$GLThread;

    if-ne v0, p1, :cond_0

    .line 847
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cnvcs/GLView$GLThreadManager;->mEglOwner:Lcom/cnvcs/GLView$GLThread;

    .line 849
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 850
    monitor-exit p0

    return-void

    .line 845
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public tryAcquireEglContextLocked(Lcom/cnvcs/GLView$GLThread;)Z
    .locals 2
    .parameter "thread"

    .prologue
    const/4 v0, 0x1

    .line 853
    iget-object v1, p0, Lcom/cnvcs/GLView$GLThreadManager;->mEglOwner:Lcom/cnvcs/GLView$GLThread;

    if-eq v1, p1, :cond_0

    iget-object v1, p0, Lcom/cnvcs/GLView$GLThreadManager;->mEglOwner:Lcom/cnvcs/GLView$GLThread;

    if-nez v1, :cond_2

    .line 854
    :cond_0
    iput-object p1, p0, Lcom/cnvcs/GLView$GLThreadManager;->mEglOwner:Lcom/cnvcs/GLView$GLThread;

    .line 855
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 865
    :cond_1
    :goto_0
    return v0

    .line 858
    :cond_2
    invoke-direct {p0}, Lcom/cnvcs/GLView$GLThreadManager;->checkGLESVersion()V

    .line 859
    iget-boolean v1, p0, Lcom/cnvcs/GLView$GLThreadManager;->mMultipleGLESContextsAllowed:Z

    if-nez v1, :cond_1

    .line 862
    iget-object v0, p0, Lcom/cnvcs/GLView$GLThreadManager;->mEglOwner:Lcom/cnvcs/GLView$GLThread;

    if-eqz v0, :cond_3

    .line 863
    iget-object v0, p0, Lcom/cnvcs/GLView$GLThreadManager;->mEglOwner:Lcom/cnvcs/GLView$GLThread;

    invoke-virtual {v0}, Lcom/cnvcs/GLView$GLThread;->requestReleaseEglContextLocked()V

    .line 865
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method
