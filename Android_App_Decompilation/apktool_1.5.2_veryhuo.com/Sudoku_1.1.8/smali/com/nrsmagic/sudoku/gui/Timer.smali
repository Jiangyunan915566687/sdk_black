.class abstract Lcom/nrsmagic/sudoku/gui/Timer;
.super Landroid/os/Handler;
.source "Timer.java"


# instance fields
.field private mAccumTime:J

.field private mIsRunning:Z

.field private mLastLogTime:J

.field private mNextTime:J

.field private mTickCount:I

.field private mTickInterval:J

.field private final runner:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(J)V
    .locals 4
    .parameter "ival"

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 55
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 166
    new-instance v0, Lcom/nrsmagic/sudoku/gui/Timer$1;

    invoke-direct {v0, p0}, Lcom/nrsmagic/sudoku/gui/Timer$1;-><init>(Lcom/nrsmagic/sudoku/gui/Timer;)V

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/Timer;->runner:Ljava/lang/Runnable;

    .line 269
    iput-wide v2, p0, Lcom/nrsmagic/sudoku/gui/Timer;->mTickInterval:J

    .line 272
    iput-boolean v1, p0, Lcom/nrsmagic/sudoku/gui/Timer;->mIsRunning:Z

    .line 56
    iput-wide p1, p0, Lcom/nrsmagic/sudoku/gui/Timer;->mTickInterval:J

    .line 57
    iput-boolean v1, p0, Lcom/nrsmagic/sudoku/gui/Timer;->mIsRunning:Z

    .line 58
    iput-wide v2, p0, Lcom/nrsmagic/sudoku/gui/Timer;->mAccumTime:J

    .line 59
    return-void
.end method

.method static synthetic access$0(Lcom/nrsmagic/sudoku/gui/Timer;)Z
    .locals 1
    .parameter

    .prologue
    .line 272
    iget-boolean v0, p0, Lcom/nrsmagic/sudoku/gui/Timer;->mIsRunning:Z

    return v0
.end method

.method static synthetic access$1(Lcom/nrsmagic/sudoku/gui/Timer;)J
    .locals 2
    .parameter

    .prologue
    .line 283
    iget-wide v0, p0, Lcom/nrsmagic/sudoku/gui/Timer;->mAccumTime:J

    return-wide v0
.end method

.method static synthetic access$10(Lcom/nrsmagic/sudoku/gui/Timer;)Ljava/lang/Runnable;
    .locals 1
    .parameter

    .prologue
    .line 166
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/Timer;->runner:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$11(Lcom/nrsmagic/sudoku/gui/Timer;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 272
    iput-boolean p1, p0, Lcom/nrsmagic/sudoku/gui/Timer;->mIsRunning:Z

    return-void
.end method

.method static synthetic access$2(Lcom/nrsmagic/sudoku/gui/Timer;)J
    .locals 2
    .parameter

    .prologue
    .line 286
    iget-wide v0, p0, Lcom/nrsmagic/sudoku/gui/Timer;->mLastLogTime:J

    return-wide v0
.end method

.method static synthetic access$3(Lcom/nrsmagic/sudoku/gui/Timer;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 283
    iput-wide p1, p0, Lcom/nrsmagic/sudoku/gui/Timer;->mAccumTime:J

    return-void
.end method

.method static synthetic access$4(Lcom/nrsmagic/sudoku/gui/Timer;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 286
    iput-wide p1, p0, Lcom/nrsmagic/sudoku/gui/Timer;->mLastLogTime:J

    return-void
.end method

.method static synthetic access$5(Lcom/nrsmagic/sudoku/gui/Timer;)I
    .locals 1
    .parameter

    .prologue
    .line 275
    iget v0, p0, Lcom/nrsmagic/sudoku/gui/Timer;->mTickCount:I

    return v0
.end method

.method static synthetic access$6(Lcom/nrsmagic/sudoku/gui/Timer;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 275
    iput p1, p0, Lcom/nrsmagic/sudoku/gui/Timer;->mTickCount:I

    return-void
.end method

.method static synthetic access$7(Lcom/nrsmagic/sudoku/gui/Timer;)J
    .locals 2
    .parameter

    .prologue
    .line 279
    iget-wide v0, p0, Lcom/nrsmagic/sudoku/gui/Timer;->mNextTime:J

    return-wide v0
.end method

.method static synthetic access$8(Lcom/nrsmagic/sudoku/gui/Timer;)J
    .locals 2
    .parameter

    .prologue
    .line 269
    iget-wide v0, p0, Lcom/nrsmagic/sudoku/gui/Timer;->mTickInterval:J

    return-wide v0
.end method

.method static synthetic access$9(Lcom/nrsmagic/sudoku/gui/Timer;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 279
    iput-wide p1, p0, Lcom/nrsmagic/sudoku/gui/Timer;->mNextTime:J

    return-void
.end method


# virtual methods
.method protected done()V
    .locals 0

    .prologue
    .line 156
    return-void
.end method

.method public final getTime()J
    .locals 2

    .prologue
    .line 133
    iget-wide v0, p0, Lcom/nrsmagic/sudoku/gui/Timer;->mAccumTime:J

    return-wide v0
.end method

.method public final isRunning()Z
    .locals 1

    .prologue
    .line 123
    iget-boolean v0, p0, Lcom/nrsmagic/sudoku/gui/Timer;->mIsRunning:Z

    return v0
.end method

.method public final reset()V
    .locals 2

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/nrsmagic/sudoku/gui/Timer;->stop()V

    .line 112
    const/4 v0, 0x0

    iput v0, p0, Lcom/nrsmagic/sudoku/gui/Timer;->mTickCount:I

    .line 113
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/nrsmagic/sudoku/gui/Timer;->mAccumTime:J

    .line 114
    return-void
.end method

.method restoreState(Landroid/os/Bundle;)Z
    .locals 1
    .parameter "map"

    .prologue
    .line 231
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/nrsmagic/sudoku/gui/Timer;->restoreState(Landroid/os/Bundle;Z)Z

    move-result v0

    return v0
.end method

.method restoreState(Landroid/os/Bundle;Z)Z
    .locals 2
    .parameter "map"
    .parameter "run"

    .prologue
    .line 246
    const-string v0, "tickInterval"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nrsmagic/sudoku/gui/Timer;->mTickInterval:J

    .line 247
    const-string v0, "isRunning"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nrsmagic/sudoku/gui/Timer;->mIsRunning:Z

    .line 248
    const-string v0, "tickCount"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/nrsmagic/sudoku/gui/Timer;->mTickCount:I

    .line 249
    const-string v0, "accumTime"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nrsmagic/sudoku/gui/Timer;->mAccumTime:J

    .line 250
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nrsmagic/sudoku/gui/Timer;->mLastLogTime:J

    .line 253
    iget-boolean v0, p0, Lcom/nrsmagic/sudoku/gui/Timer;->mIsRunning:Z

    if-eqz v0, :cond_0

    .line 254
    if-eqz p2, :cond_1

    .line 255
    invoke-virtual {p0}, Lcom/nrsmagic/sudoku/gui/Timer;->start()V

    .line 260
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 257
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nrsmagic/sudoku/gui/Timer;->mIsRunning:Z

    goto :goto_0
.end method

.method saveState(Landroid/os/Bundle;)V
    .locals 6
    .parameter "outState"

    .prologue
    .line 208
    iget-boolean v2, p0, Lcom/nrsmagic/sudoku/gui/Timer;->mIsRunning:Z

    if-eqz v2, :cond_0

    .line 209
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 210
    .local v0, now:J
    iget-wide v2, p0, Lcom/nrsmagic/sudoku/gui/Timer;->mAccumTime:J

    iget-wide v4, p0, Lcom/nrsmagic/sudoku/gui/Timer;->mLastLogTime:J

    sub-long v4, v0, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/nrsmagic/sudoku/gui/Timer;->mAccumTime:J

    .line 211
    iput-wide v0, p0, Lcom/nrsmagic/sudoku/gui/Timer;->mLastLogTime:J

    .line 214
    .end local v0           #now:J
    :cond_0
    const-string v2, "tickInterval"

    iget-wide v3, p0, Lcom/nrsmagic/sudoku/gui/Timer;->mTickInterval:J

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 215
    const-string v2, "isRunning"

    iget-boolean v3, p0, Lcom/nrsmagic/sudoku/gui/Timer;->mIsRunning:Z

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 216
    const-string v2, "tickCount"

    iget v3, p0, Lcom/nrsmagic/sudoku/gui/Timer;->mTickCount:I

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 217
    const-string v2, "accumTime"

    iget-wide v3, p0, Lcom/nrsmagic/sudoku/gui/Timer;->mAccumTime:J

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 218
    return-void
.end method

.method public start()V
    .locals 5

    .prologue
    .line 74
    iget-boolean v2, p0, Lcom/nrsmagic/sudoku/gui/Timer;->mIsRunning:Z

    if-eqz v2, :cond_0

    .line 87
    :goto_0
    return-void

    .line 77
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/nrsmagic/sudoku/gui/Timer;->mIsRunning:Z

    .line 79
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 82
    .local v0, now:J
    iput-wide v0, p0, Lcom/nrsmagic/sudoku/gui/Timer;->mLastLogTime:J

    .line 85
    iput-wide v0, p0, Lcom/nrsmagic/sudoku/gui/Timer;->mNextTime:J

    .line 86
    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/Timer;->runner:Ljava/lang/Runnable;

    iget-wide v3, p0, Lcom/nrsmagic/sudoku/gui/Timer;->mNextTime:J

    invoke-virtual {p0, v2, v3, v4}, Lcom/nrsmagic/sudoku/gui/Timer;->postAtTime(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method protected abstract step(IJ)Z
.end method

.method public stop()V
    .locals 6

    .prologue
    .line 98
    iget-boolean v2, p0, Lcom/nrsmagic/sudoku/gui/Timer;->mIsRunning:Z

    if-eqz v2, :cond_0

    .line 99
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/nrsmagic/sudoku/gui/Timer;->mIsRunning:Z

    .line 100
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 101
    .local v0, now:J
    iget-wide v2, p0, Lcom/nrsmagic/sudoku/gui/Timer;->mAccumTime:J

    iget-wide v4, p0, Lcom/nrsmagic/sudoku/gui/Timer;->mLastLogTime:J

    sub-long v4, v0, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/nrsmagic/sudoku/gui/Timer;->mAccumTime:J

    .line 102
    iput-wide v0, p0, Lcom/nrsmagic/sudoku/gui/Timer;->mLastLogTime:J

    .line 104
    .end local v0           #now:J
    :cond_0
    return-void
.end method
