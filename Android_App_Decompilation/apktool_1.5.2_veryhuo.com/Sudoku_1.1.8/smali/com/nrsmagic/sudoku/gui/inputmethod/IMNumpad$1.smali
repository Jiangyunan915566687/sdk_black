.class Lcom/nrsmagic/sudoku/gui/inputmethod/IMNumpad$1;
.super Ljava/lang/Object;
.source "IMNumpad.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nrsmagic/sudoku/gui/inputmethod/IMNumpad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nrsmagic/sudoku/gui/inputmethod/IMNumpad;


# direct methods
.method constructor <init>(Lcom/nrsmagic/sudoku/gui/inputmethod/IMNumpad;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMNumpad$1;->this$0:Lcom/nrsmagic/sudoku/gui/inputmethod/IMNumpad;

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/16 v3, 0x9

    .line 165
    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMNumpad$1;->this$0:Lcom/nrsmagic/sudoku/gui/inputmethod/IMNumpad;

    iget-object v2, v2, Lcom/nrsmagic/sudoku/gui/inputmethod/IMNumpad;->mGame:Lcom/nrsmagic/sudoku/game/SudokuGame;

    invoke-virtual {v2}, Lcom/nrsmagic/sudoku/game/SudokuGame;->isCompleted()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 190
    :cond_0
    :goto_0
    return-void

    .line 168
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 169
    .local v1, selNumber:I
    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMNumpad$1;->this$0:Lcom/nrsmagic/sudoku/gui/inputmethod/IMNumpad;

    #getter for: Lcom/nrsmagic/sudoku/gui/inputmethod/IMNumpad;->mSelectedCell:Lcom/nrsmagic/sudoku/game/Cell;
    invoke-static {v2}, Lcom/nrsmagic/sudoku/gui/inputmethod/IMNumpad;->access$0(Lcom/nrsmagic/sudoku/gui/inputmethod/IMNumpad;)Lcom/nrsmagic/sudoku/game/Cell;

    move-result-object v0

    .line 171
    .local v0, selCell:Lcom/nrsmagic/sudoku/game/Cell;
    if-eqz v0, :cond_0

    .line 172
    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMNumpad$1;->this$0:Lcom/nrsmagic/sudoku/gui/inputmethod/IMNumpad;

    #getter for: Lcom/nrsmagic/sudoku/gui/inputmethod/IMNumpad;->mEditMode:I
    invoke-static {v2}, Lcom/nrsmagic/sudoku/gui/inputmethod/IMNumpad;->access$1(Lcom/nrsmagic/sudoku/gui/inputmethod/IMNumpad;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 181
    :pswitch_0
    if-ltz v1, :cond_0

    if-gt v1, v3, :cond_0

    .line 182
    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMNumpad$1;->this$0:Lcom/nrsmagic/sudoku/gui/inputmethod/IMNumpad;

    iget-object v2, v2, Lcom/nrsmagic/sudoku/gui/inputmethod/IMNumpad;->mGame:Lcom/nrsmagic/sudoku/game/SudokuGame;

    invoke-virtual {v2, v0, v1}, Lcom/nrsmagic/sudoku/game/SudokuGame;->setCellValue(Lcom/nrsmagic/sudoku/game/Cell;I)V

    .line 183
    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMNumpad$1;->this$0:Lcom/nrsmagic/sudoku/gui/inputmethod/IMNumpad;

    invoke-virtual {v2}, Lcom/nrsmagic/sudoku/gui/inputmethod/IMNumpad;->isMoveCellSelectionOnPress()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 184
    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMNumpad$1;->this$0:Lcom/nrsmagic/sudoku/gui/inputmethod/IMNumpad;

    iget-object v2, v2, Lcom/nrsmagic/sudoku/gui/inputmethod/IMNumpad;->mBoard:Lcom/nrsmagic/sudoku/gui/SudokuBoardView;

    invoke-virtual {v2}, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->moveCellSelectionRight()V

    goto :goto_0

    .line 174
    :pswitch_1
    if-nez v1, :cond_2

    .line 175
    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMNumpad$1;->this$0:Lcom/nrsmagic/sudoku/gui/inputmethod/IMNumpad;

    iget-object v2, v2, Lcom/nrsmagic/sudoku/gui/inputmethod/IMNumpad;->mGame:Lcom/nrsmagic/sudoku/game/SudokuGame;

    sget-object v3, Lcom/nrsmagic/sudoku/game/CellNote;->EMPTY:Lcom/nrsmagic/sudoku/game/CellNote;

    invoke-virtual {v2, v0, v3}, Lcom/nrsmagic/sudoku/game/SudokuGame;->setCellNote(Lcom/nrsmagic/sudoku/game/Cell;Lcom/nrsmagic/sudoku/game/CellNote;)V

    goto :goto_0

    .line 176
    :cond_2
    if-lez v1, :cond_0

    if-gt v1, v3, :cond_0

    .line 177
    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMNumpad$1;->this$0:Lcom/nrsmagic/sudoku/gui/inputmethod/IMNumpad;

    iget-object v2, v2, Lcom/nrsmagic/sudoku/gui/inputmethod/IMNumpad;->mGame:Lcom/nrsmagic/sudoku/game/SudokuGame;

    invoke-virtual {v0}, Lcom/nrsmagic/sudoku/game/Cell;->getNote()Lcom/nrsmagic/sudoku/game/CellNote;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/nrsmagic/sudoku/game/CellNote;->toggleNumber(I)Lcom/nrsmagic/sudoku/game/CellNote;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/nrsmagic/sudoku/game/SudokuGame;->setCellNote(Lcom/nrsmagic/sudoku/game/Cell;Lcom/nrsmagic/sudoku/game/CellNote;)V

    goto :goto_0

    .line 172
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
