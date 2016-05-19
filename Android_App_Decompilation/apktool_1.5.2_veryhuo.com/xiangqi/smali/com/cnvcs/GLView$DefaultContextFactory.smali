.class Lcom/cnvcs/GLView$DefaultContextFactory;
.super Ljava/lang/Object;
.source "GLView.java"

# interfaces
.implements Lcom/cnvcs/GLView$EGLContextFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnvcs/GLView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DefaultContextFactory"
.end annotation


# instance fields
.field private EGL_CONTEXT_CLIENT_VERSION:I

.field final synthetic this$0:Lcom/cnvcs/GLView;


# direct methods
.method private constructor <init>(Lcom/cnvcs/GLView;)V
    .locals 1
    .parameter

    .prologue
    .line 171
    iput-object p1, p0, Lcom/cnvcs/GLView$DefaultContextFactory;->this$0:Lcom/cnvcs/GLView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    const/16 v0, 0x3098

    iput v0, p0, Lcom/cnvcs/GLView$DefaultContextFactory;->EGL_CONTEXT_CLIENT_VERSION:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/cnvcs/GLView;Lcom/cnvcs/GLView$DefaultContextFactory;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 171
    invoke-direct {p0, p1}, Lcom/cnvcs/GLView$DefaultContextFactory;-><init>(Lcom/cnvcs/GLView;)V

    return-void
.end method


# virtual methods
.method public createContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLContext;
    .locals 3
    .parameter "egl"
    .parameter "display"
    .parameter "config"

    .prologue
    .line 175
    const/4 v1, 0x3

    new-array v0, v1, [I

    const/4 v1, 0x0

    iget v2, p0, Lcom/cnvcs/GLView$DefaultContextFactory;->EGL_CONTEXT_CLIENT_VERSION:I

    aput v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/cnvcs/GLView$DefaultContextFactory;->this$0:Lcom/cnvcs/GLView;

    #getter for: Lcom/cnvcs/GLView;->mEGLContextClientVersion:I
    invoke-static {v2}, Lcom/cnvcs/GLView;->access$0(Lcom/cnvcs/GLView;)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x2

    .line 176
    const/16 v2, 0x3038

    aput v2, v0, v1

    .line 178
    .local v0, attrib_list:[I
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    .line 179
    iget-object v2, p0, Lcom/cnvcs/GLView$DefaultContextFactory;->this$0:Lcom/cnvcs/GLView;

    #getter for: Lcom/cnvcs/GLView;->mEGLContextClientVersion:I
    invoke-static {v2}, Lcom/cnvcs/GLView;->access$0(Lcom/cnvcs/GLView;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 178
    .end local v0           #attrib_list:[I
    :goto_0
    invoke-interface {p1, p2, p3, v1, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v1

    return-object v1

    .line 179
    .restart local v0       #attrib_list:[I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public destroyContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)V
    .locals 3
    .parameter "egl"
    .parameter "display"
    .parameter "context"

    .prologue
    .line 184
    invoke-interface {p1, p2, p3}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 185
    const-string v0, "DefaultContextFactory"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "display:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " context: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglDestroyContext failed: "

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 188
    :cond_0
    return-void
.end method
