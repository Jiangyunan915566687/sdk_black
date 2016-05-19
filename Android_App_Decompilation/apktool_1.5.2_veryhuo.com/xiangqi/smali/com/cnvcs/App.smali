.class public Lcom/cnvcs/App;
.super Landroid/app/Activity;
.source "App.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/os/Handler$Callback;
.implements Lcom/cnvcs/GLView$Renderer;


# instance fields
.field protected m_handler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-string v0, "xiangqi"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static native Log(ILjava/lang/String;)V
.end method

.method public static native OnBluetooth(Landroid/content/Intent;)V
.end method

.method public static native OnCreate(Landroid/app/Activity;)Lcom/cnvcs/GLView;
.end method

.method public static native OnDestroy()V
.end method

.method public static native OnGraphChange(II)V
.end method

.method public static native OnGraphCreate()V
.end method

.method public static native OnInput(Ljava/lang/String;)V
.end method

.method public static native OnKey(Landroid/view/KeyEvent;)Z
.end method

.method public static native OnPause()V
.end method

.method public static native OnResult(IILandroid/content/Intent;)V
.end method

.method public static native OnResume()V
.end method

.method public static native OnTimer()V
.end method

.method public static native OnTouch(Landroid/view/MotionEvent;)Z
.end method

.method public static native OnUpdate()Z
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v4, 0x0

    .line 96
    invoke-static {}, Lcom/cnvcs/App;->OnTimer()V

    .line 97
    iget-object v0, p0, Lcom/cnvcs/App;->m_handler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 98
    iget-object v0, p0, Lcom/cnvcs/App;->m_handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/cnvcs/App;->m_handler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 99
    return v4
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 119
    invoke-static {p1, p2, p3}, Lcom/cnvcs/App;->OnResult(IILandroid/content/Intent;)V

    .line 120
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 44
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    invoke-static {p0}, Lcom/cnvcs/App;->OnCreate(Landroid/app/Activity;)Lcom/cnvcs/GLView;

    move-result-object v0

    .line 47
    .local v0, view:Lcom/cnvcs/GLView;
    invoke-virtual {v0, p0}, Lcom/cnvcs/GLView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 48
    invoke-virtual {v0, p0}, Lcom/cnvcs/GLView;->setRenderer(Lcom/cnvcs/GLView$Renderer;)V

    .line 50
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/cnvcs/App;->m_handler:Landroid/os/Handler;

    .line 51
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/cnvcs/App;->handleMessage(Landroid/os/Message;)Z

    .line 52
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 68
    iget-object v0, p0, Lcom/cnvcs/App;->m_handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 69
    invoke-static {}, Lcom/cnvcs/App;->OnDestroy()V

    .line 70
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 71
    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    .line 72
    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)Z
    .locals 1
    .parameter "gl"

    .prologue
    .line 104
    invoke-static {}, Lcom/cnvcs/App;->OnUpdate()Z

    move-result v0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 76
    invoke-static {p2}, Lcom/cnvcs/App;->OnKey(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    const/4 v0, 0x1

    .line 78
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 83
    invoke-static {p2}, Lcom/cnvcs/App;->OnKey(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    const/4 v0, 0x1

    .line 85
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 56
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 57
    invoke-static {}, Lcom/cnvcs/App;->OnPause()V

    .line 58
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 62
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 63
    invoke-static {}, Lcom/cnvcs/App;->OnResume()V

    .line 64
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 0
    .parameter "gl"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 114
    invoke-static {p2, p3}, Lcom/cnvcs/App;->OnGraphChange(II)V

    .line 115
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 0
    .parameter "gl"
    .parameter "config"

    .prologue
    .line 109
    invoke-static {}, Lcom/cnvcs/App;->OnGraphCreate()V

    .line 110
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 90
    invoke-static {p2}, Lcom/cnvcs/App;->OnTouch(Landroid/view/MotionEvent;)Z

    .line 91
    const/4 v0, 0x1

    return v0
.end method
