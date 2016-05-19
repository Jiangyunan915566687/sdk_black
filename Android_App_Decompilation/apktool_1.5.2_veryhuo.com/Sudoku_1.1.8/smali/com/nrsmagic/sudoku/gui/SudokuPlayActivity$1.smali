.class Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity$1;
.super Ljava/lang/Object;
.source "SudokuPlayActivity.java"

# interfaces
.implements Lcom/nrsmagic/sudoku/game/SudokuGame$OnPuzzleSolvedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;


# direct methods
.method constructor <init>(Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity$1;->this$0:Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;

    .line 483
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPuzzleSolved()V
    .locals 2

    .prologue
    .line 487
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity$1;->this$0:Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;

    #getter for: Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;->mSudokuBoard:Lcom/nrsmagic/sudoku/gui/SudokuBoardView;
    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;->access$0(Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;)Lcom/nrsmagic/sudoku/gui/SudokuBoardView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->setReadOnly(Z)V

    .line 488
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity$1;->this$0:Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;->showDialog(I)V

    .line 489
    return-void
.end method
