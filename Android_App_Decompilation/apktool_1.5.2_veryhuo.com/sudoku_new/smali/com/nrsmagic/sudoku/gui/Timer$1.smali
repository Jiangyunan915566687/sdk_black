.class Lcom/nrsmagic/sudoku/gui/Timer$1;
.super Ljava/lang/Object;
.source "Timer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nrsmagic/sudoku/gui/Timer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nrsmagic/sudoku/gui/Timer;


# direct methods
.method constructor <init>(Lcom/nrsmagic/sudoku/gui/Timer;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nrsmagic/sudoku/gui/Timer$1;->this$0:Lcom/nrsmagic/sudoku/gui/Timer;

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .prologue
    .line 169
    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/Timer$1;->this$0:Lcom/nrsmagic/sudoku/gui/Timer;

    #getter for: Lcom/nrsmagic/sudoku/gui/Timer;->mIsRunning:Z
    invoke-static {v2}, Lcom/nrsmagic/sudoku/gui/Timer;->access$0(Lcom/nrsmagic/sudoku/gui/Timer;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 170
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 173
    .local v0, now:J
    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/Timer$1;->this$0:Lcom/nrsmagic/sudoku/gui/Timer;

    #getter for: Lcom/nrsmagic/sudoku/gui/Timer;->mAccumTime:J
    invoke-static {v2}, Lcom/nrsmagic/sudoku/gui/Timer;->access$1(Lcom/nrsmagic/sudoku/gui/Timer;)J

    move-result-wide v3

    iget-object v5, p0, Lcom/nrsmagic/sudoku/gui/Timer$1;->this$0:Lcom/nrsmagic/sudoku/gui/Timer;

    #getter for: Lcom/nrsmagic/sudoku/gui/Timer;->mLastLogTime:J
    invoke-static {v5}, Lcom/nrsmagic/sudoku/gui/Timer;->access$2(Lcom/nrsmagic/sudoku/gui/Timer;)J

    move-result-wide v5

    sub-long v5, v0, v5

    add-long/2addr v3, v5

    #setter for: Lcom/nrsmagic/sudoku/gui/Timer;->mAccumTime:J
    invoke-static {v2, v3, v4}, Lcom/nrsmagic/sudoku/gui/Timer;->access$3(Lcom/nrsmagic/sudoku/gui/Timer;J)V

    .line 174
    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/Timer$1;->this$0:Lcom/nrsmagic/sudoku/gui/Timer;

    #setter for: Lcom/nrsmagic/sudoku/gui/Timer;->mLastLogTime:J
    invoke-static {v2, v0, v1}, Lcom/nrsmagic/sudoku/gui/Timer;->access$4(Lcom/nrsmagic/sudoku/gui/Timer;J)V

    .line 176
    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/Timer$1;->this$0:Lcom/nrsmagic/sudoku/gui/Timer;

    iget-object v3, p0, Lcom/nrsmagic/sudoku/gui/Timer$1;->this$0:Lcom/nrsmagic/sudoku/gui/Timer;

    #getter for: Lcom/nrsmagic/sudoku/gui/Timer;->mTickCount:I
    invoke-static {v3}, Lcom/nrsmagic/sudoku/gui/Timer;->access$5(Lcom/nrsmagic/sudoku/gui/Timer;)I

    move-result v4

    add-int/lit8 v5, v4, 0x1

    #setter for: Lcom/nrsmagic/sudoku/gui/Timer;->mTickCount:I
    invoke-static {v3, v5}, Lcom/nrsmagic/sudoku/gui/Timer;->access$6(Lcom/nrsmagic/sudoku/gui/Timer;I)V

    iget-object v3, p0, Lcom/nrsmagic/sudoku/gui/Timer$1;->this$0:Lcom/nrsmagic/sudoku/gui/Timer;

    #getter for: Lcom/nrsmagic/sudoku/gui/Timer;->mAccumTime:J
    invoke-static {v3}, Lcom/nrsmagic/sudoku/gui/Timer;->access$1(Lcom/nrsmagic/sudoku/gui/Timer;)J

    move-result-wide v5

    invoke-virtual {v2, v4, v5, v6}, Lcom/nrsmagic/sudoku/gui/Timer;->step(IJ)Z

    move-result v2

    if-nez v2, :cond_2

    .line 180
    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/Timer$1;->this$0:Lcom/nrsmagic/sudoku/gui/Timer;

    #getter for: Lcom/nrsmagic/sudoku/gui/Timer;->mNextTime:J
    invoke-static {v2}, Lcom/nrsmagic/sudoku/gui/Timer;->access$7(Lcom/nrsmagic/sudoku/gui/Timer;)J

    move-result-wide v3

    iget-object v5, p0, Lcom/nrsmagic/sudoku/gui/Timer$1;->this$0:Lcom/nrsmagic/sudoku/gui/Timer;

    #getter for: Lcom/nrsmagic/sudoku/gui/Timer;->mTickInterval:J
    invoke-static {v5}, Lcom/nrsmagic/sudoku/gui/Timer;->access$8(Lcom/nrsmagic/sudoku/gui/Timer;)J

    move-result-wide v5

    add-long/2addr v3, v5

    #setter for: Lcom/nrsmagic/sudoku/gui/Timer;->mNextTime:J
    invoke-static {v2, v3, v4}, Lcom/nrsmagic/sudoku/gui/Timer;->access$9(Lcom/nrsmagic/sudoku/gui/Timer;J)V

    .line 181
    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/Timer$1;->this$0:Lcom/nrsmagic/sudoku/gui/Timer;

    #getter for: Lcom/nrsmagic/sudoku/gui/Timer;->mNextTime:J
    invoke-static {v2}, Lcom/nrsmagic/sudoku/gui/Timer;->access$7(Lcom/nrsmagic/sudoku/gui/Timer;)J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-gtz v2, :cond_0

    .line 182
    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/Timer$1;->this$0:Lcom/nrsmagic/sudoku/gui/Timer;

    #getter for: Lcom/nrsmagic/sudoku/gui/Timer;->mNextTime:J
    invoke-static {v2}, Lcom/nrsmagic/sudoku/gui/Timer;->access$7(Lcom/nrsmagic/sudoku/gui/Timer;)J

    move-result-wide v3

    iget-object v5, p0, Lcom/nrsmagic/sudoku/gui/Timer$1;->this$0:Lcom/nrsmagic/sudoku/gui/Timer;

    #getter for: Lcom/nrsmagic/sudoku/gui/Timer;->mTickInterval:J
    invoke-static {v5}, Lcom/nrsmagic/sudoku/gui/Timer;->access$8(Lcom/nrsmagic/sudoku/gui/Timer;)J

    move-result-wide v5

    add-long/2addr v3, v5

    #setter for: Lcom/nrsmagic/sudoku/gui/Timer;->mNextTime:J
    invoke-static {v2, v3, v4}, Lcom/nrsmagic/sudoku/gui/Timer;->access$9(Lcom/nrsmagic/sudoku/gui/Timer;J)V

    .line 183
    :cond_0
    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/Timer$1;->this$0:Lcom/nrsmagic/sudoku/gui/Timer;

    iget-object v3, p0, Lcom/nrsmagic/sudoku/gui/Timer$1;->this$0:Lcom/nrsmagic/sudoku/gui/Timer;

    #getter for: Lcom/nrsmagic/sudoku/gui/Timer;->runner:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/nrsmagic/sudoku/gui/Timer;->access$10(Lcom/nrsmagic/sudoku/gui/Timer;)Ljava/lang/Runnable;

    move-result-object v3

    iget-object v4, p0, Lcom/nrsmagic/sudoku/gui/Timer$1;->this$0:Lcom/nrsmagic/sudoku/gui/Timer;

    #getter for: Lcom/nrsmagic/sudoku/gui/Timer;->mNextTime:J
    invoke-static {v4}, Lcom/nrsmagic/sudoku/gui/Timer;->access$7(Lcom/nrsmagic/sudoku/gui/Timer;)J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lcom/nrsmagic/sudoku/gui/Timer;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 189
    .end local v0           #now:J
    :cond_1
    :goto_0
    return-void

    .line 185
    .restart local v0       #now:J
    :cond_2
    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/Timer$1;->this$0:Lcom/nrsmagic/sudoku/gui/Timer;

    const/4 v3, 0x0

    #setter for: Lcom/nrsmagic/sudoku/gui/Timer;->mIsRunning:Z
    invoke-static {v2, v3}, Lcom/nrsmagic/sudoku/gui/Timer;->access$11(Lcom/nrsmagic/sudoku/gui/Timer;Z)V

    .line 186
    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/Timer$1;->this$0:Lcom/nrsmagic/sudoku/gui/Timer;

    invoke-virtual {v2}, Lcom/nrsmagic/sudoku/gui/Timer;->done()V

    goto :goto_0
.end method
