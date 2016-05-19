.class public Lcom/nrsmagic/sudoku/game/FolderInfo;
.super Ljava/lang/Object;
.source "FolderInfo.java"


# instance fields
.field public id:J

.field public name:Ljava/lang/String;

.field public playingCount:I

.field public puzzleCount:I

.field public solvedCount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;)V
    .locals 0
    .parameter "id"
    .parameter "name"

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-wide p1, p0, Lcom/nrsmagic/sudoku/game/FolderInfo;->id:J

    .line 65
    iput-object p3, p0, Lcom/nrsmagic/sudoku/game/FolderInfo;->name:Ljava/lang/String;

    .line 66
    return-void
.end method


# virtual methods
.method public getDetail(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .parameter "c"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .local v0, sb:Ljava/lang/StringBuilder;
    iget v2, p0, Lcom/nrsmagic/sudoku/game/FolderInfo;->puzzleCount:I

    if-nez v2, :cond_1

    .line 73
    const v2, 0x7f090019

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 76
    :cond_1
    iget v2, p0, Lcom/nrsmagic/sudoku/game/FolderInfo;->puzzleCount:I

    if-ne v2, v5, :cond_6

    const v2, 0x7f09001a

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    iget v2, p0, Lcom/nrsmagic/sudoku/game/FolderInfo;->puzzleCount:I

    iget v3, p0, Lcom/nrsmagic/sudoku/game/FolderInfo;->solvedCount:I

    sub-int v1, v2, v3

    .line 81
    .local v1, unsolvedCount:I
    iget v2, p0, Lcom/nrsmagic/sudoku/game/FolderInfo;->playingCount:I

    if-nez v2, :cond_2

    if-eqz v1, :cond_5

    .line 82
    :cond_2
    const-string v2, " ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    iget v2, p0, Lcom/nrsmagic/sudoku/game/FolderInfo;->playingCount:I

    if-eqz v2, :cond_3

    .line 85
    const v2, 0x7f09001f

    new-array v3, v5, [Ljava/lang/Object;

    iget v4, p0, Lcom/nrsmagic/sudoku/game/FolderInfo;->playingCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    if-eqz v1, :cond_3

    .line 87
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    :cond_3
    if-eqz v1, :cond_4

    .line 92
    const v2, 0x7f09001e

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    :cond_4
    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    :cond_5
    if-nez v1, :cond_0

    iget v2, p0, Lcom/nrsmagic/sudoku/game/FolderInfo;->puzzleCount:I

    if-eqz v2, :cond_0

    .line 100
    const-string v2, " ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f09001c

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 76
    .end local v1           #unsolvedCount:I
    :cond_6
    const v2, 0x7f09001b

    new-array v3, v5, [Ljava/lang/Object;

    iget v4, p0, Lcom/nrsmagic/sudoku/game/FolderInfo;->puzzleCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method
