.class Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity$4;
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
    iput-object p1, p0, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity$4;->this$0:Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;

    .line 455
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 457
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity$4;->this$0:Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;

    #getter for: Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;->mSudokuGame:Lcom/nrsmagic/sudoku/game/SudokuGame;
    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;->access$2(Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;)Lcom/nrsmagic/sudoku/game/SudokuGame;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nrsmagic/sudoku/game/SudokuGame;->clearAllNotes()V

    .line 458
    return-void
.end method
