.class public Lcom/nrsmagic/sudoku/game/command/CommandStack;
.super Ljava/lang/Object;
.source "CommandStack.java"


# instance fields
.field private mCells:Lcom/nrsmagic/sudoku/game/CellCollection;

.field private mCommandStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/nrsmagic/sudoku/game/command/AbstractCommand;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/nrsmagic/sudoku/game/CellCollection;)V
    .locals 1
    .parameter "cells"

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/nrsmagic/sudoku/game/command/CommandStack;->mCommandStack:Ljava/util/Stack;

    .line 17
    iput-object p1, p0, Lcom/nrsmagic/sudoku/game/command/CommandStack;->mCells:Lcom/nrsmagic/sudoku/game/CellCollection;

    .line 18
    return-void
.end method

.method private pop()Lcom/nrsmagic/sudoku/game/command/AbstractCommand;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/nrsmagic/sudoku/game/command/CommandStack;->mCommandStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nrsmagic/sudoku/game/command/AbstractCommand;

    return-object v0
.end method

.method private push(Lcom/nrsmagic/sudoku/game/command/AbstractCommand;)V
    .locals 2
    .parameter "command"

    .prologue
    .line 96
    instance-of v0, p1, Lcom/nrsmagic/sudoku/game/command/AbstractCellCommand;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 97
    check-cast v0, Lcom/nrsmagic/sudoku/game/command/AbstractCellCommand;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/game/command/CommandStack;->mCells:Lcom/nrsmagic/sudoku/game/CellCollection;

    invoke-virtual {v0, v1}, Lcom/nrsmagic/sudoku/game/command/AbstractCellCommand;->setCells(Lcom/nrsmagic/sudoku/game/CellCollection;)V

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/nrsmagic/sudoku/game/command/CommandStack;->mCommandStack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    return-void
.end method

.method private validateCells()V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/nrsmagic/sudoku/game/command/CommandStack;->mCells:Lcom/nrsmagic/sudoku/game/CellCollection;

    invoke-virtual {v0}, Lcom/nrsmagic/sudoku/game/CellCollection;->validate()Z

    .line 108
    return-void
.end method


# virtual methods
.method public empty()Z
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/nrsmagic/sudoku/game/command/CommandStack;->mCommandStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    return v0
.end method

.method public execute(Lcom/nrsmagic/sudoku/game/command/AbstractCommand;)V
    .locals 0
    .parameter "command"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/nrsmagic/sudoku/game/command/CommandStack;->push(Lcom/nrsmagic/sudoku/game/command/AbstractCommand;)V

    .line 47
    invoke-virtual {p1}, Lcom/nrsmagic/sudoku/game/command/AbstractCommand;->execute()V

    .line 48
    return-void
.end method

.method public hasCheckpoint()Z
    .locals 3

    .prologue
    .line 66
    iget-object v1, p0, Lcom/nrsmagic/sudoku/game/command/CommandStack;->mCommandStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 70
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 66
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nrsmagic/sudoku/game/command/AbstractCommand;

    .line 67
    .local v0, c:Lcom/nrsmagic/sudoku/game/command/AbstractCommand;
    invoke-virtual {v0}, Lcom/nrsmagic/sudoku/game/command/AbstractCommand;->isCheckpoint()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 68
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public hasSomethingToUndo()Z
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/nrsmagic/sudoku/game/command/CommandStack;->mCommandStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public restoreState(Landroid/os/Bundle;)V
    .locals 6
    .parameter "inState"

    .prologue
    .line 32
    const-string v4, "cmdStack.size"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 33
    .local v3, stackSize:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-lt v2, v3, :cond_0

    .line 39
    return-void

    .line 34
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "cmdStack."

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 35
    .local v1, commandState:Landroid/os/Bundle;
    const-string v4, "commandClass"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/nrsmagic/sudoku/game/command/AbstractCommand;->newInstance(Ljava/lang/String;)Lcom/nrsmagic/sudoku/game/command/AbstractCommand;

    move-result-object v0

    .line 36
    .local v0, command:Lcom/nrsmagic/sudoku/game/command/AbstractCommand;
    invoke-virtual {v0, v1}, Lcom/nrsmagic/sudoku/game/command/AbstractCommand;->restoreState(Landroid/os/Bundle;)V

    .line 37
    invoke-direct {p0, v0}, Lcom/nrsmagic/sudoku/game/command/CommandStack;->push(Lcom/nrsmagic/sudoku/game/command/AbstractCommand;)V

    .line 33
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public saveState(Landroid/os/Bundle;)V
    .locals 5
    .parameter "outState"

    .prologue
    .line 21
    const-string v3, "cmdStack.size"

    iget-object v4, p0, Lcom/nrsmagic/sudoku/game/command/CommandStack;->mCommandStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->size()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 22
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v3, p0, Lcom/nrsmagic/sudoku/game/command/CommandStack;->mCommandStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->size()I

    move-result v3

    if-lt v2, v3, :cond_0

    .line 29
    return-void

    .line 23
    :cond_0
    iget-object v3, p0, Lcom/nrsmagic/sudoku/game/command/CommandStack;->mCommandStack:Ljava/util/Stack;

    invoke-virtual {v3, v2}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nrsmagic/sudoku/game/command/AbstractCommand;

    .line 24
    .local v0, command:Lcom/nrsmagic/sudoku/game/command/AbstractCommand;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 25
    .local v1, commandState:Landroid/os/Bundle;
    const-string v3, "commandClass"

    invoke-virtual {v0}, Lcom/nrsmagic/sudoku/game/command/AbstractCommand;->getCommandClass()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    invoke-virtual {v0, v1}, Lcom/nrsmagic/sudoku/game/command/AbstractCommand;->saveState(Landroid/os/Bundle;)V

    .line 27
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "cmdStack."

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 22
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public setCheckpoint()V
    .locals 2

    .prologue
    .line 59
    iget-object v1, p0, Lcom/nrsmagic/sudoku/game/command/CommandStack;->mCommandStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 60
    iget-object v1, p0, Lcom/nrsmagic/sudoku/game/command/CommandStack;->mCommandStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nrsmagic/sudoku/game/command/AbstractCommand;

    .line 61
    .local v0, c:Lcom/nrsmagic/sudoku/game/command/AbstractCommand;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nrsmagic/sudoku/game/command/AbstractCommand;->setCheckpoint(Z)V

    .line 63
    .end local v0           #c:Lcom/nrsmagic/sudoku/game/command/AbstractCommand;
    :cond_0
    return-void
.end method

.method public undo()V
    .locals 2

    .prologue
    .line 51
    iget-object v1, p0, Lcom/nrsmagic/sudoku/game/command/CommandStack;->mCommandStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 52
    invoke-direct {p0}, Lcom/nrsmagic/sudoku/game/command/CommandStack;->pop()Lcom/nrsmagic/sudoku/game/command/AbstractCommand;

    move-result-object v0

    .line 53
    .local v0, c:Lcom/nrsmagic/sudoku/game/command/AbstractCommand;
    invoke-virtual {v0}, Lcom/nrsmagic/sudoku/game/command/AbstractCommand;->undo()V

    .line 54
    invoke-direct {p0}, Lcom/nrsmagic/sudoku/game/command/CommandStack;->validateCells()V

    .line 56
    .end local v0           #c:Lcom/nrsmagic/sudoku/game/command/AbstractCommand;
    :cond_0
    return-void
.end method

.method public undoToCheckpoint()V
    .locals 2

    .prologue
    .line 79
    :cond_0
    iget-object v1, p0, Lcom/nrsmagic/sudoku/game/command/CommandStack;->mCommandStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 87
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/nrsmagic/sudoku/game/command/CommandStack;->validateCells()V

    .line 88
    return-void

    .line 80
    :cond_2
    iget-object v1, p0, Lcom/nrsmagic/sudoku/game/command/CommandStack;->mCommandStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nrsmagic/sudoku/game/command/AbstractCommand;

    .line 81
    .local v0, c:Lcom/nrsmagic/sudoku/game/command/AbstractCommand;
    invoke-virtual {v0}, Lcom/nrsmagic/sudoku/game/command/AbstractCommand;->undo()V

    .line 83
    iget-object v1, p0, Lcom/nrsmagic/sudoku/game/command/CommandStack;->mCommandStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/nrsmagic/sudoku/game/command/CommandStack;->mCommandStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nrsmagic/sudoku/game/command/AbstractCommand;

    invoke-virtual {v1}, Lcom/nrsmagic/sudoku/game/command/AbstractCommand;->isCheckpoint()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0
.end method
