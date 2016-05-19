.class Lcom/nrsmagic/sudoku/gui/SudokuListActivity$1;
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
    iput-object p1, p0, Lcom/nrsmagic/sudoku/gui/SudokuListActivity$1;->this$0:Lcom/nrsmagic/sudoku/gui/SudokuListActivity;

    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 244
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/SudokuListActivity$1;->this$0:Lcom/nrsmagic/sudoku/gui/SudokuListActivity;

    #getter for: Lcom/nrsmagic/sudoku/gui/SudokuListActivity;->mDatabase:Lcom/nrsmagic/sudoku/db/SudokuDatabase;
    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/SudokuListActivity;->access$0(Lcom/nrsmagic/sudoku/gui/SudokuListActivity;)Lcom/nrsmagic/sudoku/db/SudokuDatabase;

    move-result-object v0

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/SudokuListActivity$1;->this$0:Lcom/nrsmagic/sudoku/gui/SudokuListActivity;

    #getter for: Lcom/nrsmagic/sudoku/gui/SudokuListActivity;->mDeletePuzzleID:J
    invoke-static {v1}, Lcom/nrsmagic/sudoku/gui/SudokuListActivity;->access$1(Lcom/nrsmagic/sudoku/gui/SudokuListActivity;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/nrsmagic/sudoku/db/SudokuDatabase;->deleteSudoku(J)V

    .line 245
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/SudokuListActivity$1;->this$0:Lcom/nrsmagic/sudoku/gui/SudokuListActivity;

    #calls: Lcom/nrsmagic/sudoku/gui/SudokuListActivity;->updateList()V
    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/SudokuListActivity;->access$2(Lcom/nrsmagic/sudoku/gui/SudokuListActivity;)V

    .line 246
    return-void
.end method
