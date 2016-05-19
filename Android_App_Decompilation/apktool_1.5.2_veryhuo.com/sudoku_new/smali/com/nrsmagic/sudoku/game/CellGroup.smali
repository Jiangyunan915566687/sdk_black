.class public Lcom/nrsmagic/sudoku/game/CellGroup;
.super Ljava/lang/Object;
.source "CellGroup.java"


# instance fields
.field private mCells:[Lcom/nrsmagic/sudoku/game/Cell;

.field private mPos:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/nrsmagic/sudoku/game/Cell;

    iput-object v0, p0, Lcom/nrsmagic/sudoku/game/CellGroup;->mCells:[Lcom/nrsmagic/sudoku/game/Cell;

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/nrsmagic/sudoku/game/CellGroup;->mPos:I

    .line 37
    return-void
.end method


# virtual methods
.method public addCell(Lcom/nrsmagic/sudoku/game/Cell;)V
    .locals 2
    .parameter "cell"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/nrsmagic/sudoku/game/CellGroup;->mCells:[Lcom/nrsmagic/sudoku/game/Cell;

    iget v1, p0, Lcom/nrsmagic/sudoku/game/CellGroup;->mPos:I

    aput-object p1, v0, v1

    .line 43
    iget v0, p0, Lcom/nrsmagic/sudoku/game/CellGroup;->mPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/nrsmagic/sudoku/game/CellGroup;->mPos:I

    .line 44
    return-void
.end method

.method public contains(I)Z
    .locals 2
    .parameter "value"

    .prologue
    .line 78
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/nrsmagic/sudoku/game/CellGroup;->mCells:[Lcom/nrsmagic/sudoku/game/Cell;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 83
    const/4 v1, 0x0

    :goto_1
    return v1

    .line 79
    :cond_0
    iget-object v1, p0, Lcom/nrsmagic/sudoku/game/CellGroup;->mCells:[Lcom/nrsmagic/sudoku/game/Cell;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/nrsmagic/sudoku/game/Cell;->getValue()I

    move-result v1

    if-ne v1, p1, :cond_1

    .line 80
    const/4 v1, 0x1

    goto :goto_1

    .line 78
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected validate()Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 57
    const/4 v3, 0x1

    .line 59
    .local v3, valid:Z
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 60
    .local v1, cellsByValue:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Lcom/nrsmagic/sudoku/game/Cell;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v5, p0, Lcom/nrsmagic/sudoku/game/CellGroup;->mCells:[Lcom/nrsmagic/sudoku/game/Cell;

    array-length v5, v5

    if-lt v2, v5, :cond_0

    .line 74
    return v3

    .line 61
    :cond_0
    iget-object v5, p0, Lcom/nrsmagic/sudoku/game/CellGroup;->mCells:[Lcom/nrsmagic/sudoku/game/Cell;

    aget-object v0, v5, v2

    .line 62
    .local v0, cell:Lcom/nrsmagic/sudoku/game/Cell;
    invoke-virtual {v0}, Lcom/nrsmagic/sudoku/game/Cell;->getValue()I

    move-result v4

    .line 63
    .local v4, value:I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 64
    iget-object v5, p0, Lcom/nrsmagic/sudoku/game/CellGroup;->mCells:[Lcom/nrsmagic/sudoku/game/Cell;

    aget-object v5, v5, v2

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/nrsmagic/sudoku/game/Cell;->setValid(Ljava/lang/Boolean;)V

    .line 65
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/nrsmagic/sudoku/game/Cell;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/nrsmagic/sudoku/game/Cell;->setValid(Ljava/lang/Boolean;)V

    .line 66
    const/4 v3, 0x0

    .line 60
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 68
    :cond_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method
