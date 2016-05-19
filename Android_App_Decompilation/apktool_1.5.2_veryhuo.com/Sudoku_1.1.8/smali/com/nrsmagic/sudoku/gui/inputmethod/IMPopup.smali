.class public Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopup;
.super Lcom/nrsmagic/sudoku/gui/inputmethod/InputMethod;
.source "IMPopup.java"


# instance fields
.field private mEditCellDialog:Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;

.field private mHighlightCompletedValues:Z

.field private mOnNoteEditListener:Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog$OnNoteEditListener;

.field private mOnNumberEditListener:Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog$OnNumberEditListener;

.field private mOnPopupDismissedListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mSelectedCell:Lcom/nrsmagic/sudoku/game/Cell;

.field private mShowNumberTotals:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/nrsmagic/sudoku/gui/inputmethod/InputMethod;-><init>()V

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopup;->mHighlightCompletedValues:Z

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopup;->mShowNumberTotals:Z

    .line 152
    new-instance v0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopup$1;

    invoke-direct {v0, p0}, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopup$1;-><init>(Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopup;)V

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopup;->mOnNumberEditListener:Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog$OnNumberEditListener;

    .line 165
    new-instance v0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopup$2;

    invoke-direct {v0, p0}, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopup$2;-><init>(Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopup;)V

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopup;->mOnNoteEditListener:Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog$OnNoteEditListener;

    .line 178
    new-instance v0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopup$3;

    invoke-direct {v0, p0}, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopup$3;-><init>(Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopup;)V

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopup;->mOnPopupDismissedListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 37
    return-void
.end method

.method static synthetic access$0(Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopup;)Lcom/nrsmagic/sudoku/game/Cell;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopup;->mSelectedCell:Lcom/nrsmagic/sudoku/game/Cell;

    return-object v0
.end method

.method private ensureEditCellDialog()V
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopup;->mEditCellDialog:Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopup;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopup;->mEditCellDialog:Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;

    .line 70
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopup;->mEditCellDialog:Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopup;->mOnNumberEditListener:Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog$OnNumberEditListener;

    invoke-virtual {v0, v1}, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;->setOnNumberEditListener(Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog$OnNumberEditListener;)V

    .line 71
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopup;->mEditCellDialog:Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopup;->mOnNoteEditListener:Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog$OnNoteEditListener;

    invoke-virtual {v0, v1}, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;->setOnNoteEditListener(Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog$OnNoteEditListener;)V

    .line 72
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopup;->mEditCellDialog:Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopup;->mOnPopupDismissedListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 75
    :cond_0
    return-void
.end method


# virtual methods
.method protected createControlPanelView()Landroid/view/View;
    .locals 3

    .prologue
    .line 145
    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopup;->mContext:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 146
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f030007

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public getAbbrName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopup;->mContext:Landroid/content/Context;

    const v1, 0x7f09004a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHelpResID()I
    .locals 1

    .prologue
    .line 135
    const v0, 0x7f090051

    return v0
.end method

.method public getHighlightCompletedValues()Z
    .locals 1

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopup;->mHighlightCompletedValues:Z

    return v0
.end method

.method public getNameResID()I
    .locals 1

    .prologue
    .line 130
    const v0, 0x7f090041

    return v0
.end method

.method public getShowNumberTotals()Z
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopup;->mShowNumberTotals:Z

    return v0
.end method

.method protected onActivated()V
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopup;->mBoard:Lcom/nrsmagic/sudoku/gui/SudokuBoardView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->setAutoHideTouchedCellHint(Z)V

    .line 80
    return-void
.end method

.method protected onCellTapped(Lcom/nrsmagic/sudoku/game/Cell;)V
    .locals 6
    .parameter "cell"

    .prologue
    .line 89
    iput-object p1, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopup;->mSelectedCell:Lcom/nrsmagic/sudoku/game/Cell;

    .line 90
    invoke-virtual {p1}, Lcom/nrsmagic/sudoku/game/Cell;->isEditable()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 91
    invoke-direct {p0}, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopup;->ensureEditCellDialog()V

    .line 93
    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopup;->mEditCellDialog:Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;

    invoke-virtual {v2}, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;->resetButtons()V

    .line 94
    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopup;->mEditCellDialog:Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;

    invoke-virtual {p1}, Lcom/nrsmagic/sudoku/game/Cell;->getValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;->updateNumber(Ljava/lang/Integer;)V

    .line 95
    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopup;->mEditCellDialog:Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;

    invoke-virtual {p1}, Lcom/nrsmagic/sudoku/game/Cell;->getNote()Lcom/nrsmagic/sudoku/game/CellNote;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nrsmagic/sudoku/game/CellNote;->getNotedNumbers()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;->updateNote(Ljava/util/Collection;)V

    .line 97
    const/4 v1, 0x0

    .line 98
    .local v1, valuesUseCount:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-boolean v2, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopup;->mHighlightCompletedValues:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopup;->mShowNumberTotals:Z

    if-eqz v2, :cond_1

    .line 99
    :cond_0
    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopup;->mGame:Lcom/nrsmagic/sudoku/game/SudokuGame;

    invoke-virtual {v2}, Lcom/nrsmagic/sudoku/game/SudokuGame;->getCells()Lcom/nrsmagic/sudoku/game/CellCollection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nrsmagic/sudoku/game/CellCollection;->getValuesUseCount()Ljava/util/Map;

    move-result-object v1

    .line 101
    :cond_1
    iget-boolean v2, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopup;->mHighlightCompletedValues:Z

    if-eqz v2, :cond_3

    .line 102
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_5

    .line 109
    :cond_3
    iget-boolean v2, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopup;->mShowNumberTotals:Z

    if-eqz v2, :cond_4

    .line 110
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_6

    .line 114
    :cond_4
    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopup;->mEditCellDialog:Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;

    invoke-virtual {v2}, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;->show()V

    .line 118
    .end local v1           #valuesUseCount:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :goto_2
    return-void

    .line 102
    .restart local v1       #valuesUseCount:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 103
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v4, 0x9

    if-lt v2, v4, :cond_2

    .line 104
    iget-object v4, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopup;->mEditCellDialog:Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v4, v2}, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;->highlightNumber(I)V

    goto :goto_0

    .line 110
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 111
    .restart local v0       #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v4, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopup;->mEditCellDialog:Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v4, v5, v2}, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;->setValueCount(II)V

    goto :goto_1

    .line 116
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v1           #valuesUseCount:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_7
    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopup;->mBoard:Lcom/nrsmagic/sudoku/gui/SudokuBoardView;

    invoke-virtual {v2}, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->hideTouchedCellHint()V

    goto :goto_2
.end method

.method protected onDeactivated()V
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopup;->mBoard:Lcom/nrsmagic/sudoku/gui/SudokuBoardView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->setAutoHideTouchedCellHint(Z)V

    .line 85
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopup;->mEditCellDialog:Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopup;->mEditCellDialog:Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;

    invoke-virtual {v0}, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;->cancel()V

    .line 126
    :cond_0
    return-void
.end method

.method public setHighlightCompletedValues(Z)V
    .locals 0
    .parameter "highlightCompletedValues"

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopup;->mHighlightCompletedValues:Z

    .line 57
    return-void
.end method

.method public setShowNumberTotals(Z)V
    .locals 0
    .parameter "showNumberTotals"

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopup;->mShowNumberTotals:Z

    .line 65
    return-void
.end method
