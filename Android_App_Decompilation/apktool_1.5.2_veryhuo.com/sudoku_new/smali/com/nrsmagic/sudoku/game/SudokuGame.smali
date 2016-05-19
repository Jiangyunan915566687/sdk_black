.class public Lcom/nrsmagic/sudoku/game/SudokuGame;
.super Ljava/lang/Object;
.source "SudokuGame.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nrsmagic/sudoku/game/SudokuGame$OnPuzzleSolvedListener;
    }
.end annotation


# static fields
.field public static final GAME_STATE_COMPLETED:I = 0x2

.field public static final GAME_STATE_NOT_STARTED:I = 0x1

.field public static final GAME_STATE_PLAYING:I


# instance fields
.field private mActiveFromTime:J

.field private mCells:Lcom/nrsmagic/sudoku/game/CellCollection;

.field private mCommandStack:Lcom/nrsmagic/sudoku/game/command/CommandStack;

.field private mCreated:J

.field private mId:J

.field private mLastPlayed:J

.field private mNote:Ljava/lang/String;

.field private mOnPuzzleSolvedListener:Lcom/nrsmagic/sudoku/game/SudokuGame$OnPuzzleSolvedListener;

.field private mState:I

.field private mTime:J


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/nrsmagic/sudoku/game/SudokuGame;->mActiveFromTime:J

    .line 60
    iput-wide v2, p0, Lcom/nrsmagic/sudoku/game/SudokuGame;->mTime:J

    .line 61
    iput-wide v2, p0, Lcom/nrsmagic/sudoku/game/SudokuGame;->mLastPlayed:J

    .line 62
    iput-wide v2, p0, Lcom/nrsmagic/sudoku/game/SudokuGame;->mCreated:J

    .line 64
    const/4 v0, 0x1

    iput v0, p0, Lcom/nrsmagic/sudoku/game/SudokuGame;->mState:I

    .line 65
    return-void
.end method

.method public static createEmptyGame()Lcom/nrsmagic/sudoku/game/SudokuGame;
    .locals 3

    .prologue
    .line 52
    new-instance v0, Lcom/nrsmagic/sudoku/game/SudokuGame;

    invoke-direct {v0}, Lcom/nrsmagic/sudoku/game/SudokuGame;-><init>()V

    .line 53
    .local v0, game:Lcom/nrsmagic/sudoku/game/SudokuGame;
    invoke-static {}, Lcom/nrsmagic/sudoku/game/CellCollection;->createEmpty()Lcom/nrsmagic/sudoku/game/CellCollection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nrsmagic/sudoku/game/SudokuGame;->setCells(Lcom/nrsmagic/sudoku/game/CellCollection;)V

    .line 55
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/nrsmagic/sudoku/game/SudokuGame;->setCreated(J)V

    .line 56
    return-object v0
.end method

.method private executeCommand(Lcom/nrsmagic/sudoku/game/command/AbstractCommand;)V
    .locals 1
    .parameter "c"

    .prologue
    .line 216
    iget-object v0, p0, Lcom/nrsmagic/sudoku/game/SudokuGame;->mCommandStack:Lcom/nrsmagic/sudoku/game/command/CommandStack;

    invoke-virtual {v0, p1}, Lcom/nrsmagic/sudoku/game/command/CommandStack;->execute(Lcom/nrsmagic/sudoku/game/command/AbstractCommand;)V

    .line 217
    return-void
.end method

.method private finish()V
    .locals 1

    .prologue
    .line 272
    invoke-virtual {p0}, Lcom/nrsmagic/sudoku/game/SudokuGame;->pause()V

    .line 273
    const/4 v0, 0x2

    iput v0, p0, Lcom/nrsmagic/sudoku/game/SudokuGame;->mState:I

    .line 274
    return-void
.end method


# virtual methods
.method public clearAllNotes()V
    .locals 1

    .prologue
    .line 305
    new-instance v0, Lcom/nrsmagic/sudoku/game/command/ClearAllNotesCommand;

    invoke-direct {v0}, Lcom/nrsmagic/sudoku/game/command/ClearAllNotesCommand;-><init>()V

    invoke-direct {p0, v0}, Lcom/nrsmagic/sudoku/game/SudokuGame;->executeCommand(Lcom/nrsmagic/sudoku/game/command/AbstractCommand;)V

    .line 306
    return-void
.end method

.method public fillInNotes()V
    .locals 1

    .prologue
    .line 312
    new-instance v0, Lcom/nrsmagic/sudoku/game/command/FillInNotesCommand;

    invoke-direct {v0}, Lcom/nrsmagic/sudoku/game/command/FillInNotesCommand;-><init>()V

    invoke-direct {p0, v0}, Lcom/nrsmagic/sudoku/game/SudokuGame;->executeCommand(Lcom/nrsmagic/sudoku/game/command/AbstractCommand;)V

    .line 313
    return-void
.end method

.method public getCells()Lcom/nrsmagic/sudoku/game/CellCollection;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/nrsmagic/sudoku/game/SudokuGame;->mCells:Lcom/nrsmagic/sudoku/game/CellCollection;

    return-object v0
.end method

.method public getCreated()J
    .locals 2

    .prologue
    .line 112
    iget-wide v0, p0, Lcom/nrsmagic/sudoku/game/SudokuGame;->mCreated:J

    return-wide v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 166
    iget-wide v0, p0, Lcom/nrsmagic/sudoku/game/SudokuGame;->mId:J

    return-wide v0
.end method

.method public getLastPlayed()J
    .locals 2

    .prologue
    .line 148
    iget-wide v0, p0, Lcom/nrsmagic/sudoku/game/SudokuGame;->mLastPlayed:J

    return-wide v0
.end method

.method public getNote()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/nrsmagic/sudoku/game/SudokuGame;->mNote:Ljava/lang/String;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 120
    iget v0, p0, Lcom/nrsmagic/sudoku/game/SudokuGame;->mState:I

    return v0
.end method

.method public getTime()J
    .locals 4

    .prologue
    .line 136
    iget-wide v0, p0, Lcom/nrsmagic/sudoku/game/SudokuGame;->mActiveFromTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 137
    iget-wide v0, p0, Lcom/nrsmagic/sudoku/game/SudokuGame;->mTime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/nrsmagic/sudoku/game/SudokuGame;->mActiveFromTime:J

    sub-long/2addr v0, v2

    .line 139
    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/nrsmagic/sudoku/game/SudokuGame;->mTime:J

    goto :goto_0
.end method

.method public hasSomethingToUndo()Z
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/nrsmagic/sudoku/game/SudokuGame;->mCommandStack:Lcom/nrsmagic/sudoku/game/command/CommandStack;

    invoke-virtual {v0}, Lcom/nrsmagic/sudoku/game/command/CommandStack;->hasSomethingToUndo()Z

    move-result v0

    return v0
.end method

.method public hasUndoCheckpoint()Z
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/nrsmagic/sudoku/game/SudokuGame;->mCommandStack:Lcom/nrsmagic/sudoku/game/command/CommandStack;

    invoke-virtual {v0}, Lcom/nrsmagic/sudoku/game/command/CommandStack;->hasCheckpoint()Z

    move-result v0

    return v0
.end method

.method public isCompleted()Z
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/nrsmagic/sudoku/game/SudokuGame;->mCells:Lcom/nrsmagic/sudoku/game/CellCollection;

    invoke-virtual {v0}, Lcom/nrsmagic/sudoku/game/CellCollection;->isCompleted()Z

    move-result v0

    return v0
.end method

.method public pause()V
    .locals 6

    .prologue
    .line 262
    iget-wide v0, p0, Lcom/nrsmagic/sudoku/game/SudokuGame;->mTime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/nrsmagic/sudoku/game/SudokuGame;->mActiveFromTime:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/nrsmagic/sudoku/game/SudokuGame;->mTime:J

    .line 263
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/nrsmagic/sudoku/game/SudokuGame;->mActiveFromTime:J

    .line 265
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/nrsmagic/sudoku/game/SudokuGame;->setLastPlayed(J)V

    .line 266
    return-void
.end method

.method public reset()V
    .locals 7

    .prologue
    const-wide/16 v5, 0x0

    const/16 v4, 0x9

    .line 280
    const/4 v2, 0x0

    .local v2, r:I
    :goto_0
    if-lt v2, v4, :cond_0

    .line 289
    invoke-virtual {p0}, Lcom/nrsmagic/sudoku/game/SudokuGame;->validate()V

    .line 290
    invoke-virtual {p0, v5, v6}, Lcom/nrsmagic/sudoku/game/SudokuGame;->setTime(J)V

    .line 291
    invoke-virtual {p0, v5, v6}, Lcom/nrsmagic/sudoku/game/SudokuGame;->setLastPlayed(J)V

    .line 292
    const/4 v3, 0x1

    iput v3, p0, Lcom/nrsmagic/sudoku/game/SudokuGame;->mState:I

    .line 293
    return-void

    .line 281
    :cond_0
    const/4 v0, 0x0

    .local v0, c:I
    :goto_1
    if-lt v0, v4, :cond_1

    .line 280
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 282
    :cond_1
    iget-object v3, p0, Lcom/nrsmagic/sudoku/game/SudokuGame;->mCells:Lcom/nrsmagic/sudoku/game/CellCollection;

    invoke-virtual {v3, v2, v0}, Lcom/nrsmagic/sudoku/game/CellCollection;->getCell(II)Lcom/nrsmagic/sudoku/game/Cell;

    move-result-object v1

    .line 283
    .local v1, cell:Lcom/nrsmagic/sudoku/game/Cell;
    invoke-virtual {v1}, Lcom/nrsmagic/sudoku/game/Cell;->isEditable()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 284
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/nrsmagic/sudoku/game/Cell;->setValue(I)V

    .line 285
    new-instance v3, Lcom/nrsmagic/sudoku/game/CellNote;

    invoke-direct {v3}, Lcom/nrsmagic/sudoku/game/CellNote;-><init>()V

    invoke-virtual {v1, v3}, Lcom/nrsmagic/sudoku/game/Cell;->setNote(Lcom/nrsmagic/sudoku/game/CellNote;)V

    .line 281
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public restoreState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "inState"

    .prologue
    .line 80
    const-string v0, "id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nrsmagic/sudoku/game/SudokuGame;->mId:J

    .line 81
    const-string v0, "note"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nrsmagic/sudoku/game/SudokuGame;->mNote:Ljava/lang/String;

    .line 82
    const-string v0, "created"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nrsmagic/sudoku/game/SudokuGame;->mCreated:J

    .line 83
    const-string v0, "state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/nrsmagic/sudoku/game/SudokuGame;->mState:I

    .line 84
    const-string v0, "time"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nrsmagic/sudoku/game/SudokuGame;->mTime:J

    .line 85
    const-string v0, "lastPlayed"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nrsmagic/sudoku/game/SudokuGame;->mLastPlayed:J

    .line 86
    const-string v0, "cells"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nrsmagic/sudoku/game/CellCollection;->deserialize(Ljava/lang/String;)Lcom/nrsmagic/sudoku/game/CellCollection;

    move-result-object v0

    iput-object v0, p0, Lcom/nrsmagic/sudoku/game/SudokuGame;->mCells:Lcom/nrsmagic/sudoku/game/CellCollection;

    .line 88
    new-instance v0, Lcom/nrsmagic/sudoku/game/command/CommandStack;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/game/SudokuGame;->mCells:Lcom/nrsmagic/sudoku/game/CellCollection;

    invoke-direct {v0, v1}, Lcom/nrsmagic/sudoku/game/command/CommandStack;-><init>(Lcom/nrsmagic/sudoku/game/CellCollection;)V

    iput-object v0, p0, Lcom/nrsmagic/sudoku/game/SudokuGame;->mCommandStack:Lcom/nrsmagic/sudoku/game/command/CommandStack;

    .line 89
    iget-object v0, p0, Lcom/nrsmagic/sudoku/game/SudokuGame;->mCommandStack:Lcom/nrsmagic/sudoku/game/command/CommandStack;

    invoke-virtual {v0, p1}, Lcom/nrsmagic/sudoku/game/command/CommandStack;->restoreState(Landroid/os/Bundle;)V

    .line 91
    invoke-virtual {p0}, Lcom/nrsmagic/sudoku/game/SudokuGame;->validate()V

    .line 92
    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 254
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nrsmagic/sudoku/game/SudokuGame;->mActiveFromTime:J

    .line 255
    return-void
.end method

.method public saveState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outState"

    .prologue
    .line 68
    const-string v0, "id"

    iget-wide v1, p0, Lcom/nrsmagic/sudoku/game/SudokuGame;->mId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 69
    const-string v0, "note"

    iget-object v1, p0, Lcom/nrsmagic/sudoku/game/SudokuGame;->mNote:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const-string v0, "created"

    iget-wide v1, p0, Lcom/nrsmagic/sudoku/game/SudokuGame;->mCreated:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 71
    const-string v0, "state"

    iget v1, p0, Lcom/nrsmagic/sudoku/game/SudokuGame;->mState:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 72
    const-string v0, "time"

    iget-wide v1, p0, Lcom/nrsmagic/sudoku/game/SudokuGame;->mTime:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 73
    const-string v0, "lastPlayed"

    iget-wide v1, p0, Lcom/nrsmagic/sudoku/game/SudokuGame;->mLastPlayed:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 74
    const-string v0, "cells"

    iget-object v1, p0, Lcom/nrsmagic/sudoku/game/SudokuGame;->mCells:Lcom/nrsmagic/sudoku/game/CellCollection;

    invoke-virtual {v1}, Lcom/nrsmagic/sudoku/game/CellCollection;->serialize()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/nrsmagic/sudoku/game/SudokuGame;->mCommandStack:Lcom/nrsmagic/sudoku/game/command/CommandStack;

    invoke-virtual {v0, p1}, Lcom/nrsmagic/sudoku/game/command/CommandStack;->saveState(Landroid/os/Bundle;)V

    .line 77
    return-void
.end method

.method public setCellNote(Lcom/nrsmagic/sudoku/game/Cell;Lcom/nrsmagic/sudoku/game/CellNote;)V
    .locals 2
    .parameter "cell"
    .parameter "note"

    .prologue
    .line 203
    if-nez p1, :cond_0

    .line 204
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cell cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 206
    :cond_0
    if-nez p2, :cond_1

    .line 207
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Note cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 210
    :cond_1
    invoke-virtual {p1}, Lcom/nrsmagic/sudoku/game/Cell;->isEditable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 211
    new-instance v0, Lcom/nrsmagic/sudoku/game/command/EditCellNoteCommand;

    invoke-direct {v0, p1, p2}, Lcom/nrsmagic/sudoku/game/command/EditCellNoteCommand;-><init>(Lcom/nrsmagic/sudoku/game/Cell;Lcom/nrsmagic/sudoku/game/CellNote;)V

    invoke-direct {p0, v0}, Lcom/nrsmagic/sudoku/game/SudokuGame;->executeCommand(Lcom/nrsmagic/sudoku/game/command/AbstractCommand;)V

    .line 213
    :cond_2
    return-void
.end method

.method public setCellValue(Lcom/nrsmagic/sudoku/game/Cell;I)V
    .locals 2
    .parameter "cell"
    .parameter "value"

    .prologue
    .line 176
    if-nez p1, :cond_0

    .line 177
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cell cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 179
    :cond_0
    if-ltz p2, :cond_1

    const/16 v0, 0x9

    if-le p2, v0, :cond_2

    .line 180
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value must be between 0-9."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 183
    :cond_2
    invoke-virtual {p1}, Lcom/nrsmagic/sudoku/game/Cell;->isEditable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 184
    new-instance v0, Lcom/nrsmagic/sudoku/game/command/SetCellValueCommand;

    invoke-direct {v0, p1, p2}, Lcom/nrsmagic/sudoku/game/command/SetCellValueCommand;-><init>(Lcom/nrsmagic/sudoku/game/Cell;I)V

    invoke-direct {p0, v0}, Lcom/nrsmagic/sudoku/game/SudokuGame;->executeCommand(Lcom/nrsmagic/sudoku/game/command/AbstractCommand;)V

    .line 186
    invoke-virtual {p0}, Lcom/nrsmagic/sudoku/game/SudokuGame;->validate()V

    .line 187
    invoke-virtual {p0}, Lcom/nrsmagic/sudoku/game/SudokuGame;->isCompleted()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 188
    invoke-direct {p0}, Lcom/nrsmagic/sudoku/game/SudokuGame;->finish()V

    .line 189
    iget-object v0, p0, Lcom/nrsmagic/sudoku/game/SudokuGame;->mOnPuzzleSolvedListener:Lcom/nrsmagic/sudoku/game/SudokuGame$OnPuzzleSolvedListener;

    if-eqz v0, :cond_3

    .line 190
    iget-object v0, p0, Lcom/nrsmagic/sudoku/game/SudokuGame;->mOnPuzzleSolvedListener:Lcom/nrsmagic/sudoku/game/SudokuGame$OnPuzzleSolvedListener;

    invoke-interface {v0}, Lcom/nrsmagic/sudoku/game/SudokuGame$OnPuzzleSolvedListener;->onPuzzleSolved()V

    .line 194
    :cond_3
    return-void
.end method

.method public setCells(Lcom/nrsmagic/sudoku/game/CellCollection;)V
    .locals 2
    .parameter "cells"

    .prologue
    .line 152
    iput-object p1, p0, Lcom/nrsmagic/sudoku/game/SudokuGame;->mCells:Lcom/nrsmagic/sudoku/game/CellCollection;

    .line 153
    invoke-virtual {p0}, Lcom/nrsmagic/sudoku/game/SudokuGame;->validate()V

    .line 154
    new-instance v0, Lcom/nrsmagic/sudoku/game/command/CommandStack;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/game/SudokuGame;->mCells:Lcom/nrsmagic/sudoku/game/CellCollection;

    invoke-direct {v0, v1}, Lcom/nrsmagic/sudoku/game/command/CommandStack;-><init>(Lcom/nrsmagic/sudoku/game/CellCollection;)V

    iput-object v0, p0, Lcom/nrsmagic/sudoku/game/SudokuGame;->mCommandStack:Lcom/nrsmagic/sudoku/game/command/CommandStack;

    .line 155
    return-void
.end method

.method public setCreated(J)V
    .locals 0
    .parameter "created"

    .prologue
    .line 108
    iput-wide p1, p0, Lcom/nrsmagic/sudoku/game/SudokuGame;->mCreated:J

    .line 109
    return-void
.end method

.method public setId(J)V
    .locals 0
    .parameter "id"

    .prologue
    .line 162
    iput-wide p1, p0, Lcom/nrsmagic/sudoku/game/SudokuGame;->mId:J

    .line 163
    return-void
.end method

.method public setLastPlayed(J)V
    .locals 0
    .parameter "lastPlayed"

    .prologue
    .line 144
    iput-wide p1, p0, Lcom/nrsmagic/sudoku/game/SudokuGame;->mLastPlayed:J

    .line 145
    return-void
.end method

.method public setNote(Ljava/lang/String;)V
    .locals 0
    .parameter "note"

    .prologue
    .line 100
    iput-object p1, p0, Lcom/nrsmagic/sudoku/game/SudokuGame;->mNote:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public setOnPuzzleSolvedListener(Lcom/nrsmagic/sudoku/game/SudokuGame$OnPuzzleSolvedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 96
    iput-object p1, p0, Lcom/nrsmagic/sudoku/game/SudokuGame;->mOnPuzzleSolvedListener:Lcom/nrsmagic/sudoku/game/SudokuGame$OnPuzzleSolvedListener;

    .line 97
    return-void
.end method

.method public setState(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 116
    iput p1, p0, Lcom/nrsmagic/sudoku/game/SudokuGame;->mState:I

    .line 117
    return-void
.end method

.method public setTime(J)V
    .locals 0
    .parameter "time"

    .prologue
    .line 128
    iput-wide p1, p0, Lcom/nrsmagic/sudoku/game/SudokuGame;->mTime:J

    .line 129
    return-void
.end method

.method public setUndoCheckpoint()V
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/nrsmagic/sudoku/game/SudokuGame;->mCommandStack:Lcom/nrsmagic/sudoku/game/command/CommandStack;

    invoke-virtual {v0}, Lcom/nrsmagic/sudoku/game/command/CommandStack;->setCheckpoint()V

    .line 232
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 247
    const/4 v0, 0x0

    iput v0, p0, Lcom/nrsmagic/sudoku/game/SudokuGame;->mState:I

    .line 248
    invoke-virtual {p0}, Lcom/nrsmagic/sudoku/game/SudokuGame;->resume()V

    .line 249
    return-void
.end method

.method public undo()V
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/nrsmagic/sudoku/game/SudokuGame;->mCommandStack:Lcom/nrsmagic/sudoku/game/command/CommandStack;

    invoke-virtual {v0}, Lcom/nrsmagic/sudoku/game/command/CommandStack;->undo()V

    .line 224
    return-void
.end method

.method public undoToCheckpoint()V
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/nrsmagic/sudoku/game/SudokuGame;->mCommandStack:Lcom/nrsmagic/sudoku/game/command/CommandStack;

    invoke-virtual {v0}, Lcom/nrsmagic/sudoku/game/command/CommandStack;->undoToCheckpoint()V

    .line 236
    return-void
.end method

.method public validate()V
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/nrsmagic/sudoku/game/SudokuGame;->mCells:Lcom/nrsmagic/sudoku/game/CellCollection;

    invoke-virtual {v0}, Lcom/nrsmagic/sudoku/game/CellCollection;->validate()Z

    .line 317
    return-void
.end method
