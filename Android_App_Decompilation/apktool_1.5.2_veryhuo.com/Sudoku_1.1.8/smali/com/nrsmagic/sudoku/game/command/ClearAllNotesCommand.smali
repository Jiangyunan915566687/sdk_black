.class public Lcom/nrsmagic/sudoku/game/command/ClearAllNotesCommand;
.super Lcom/nrsmagic/sudoku/game/command/AbstractCellCommand;
.source "ClearAllNotesCommand.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nrsmagic/sudoku/game/command/ClearAllNotesCommand$NoteEntry;
    }
.end annotation


# instance fields
.field private mOldNotes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nrsmagic/sudoku/game/command/ClearAllNotesCommand$NoteEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/nrsmagic/sudoku/game/command/AbstractCellCommand;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nrsmagic/sudoku/game/command/ClearAllNotesCommand;->mOldNotes:Ljava/util/List;

    .line 38
    return-void
.end method


# virtual methods
.method execute()V
    .locals 8

    .prologue
    const/16 v7, 0x9

    .line 78
    invoke-virtual {p0}, Lcom/nrsmagic/sudoku/game/command/ClearAllNotesCommand;->getCells()Lcom/nrsmagic/sudoku/game/CellCollection;

    move-result-object v2

    .line 80
    .local v2, cells:Lcom/nrsmagic/sudoku/game/CellCollection;
    iget-object v5, p0, Lcom/nrsmagic/sudoku/game/command/ClearAllNotesCommand;->mOldNotes:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 81
    const/4 v4, 0x0

    .local v4, r:I
    :goto_0
    if-lt v4, v7, :cond_0

    .line 91
    return-void

    .line 82
    :cond_0
    const/4 v0, 0x0

    .local v0, c:I
    :goto_1
    if-lt v0, v7, :cond_1

    .line 81
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 83
    :cond_1
    invoke-virtual {v2, v4, v0}, Lcom/nrsmagic/sudoku/game/CellCollection;->getCell(II)Lcom/nrsmagic/sudoku/game/Cell;

    move-result-object v1

    .line 84
    .local v1, cell:Lcom/nrsmagic/sudoku/game/Cell;
    invoke-virtual {v1}, Lcom/nrsmagic/sudoku/game/Cell;->getNote()Lcom/nrsmagic/sudoku/game/CellNote;

    move-result-object v3

    .line 85
    .local v3, note:Lcom/nrsmagic/sudoku/game/CellNote;
    invoke-virtual {v3}, Lcom/nrsmagic/sudoku/game/CellNote;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 86
    iget-object v5, p0, Lcom/nrsmagic/sudoku/game/command/ClearAllNotesCommand;->mOldNotes:Ljava/util/List;

    new-instance v6, Lcom/nrsmagic/sudoku/game/command/ClearAllNotesCommand$NoteEntry;

    invoke-direct {v6, v4, v0, v3}, Lcom/nrsmagic/sudoku/game/command/ClearAllNotesCommand$NoteEntry;-><init>(IILcom/nrsmagic/sudoku/game/CellNote;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    new-instance v5, Lcom/nrsmagic/sudoku/game/CellNote;

    invoke-direct {v5}, Lcom/nrsmagic/sudoku/game/CellNote;-><init>()V

    invoke-virtual {v1, v5}, Lcom/nrsmagic/sudoku/game/Cell;->setNote(Lcom/nrsmagic/sudoku/game/CellNote;)V

    .line 82
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method restoreState(Landroid/os/Bundle;)V
    .locals 9
    .parameter "inState"

    .prologue
    .line 64
    invoke-super {p0, p1}, Lcom/nrsmagic/sudoku/game/command/AbstractCellCommand;->restoreState(Landroid/os/Bundle;)V

    .line 66
    const-string v4, "rows"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v3

    .line 67
    .local v3, rows:[I
    const-string v4, "cols"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    .line 68
    .local v0, cols:[I
    const-string v4, "notes"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 70
    .local v2, notes:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v4, v3

    if-lt v1, v4, :cond_0

    .line 74
    return-void

    .line 71
    :cond_0
    iget-object v4, p0, Lcom/nrsmagic/sudoku/game/command/ClearAllNotesCommand;->mOldNotes:Ljava/util/List;

    new-instance v5, Lcom/nrsmagic/sudoku/game/command/ClearAllNotesCommand$NoteEntry;

    aget v6, v3, v1

    aget v7, v0, v1

    .line 72
    aget-object v8, v2, v1

    invoke-static {v8}, Lcom/nrsmagic/sudoku/game/CellNote;->deserialize(Ljava/lang/String;)Lcom/nrsmagic/sudoku/game/CellNote;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8}, Lcom/nrsmagic/sudoku/game/command/ClearAllNotesCommand$NoteEntry;-><init>(IILcom/nrsmagic/sudoku/game/CellNote;)V

    .line 71
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method saveState(Landroid/os/Bundle;)V
    .locals 7
    .parameter "outState"

    .prologue
    .line 43
    invoke-super {p0, p1}, Lcom/nrsmagic/sudoku/game/command/AbstractCellCommand;->saveState(Landroid/os/Bundle;)V

    .line 45
    iget-object v5, p0, Lcom/nrsmagic/sudoku/game/command/ClearAllNotesCommand;->mOldNotes:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    new-array v4, v5, [I

    .line 46
    .local v4, rows:[I
    iget-object v5, p0, Lcom/nrsmagic/sudoku/game/command/ClearAllNotesCommand;->mOldNotes:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    new-array v0, v5, [I

    .line 47
    .local v0, cols:[I
    iget-object v5, p0, Lcom/nrsmagic/sudoku/game/command/ClearAllNotesCommand;->mOldNotes:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    new-array v3, v5, [Ljava/lang/String;

    .line 49
    .local v3, notes:[Ljava/lang/String;
    const/4 v1, 0x0

    .line 50
    .local v1, i:I
    iget-object v5, p0, Lcom/nrsmagic/sudoku/game/command/ClearAllNotesCommand;->mOldNotes:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_0

    .line 57
    const-string v5, "rows"

    invoke-virtual {p1, v5, v4}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 58
    const-string v5, "cols"

    invoke-virtual {p1, v5, v0}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 59
    const-string v5, "notes"

    invoke-virtual {p1, v5, v3}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 60
    return-void

    .line 50
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nrsmagic/sudoku/game/command/ClearAllNotesCommand$NoteEntry;

    .line 51
    .local v2, ne:Lcom/nrsmagic/sudoku/game/command/ClearAllNotesCommand$NoteEntry;
    iget v6, v2, Lcom/nrsmagic/sudoku/game/command/ClearAllNotesCommand$NoteEntry;->rowIndex:I

    aput v6, v4, v1

    .line 52
    iget v6, v2, Lcom/nrsmagic/sudoku/game/command/ClearAllNotesCommand$NoteEntry;->colIndex:I

    aput v6, v0, v1

    .line 53
    iget-object v6, v2, Lcom/nrsmagic/sudoku/game/command/ClearAllNotesCommand$NoteEntry;->note:Lcom/nrsmagic/sudoku/game/CellNote;

    invoke-virtual {v6}, Lcom/nrsmagic/sudoku/game/CellNote;->serialize()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v1

    .line 54
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method undo()V
    .locals 5

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/nrsmagic/sudoku/game/command/ClearAllNotesCommand;->getCells()Lcom/nrsmagic/sudoku/game/CellCollection;

    move-result-object v0

    .line 97
    .local v0, cells:Lcom/nrsmagic/sudoku/game/CellCollection;
    iget-object v2, p0, Lcom/nrsmagic/sudoku/game/command/ClearAllNotesCommand;->mOldNotes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 101
    return-void

    .line 97
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nrsmagic/sudoku/game/command/ClearAllNotesCommand$NoteEntry;

    .line 98
    .local v1, ne:Lcom/nrsmagic/sudoku/game/command/ClearAllNotesCommand$NoteEntry;
    iget v3, v1, Lcom/nrsmagic/sudoku/game/command/ClearAllNotesCommand$NoteEntry;->rowIndex:I

    iget v4, v1, Lcom/nrsmagic/sudoku/game/command/ClearAllNotesCommand$NoteEntry;->colIndex:I

    invoke-virtual {v0, v3, v4}, Lcom/nrsmagic/sudoku/game/CellCollection;->getCell(II)Lcom/nrsmagic/sudoku/game/Cell;

    move-result-object v3

    iget-object v4, v1, Lcom/nrsmagic/sudoku/game/command/ClearAllNotesCommand$NoteEntry;->note:Lcom/nrsmagic/sudoku/game/CellNote;

    invoke-virtual {v3, v4}, Lcom/nrsmagic/sudoku/game/Cell;->setNote(Lcom/nrsmagic/sudoku/game/CellNote;)V

    goto :goto_0
.end method
