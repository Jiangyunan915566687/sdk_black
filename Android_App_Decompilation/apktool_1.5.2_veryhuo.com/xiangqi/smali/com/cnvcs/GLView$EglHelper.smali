.class Lcom/cnvcs/GLView$EglHelper;
.super Ljava/lang/Object;
.source "GLView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnvcs/GLView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EglHelper"
.end annotation


# instance fields
.field mEgl:Ljavax/microedition/khronos/egl/EGL10;

.field mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

.field mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

.field mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

.field mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

.field final synthetic this$0:Lcom/cnvcs/GLView;


# direct methods
.method public constructor <init>(Lcom/cnvcs/GLView;)V
    .locals 0
    .parameter

    .prologue
    .line 345
    iput-object p1, p0, Lcom/cnvcs/GLView$EglHelper;->this$0:Lcom/cnvcs/GLView;

    .line 343
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private throwEglException(Ljava/lang/String;)V
    .locals 1
    .parameter "function"

    .prologue
    .line 452
    iget-object v0, p0, Lcom/cnvcs/GLView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/cnvcs/GLView$EglHelper;->throwEglException(Ljava/lang/String;I)V

    .line 453
    return-void
.end method

.method private throwEglException(Ljava/lang/String;I)V
    .locals 3
    .parameter "function"
    .parameter "error"

    .prologue
    .line 456
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 457
    .local v0, message:Ljava/lang/String;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public createSurface(Landroid/view/SurfaceHolder;)Ljavax/microedition/khronos/opengles/GL;
    .locals 6
    .parameter "holder"

    .prologue
    .line 372
    iget-object v1, p0, Lcom/cnvcs/GLView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    if-nez v1, :cond_0

    .line 373
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "egl not initialized"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 375
    :cond_0
    iget-object v1, p0, Lcom/cnvcs/GLView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-nez v1, :cond_1

    .line 376
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "eglDisplay not initialized"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 378
    :cond_1
    iget-object v1, p0, Lcom/cnvcs/GLView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    if-nez v1, :cond_2

    .line 379
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "mEglConfig not initialized"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 382
    :cond_2
    iget-object v1, p0, Lcom/cnvcs/GLView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/cnvcs/GLView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eq v1, v2, :cond_3

    .line 383
    iget-object v1, p0, Lcom/cnvcs/GLView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/cnvcs/GLView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 384
    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v5, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    .line 383
    invoke-interface {v1, v2, v3, v4, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 385
    iget-object v1, p0, Lcom/cnvcs/GLView$EglHelper;->this$0:Lcom/cnvcs/GLView;

    #getter for: Lcom/cnvcs/GLView;->mEGLWindowSurfaceFactory:Lcom/cnvcs/GLView$EGLWindowSurfaceFactory;
    invoke-static {v1}, Lcom/cnvcs/GLView;->access$3(Lcom/cnvcs/GLView;)Lcom/cnvcs/GLView$EGLWindowSurfaceFactory;

    move-result-object v1

    iget-object v2, p0, Lcom/cnvcs/GLView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/cnvcs/GLView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcom/cnvcs/GLView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v1, v2, v3, v4}, Lcom/cnvcs/GLView$EGLWindowSurfaceFactory;->destroySurface(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)V

    .line 388
    :cond_3
    iget-object v1, p0, Lcom/cnvcs/GLView$EglHelper;->this$0:Lcom/cnvcs/GLView;

    #getter for: Lcom/cnvcs/GLView;->mEGLWindowSurfaceFactory:Lcom/cnvcs/GLView$EGLWindowSurfaceFactory;
    invoke-static {v1}, Lcom/cnvcs/GLView;->access$3(Lcom/cnvcs/GLView;)Lcom/cnvcs/GLView$EGLWindowSurfaceFactory;

    move-result-object v1

    iget-object v2, p0, Lcom/cnvcs/GLView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    .line 389
    iget-object v3, p0, Lcom/cnvcs/GLView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcom/cnvcs/GLView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 388
    invoke-interface {v1, v2, v3, v4, p1}, Lcom/cnvcs/GLView$EGLWindowSurfaceFactory;->createWindowSurface(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v1

    iput-object v1, p0, Lcom/cnvcs/GLView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 391
    iget-object v1, p0, Lcom/cnvcs/GLView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/cnvcs/GLView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne v1, v2, :cond_6

    .line 392
    :cond_4
    iget-object v1, p0, Lcom/cnvcs/GLView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    .line 393
    .local v0, error:I
    const/16 v1, 0x300b

    if-ne v0, v1, :cond_5

    .line 394
    const-string v1, "EglHelper"

    const-string v2, "createWindowSurface returned EGL_BAD_NATIVE_WINDOW."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    :cond_5
    const/4 v1, 0x0

    .line 402
    .end local v0           #error:I
    :goto_0
    return-object v1

    .line 399
    :cond_6
    iget-object v1, p0, Lcom/cnvcs/GLView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/cnvcs/GLView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/cnvcs/GLView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v4, p0, Lcom/cnvcs/GLView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v5, p0, Lcom/cnvcs/GLView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v1, v2, v3, v4, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 400
    const-string v1, "eglMakeCurrent"

    invoke-direct {p0, v1}, Lcom/cnvcs/GLView$EglHelper;->throwEglException(Ljava/lang/String;)V

    .line 402
    :cond_7
    iget-object v1, p0, Lcom/cnvcs/GLView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {v1}, Ljavax/microedition/khronos/egl/EGLContext;->getGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v1

    goto :goto_0
.end method

.method public destroySurface()V
    .locals 5

    .prologue
    .line 431
    iget-object v0, p0, Lcom/cnvcs/GLView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cnvcs/GLView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eq v0, v1, :cond_0

    .line 432
    iget-object v0, p0, Lcom/cnvcs/GLView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/cnvcs/GLView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 433
    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 434
    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    .line 432
    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 435
    iget-object v0, p0, Lcom/cnvcs/GLView$EglHelper;->this$0:Lcom/cnvcs/GLView;

    #getter for: Lcom/cnvcs/GLView;->mEGLWindowSurfaceFactory:Lcom/cnvcs/GLView$EGLWindowSurfaceFactory;
    invoke-static {v0}, Lcom/cnvcs/GLView;->access$3(Lcom/cnvcs/GLView;)Lcom/cnvcs/GLView$EGLWindowSurfaceFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/cnvcs/GLView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/cnvcs/GLView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/cnvcs/GLView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2, v3}, Lcom/cnvcs/GLView$EGLWindowSurfaceFactory;->destroySurface(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)V

    .line 436
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cnvcs/GLView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 438
    :cond_0
    return-void
.end method

.method public finish()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 441
    iget-object v0, p0, Lcom/cnvcs/GLView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v0, :cond_0

    .line 442
    iget-object v0, p0, Lcom/cnvcs/GLView$EglHelper;->this$0:Lcom/cnvcs/GLView;

    #getter for: Lcom/cnvcs/GLView;->mEGLContextFactory:Lcom/cnvcs/GLView$EGLContextFactory;
    invoke-static {v0}, Lcom/cnvcs/GLView;->access$2(Lcom/cnvcs/GLView;)Lcom/cnvcs/GLView$EGLContextFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/cnvcs/GLView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/cnvcs/GLView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/cnvcs/GLView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3}, Lcom/cnvcs/GLView$EGLContextFactory;->destroyContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)V

    .line 443
    iput-object v4, p0, Lcom/cnvcs/GLView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 445
    :cond_0
    iget-object v0, p0, Lcom/cnvcs/GLView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eqz v0, :cond_1

    .line 446
    iget-object v0, p0, Lcom/cnvcs/GLView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/cnvcs/GLView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    .line 447
    iput-object v4, p0, Lcom/cnvcs/GLView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 449
    :cond_1
    return-void
.end method

.method public purgeBuffers()V
    .locals 5

    .prologue
    .line 406
    iget-object v0, p0, Lcom/cnvcs/GLView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/cnvcs/GLView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 407
    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 408
    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    .line 406
    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 409
    iget-object v0, p0, Lcom/cnvcs/GLView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/cnvcs/GLView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 410
    iget-object v2, p0, Lcom/cnvcs/GLView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v3, p0, Lcom/cnvcs/GLView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 411
    iget-object v4, p0, Lcom/cnvcs/GLView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 409
    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 412
    return-void
.end method

.method public start()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 348
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v1

    check-cast v1, Ljavax/microedition/khronos/egl/EGL10;

    iput-object v1, p0, Lcom/cnvcs/GLView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    .line 349
    iget-object v1, p0, Lcom/cnvcs/GLView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v1

    iput-object v1, p0, Lcom/cnvcs/GLView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 351
    iget-object v1, p0, Lcom/cnvcs/GLView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-ne v1, v2, :cond_0

    .line 352
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "eglGetDisplay failed"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 355
    :cond_0
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 356
    .local v0, version:[I
    iget-object v1, p0, Lcom/cnvcs/GLView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/cnvcs/GLView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v1, v2, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 357
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "eglInitialize failed"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 359
    :cond_1
    iget-object v1, p0, Lcom/cnvcs/GLView$EglHelper;->this$0:Lcom/cnvcs/GLView;

    #getter for: Lcom/cnvcs/GLView;->mEGLConfigChooser:Lcom/cnvcs/GLView$EGLConfigChooser;
    invoke-static {v1}, Lcom/cnvcs/GLView;->access$1(Lcom/cnvcs/GLView;)Lcom/cnvcs/GLView$EGLConfigChooser;

    move-result-object v1

    iget-object v2, p0, Lcom/cnvcs/GLView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/cnvcs/GLView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v1, v2, v3}, Lcom/cnvcs/GLView$EGLConfigChooser;->chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v1

    iput-object v1, p0, Lcom/cnvcs/GLView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 361
    iget-object v1, p0, Lcom/cnvcs/GLView$EglHelper;->this$0:Lcom/cnvcs/GLView;

    #getter for: Lcom/cnvcs/GLView;->mEGLContextFactory:Lcom/cnvcs/GLView$EGLContextFactory;
    invoke-static {v1}, Lcom/cnvcs/GLView;->access$2(Lcom/cnvcs/GLView;)Lcom/cnvcs/GLView$EGLContextFactory;

    move-result-object v1

    iget-object v2, p0, Lcom/cnvcs/GLView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/cnvcs/GLView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcom/cnvcs/GLView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v1, v2, v3, v4}, Lcom/cnvcs/GLView$EGLContextFactory;->createContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v1

    iput-object v1, p0, Lcom/cnvcs/GLView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 362
    iget-object v1, p0, Lcom/cnvcs/GLView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/cnvcs/GLView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-ne v1, v2, :cond_3

    .line 363
    :cond_2
    iput-object v5, p0, Lcom/cnvcs/GLView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 364
    const-string v1, "createContext"

    invoke-direct {p0, v1}, Lcom/cnvcs/GLView$EglHelper;->throwEglException(Ljava/lang/String;)V

    .line 367
    :cond_3
    iput-object v5, p0, Lcom/cnvcs/GLView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 368
    return-void
.end method

.method public swap()Z
    .locals 5

    .prologue
    .line 415
    iget-object v1, p0, Lcom/cnvcs/GLView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/cnvcs/GLView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/cnvcs/GLView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v1, v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 416
    iget-object v1, p0, Lcom/cnvcs/GLView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    .line 417
    .local v0, error:I
    packed-switch v0, :pswitch_data_0

    .line 424
    :pswitch_0
    const-string v1, "eglSwapBuffers"

    invoke-direct {p0, v1, v0}, Lcom/cnvcs/GLView$EglHelper;->throwEglException(Ljava/lang/String;I)V

    .line 427
    .end local v0           #error:I
    :cond_0
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1

    .line 419
    .restart local v0       #error:I
    :pswitch_1
    const/4 v1, 0x0

    goto :goto_1

    .line 421
    :pswitch_2
    const-string v1, "EglHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "eglSwapBuffers returned EGL_BAD_NATIVE_WINDOW. tid="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 417
    nop

    :pswitch_data_0
    .packed-switch 0x300b
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
