.class Lcom/nrsmagic/sudoku/gui/SudokuListActivity$3;
.super Ljava/lang/Object;
.source "SudokuListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nrsmagic/sudoku/gui/SudokuListActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nrsmagic/sudoku/gui/SudokuListActivity;


# direct methods
.method constructor <init>(Lcom/nrsmagic/sudoku/gui/SudokuListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nrsmagic/sudoku/gui/SudokuListActivity$3;->this$0:Lcom/nrsmagic/sudoku/gui/SudokuListActivity;

    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 275
    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/SudokuListActivity$3;->this$0:Lcom/nrsmagic/sudoku/gui/SudokuListActivity;

    #getter for: Lcom/nrsmagic/sudoku/gui/SudokuListActivity;->mDatabase:Lcom/nrsmagic/sudoku/db/SudokuDatabase;
    invoke-static {v1}, Lcom/nrsmagic/sudoku/gui/SudokuListActivity;->access$0(Lcom/nrsmagic/sudoku/gui/SudokuListActivity;)Lcom/nrsmagic/sudoku/db/SudokuDatabase;

    move-result-object v1

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/SudokuListActivity$3;->this$0:Lcom/nrsmagic/sudoku/gui/SudokuListActivity;

    #getter for: Lcom/nrsmagic/sudoku/gui/SudokuListActivity;->mResetPuzzleID:J
    invoke-static {v2}, Lcom/nrsmagic/sudoku/gui/SudokuListActivity;->access$5(Lcom/nrsmagic/sudoku/gui/SudokuListActivity;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/nrsmagic/sudoku/db/SudokuDatabase;->getSudoku(J)Lcom/nrsmagic/sudoku/game/SudokuGame;

    move-result-object v0

    .line 276
    .local v0, game:Lcom/nrsmagic/sudoku/game/SudokuGame;
    if-eqz v0, :cond_0

    .line 277
    invoke-virtual {v0}, Lcom/nrsmagic/sudoku/game/SudokuGame;->reset()V

    .line 278
    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/SudokuListActivity$3;->this$0:Lcom/nrsmagic/sudoku/gui/SudokuListActivity;

    #getter for: Lcom/nrsmagic/sudoku/gui/SudokuListActivity;->mDatabase:Lcom/nrsmagic/sudoku/db/SudokuDatabase;
    invoke-static {v1}, Lcom/nrsmagic/sudoku/gui/SudokuListActivity;->access$0(Lcom/nrsmagic/sudoku/gui/SudokuListActivity;)Lcom/nrsmagic/sudoku/db/SudokuDatabase;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/nrsmagic/sudoku/db/SudokuDatabase;->updateSudoku(Lcom/nrsmagic/sudoku/game/SudokuGame;)V

    .line 280
    :cond_0
    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/SudokuListActivity$3;->this$0:Lcom/nrsmagic/sudoku/gui/SudokuListActivity;

    #calls: Lcom/nrsmagic/sudoku/gui/SudokuListActivity;->updateList()V
    invoke-static {v1}, Lcom/nrsmagic/sudoku/gui/SudokuListActivity;->access$2(Lcom/nrsmagic/sudoku/gui/SudokuListActivity;)V

    .line 281
    return-void
.end method
