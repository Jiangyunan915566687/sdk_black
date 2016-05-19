.class public Lcom/nrsmagic/sudoku/gui/GameTimeFormat;
.super Ljava/lang/Object;
.source "GameTimeFormat.java"


# static fields
.field private static final TIME_99_99:I = 0x958d28


# instance fields
.field private mGameTimeFormatter:Ljava/util/Formatter;

.field private mTimeText:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/GameTimeFormat;->mTimeText:Ljava/lang/StringBuilder;

    .line 35
    new-instance v0, Ljava/util/Formatter;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/GameTimeFormat;->mTimeText:Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/GameTimeFormat;->mGameTimeFormatter:Ljava/util/Formatter;

    .line 31
    return-void
.end method


# virtual methods
.method public format(J)Ljava/lang/String;
    .locals 11
    .parameter "time"

    .prologue
    const-wide/16 v9, 0x3e8

    const-wide/16 v7, 0x3c

    const/4 v2, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 45
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/GameTimeFormat;->mTimeText:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 46
    const-wide/32 v0, 0x958d28

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/GameTimeFormat;->mGameTimeFormatter:Ljava/util/Formatter;

    const-string v1, "%d:%02d"

    new-array v2, v2, [Ljava/lang/Object;

    const-wide/32 v3, 0xea60

    div-long v3, p1, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v5

    div-long v3, p1, v9

    rem-long/2addr v3, v7

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 51
    :goto_0
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/GameTimeFormat;->mTimeText:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/GameTimeFormat;->mGameTimeFormatter:Ljava/util/Formatter;

    const-string v1, "%02d:%02d"

    new-array v2, v2, [Ljava/lang/Object;

    const-wide/32 v3, 0xea60

    div-long v3, p1, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v5

    div-long v3, p1, v9

    rem-long/2addr v3, v7

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    goto :goto_0
.end method
