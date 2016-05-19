.class Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity$3;
.super Ljava/lang/Object;
.source "SudokuPlayActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;->onCreateDialog(I)Landroid/app/Dialog;
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
    iput-object p1, p0, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity$3;->this$0:Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;

    .line 436
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 439
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity$3;->this$0:Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;

    #getter for: Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;->mSudokuGame:Lcom/nrsmagic/sudoku/game/SudokuGame;
    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;->access$2(Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;)Lcom/nrsmagic/sudoku/game/SudokuGame;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nrsmagic/sudoku/game/SudokuGame;->reset()V

    .line 440
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity$3;->this$0:Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;

    #getter for: Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;->mSudokuGame:Lcom/nrsmagic/sudoku/game/SudokuGame;
    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;->access$2(Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;)Lcom/nrsmagic/sudoku/game/SudokuGame;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nrsmagic/sudoku/game/SudokuGame;->start()V

    .line 441
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity$3;->this$0:Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;

    #getter for: Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;->mSudokuBoard:Lcom/nrsmagic/sudoku/gui/SudokuBoardView;
    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;->access$0(Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;)Lcom/nrsmagic/sudoku/gui/SudokuBoardView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->setReadOnly(Z)V

    .line 442
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity$3;->this$0:Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;

    #getter for: Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;->mShowTime:Z
    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;->access$3(Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 443
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity$3;->this$0:Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;

    #getter for: Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;->mGameTimer:Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity$GameTimer;
    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;->access$4(Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;)Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity$GameTimer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity$GameTimer;->start()V

    .line 445
    :cond_0
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity$3;->this$0:Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;

    #calls: Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;->refreshActionBarMenu()V
    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;->access$5(Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;)V

    .line 446
    return-void
.end method
