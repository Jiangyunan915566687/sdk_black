.class public Lcom/nrsmagic/sudoku/game/Cell;
.super Ljava/lang/Object;
.source "Cell.java"


# instance fields
.field private mCellCollection:Lcom/nrsmagic/sudoku/game/CellCollection;

.field private final mCellCollectionLock:Ljava/lang/Object;

.field private mColumn:Lcom/nrsmagic/sudoku/game/CellGroup;

.field private mColumnIndex:I

.field private mEditable:Z

.field private mNote:Lcom/nrsmagic/sudoku/game/CellNote;

.field private mRow:Lcom/nrsmagic/sudoku/game/CellGroup;

.field private mRowIndex:I

.field private mSector:Lcom/nrsmagic/sudoku/game/CellGroup;

.field private mValid:Z

.field private mValue:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 52
    const/4 v0, 0x0

    new-instance v1, Lcom/nrsmagic/sudoku/game/CellNote;

    invoke-direct {v1}, Lcom/nrsmagic/sudoku/game/CellNote;-><init>()V

    invoke-direct {p0, v0, v1, v2, v2}, Lcom/nrsmagic/sudoku/game/Cell;-><init>(ILcom/nrsmagic/sudoku/game/CellNote;ZZ)V

    .line 53
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .parameter "value"

    .prologue
    const/4 v1, 0x1

    .line 60
    new-instance v0, Lcom/nrsmagic/sudoku/game/CellNote;

    invoke-direct {v0}, Lcom/nrsmagic/sudoku/game/CellNote;-><init>()V

    invoke-direct {p0, p1, v0, v1, v1}, Lcom/nrsmagic/sudoku/game/Cell;-><init>(ILcom/nrsmagic/sudoku/game/CellNote;ZZ)V

    .line 61
    return-void
.end method

.method private constructor <init>(ILcom/nrsmagic/sudoku/game/CellNote;ZZ)V
    .locals 2
    .parameter "value"
    .parameter "note"
    .parameter "editable"
    .parameter "valid"

    .prologue
    const/4 v1, -0x1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/nrsmagic/sudoku/game/Cell;->mCellCollectionLock:Ljava/lang/Object;

    .line 37
    iput v1, p0, Lcom/nrsmagic/sudoku/game/Cell;->mRowIndex:I

    .line 38
    iput v1, p0, Lcom/nrsmagic/sudoku/game/Cell;->mColumnIndex:I

    .line 64
    if-ltz p1, :cond_0

    const/16 v0, 0x9

    if-le p1, v0, :cond_1

    .line 65
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value must be between 0-9."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_1
    iput p1, p0, Lcom/nrsmagic/sudoku/game/Cell;->mValue:I

    .line 69
    iput-object p2, p0, Lcom/nrsmagic/sudoku/game/Cell;->mNote:Lcom/nrsmagic/sudoku/game/CellNote;

    .line 70
    iput-boolean p3, p0, Lcom/nrsmagic/sudoku/game/Cell;->mEditable:Z

    .line 71
    iput-boolean p4, p0, Lcom/nrsmagic/sudoku/game/Cell;->mValid:Z

    .line 72
    return-void
.end method

.method public static deserialize(Ljava/lang/String;)Lcom/nrsmagic/sudoku/game/Cell;
    .locals 2
    .parameter "cellData"

    .prologue
    .line 245
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, "|"

    invoke-direct {v0, p0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    .local v0, data:Ljava/util/StringTokenizer;
    invoke-static {v0}, Lcom/nrsmagic/sudoku/game/Cell;->deserialize(Ljava/util/StringTokenizer;)Lcom/nrsmagic/sudoku/game/Cell;

    move-result-object v1

    return-object v1
.end method

.method public static deserialize(Ljava/util/StringTokenizer;)Lcom/nrsmagic/sudoku/game/Cell;
    .locals 3
    .parameter "data"

    .prologue
    .line 229
    new-instance v0, Lcom/nrsmagic/sudoku/game/Cell;

    invoke-direct {v0}, Lcom/nrsmagic/sudoku/game/Cell;-><init>()V

    .line 230
    .local v0, cell:Lcom/nrsmagic/sudoku/game/Cell;
    invoke-virtual {p0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nrsmagic/sudoku/game/Cell;->setValue(I)V

    .line 231
    invoke-virtual {p0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/nrsmagic/sudoku/game/CellNote;->deserialize(Ljava/lang/String;)Lcom/nrsmagic/sudoku/game/CellNote;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nrsmagic/sudoku/game/Cell;->setNote(Lcom/nrsmagic/sudoku/game/CellNote;)V

    .line 232
    invoke-virtual {p0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nrsmagic/sudoku/game/Cell;->setEditable(Ljava/lang/Boolean;)V

    .line 234
    return-object v0
.end method

.method private onChange()V
    .locals 2

    .prologue
    .line 277
    iget-object v1, p0, Lcom/nrsmagic/sudoku/game/Cell;->mCellCollectionLock:Ljava/lang/Object;

    monitor-enter v1

    .line 278
    :try_start_0
    iget-object v0, p0, Lcom/nrsmagic/sudoku/game/Cell;->mCellCollection:Lcom/nrsmagic/sudoku/game/CellCollection;

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/nrsmagic/sudoku/game/Cell;->mCellCollection:Lcom/nrsmagic/sudoku/game/CellCollection;

    invoke-virtual {v0}, Lcom/nrsmagic/sudoku/game/CellCollection;->onChange()V

    .line 277
    :cond_0
    monitor-exit v1

    .line 283
    return-void

    .line 277
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public getColumn()Lcom/nrsmagic/sudoku/game/CellGroup;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/nrsmagic/sudoku/game/Cell;->mColumn:Lcom/nrsmagic/sudoku/game/CellGroup;

    return-object v0
.end method

.method public getColumnIndex()I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lcom/nrsmagic/sudoku/game/Cell;->mColumnIndex:I

    return v0
.end method

.method public getNote()Lcom/nrsmagic/sudoku/game/CellNote;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/nrsmagic/sudoku/game/Cell;->mNote:Lcom/nrsmagic/sudoku/game/CellNote;

    return-object v0
.end method

.method public getRow()Lcom/nrsmagic/sudoku/game/CellGroup;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/nrsmagic/sudoku/game/Cell;->mRow:Lcom/nrsmagic/sudoku/game/CellGroup;

    return-object v0
.end method

.method public getRowIndex()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/nrsmagic/sudoku/game/Cell;->mRowIndex:I

    return v0
.end method

.method public getSector()Lcom/nrsmagic/sudoku/game/CellGroup;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/nrsmagic/sudoku/game/Cell;->mSector:Lcom/nrsmagic/sudoku/game/CellGroup;

    return-object v0
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 162
    iget v0, p0, Lcom/nrsmagic/sudoku/game/Cell;->mValue:I

    return v0
.end method

.method protected initCollection(Lcom/nrsmagic/sudoku/game/CellCollection;IILcom/nrsmagic/sudoku/game/CellGroup;Lcom/nrsmagic/sudoku/game/CellGroup;Lcom/nrsmagic/sudoku/game/CellGroup;)V
    .locals 2
    .parameter "cellCollection"
    .parameter "rowIndex"
    .parameter "colIndex"
    .parameter "sector"
    .parameter "row"
    .parameter "column"

    .prologue
    .line 101
    iget-object v1, p0, Lcom/nrsmagic/sudoku/game/Cell;->mCellCollectionLock:Ljava/lang/Object;

    monitor-enter v1

    .line 102
    :try_start_0
    iput-object p1, p0, Lcom/nrsmagic/sudoku/game/Cell;->mCellCollection:Lcom/nrsmagic/sudoku/game/CellCollection;

    .line 101
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    iput p2, p0, Lcom/nrsmagic/sudoku/game/Cell;->mRowIndex:I

    .line 106
    iput p3, p0, Lcom/nrsmagic/sudoku/game/Cell;->mColumnIndex:I

    .line 107
    iput-object p4, p0, Lcom/nrsmagic/sudoku/game/Cell;->mSector:Lcom/nrsmagic/sudoku/game/CellGroup;

    .line 108
    iput-object p5, p0, Lcom/nrsmagic/sudoku/game/Cell;->mRow:Lcom/nrsmagic/sudoku/game/CellGroup;

    .line 109
    iput-object p6, p0, Lcom/nrsmagic/sudoku/game/Cell;->mColumn:Lcom/nrsmagic/sudoku/game/CellGroup;

    .line 111
    invoke-virtual {p4, p0}, Lcom/nrsmagic/sudoku/game/CellGroup;->addCell(Lcom/nrsmagic/sudoku/game/Cell;)V

    .line 112
    invoke-virtual {p5, p0}, Lcom/nrsmagic/sudoku/game/CellGroup;->addCell(Lcom/nrsmagic/sudoku/game/Cell;)V

    .line 113
    invoke-virtual {p6, p0}, Lcom/nrsmagic/sudoku/game/CellGroup;->addCell(Lcom/nrsmagic/sudoku/game/Cell;)V

    .line 114
    return-void

    .line 101
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public isEditable()Z
    .locals 1

    .prologue
    .line 190
    iget-boolean v0, p0, Lcom/nrsmagic/sudoku/game/Cell;->mEditable:Z

    return v0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 218
    iget-boolean v0, p0, Lcom/nrsmagic/sudoku/game/Cell;->mValid:Z

    return v0
.end method

.method public serialize()Ljava/lang/String;
    .locals 2

    .prologue
    .line 268
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 269
    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p0, v0}, Lcom/nrsmagic/sudoku/game/Cell;->serialize(Ljava/lang/StringBuilder;)V

    .line 270
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public serialize(Ljava/lang/StringBuilder;)V
    .locals 2
    .parameter "data"

    .prologue
    .line 257
    iget v0, p0, Lcom/nrsmagic/sudoku/game/Cell;->mValue:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    iget-object v0, p0, Lcom/nrsmagic/sudoku/game/Cell;->mNote:Lcom/nrsmagic/sudoku/game/CellNote;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nrsmagic/sudoku/game/Cell;->mNote:Lcom/nrsmagic/sudoku/game/CellNote;

    invoke-virtual {v0}, Lcom/nrsmagic/sudoku/game/CellNote;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 259
    :cond_0
    const-string v0, "-"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    :goto_0
    iget-boolean v0, p0, Lcom/nrsmagic/sudoku/game/Cell;->mEditable:Z

    if-eqz v0, :cond_2

    const-string v0, "1"

    :goto_1
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    return-void

    .line 261
    :cond_1
    iget-object v0, p0, Lcom/nrsmagic/sudoku/game/Cell;->mNote:Lcom/nrsmagic/sudoku/game/CellNote;

    invoke-virtual {v0, p1}, Lcom/nrsmagic/sudoku/game/CellNote;->serialize(Ljava/lang/StringBuilder;)V

    .line 262
    const-string v0, "|"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 264
    :cond_2
    const-string v0, "0"

    goto :goto_1
.end method

.method public setEditable(Ljava/lang/Boolean;)V
    .locals 1
    .parameter "editable"

    .prologue
    .line 198
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/nrsmagic/sudoku/game/Cell;->mEditable:Z

    .line 199
    invoke-direct {p0}, Lcom/nrsmagic/sudoku/game/Cell;->onChange()V

    .line 200
    return-void
.end method

.method public setNote(Lcom/nrsmagic/sudoku/game/CellNote;)V
    .locals 0
    .parameter "note"

    .prologue
    .line 181
    iput-object p1, p0, Lcom/nrsmagic/sudoku/game/Cell;->mNote:Lcom/nrsmagic/sudoku/game/CellNote;

    .line 182
    invoke-direct {p0}, Lcom/nrsmagic/sudoku/game/Cell;->onChange()V

    .line 183
    return-void
.end method

.method public setValid(Ljava/lang/Boolean;)V
    .locals 1
    .parameter "valid"

    .prologue
    .line 208
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/nrsmagic/sudoku/game/Cell;->mValid:Z

    .line 209
    invoke-direct {p0}, Lcom/nrsmagic/sudoku/game/Cell;->onChange()V

    .line 210
    return-void
.end method

.method public setValue(I)V
    .locals 2
    .parameter "value"

    .prologue
    .line 149
    if-ltz p1, :cond_0

    const/16 v0, 0x9

    if-le p1, v0, :cond_1

    .line 150
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value must be between 0-9."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :cond_1
    iput p1, p0, Lcom/nrsmagic/sudoku/game/Cell;->mValue:I

    .line 153
    invoke-direct {p0}, Lcom/nrsmagic/sudoku/game/Cell;->onChange()V

    .line 154
    return-void
.end method
