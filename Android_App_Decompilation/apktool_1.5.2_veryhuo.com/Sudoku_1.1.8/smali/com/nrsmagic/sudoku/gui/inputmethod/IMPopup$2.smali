.class Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopup$2;
.super Ljava/lang/Object;
.source "IMPopup.java"

# interfaces
.implements Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog$OnNoteEditListener;


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
    iput-object p1, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopup$2;->this$0:Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopup;

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNoteEdit([Ljava/lang/Integer;)Z
    .locals 3
    .parameter "numbers"

    .prologue
    .line 168
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopup$2;->this$0:Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopup;

    #getter for: Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopup;->mSelectedCell:Lcom/nrsmagic/sudoku/game/Cell;
    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopup;->access$0(Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopup;)Lcom/nrsmagic/sudoku/game/Cell;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopup$2;->this$0:Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopup;

    iget-object v0, v0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopup;->mGame:Lcom/nrsmagic/sudoku/game/SudokuGame;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopup$2;->this$0:Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopup;

    #getter for: Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopup;->mSelectedCell:Lcom/nrsmagic/sudoku/game/Cell;
    invoke-static {v1}, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopup;->access$0(Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopup;)Lcom/nrsmagic/sudoku/game/Cell;

    move-result-object v1

    invoke-static {p1}, Lcom/nrsmagic/sudoku/game/CellNote;->fromIntArray([Ljava/lang/Integer;)Lcom/nrsmagic/sudoku/game/CellNote;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nrsmagic/sudoku/game/SudokuGame;->setCellNote(Lcom/nrsmagic/sudoku/game/Cell;Lcom/nrsmagic/sudoku/game/CellNote;)V

    .line 171
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
