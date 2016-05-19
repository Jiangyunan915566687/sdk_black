.class Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanel$1;
.super Ljava/lang/Object;
.source "IMControlPanel.java"

# interfaces
.implements Lcom/nrsmagic/sudoku/gui/SudokuBoardView$OnCellTappedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanel;


# direct methods
.method constructor <init>(Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanel;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanel$1;->this$0:Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanel;

    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCellTapped(Lcom/nrsmagic/sudoku/game/Cell;)V
    .locals 2
    .parameter "cell"

    .prologue
    .line 249
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanel$1;->this$0:Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanel;

    #getter for: Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanel;->mActiveMethodIndex:I
    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanel;->access$0(Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanel;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanel$1;->this$0:Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanel;

    #getter for: Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanel;->mInputMethods:Ljava/util/List;
    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanel;->access$1(Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanel;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanel$1;->this$0:Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanel;

    #getter for: Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanel;->mInputMethods:Ljava/util/List;
    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanel;->access$1(Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanel;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanel$1;->this$0:Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanel;

    #getter for: Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanel;->mActiveMethodIndex:I
    invoke-static {v1}, Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanel;->access$0(Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanel;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nrsmagic/sudoku/gui/inputmethod/InputMethod;

    invoke-virtual {v0, p1}, Lcom/nrsmagic/sudoku/gui/inputmethod/InputMethod;->onCellTapped(Lcom/nrsmagic/sudoku/game/Cell;)V

    .line 252
    :cond_0
    return-void
.end method
