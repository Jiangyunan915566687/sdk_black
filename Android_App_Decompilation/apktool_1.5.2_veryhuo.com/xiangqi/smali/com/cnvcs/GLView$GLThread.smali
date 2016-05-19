.class Lcom/cnvcs/GLView$GLThread;
.super Ljava/lang/Thread;
.source "GLView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnvcs/GLView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GLThread"
.end annotation


# instance fields
.field private mEglHelper:Lcom/cnvcs/GLView$EglHelper;

.field private mEventQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mExited:Z

.field private mHasSurface:Z

.field private mHaveEglContext:Z

.field private mHaveEglSurface:Z

.field private mHeight:I

.field private mPaused:Z

.field private mRenderComplete:Z

.field private mRenderMode:I

.field private mRenderer:Lcom/cnvcs/GLView$Renderer;

.field private mRequestPaused:Z

.field private mRequestRender:Z

.field private mShouldExit:Z

.field private mShouldReleaseEglContext:Z

.field private mWaitingForSurface:Z

.field private mWidth:I

.field final synthetic this$0:Lcom/cnvcs/GLView;


# direct methods
.method constructor <init>(Lcom/cnvcs/GLView;Lcom/cnvcs/GLView$Renderer;)V
    .locals 3
    .parameter
    .parameter "renderer"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 476
    iput-object p1, p0, Lcom/cnvcs/GLView$GLThread;->this$0:Lcom/cnvcs/GLView;

    .line 470
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 831
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cnvcs/GLView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    .line 471
    iput v1, p0, Lcom/cnvcs/GLView$GLThread;->mWidth:I

    .line 472
    iput v1, p0, Lcom/cnvcs/GLView$GLThread;->mHeight:I

    .line 473
    iput-boolean v2, p0, Lcom/cnvcs/GLView$GLThread;->mRequestRender:Z

    .line 474
    iput v2, p0, Lcom/cnvcs/GLView$GLThread;->mRenderMode:I

    .line 475
    iput-object p2, p0, Lcom/cnvcs/GLView$GLThread;->mRenderer:Lcom/cnvcs/GLView$Renderer;

    return-void
.end method

.method static synthetic access$0(Lcom/cnvcs/GLView$GLThread;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 818
    iput-boolean p1, p0, Lcom/cnvcs/GLView$GLThread;->mExited:Z

    return-void
.end method

.method private guardedRun()V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 505
    new-instance v14, Lcom/cnvcs/GLView$EglHelper;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cnvcs/GLView$GLThread;->this$0:Lcom/cnvcs/GLView;

    invoke-direct {v14, v15}, Lcom/cnvcs/GLView$EglHelper;-><init>(Lcom/cnvcs/GLView;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/cnvcs/GLView$GLThread;->mEglHelper:Lcom/cnvcs/GLView$EglHelper;

    .line 506
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/cnvcs/GLView$GLThread;->mHaveEglContext:Z

    .line 507
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/cnvcs/GLView$GLThread;->mHaveEglSurface:Z

    .line 509
    const/4 v7, 0x0

    .line 510
    .local v7, gl:Ljavax/microedition/khronos/opengles/GL10;
    const/4 v2, 0x0

    .line 511
    .local v2, createEglContext:Z
    const/4 v3, 0x0

    .line 512
    .local v3, createEglSurface:Z
    const/4 v9, 0x0

    .line 513
    .local v9, lostEglContext:Z
    const/4 v10, 0x0

    .line 514
    .local v10, sizeChanged:Z
    const/4 v13, 0x0

    .line 515
    .local v13, wantRenderNotification:Z
    const/4 v4, 0x0

    .line 516
    .local v4, doRenderNotification:Z
    const/4 v1, 0x0

    .line 517
    .local v1, askedToReleaseEglContext:Z
    const/4 v12, 0x0

    .line 518
    .local v12, w:I
    const/4 v8, 0x0

    .line 519
    .local v8, h:I
    const/4 v6, 0x0

    .line 522
    .local v6, event:Ljava/lang/Runnable;
    :cond_0
    :goto_0
    :try_start_0
    invoke-static {}, Lcom/cnvcs/GLView;->access$4()Lcom/cnvcs/GLView$GLThreadManager;

    move-result-object v15

    monitor-enter v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 524
    :goto_1
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/cnvcs/GLView$GLThread;->mShouldExit:Z

    if-eqz v14, :cond_1

    .line 525
    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 670
    invoke-static {}, Lcom/cnvcs/GLView;->access$4()Lcom/cnvcs/GLView$GLThreadManager;

    move-result-object v15

    monitor-enter v15

    .line 671
    :try_start_2
    invoke-direct/range {p0 .. p0}, Lcom/cnvcs/GLView$GLThread;->stopEglSurfaceLocked()V

    .line 672
    invoke-direct/range {p0 .. p0}, Lcom/cnvcs/GLView$GLThread;->stopEglContextLocked()V

    .line 670
    monitor-exit v15

    .line 675
    :goto_2
    return-void

    .line 670
    :catchall_0
    move-exception v14

    monitor-exit v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v14

    .line 528
    :cond_1
    :try_start_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cnvcs/GLView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_2

    .line 529
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cnvcs/GLView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v14

    move-object v0, v14

    check-cast v0, Ljava/lang/Runnable;

    move-object v6, v0

    .line 522
    :goto_3
    monitor-exit v15
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 628
    if-eqz v6, :cond_12

    .line 629
    :try_start_4
    invoke-interface {v6}, Ljava/lang/Runnable;->run()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 630
    const/4 v6, 0x0

    .line 631
    goto :goto_0

    .line 533
    :cond_2
    :try_start_5
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/cnvcs/GLView$GLThread;->mPaused:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/cnvcs/GLView$GLThread;->mRequestPaused:Z

    move/from16 v16, v0

    move/from16 v0, v16

    if-eq v14, v0, :cond_3

    .line 534
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/cnvcs/GLView$GLThread;->mRequestPaused:Z

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/cnvcs/GLView$GLThread;->mPaused:Z

    .line 535
    invoke-static {}, Lcom/cnvcs/GLView;->access$4()Lcom/cnvcs/GLView$GLThreadManager;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->notifyAll()V

    .line 538
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/cnvcs/GLView$GLThread;->mShouldReleaseEglContext:Z

    if-eqz v14, :cond_4

    .line 539
    invoke-direct/range {p0 .. p0}, Lcom/cnvcs/GLView$GLThread;->stopEglSurfaceLocked()V

    .line 540
    invoke-direct/range {p0 .. p0}, Lcom/cnvcs/GLView$GLThread;->stopEglContextLocked()V

    .line 541
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/cnvcs/GLView$GLThread;->mShouldReleaseEglContext:Z

    .line 542
    const/4 v1, 0x1

    .line 545
    :cond_4
    if-eqz v9, :cond_5

    .line 546
    invoke-direct/range {p0 .. p0}, Lcom/cnvcs/GLView$GLThread;->stopEglSurfaceLocked()V

    .line 547
    invoke-direct/range {p0 .. p0}, Lcom/cnvcs/GLView$GLThread;->stopEglContextLocked()V

    .line 548
    const/4 v9, 0x0

    .line 551
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/cnvcs/GLView$GLThread;->mHaveEglSurface:Z

    if-eqz v14, :cond_8

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/cnvcs/GLView$GLThread;->mPaused:Z

    if-eqz v14, :cond_8

    .line 552
    invoke-direct/range {p0 .. p0}, Lcom/cnvcs/GLView$GLThread;->stopEglSurfaceLocked()V

    .line 553
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cnvcs/GLView$GLThread;->this$0:Lcom/cnvcs/GLView;

    #getter for: Lcom/cnvcs/GLView;->mPreserveEGLContextOnPause:Z
    invoke-static {v14}, Lcom/cnvcs/GLView;->access$5(Lcom/cnvcs/GLView;)Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-static {}, Lcom/cnvcs/GLView;->access$4()Lcom/cnvcs/GLView$GLThreadManager;

    move-result-object v14

    invoke-virtual {v14}, Lcom/cnvcs/GLView$GLThreadManager;->shouldReleaseEGLContextWhenPausing()Z

    move-result v14

    if-eqz v14, :cond_7

    .line 554
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/cnvcs/GLView$GLThread;->stopEglContextLocked()V

    .line 556
    :cond_7
    invoke-static {}, Lcom/cnvcs/GLView;->access$4()Lcom/cnvcs/GLView$GLThreadManager;

    move-result-object v14

    invoke-virtual {v14}, Lcom/cnvcs/GLView$GLThreadManager;->shouldTerminateEGLWhenPausing()Z

    move-result v14

    if-eqz v14, :cond_8

    .line 557
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cnvcs/GLView$GLThread;->mEglHelper:Lcom/cnvcs/GLView$EglHelper;

    invoke-virtual {v14}, Lcom/cnvcs/GLView$EglHelper;->finish()V

    .line 561
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/cnvcs/GLView$GLThread;->mHasSurface:Z

    if-nez v14, :cond_a

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/cnvcs/GLView$GLThread;->mWaitingForSurface:Z

    if-nez v14, :cond_a

    .line 562
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/cnvcs/GLView$GLThread;->mHaveEglSurface:Z

    if-eqz v14, :cond_9

    .line 563
    invoke-direct/range {p0 .. p0}, Lcom/cnvcs/GLView$GLThread;->stopEglSurfaceLocked()V

    .line 565
    :cond_9
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/cnvcs/GLView$GLThread;->mWaitingForSurface:Z

    .line 566
    invoke-static {}, Lcom/cnvcs/GLView;->access$4()Lcom/cnvcs/GLView$GLThreadManager;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->notifyAll()V

    .line 569
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/cnvcs/GLView$GLThread;->mHasSurface:Z

    if-eqz v14, :cond_b

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/cnvcs/GLView$GLThread;->mWaitingForSurface:Z

    if-eqz v14, :cond_b

    .line 570
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/cnvcs/GLView$GLThread;->mWaitingForSurface:Z

    .line 571
    invoke-static {}, Lcom/cnvcs/GLView;->access$4()Lcom/cnvcs/GLView$GLThreadManager;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->notifyAll()V

    .line 574
    :cond_b
    if-eqz v4, :cond_c

    .line 575
    const/4 v13, 0x0

    .line 576
    const/4 v4, 0x0

    .line 577
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/cnvcs/GLView$GLThread;->mRenderComplete:Z

    .line 578
    invoke-static {}, Lcom/cnvcs/GLView;->access$4()Lcom/cnvcs/GLView$GLThreadManager;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->notifyAll()V

    .line 581
    :cond_c
    invoke-direct/range {p0 .. p0}, Lcom/cnvcs/GLView$GLThread;->readyToDraw()Z

    move-result v14

    if-eqz v14, :cond_11

    .line 582
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/cnvcs/GLView$GLThread;->mHaveEglContext:Z

    if-nez v14, :cond_d

    .line 583
    if-eqz v1, :cond_f

    .line 584
    const/4 v1, 0x0

    .line 599
    :cond_d
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/cnvcs/GLView$GLThread;->mHaveEglContext:Z

    if-eqz v14, :cond_e

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/cnvcs/GLView$GLThread;->mHaveEglSurface:Z

    if-nez v14, :cond_e

    .line 600
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/cnvcs/GLView$GLThread;->mHaveEglSurface:Z

    .line 601
    const/4 v3, 0x1

    .line 602
    const/4 v10, 0x1

    .line 605
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/cnvcs/GLView$GLThread;->mHaveEglSurface:Z

    if-eqz v14, :cond_11

    .line 606
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cnvcs/GLView$GLThread;->this$0:Lcom/cnvcs/GLView;

    #getter for: Lcom/cnvcs/GLView;->mSizeChanged:Z
    invoke-static {v14}, Lcom/cnvcs/GLView;->access$6(Lcom/cnvcs/GLView;)Z

    move-result v14

    if-eqz v14, :cond_10

    .line 607
    const/4 v10, 0x1

    .line 608
    move-object/from16 v0, p0

    iget v12, v0, Lcom/cnvcs/GLView$GLThread;->mWidth:I

    .line 609
    move-object/from16 v0, p0

    iget v8, v0, Lcom/cnvcs/GLView$GLThread;->mHeight:I

    .line 610
    const/4 v13, 0x1

    .line 616
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cnvcs/GLView$GLThread;->this$0:Lcom/cnvcs/GLView;

    const/16 v16, 0x0

    move/from16 v0, v16

    #setter for: Lcom/cnvcs/GLView;->mSizeChanged:Z
    invoke-static {v14, v0}, Lcom/cnvcs/GLView;->access$7(Lcom/cnvcs/GLView;Z)V

    .line 620
    :goto_5
    invoke-static {}, Lcom/cnvcs/GLView;->access$4()Lcom/cnvcs/GLView$GLThreadManager;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->notifyAll()V

    goto/16 :goto_3

    .line 522
    :catchall_1
    move-exception v14

    monitor-exit v15
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v14
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 669
    :catchall_2
    move-exception v14

    .line 670
    invoke-static {}, Lcom/cnvcs/GLView;->access$4()Lcom/cnvcs/GLView$GLThreadManager;

    move-result-object v15

    monitor-enter v15

    .line 671
    :try_start_7
    invoke-direct/range {p0 .. p0}, Lcom/cnvcs/GLView$GLThread;->stopEglSurfaceLocked()V

    .line 672
    invoke-direct/range {p0 .. p0}, Lcom/cnvcs/GLView$GLThread;->stopEglContextLocked()V

    .line 670
    monitor-exit v15
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 674
    throw v14

    .line 585
    :cond_f
    :try_start_8
    invoke-static {}, Lcom/cnvcs/GLView;->access$4()Lcom/cnvcs/GLView$GLThreadManager;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Lcom/cnvcs/GLView$GLThreadManager;->tryAcquireEglContextLocked(Lcom/cnvcs/GLView$GLThread;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-result v14

    if-eqz v14, :cond_d

    .line 587
    :try_start_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cnvcs/GLView$GLThread;->mEglHelper:Lcom/cnvcs/GLView$EglHelper;

    invoke-virtual {v14}, Lcom/cnvcs/GLView$EglHelper;->start()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_0

    .line 592
    const/4 v14, 0x1

    :try_start_a
    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/cnvcs/GLView$GLThread;->mHaveEglContext:Z

    .line 593
    const/4 v2, 0x1

    .line 595
    invoke-static {}, Lcom/cnvcs/GLView;->access$4()Lcom/cnvcs/GLView$GLThreadManager;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->notifyAll()V

    goto :goto_4

    .line 588
    :catch_0
    move-exception v11

    .line 589
    .local v11, t:Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/cnvcs/GLView;->access$4()Lcom/cnvcs/GLView$GLThreadManager;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Lcom/cnvcs/GLView$GLThreadManager;->releaseEglContextLocked(Lcom/cnvcs/GLView$GLThread;)V

    .line 590
    throw v11

    .line 618
    .end local v11           #t:Ljava/lang/RuntimeException;
    :cond_10
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/cnvcs/GLView$GLThread;->mRequestRender:Z

    goto :goto_5

    .line 624
    :cond_11
    invoke-static {}, Lcom/cnvcs/GLView;->access$4()Lcom/cnvcs/GLView$GLThreadManager;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->wait()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto/16 :goto_1

    .line 634
    :cond_12
    if-eqz v3, :cond_14

    .line 635
    :try_start_b
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cnvcs/GLView$GLThread;->mEglHelper:Lcom/cnvcs/GLView$EglHelper;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cnvcs/GLView$GLThread;->this$0:Lcom/cnvcs/GLView;

    invoke-virtual {v15}, Lcom/cnvcs/GLView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/cnvcs/GLView$EglHelper;->createSurface(Landroid/view/SurfaceHolder;)Ljavax/microedition/khronos/opengles/GL;

    move-result-object v14

    move-object v0, v14

    check-cast v0, Ljavax/microedition/khronos/opengles/GL10;

    move-object v7, v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 636
    if-nez v7, :cond_13

    .line 670
    invoke-static {}, Lcom/cnvcs/GLView;->access$4()Lcom/cnvcs/GLView$GLThreadManager;

    move-result-object v15

    monitor-enter v15

    .line 671
    :try_start_c
    invoke-direct/range {p0 .. p0}, Lcom/cnvcs/GLView$GLThread;->stopEglSurfaceLocked()V

    .line 672
    invoke-direct/range {p0 .. p0}, Lcom/cnvcs/GLView$GLThread;->stopEglContextLocked()V

    .line 670
    monitor-exit v15

    goto/16 :goto_2

    :catchall_3
    move-exception v14

    monitor-exit v15
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    throw v14

    .line 639
    :cond_13
    :try_start_d
    invoke-static {}, Lcom/cnvcs/GLView;->access$4()Lcom/cnvcs/GLView$GLThreadManager;

    move-result-object v14

    invoke-virtual {v14, v7}, Lcom/cnvcs/GLView$GLThreadManager;->checkGLDriver(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 640
    const/4 v3, 0x0

    .line 643
    :cond_14
    if-eqz v2, :cond_15

    .line 644
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cnvcs/GLView$GLThread;->mRenderer:Lcom/cnvcs/GLView$Renderer;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cnvcs/GLView$GLThread;->mEglHelper:Lcom/cnvcs/GLView$EglHelper;

    iget-object v15, v15, Lcom/cnvcs/GLView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v14, v7, v15}, Lcom/cnvcs/GLView$Renderer;->onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V

    .line 645
    const/4 v2, 0x0

    .line 648
    :cond_15
    if-eqz v10, :cond_16

    .line 649
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cnvcs/GLView$GLThread;->mEglHelper:Lcom/cnvcs/GLView$EglHelper;

    invoke-virtual {v14}, Lcom/cnvcs/GLView$EglHelper;->purgeBuffers()V

    .line 650
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cnvcs/GLView$GLThread;->mRenderer:Lcom/cnvcs/GLView$Renderer;

    invoke-interface {v14, v7, v12, v8}, Lcom/cnvcs/GLView$Renderer;->onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V

    .line 651
    const/4 v10, 0x0

    .line 654
    :cond_16
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cnvcs/GLView$GLThread;->mRenderer:Lcom/cnvcs/GLView$Renderer;

    invoke-interface {v14, v7}, Lcom/cnvcs/GLView$Renderer;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)Z

    move-result v5

    .line 655
    .local v5, drawn:Z
    if-eqz v5, :cond_18

    .line 657
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cnvcs/GLView$GLThread;->mEglHelper:Lcom/cnvcs/GLView$EglHelper;

    invoke-virtual {v14}, Lcom/cnvcs/GLView$EglHelper;->swap()Z

    move-result v14

    if-nez v14, :cond_17

    .line 658
    const/4 v9, 0x1

    .line 664
    :cond_17
    :goto_6
    if-eqz v13, :cond_0

    .line 665
    const/4 v4, 0x1

    .line 521
    goto/16 :goto_0

    .line 662
    :cond_18
    const-wide/16 v14, 0xf

    invoke-static {v14, v15}, Ljava/lang/Thread;->sleep(J)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    goto :goto_6

    .line 670
    .end local v5           #drawn:Z
    :catchall_4
    move-exception v14

    :try_start_e
    monitor-exit v15
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    throw v14
.end method

.method private readyToDraw()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 682
    iget-boolean v1, p0, Lcom/cnvcs/GLView$GLThread;->mPaused:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/cnvcs/GLView$GLThread;->mHasSurface:Z

    if-eqz v1, :cond_1

    .line 683
    iget v1, p0, Lcom/cnvcs/GLView$GLThread;->mWidth:I

    if-lez v1, :cond_1

    iget v1, p0, Lcom/cnvcs/GLView$GLThread;->mHeight:I

    if-lez v1, :cond_1

    .line 684
    iget-boolean v1, p0, Lcom/cnvcs/GLView$GLThread;->mRequestRender:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/cnvcs/GLView$GLThread;->mRenderMode:I

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    .line 682
    goto :goto_0
.end method

.method private stopEglContextLocked()V
    .locals 1

    .prologue
    .line 498
    iget-boolean v0, p0, Lcom/cnvcs/GLView$GLThread;->mHaveEglContext:Z

    if-eqz v0, :cond_0

    .line 499
    iget-object v0, p0, Lcom/cnvcs/GLView$GLThread;->mEglHelper:Lcom/cnvcs/GLView$EglHelper;

    invoke-virtual {v0}, Lcom/cnvcs/GLView$EglHelper;->finish()V

    .line 500
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cnvcs/GLView$GLThread;->mHaveEglContext:Z

    .line 501
    invoke-static {}, Lcom/cnvcs/GLView;->access$4()Lcom/cnvcs/GLView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/cnvcs/GLView$GLThreadManager;->releaseEglContextLocked(Lcom/cnvcs/GLView$GLThread;)V

    .line 503
    :cond_0
    return-void
.end method

.method private stopEglSurfaceLocked()V
    .locals 1

    .prologue
    .line 491
    iget-boolean v0, p0, Lcom/cnvcs/GLView$GLThread;->mHaveEglSurface:Z

    if-eqz v0, :cond_0

    .line 492
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cnvcs/GLView$GLThread;->mHaveEglSurface:Z

    .line 493
    iget-object v0, p0, Lcom/cnvcs/GLView$GLThread;->mEglHelper:Lcom/cnvcs/GLView$EglHelper;

    invoke-virtual {v0}, Lcom/cnvcs/GLView$EglHelper;->destroySurface()V

    .line 495
    :cond_0
    return-void
.end method


# virtual methods
.method public ableToDraw()Z
    .locals 1

    .prologue
    .line 678
    iget-boolean v0, p0, Lcom/cnvcs/GLView$GLThread;->mHaveEglContext:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/cnvcs/GLView$GLThread;->mHaveEglSurface:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/cnvcs/GLView$GLThread;->readyToDraw()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRenderMode()I
    .locals 2

    .prologue
    .line 698
    invoke-static {}, Lcom/cnvcs/GLView;->access$4()Lcom/cnvcs/GLView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    .line 699
    :try_start_0
    iget v0, p0, Lcom/cnvcs/GLView$GLThread;->mRenderMode:I

    monitor-exit v1

    return v0

    .line 698
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 739
    invoke-static {}, Lcom/cnvcs/GLView;->access$4()Lcom/cnvcs/GLView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    .line 740
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/cnvcs/GLView$GLThread;->mRequestPaused:Z

    .line 741
    invoke-static {}, Lcom/cnvcs/GLView;->access$4()Lcom/cnvcs/GLView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 742
    :goto_0
    iget-boolean v1, p0, Lcom/cnvcs/GLView$GLThread;->mExited:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/cnvcs/GLView$GLThread;->mPaused:Z

    if-eqz v1, :cond_1

    .line 739
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 750
    return-void

    .line 744
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/cnvcs/GLView;->access$4()Lcom/cnvcs/GLView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 745
    :catch_0
    move-exception v0

    .line 746
    .local v0, ex:Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 739
    .end local v0           #ex:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 753
    invoke-static {}, Lcom/cnvcs/GLView;->access$4()Lcom/cnvcs/GLView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    .line 754
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/cnvcs/GLView$GLThread;->mRequestPaused:Z

    .line 755
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/cnvcs/GLView$GLThread;->mRequestRender:Z

    .line 756
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/cnvcs/GLView$GLThread;->mRenderComplete:Z

    .line 757
    invoke-static {}, Lcom/cnvcs/GLView;->access$4()Lcom/cnvcs/GLView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 758
    :goto_0
    iget-boolean v1, p0, Lcom/cnvcs/GLView$GLThread;->mExited:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/cnvcs/GLView$GLThread;->mPaused:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/cnvcs/GLView$GLThread;->mRenderComplete:Z

    if-eqz v1, :cond_1

    .line 753
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 766
    return-void

    .line 760
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/cnvcs/GLView;->access$4()Lcom/cnvcs/GLView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 761
    :catch_0
    move-exception v0

    .line 762
    .local v0, ex:Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 753
    .end local v0           #ex:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public onWindowResize(II)V
    .locals 4
    .parameter "w"
    .parameter "h"

    .prologue
    .line 769
    invoke-static {}, Lcom/cnvcs/GLView;->access$4()Lcom/cnvcs/GLView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    .line 770
    :try_start_0
    iput p1, p0, Lcom/cnvcs/GLView$GLThread;->mWidth:I

    .line 771
    iput p2, p0, Lcom/cnvcs/GLView$GLThread;->mHeight:I

    .line 772
    iget-object v1, p0, Lcom/cnvcs/GLView$GLThread;->this$0:Lcom/cnvcs/GLView;

    const/4 v3, 0x1

    #setter for: Lcom/cnvcs/GLView;->mSizeChanged:Z
    invoke-static {v1, v3}, Lcom/cnvcs/GLView;->access$7(Lcom/cnvcs/GLView;Z)V

    .line 773
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/cnvcs/GLView$GLThread;->mRequestRender:Z

    .line 774
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/cnvcs/GLView$GLThread;->mRenderComplete:Z

    .line 775
    invoke-static {}, Lcom/cnvcs/GLView;->access$4()Lcom/cnvcs/GLView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 777
    :goto_0
    iget-boolean v1, p0, Lcom/cnvcs/GLView$GLThread;->mExited:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/cnvcs/GLView$GLThread;->mPaused:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/cnvcs/GLView$GLThread;->mRenderComplete:Z

    if-nez v1, :cond_0

    .line 778
    iget-object v1, p0, Lcom/cnvcs/GLView$GLThread;->this$0:Lcom/cnvcs/GLView;

    #getter for: Lcom/cnvcs/GLView;->mGLThread:Lcom/cnvcs/GLView$GLThread;
    invoke-static {v1}, Lcom/cnvcs/GLView;->access$8(Lcom/cnvcs/GLView;)Lcom/cnvcs/GLView$GLThread;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cnvcs/GLView$GLThread;->this$0:Lcom/cnvcs/GLView;

    #getter for: Lcom/cnvcs/GLView;->mGLThread:Lcom/cnvcs/GLView$GLThread;
    invoke-static {v1}, Lcom/cnvcs/GLView;->access$8(Lcom/cnvcs/GLView;)Lcom/cnvcs/GLView$GLThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cnvcs/GLView$GLThread;->ableToDraw()Z

    move-result v1

    .line 777
    if-nez v1, :cond_1

    .line 769
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 786
    return-void

    .line 780
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/cnvcs/GLView;->access$4()Lcom/cnvcs/GLView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 781
    :catch_0
    move-exception v0

    .line 782
    .local v0, ex:Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 769
    .end local v0           #ex:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public queueEvent(Ljava/lang/Runnable;)V
    .locals 2
    .parameter "r"

    .prologue
    .line 808
    if-nez p1, :cond_0

    .line 809
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "r must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 811
    :cond_0
    invoke-static {}, Lcom/cnvcs/GLView;->access$4()Lcom/cnvcs/GLView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    .line 812
    :try_start_0
    iget-object v0, p0, Lcom/cnvcs/GLView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 813
    invoke-static {}, Lcom/cnvcs/GLView;->access$4()Lcom/cnvcs/GLView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 811
    monitor-exit v1

    .line 815
    return-void

    .line 811
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public requestExitAndWait()V
    .locals 3

    .prologue
    .line 789
    invoke-static {}, Lcom/cnvcs/GLView;->access$4()Lcom/cnvcs/GLView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    .line 790
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/cnvcs/GLView$GLThread;->mShouldExit:Z

    .line 791
    invoke-static {}, Lcom/cnvcs/GLView;->access$4()Lcom/cnvcs/GLView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 792
    :goto_0
    iget-boolean v1, p0, Lcom/cnvcs/GLView$GLThread;->mExited:Z

    if-eqz v1, :cond_0

    .line 789
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 800
    return-void

    .line 794
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/cnvcs/GLView;->access$4()Lcom/cnvcs/GLView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 795
    :catch_0
    move-exception v0

    .line 796
    .local v0, ex:Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 789
    .end local v0           #ex:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public requestReleaseEglContextLocked()V
    .locals 1

    .prologue
    .line 803
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cnvcs/GLView$GLThread;->mShouldReleaseEglContext:Z

    .line 804
    invoke-static {}, Lcom/cnvcs/GLView;->access$4()Lcom/cnvcs/GLView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 805
    return-void
.end method

.method public requestRender()V
    .locals 2

    .prologue
    .line 704
    invoke-static {}, Lcom/cnvcs/GLView;->access$4()Lcom/cnvcs/GLView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    .line 705
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/cnvcs/GLView$GLThread;->mRequestRender:Z

    .line 706
    invoke-static {}, Lcom/cnvcs/GLView;->access$4()Lcom/cnvcs/GLView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 704
    monitor-exit v1

    .line 708
    return-void

    .line 704
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 3

    .prologue
    .line 480
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GLThread "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/cnvcs/GLView$GLThread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cnvcs/GLView$GLThread;->setName(Ljava/lang/String;)V

    .line 483
    :try_start_0
    invoke-direct {p0}, Lcom/cnvcs/GLView$GLThread;->guardedRun()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 486
    invoke-static {}, Lcom/cnvcs/GLView;->access$4()Lcom/cnvcs/GLView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/cnvcs/GLView$GLThreadManager;->threadExiting(Lcom/cnvcs/GLView$GLThread;)V

    .line 488
    :goto_0
    return-void

    .line 484
    :catch_0
    move-exception v0

    .line 486
    invoke-static {}, Lcom/cnvcs/GLView;->access$4()Lcom/cnvcs/GLView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/cnvcs/GLView$GLThreadManager;->threadExiting(Lcom/cnvcs/GLView$GLThread;)V

    goto :goto_0

    .line 485
    :catchall_0
    move-exception v0

    .line 486
    invoke-static {}, Lcom/cnvcs/GLView;->access$4()Lcom/cnvcs/GLView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/cnvcs/GLView$GLThreadManager;->threadExiting(Lcom/cnvcs/GLView$GLThread;)V

    .line 487
    throw v0
.end method

.method public setRenderMode(I)V
    .locals 2
    .parameter "renderMode"

    .prologue
    .line 688
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    .line 689
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "renderMode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 691
    :cond_1
    invoke-static {}, Lcom/cnvcs/GLView;->access$4()Lcom/cnvcs/GLView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    .line 692
    :try_start_0
    iput p1, p0, Lcom/cnvcs/GLView$GLThread;->mRenderMode:I

    .line 693
    invoke-static {}, Lcom/cnvcs/GLView;->access$4()Lcom/cnvcs/GLView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 691
    monitor-exit v1

    .line 695
    return-void

    .line 691
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public surfaceCreated()V
    .locals 3

    .prologue
    .line 711
    invoke-static {}, Lcom/cnvcs/GLView;->access$4()Lcom/cnvcs/GLView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    .line 712
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/cnvcs/GLView$GLThread;->mHasSurface:Z

    .line 713
    invoke-static {}, Lcom/cnvcs/GLView;->access$4()Lcom/cnvcs/GLView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 714
    :goto_0
    iget-boolean v1, p0, Lcom/cnvcs/GLView$GLThread;->mWaitingForSurface:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/cnvcs/GLView$GLThread;->mExited:Z

    if-eqz v1, :cond_1

    .line 711
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 722
    return-void

    .line 716
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/cnvcs/GLView;->access$4()Lcom/cnvcs/GLView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 717
    :catch_0
    move-exception v0

    .line 718
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 711
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public surfaceDestroyed()V
    .locals 3

    .prologue
    .line 725
    invoke-static {}, Lcom/cnvcs/GLView;->access$4()Lcom/cnvcs/GLView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    .line 726
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/cnvcs/GLView$GLThread;->mHasSurface:Z

    .line 727
    invoke-static {}, Lcom/cnvcs/GLView;->access$4()Lcom/cnvcs/GLView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 728
    :goto_0
    iget-boolean v1, p0, Lcom/cnvcs/GLView$GLThread;->mWaitingForSurface:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/cnvcs/GLView$GLThread;->mExited:Z

    if-eqz v1, :cond_1

    .line 725
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 736
    return-void

    .line 730
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/cnvcs/GLView;->access$4()Lcom/cnvcs/GLView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 731
    :catch_0
    move-exception v0

    .line 732
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 725
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
