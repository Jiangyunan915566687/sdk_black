.class Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopup$1;
.super Ljava/lang/Object;
.source "IMPopup.java"

# interfaces
.implements Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog$OnNumberEditListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopup;


# direct methods
.method constructor <init>(Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopup;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopup$1;->this$0:Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopup;

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNumberEdit(I)Z
    .locals 2
    .parameter "number"

    .prologue
    .line 155
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopup$1;->this$0:Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopup;

    #getter for: Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopup;->mSelectedCell:Lcom/nrsmagic/sudoku/game/Cell;
    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopup;->access$0(Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopup;)Lcom/nrsmagic/sudoku/game/Cell;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopup$1;->this$0:Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopup;

    iget-object v0, v0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopup;->mGame:Lcom/nrsmagic/sudoku/game/SudokuGame;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopup$1;->this$0:Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopup;

    #getter for: Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopup;->mSelectedCell:Lcom/nrsmagic/sudoku/game/Cell;
    invoke-static {v1}, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopup;->access$0(Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopup;)Lcom/nrsmagic/sudoku/game/Cell;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/nrsmagic/sudoku/game/SudokuGame;->setCellValue(Lcom/nrsmagic/sudoku/game/Cell;I)V

    .line 158
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
