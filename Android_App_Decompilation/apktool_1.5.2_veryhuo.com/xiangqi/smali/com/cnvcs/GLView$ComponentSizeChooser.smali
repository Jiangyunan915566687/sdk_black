.class Lcom/cnvcs/GLView$ComponentSizeChooser;
.super Lcom/cnvcs/GLView$BaseConfigChooser;
.source "GLView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnvcs/GLView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ComponentSizeChooser"
.end annotation


# instance fields
.field protected mAlphaSize:I

.field protected mBlueSize:I

.field protected mDepthSize:I

.field protected mGreenSize:I

.field protected mRedSize:I

.field protected mStencilSize:I

.field private mValue:[I

.field final synthetic this$0:Lcom/cnvcs/GLView;


# direct methods
.method public constructor <init>(Lcom/cnvcs/GLView;IIIIII)V
    .locals 4
    .parameter
    .parameter "redSize"
    .parameter "greenSize"
    .parameter "blueSize"
    .parameter "alphaSize"
    .parameter "depthSize"
    .parameter "stencilSize"

    .prologue
    const/4 v3, 0x1

    .line 290
    iput-object p1, p0, Lcom/cnvcs/GLView$ComponentSizeChooser;->this$0:Lcom/cnvcs/GLView;

    .line 275
    const/16 v0, 0xd

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 276
    const/16 v2, 0x3024

    aput v2, v0, v1

    aput p2, v0, v3

    const/4 v1, 0x2

    .line 277
    const/16 v2, 0x3023

    aput v2, v0, v1

    const/4 v1, 0x3

    aput p3, v0, v1

    const/4 v1, 0x4

    .line 278
    const/16 v2, 0x3022

    aput v2, v0, v1

    const/4 v1, 0x5

    aput p4, v0, v1

    const/4 v1, 0x6

    .line 279
    const/16 v2, 0x3021

    aput v2, v0, v1

    const/4 v1, 0x7

    aput p5, v0, v1

    const/16 v1, 0x8

    .line 280
    const/16 v2, 0x3025

    aput v2, v0, v1

    const/16 v1, 0x9

    aput p6, v0, v1

    const/16 v1, 0xa

    .line 281
    const/16 v2, 0x3026

    aput v2, v0, v1

    const/16 v1, 0xb

    aput p7, v0, v1

    const/16 v1, 0xc

    .line 282
    const/16 v2, 0x3038

    aput v2, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/cnvcs/GLView$BaseConfigChooser;-><init>(Lcom/cnvcs/GLView;[I)V

    .line 283
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/cnvcs/GLView$ComponentSizeChooser;->mValue:[I

    .line 284
    iput p2, p0, Lcom/cnvcs/GLView$ComponentSizeChooser;->mRedSize:I

    .line 285
    iput p3, p0, Lcom/cnvcs/GLView$ComponentSizeChooser;->mGreenSize:I

    .line 286
    iput p4, p0, Lcom/cnvcs/GLView$ComponentSizeChooser;->mBlueSize:I

    .line 287
    iput p5, p0, Lcom/cnvcs/GLView$ComponentSizeChooser;->mAlphaSize:I

    .line 288
    iput p6, p0, Lcom/cnvcs/GLView$ComponentSizeChooser;->mDepthSize:I

    .line 289
    iput p7, p0, Lcom/cnvcs/GLView$ComponentSizeChooser;->mStencilSize:I

    return-void
.end method

.method private findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I
    .locals 2
    .parameter "egl"
    .parameter "display"
    .parameter "config"
    .parameter "attribute"
    .parameter "defaultValue"

    .prologue
    .line 321
    iget-object v0, p0, Lcom/cnvcs/GLView$ComponentSizeChooser;->mValue:[I

    invoke-interface {p1, p2, p3, p4, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/cnvcs/GLView$ComponentSizeChooser;->mValue:[I

    const/4 v1, 0x0

    aget p5, v0, v1

    .line 324
    .end local p5
    :cond_0
    return p5
.end method


# virtual methods
.method public chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 15
    .parameter "egl"
    .parameter "display"
    .parameter "configs"

    .prologue
    .line 295
    move-object/from16 v0, p3

    array-length v14, v0

    const/4 v1, 0x0

    move v13, v1

    :goto_0
    if-lt v13, v14, :cond_1

    .line 315
    const/4 v4, 0x0

    :cond_0
    return-object v4

    .line 295
    :cond_1
    aget-object v4, p3, v13

    .line 297
    .local v4, config:Ljavax/microedition/khronos/egl/EGLConfig;
    const/16 v5, 0x3025

    const/4 v6, 0x0

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    .line 296
    invoke-direct/range {v1 .. v6}, Lcom/cnvcs/GLView$ComponentSizeChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v9

    .line 299
    .local v9, d:I
    const/16 v5, 0x3026

    const/4 v6, 0x0

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    .line 298
    invoke-direct/range {v1 .. v6}, Lcom/cnvcs/GLView$ComponentSizeChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v12

    .line 300
    .local v12, s:I
    iget v1, p0, Lcom/cnvcs/GLView$ComponentSizeChooser;->mDepthSize:I

    if-lt v9, v1, :cond_2

    iget v1, p0, Lcom/cnvcs/GLView$ComponentSizeChooser;->mStencilSize:I

    if-lt v12, v1, :cond_2

    .line 302
    const/16 v5, 0x3024

    const/4 v6, 0x0

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    .line 301
    invoke-direct/range {v1 .. v6}, Lcom/cnvcs/GLView$ComponentSizeChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v11

    .line 304
    .local v11, r:I
    const/16 v5, 0x3023

    const/4 v6, 0x0

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    .line 303
    invoke-direct/range {v1 .. v6}, Lcom/cnvcs/GLView$ComponentSizeChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v10

    .line 306
    .local v10, g:I
    const/16 v5, 0x3022

    const/4 v6, 0x0

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    .line 305
    invoke-direct/range {v1 .. v6}, Lcom/cnvcs/GLView$ComponentSizeChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v8

    .line 308
    .local v8, b:I
    const/16 v5, 0x3021

    const/4 v6, 0x0

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    .line 307
    invoke-direct/range {v1 .. v6}, Lcom/cnvcs/GLView$ComponentSizeChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v7

    .line 309
    .local v7, a:I
    iget v1, p0, Lcom/cnvcs/GLView$ComponentSizeChooser;->mRedSize:I

    if-ne v11, v1, :cond_2

    iget v1, p0, Lcom/cnvcs/GLView$ComponentSizeChooser;->mGreenSize:I

    if-ne v10, v1, :cond_2

    .line 310
    iget v1, p0, Lcom/cnvcs/GLView$ComponentSizeChooser;->mBlueSize:I

    if-ne v8, v1, :cond_2

    iget v1, p0, Lcom/cnvcs/GLView$ComponentSizeChooser;->mAlphaSize:I

    if-eq v7, v1, :cond_0

    .line 295
    .end local v7           #a:I
    .end local v8           #b:I
    .end local v10           #g:I
    .end local v11           #r:I
    :cond_2
    add-int/lit8 v1, v13, 0x1

    move v13, v1

    goto :goto_0
.end method
