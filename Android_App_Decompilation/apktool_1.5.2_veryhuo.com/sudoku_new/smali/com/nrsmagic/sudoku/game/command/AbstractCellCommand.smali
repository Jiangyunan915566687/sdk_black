.class public abstract Lcom/nrsmagic/sudoku/game/command/AbstractCellCommand;
.super Lcom/nrsmagic/sudoku/game/command/AbstractCommand;
.source "AbstractCellCommand.java"


# instance fields
.field private mCells:Lcom/nrsmagic/sudoku/game/CellCollection;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/nrsmagic/sudoku/game/command/AbstractCommand;-><init>()V

    return-void
.end method


# virtual methods
.method protected getCells()Lcom/nrsmagic/sudoku/game/CellCollection;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/nrsmagic/sudoku/game/command/AbstractCellCommand;->mCells:Lcom/nrsmagic/sudoku/game/CellCollection;

    return-object v0
.end method

.method protected setCells(Lcom/nrsmagic/sudoku/game/CellCollection;)V
    .locals 0
    .parameter "mCells"

    .prologue
    .line 20
    iput-object p1, p0, Lcom/nrsmagic/sudoku/game/command/AbstractCellCommand;->mCells:Lcom/nrsmagic/sudoku/game/CellCollection;

    .line 21
    return-void
.end method
