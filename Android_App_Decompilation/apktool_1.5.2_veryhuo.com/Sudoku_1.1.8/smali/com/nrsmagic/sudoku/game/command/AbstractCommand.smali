.class public abstract Lcom/nrsmagic/sudoku/game/command/AbstractCommand;
.super Ljava/lang/Object;
.source "AbstractCommand.java"


# instance fields
.field private mIsCheckpoint:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/nrsmagic/sudoku/game/command/AbstractCommand;
    .locals 4
    .parameter "commandClass"

    .prologue
    .line 34
    const-class v0, Lcom/nrsmagic/sudoku/game/command/ClearAllNotesCommand;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    new-instance v0, Lcom/nrsmagic/sudoku/game/command/ClearAllNotesCommand;

    invoke-direct {v0}, Lcom/nrsmagic/sudoku/game/command/ClearAllNotesCommand;-><init>()V

    .line 41
    :goto_0
    return-object v0

    .line 36
    :cond_0
    const-class v0, Lcom/nrsmagic/sudoku/game/command/EditCellNoteCommand;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 37
    new-instance v0, Lcom/nrsmagic/sudoku/game/command/EditCellNoteCommand;

    invoke-direct {v0}, Lcom/nrsmagic/sudoku/game/command/EditCellNoteCommand;-><init>()V

    goto :goto_0

    .line 38
    :cond_1
    const-class v0, Lcom/nrsmagic/sudoku/game/command/FillInNotesCommand;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 39
    new-instance v0, Lcom/nrsmagic/sudoku/game/command/FillInNotesCommand;

    invoke-direct {v0}, Lcom/nrsmagic/sudoku/game/command/FillInNotesCommand;-><init>()V

    goto :goto_0

    .line 40
    :cond_2
    const-class v0, Lcom/nrsmagic/sudoku/game/command/SetCellValueCommand;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 41
    new-instance v0, Lcom/nrsmagic/sudoku/game/command/SetCellValueCommand;

    invoke-direct {v0}, Lcom/nrsmagic/sudoku/game/command/SetCellValueCommand;-><init>()V

    goto :goto_0

    .line 43
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown command class \'%s\'."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method abstract execute()V
.end method

.method public getCommandClass()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isCheckpoint()Z
    .locals 1

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/nrsmagic/sudoku/game/command/AbstractCommand;->mIsCheckpoint:Z

    return v0
.end method

.method restoreState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "inState"

    .prologue
    .line 54
    const-string v0, "isCheckpoint"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nrsmagic/sudoku/game/command/AbstractCommand;->mIsCheckpoint:Z

    .line 55
    return-void
.end method

.method saveState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 50
    const-string v0, "isCheckpoint"

    iget-boolean v1, p0, Lcom/nrsmagic/sudoku/game/command/AbstractCommand;->mIsCheckpoint:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 51
    return-void
.end method

.method public setCheckpoint(Z)V
    .locals 0
    .parameter "isCheckpoint"

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/nrsmagic/sudoku/game/command/AbstractCommand;->mIsCheckpoint:Z

    .line 63
    return-void
.end method

.method abstract undo()V
.end method
