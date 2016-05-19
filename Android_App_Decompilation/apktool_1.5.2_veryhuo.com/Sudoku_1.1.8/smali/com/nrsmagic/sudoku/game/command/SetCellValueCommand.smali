.class public Lcom/nrsmagic/sudoku/game/command/SetCellValueCommand;
.super Lcom/nrsmagic/sudoku/game/command/AbstractCellCommand;
.source "SetCellValueCommand.java"


# instance fields
.field private mCellColumn:I

.field private mCellRow:I

.field private mOldValue:I

.field private mValue:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/nrsmagic/sudoku/game/command/AbstractCellCommand;-><init>()V

    .line 41
    return-void
.end method

.method public constructor <init>(Lcom/nrsmagic/sudoku/game/Cell;I)V
    .locals 1
    .parameter "cell"
    .parameter "value"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/nrsmagic/sudoku/game/command/AbstractCellCommand;-><init>()V

    .line 34
    invoke-virtual {p1}, Lcom/nrsmagic/sudoku/game/Cell;->getRowIndex()I

    move-result v0

    iput v0, p0, Lcom/nrsmagic/sudoku/game/command/SetCellValueCommand;->mCellRow:I

    .line 35
    invoke-virtual {p1}, Lcom/nrsmagic/sudoku/game/Cell;->getColumnIndex()I

    move-result v0

    iput v0, p0, Lcom/nrsmagic/sudoku/game/command/SetCellValueCommand;->mCellColumn:I

    .line 36
    iput p2, p0, Lcom/nrsmagic/sudoku/game/command/SetCellValueCommand;->mValue:I

    .line 37
    return-void
.end method


# virtual methods
.method execute()V
    .locals 4

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/nrsmagic/sudoku/game/command/SetCellValueCommand;->getCells()Lcom/nrsmagic/sudoku/game/CellCollection;

    move-result-object v1

    iget v2, p0, Lcom/nrsmagic/sudoku/game/command/SetCellValueCommand;->mCellRow:I

    iget v3, p0, Lcom/nrsmagic/sudoku/game/command/SetCellValueCommand;->mCellColumn:I

    invoke-virtual {v1, v2, v3}, Lcom/nrsmagic/sudoku/game/CellCollection;->getCell(II)Lcom/nrsmagic/sudoku/game/Cell;

    move-result-object v0

    .line 66
    .local v0, cell:Lcom/nrsmagic/sudoku/game/Cell;
    invoke-virtual {v0}, Lcom/nrsmagic/sudoku/game/Cell;->getValue()I

    move-result v1

    iput v1, p0, Lcom/nrsmagic/sudoku/game/command/SetCellValueCommand;->mOldValue:I

    .line 67
    iget v1, p0, Lcom/nrsmagic/sudoku/game/command/SetCellValueCommand;->mValue:I

    invoke-virtual {v0, v1}, Lcom/nrsmagic/sudoku/game/Cell;->setValue(I)V

    .line 68
    return-void
.end method

.method restoreState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "inState"

    .prologue
    .line 55
    invoke-super {p0, p1}, Lcom/nrsmagic/sudoku/game/command/AbstractCellCommand;->restoreState(Landroid/os/Bundle;)V

    .line 57
    const-string v0, "cellRow"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/nrsmagic/sudoku/game/command/SetCellValueCommand;->mCellRow:I

    .line 58
    const-string v0, "cellColumn"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/nrsmagic/sudoku/game/command/SetCellValueCommand;->mCellColumn:I

    .line 59
    const-string v0, "value"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/nrsmagic/sudoku/game/command/SetCellValueCommand;->mValue:I

    .line 60
    const-string v0, "oldValue"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/nrsmagic/sudoku/game/command/SetCellValueCommand;->mOldValue:I

    .line 61
    return-void
.end method

.method saveState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 45
    invoke-super {p0, p1}, Lcom/nrsmagic/sudoku/game/command/AbstractCellCommand;->saveState(Landroid/os/Bundle;)V

    .line 47
    const-string v0, "cellRow"

    iget v1, p0, Lcom/nrsmagic/sudoku/game/command/SetCellValueCommand;->mCellRow:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 48
    const-string v0, "cellColumn"

    iget v1, p0, Lcom/nrsmagic/sudoku/game/command/SetCellValueCommand;->mCellColumn:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 49
    const-string v0, "value"

    iget v1, p0, Lcom/nrsmagic/sudoku/game/command/SetCellValueCommand;->mValue:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 50
    const-string v0, "oldValue"

    iget v1, p0, Lcom/nrsmagic/sudoku/game/command/SetCellValueCommand;->mOldValue:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 51
    return-void
.end method

.method undo()V
    .locals 4

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/nrsmagic/sudoku/game/command/SetCellValueCommand;->getCells()Lcom/nrsmagic/sudoku/game/CellCollection;

    move-result-object v1

    iget v2, p0, Lcom/nrsmagic/sudoku/game/command/SetCellValueCommand;->mCellRow:I

    iget v3, p0, Lcom/nrsmagic/sudoku/game/command/SetCellValueCommand;->mCellColumn:I

    invoke-virtual {v1, v2, v3}, Lcom/nrsmagic/sudoku/game/CellCollection;->getCell(II)Lcom/nrsmagic/sudoku/game/Cell;

    move-result-object v0

    .line 73
    .local v0, cell:Lcom/nrsmagic/sudoku/game/Cell;
    iget v1, p0, Lcom/nrsmagic/sudoku/game/command/SetCellValueCommand;->mOldValue:I

    invoke-virtual {v0, v1}, Lcom/nrsmagic/sudoku/game/Cell;->setValue(I)V

    .line 74
    return-void
.end method
