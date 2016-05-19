.class public Lcom/nrsmagic/sudoku/game/command/EditCellNoteCommand;
.super Lcom/nrsmagic/sudoku/game/command/AbstractCellCommand;
.source "EditCellNoteCommand.java"


# instance fields
.field private mCellColumn:I

.field private mCellRow:I

.field private mNote:Lcom/nrsmagic/sudoku/game/CellNote;

.field private mOldNote:Lcom/nrsmagic/sudoku/game/CellNote;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/nrsmagic/sudoku/game/command/AbstractCellCommand;-><init>()V

    .line 42
    return-void
.end method

.method public constructor <init>(Lcom/nrsmagic/sudoku/game/Cell;Lcom/nrsmagic/sudoku/game/CellNote;)V
    .locals 1
    .parameter "cell"
    .parameter "note"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/nrsmagic/sudoku/game/command/AbstractCellCommand;-><init>()V

    .line 35
    invoke-virtual {p1}, Lcom/nrsmagic/sudoku/game/Cell;->getRowIndex()I

    move-result v0

    iput v0, p0, Lcom/nrsmagic/sudoku/game/command/EditCellNoteCommand;->mCellRow:I

    .line 36
    invoke-virtual {p1}, Lcom/nrsmagic/sudoku/game/Cell;->getColumnIndex()I

    move-result v0

    iput v0, p0, Lcom/nrsmagic/sudoku/game/command/EditCellNoteCommand;->mCellColumn:I

    .line 37
    iput-object p2, p0, Lcom/nrsmagic/sudoku/game/command/EditCellNoteCommand;->mNote:Lcom/nrsmagic/sudoku/game/CellNote;

    .line 38
    return-void
.end method


# virtual methods
.method execute()V
    .locals 4

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/nrsmagic/sudoku/game/command/EditCellNoteCommand;->getCells()Lcom/nrsmagic/sudoku/game/CellCollection;

    move-result-object v1

    iget v2, p0, Lcom/nrsmagic/sudoku/game/command/EditCellNoteCommand;->mCellRow:I

    iget v3, p0, Lcom/nrsmagic/sudoku/game/command/EditCellNoteCommand;->mCellColumn:I

    invoke-virtual {v1, v2, v3}, Lcom/nrsmagic/sudoku/game/CellCollection;->getCell(II)Lcom/nrsmagic/sudoku/game/Cell;

    move-result-object v0

    .line 67
    .local v0, cell:Lcom/nrsmagic/sudoku/game/Cell;
    invoke-virtual {v0}, Lcom/nrsmagic/sudoku/game/Cell;->getNote()Lcom/nrsmagic/sudoku/game/CellNote;

    move-result-object v1

    iput-object v1, p0, Lcom/nrsmagic/sudoku/game/command/EditCellNoteCommand;->mOldNote:Lcom/nrsmagic/sudoku/game/CellNote;

    .line 68
    iget-object v1, p0, Lcom/nrsmagic/sudoku/game/command/EditCellNoteCommand;->mNote:Lcom/nrsmagic/sudoku/game/CellNote;

    invoke-virtual {v0, v1}, Lcom/nrsmagic/sudoku/game/Cell;->setNote(Lcom/nrsmagic/sudoku/game/CellNote;)V

    .line 69
    return-void
.end method

.method restoreState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "inState"

    .prologue
    .line 56
    invoke-super {p0, p1}, Lcom/nrsmagic/sudoku/game/command/AbstractCellCommand;->restoreState(Landroid/os/Bundle;)V

    .line 58
    const-string v0, "cellRow"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/nrsmagic/sudoku/game/command/EditCellNoteCommand;->mCellRow:I

    .line 59
    const-string v0, "cellColumn"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/nrsmagic/sudoku/game/command/EditCellNoteCommand;->mCellColumn:I

    .line 60
    const-string v0, "note"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nrsmagic/sudoku/game/CellNote;->deserialize(Ljava/lang/String;)Lcom/nrsmagic/sudoku/game/CellNote;

    move-result-object v0

    iput-object v0, p0, Lcom/nrsmagic/sudoku/game/command/EditCellNoteCommand;->mNote:Lcom/nrsmagic/sudoku/game/CellNote;

    .line 61
    const-string v0, "oldNote"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nrsmagic/sudoku/game/CellNote;->deserialize(Ljava/lang/String;)Lcom/nrsmagic/sudoku/game/CellNote;

    move-result-object v0

    iput-object v0, p0, Lcom/nrsmagic/sudoku/game/command/EditCellNoteCommand;->mOldNote:Lcom/nrsmagic/sudoku/game/CellNote;

    .line 62
    return-void
.end method

.method saveState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/nrsmagic/sudoku/game/command/AbstractCellCommand;->saveState(Landroid/os/Bundle;)V

    .line 48
    const-string v0, "cellRow"

    iget v1, p0, Lcom/nrsmagic/sudoku/game/command/EditCellNoteCommand;->mCellRow:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 49
    const-string v0, "cellColumn"

    iget v1, p0, Lcom/nrsmagic/sudoku/game/command/EditCellNoteCommand;->mCellColumn:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 50
    const-string v0, "note"

    iget-object v1, p0, Lcom/nrsmagic/sudoku/game/command/EditCellNoteCommand;->mNote:Lcom/nrsmagic/sudoku/game/CellNote;

    invoke-virtual {v1}, Lcom/nrsmagic/sudoku/game/CellNote;->serialize()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const-string v0, "oldNote"

    iget-object v1, p0, Lcom/nrsmagic/sudoku/game/command/EditCellNoteCommand;->mOldNote:Lcom/nrsmagic/sudoku/game/CellNote;

    invoke-virtual {v1}, Lcom/nrsmagic/sudoku/game/CellNote;->serialize()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method undo()V
    .locals 4

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/nrsmagic/sudoku/game/command/EditCellNoteCommand;->getCells()Lcom/nrsmagic/sudoku/game/CellCollection;

    move-result-object v1

    iget v2, p0, Lcom/nrsmagic/sudoku/game/command/EditCellNoteCommand;->mCellRow:I

    iget v3, p0, Lcom/nrsmagic/sudoku/game/command/EditCellNoteCommand;->mCellColumn:I

    invoke-virtual {v1, v2, v3}, Lcom/nrsmagic/sudoku/game/CellCollection;->getCell(II)Lcom/nrsmagic/sudoku/game/Cell;

    move-result-object v0

    .line 74
    .local v0, cell:Lcom/nrsmagic/sudoku/game/Cell;
    iget-object v1, p0, Lcom/nrsmagic/sudoku/game/command/EditCellNoteCommand;->mOldNote:Lcom/nrsmagic/sudoku/game/CellNote;

    invoke-virtual {v0, v1}, Lcom/nrsmagic/sudoku/game/Cell;->setNote(Lcom/nrsmagic/sudoku/game/CellNote;)V

    .line 75
    return-void
.end method
