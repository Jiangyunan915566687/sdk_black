.class public Lcom/nrsmagic/sudoku/game/command/FillInNotesCommand;
.super Lcom/nrsmagic/sudoku/game/command/AbstractCellCommand;
.source "FillInNotesCommand.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nrsmagic/sudoku/game/command/FillInNotesCommand$NoteEntry;
    }
.end annotation


# instance fields
.field private mOldNotes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nrsmagic/sudoku/game/command/FillInNotesCommand$NoteEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/nrsmagic/sudoku/game/command/AbstractCellCommand;-><init>()V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nrsmagic/sudoku/game/command/FillInNotesCommand;->mOldNotes:Ljava/util/List;

    .line 17
    return-void
.end method


# virtual methods
.method execute()V
    .locals 12

    .prologue
    const/16 v11, 0x9

    .line 56
    invoke-virtual {p0}, Lcom/nrsmagic/sudoku/game/command/FillInNotesCommand;->getCells()Lcom/nrsmagic/sudoku/game/CellCollection;

    move-result-object v2

    .line 58
    .local v2, cells:Lcom/nrsmagic/sudoku/game/CellCollection;
    iget-object v8, p0, Lcom/nrsmagic/sudoku/game/command/FillInNotesCommand;->mOldNotes:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 59
    const/4 v5, 0x0

    .local v5, r:I
    :goto_0
    if-lt v5, v11, :cond_0

    .line 75
    return-void

    .line 60
    :cond_0
    const/4 v0, 0x0

    .local v0, c:I
    :goto_1
    if-lt v0, v11, :cond_1

    .line 59
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 61
    :cond_1
    invoke-virtual {v2, v5, v0}, Lcom/nrsmagic/sudoku/game/CellCollection;->getCell(II)Lcom/nrsmagic/sudoku/game/Cell;

    move-result-object v1

    .line 62
    .local v1, cell:Lcom/nrsmagic/sudoku/game/Cell;
    iget-object v8, p0, Lcom/nrsmagic/sudoku/game/command/FillInNotesCommand;->mOldNotes:Ljava/util/List;

    new-instance v9, Lcom/nrsmagic/sudoku/game/command/FillInNotesCommand$NoteEntry;

    invoke-virtual {v1}, Lcom/nrsmagic/sudoku/game/Cell;->getNote()Lcom/nrsmagic/sudoku/game/CellNote;

    move-result-object v10

    invoke-direct {v9, v5, v0, v10}, Lcom/nrsmagic/sudoku/game/command/FillInNotesCommand$NoteEntry;-><init>(IILcom/nrsmagic/sudoku/game/CellNote;)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    new-instance v8, Lcom/nrsmagic/sudoku/game/CellNote;

    invoke-direct {v8}, Lcom/nrsmagic/sudoku/game/CellNote;-><init>()V

    invoke-virtual {v1, v8}, Lcom/nrsmagic/sudoku/game/Cell;->setNote(Lcom/nrsmagic/sudoku/game/CellNote;)V

    .line 65
    invoke-virtual {v1}, Lcom/nrsmagic/sudoku/game/Cell;->getRow()Lcom/nrsmagic/sudoku/game/CellGroup;

    move-result-object v6

    .line 66
    .local v6, row:Lcom/nrsmagic/sudoku/game/CellGroup;
    invoke-virtual {v1}, Lcom/nrsmagic/sudoku/game/Cell;->getColumn()Lcom/nrsmagic/sudoku/game/CellGroup;

    move-result-object v3

    .line 67
    .local v3, column:Lcom/nrsmagic/sudoku/game/CellGroup;
    invoke-virtual {v1}, Lcom/nrsmagic/sudoku/game/Cell;->getSector()Lcom/nrsmagic/sudoku/game/CellGroup;

    move-result-object v7

    .line 68
    .local v7, sector:Lcom/nrsmagic/sudoku/game/CellGroup;
    const/4 v4, 0x1

    .local v4, i:I
    :goto_2
    if-le v4, v11, :cond_2

    .line 60
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 69
    :cond_2
    invoke-virtual {v6, v4}, Lcom/nrsmagic/sudoku/game/CellGroup;->contains(I)Z

    move-result v8

    if-nez v8, :cond_3

    invoke-virtual {v3, v4}, Lcom/nrsmagic/sudoku/game/CellGroup;->contains(I)Z

    move-result v8

    if-nez v8, :cond_3

    invoke-virtual {v7, v4}, Lcom/nrsmagic/sudoku/game/CellGroup;->contains(I)Z

    move-result v8

    if-nez v8, :cond_3

    .line 70
    invoke-virtual {v1}, Lcom/nrsmagic/sudoku/game/Cell;->getNote()Lcom/nrsmagic/sudoku/game/CellNote;

    move-result-object v8

    invoke-virtual {v8, v4}, Lcom/nrsmagic/sudoku/game/CellNote;->addNumber(I)Lcom/nrsmagic/sudoku/game/CellNote;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/nrsmagic/sudoku/game/Cell;->setNote(Lcom/nrsmagic/sudoku/game/CellNote;)V

    .line 68
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2
.end method

.method restoreState(Landroid/os/Bundle;)V
    .locals 9
    .parameter "inState"

    .prologue
    .line 42
    invoke-super {p0, p1}, Lcom/nrsmagic/sudoku/game/command/AbstractCellCommand;->restoreState(Landroid/os/Bundle;)V

    .line 44
    const-string v4, "rows"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v3

    .line 45
    .local v3, rows:[I
    const-string v4, "cols"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    .line 46
    .local v0, cols:[I
    const-string v4, "notes"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 48
    .local v2, notes:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v4, v3

    if-lt v1, v4, :cond_0

    .line 52
    return-void

    .line 49
    :cond_0
    iget-object v4, p0, Lcom/nrsmagic/sudoku/game/command/FillInNotesCommand;->mOldNotes:Ljava/util/List;

    new-instance v5, Lcom/nrsmagic/sudoku/game/command/FillInNotesCommand$NoteEntry;

    aget v6, v3, v1

    aget v7, v0, v1

    .line 50
    aget-object v8, v2, v1

    invoke-static {v8}, Lcom/nrsmagic/sudoku/game/CellNote;->deserialize(Ljava/lang/String;)Lcom/nrsmagic/sudoku/game/CellNote;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8}, Lcom/nrsmagic/sudoku/game/command/FillInNotesCommand$NoteEntry;-><init>(IILcom/nrsmagic/sudoku/game/CellNote;)V

    .line 49
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method saveState(Landroid/os/Bundle;)V
    .locals 7
    .parameter "outState"

    .prologue
    .line 21
    invoke-super {p0, p1}, Lcom/nrsmagic/sudoku/game/command/AbstractCellCommand;->saveState(Landroid/os/Bundle;)V

    .line 23
    iget-object v5, p0, Lcom/nrsmagic/sudoku/game/command/FillInNotesCommand;->mOldNotes:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    new-array v4, v5, [I

    .line 24
    .local v4, rows:[I
    iget-object v5, p0, Lcom/nrsmagic/sudoku/game/command/FillInNotesCommand;->mOldNotes:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    new-array v0, v5, [I

    .line 25
    .local v0, cols:[I
    iget-object v5, p0, Lcom/nrsmagic/sudoku/game/command/FillInNotesCommand;->mOldNotes:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    new-array v3, v5, [Ljava/lang/String;

    .line 27
    .local v3, notes:[Ljava/lang/String;
    const/4 v1, 0x0

    .line 28
    .local v1, i:I
    iget-object v5, p0, Lcom/nrsmagic/sudoku/game/command/FillInNotesCommand;->mOldNotes:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_0

    .line 35
    const-string v5, "rows"

    invoke-virtual {p1, v5, v4}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 36
    const-string v5, "cols"

    invoke-virtual {p1, v5, v0}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 37
    const-string v5, "notes"

    invoke-virtual {p1, v5, v3}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 38
    return-void

    .line 28
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nrsmagic/sudoku/game/command/FillInNotesCommand$NoteEntry;

    .line 29
    .local v2, ne:Lcom/nrsmagic/sudoku/game/command/FillInNotesCommand$NoteEntry;
    iget v6, v2, Lcom/nrsmagic/sudoku/game/command/FillInNotesCommand$NoteEntry;->rowIndex:I

    aput v6, v4, v1

    .line 30
    iget v6, v2, Lcom/nrsmagic/sudoku/game/command/FillInNotesCommand$NoteEntry;->colIndex:I

    aput v6, v0, v1

    .line 31
    iget-object v6, v2, Lcom/nrsmagic/sudoku/game/command/FillInNotesCommand$NoteEntry;->note:Lcom/nrsmagic/sudoku/game/CellNote;

    invoke-virtual {v6}, Lcom/nrsmagic/sudoku/game/CellNote;->serialize()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v1

    .line 32
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method undo()V
    .locals 5

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/nrsmagic/sudoku/game/command/FillInNotesCommand;->getCells()Lcom/nrsmagic/sudoku/game/CellCollection;

    move-result-object v0

    .line 81
    .local v0, cells:Lcom/nrsmagic/sudoku/game/CellCollection;
    iget-object v2, p0, Lcom/nrsmagic/sudoku/game/command/FillInNotesCommand;->mOldNotes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 84
    return-void

    .line 81
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nrsmagic/sudoku/game/command/FillInNotesCommand$NoteEntry;

    .line 82
    .local v1, ne:Lcom/nrsmagic/sudoku/game/command/FillInNotesCommand$NoteEntry;
    iget v3, v1, Lcom/nrsmagic/sudoku/game/command/FillInNotesCommand$NoteEntry;->rowIndex:I

    iget v4, v1, Lcom/nrsmagic/sudoku/game/command/FillInNotesCommand$NoteEntry;->colIndex:I

    invoke-virtual {v0, v3, v4}, Lcom/nrsmagic/sudoku/game/CellCollection;->getCell(II)Lcom/nrsmagic/sudoku/game/Cell;

    move-result-object v3

    iget-object v4, v1, Lcom/nrsmagic/sudoku/game/command/FillInNotesCommand$NoteEntry;->note:Lcom/nrsmagic/sudoku/game/CellNote;

    invoke-virtual {v3, v4}, Lcom/nrsmagic/sudoku/game/Cell;->setNote(Lcom/nrsmagic/sudoku/game/CellNote;)V

    goto :goto_0
.end method
