.class Lcom/nrsmagic/sudoku/gui/SudokuBoardView$1;
.super Ljava/lang/Object;
.source "SudokuBoardView.java"

# interfaces
.implements Lcom/nrsmagic/sudoku/game/CellCollection$OnChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->setCells(Lcom/nrsmagic/sudoku/game/CellCollection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nrsmagic/sudoku/gui/SudokuBoardView;


# direct methods
.method constructor <init>(Lcom/nrsmagic/sudoku/gui/SudokuBoardView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView$1;->this$0:Lcom/nrsmagic/sudoku/gui/SudokuBoardView;

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange()V
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView$1;->this$0:Lcom/nrsmagic/sudoku/gui/SudokuBoardView;

    invoke-virtual {v0}, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->postInvalidate()V

    .line 230
    return-void
.end method
