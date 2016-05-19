.class public Lcom/nrsmagic/sudoku/gui/inputmethod/IMNumpad;
.super Lcom/nrsmagic/sudoku/gui/inputmethod/InputMethod;
.source "IMNumpad.java"


# static fields
.field private static final MODE_EDIT_NOTE:I = 0x1

.field private static final MODE_EDIT_VALUE:I


# instance fields
.field private mEditMode:I

.field private mHighlightCompletedValues:Z

.field private mNumberButtonClick:Landroid/view/View$OnClickListener;

.field private mNumberButtons:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/widget/Button;",
            ">;"
        }
    .end annotation
.end field

.field private mOnCellsChangeListener:Lcom/nrsmagic/sudoku/game/CellCollection$OnChangeListener;

.field private mSelectedCell:Lcom/nrsmagic/sudoku/game/Cell;

.field private mShowNumberTotals:Z

.field private mSwitchNumNoteButton:Landroid/widget/ImageButton;

.field private moveCellSelectionOnPress:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0}, Lcom/nrsmagic/sudoku/gui/inputmethod/InputMethod;-><init>()V

    .line 44
    iput-boolean v1, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMNumpad;->moveCellSelectionOnPress:Z

    .line 45
    iput-boolean v1, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMNumpad;->mHighlightCompletedValues:Z

    .line 46
    iput-boolean v0, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMNumpad;->mShowNumberTotals:Z

    .line 54
    iput v0, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMNumpad;->mEditMode:I

    .line 161
    new-instance v0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMNumpad$1;

    invoke-direct {v0, p0}, Lcom/nrsmagic/sudoku/gui/inputmethod/IMNumpad$1;-><init>(Lcom/nrsmagic/sudoku/gui/inputmethod/IMNumpad;)V

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMNumpad;->mNumberButtonClick:Landroid/view/View$OnClickListener;

    .line 194
    new-instance v0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMNumpad$2;

    invoke-direct {v0, p0}, Lcom/nrsmagic/sudoku/gui/inputmethod/IMNumpad$2;-><init>(Lcom/nrsmagic/sudoku/gui/inputmethod/IMNumpad;)V

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMNumpad;->mOnCellsChangeListener:Lcom/nrsmagic/sudoku/game/CellCollection$OnChangeListener;

    .line 42
    return-void
.end method

.method static synthetic access$0(Lcom/nrsmagic/sudoku/gui/inputmethod/IMNumpad;)Lcom/nrsmagic/sudoku/game/Cell;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMNumpad;->mSelectedCell:Lcom/nrsmagic/sudoku/game/Cell;

    return-object v0
.end method

.method static synthetic access$1(Lcom/nrsmagic/sudoku/gui/inputmethod/IMNumpad;)I
    .locals 1
    .parameter

    .prologue
    .line 54
    iget v0, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMNumpad;->mEditMode:I

    return v0
.end method

.method static synthetic access$2(Lcom/nrsmagic/sudoku/gui/inputmethod/IMNumpad;)V
    .locals 0
    .parameter

    .prologue
    .line 205
    invoke-direct {p0}, Lcom/nrsmagic/sudoku/gui/inputmethod/IMNumpad;->update()V

    return-void
.end method

.method static synthetic access$3(Lcom/nrsmagic/sudoku/gui/inputmethod/IMNumpad;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 54
    iput p1, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMNumpad;->mEditMode:I

    return-void
.end method

.method private update()V
    .locals 7

    .prologue
    .line 206
    iget v4, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMNumpad;->mEditMode:I

    packed-switch v4, :pswitch_data_0

    .line 215
    :goto_0
    const/4 v3, 0x0

    .line 216
    .local v3, valuesUseCount:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-boolean v4, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMNumpad;->mHighlightCompletedValues:Z

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMNumpad;->mShowNumberTotals:Z

    if-eqz v4, :cond_1

    .line 217
    :cond_0
    iget-object v4, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMNumpad;->mGame:Lcom/nrsmagic/sudoku/game/SudokuGame;

    invoke-virtual {v4}, Lcom/nrsmagic/sudoku/game/SudokuGame;->getCells()Lcom/nrsmagic/sudoku/game/CellCollection;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nrsmagic/sudoku/game/CellCollection;->getValuesUseCount()Ljava/util/Map;

    move-result-object v3

    .line 219
    :cond_1
    iget-boolean v4, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMNumpad;->mHighlightCompletedValues:Z

    if-eqz v4, :cond_2

    .line 220
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_4

    .line 231
    :cond_2
    iget-boolean v4, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMNumpad;->mShowNumberTotals:Z

    if-eqz v4, :cond_3

    .line 232
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_7

    .line 237
    :cond_3
    return-void

    .line 208
    .end local v3           #valuesUseCount:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :pswitch_0
    iget-object v4, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMNumpad;->mSwitchNumNoteButton:Landroid/widget/ImageButton;

    const v5, 0x7f020010

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 211
    :pswitch_1
    iget-object v4, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMNumpad;->mSwitchNumNoteButton:Landroid/widget/ImageButton;

    const v5, 0x7f020011

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 220
    .restart local v3       #valuesUseCount:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 221
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v6, 0x9

    if-lt v4, v6, :cond_5

    const/4 v2, 0x1

    .line 222
    .local v2, highlightValue:Z
    :goto_3
    iget-object v4, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMNumpad;->mNumberButtons:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 223
    .local v0, b:Landroid/widget/Button;
    if-eqz v2, :cond_6

    .line 224
    const/high16 v4, 0x7f02

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_1

    .line 221
    .end local v0           #b:Landroid/widget/Button;
    .end local v2           #highlightValue:Z
    :cond_5
    const/4 v2, 0x0

    goto :goto_3

    .line 226
    .restart local v0       #b:Landroid/widget/Button;
    .restart local v2       #highlightValue:Z
    :cond_6
    const v4, 0x7f020004

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_1

    .line 232
    .end local v0           #b:Landroid/widget/Button;
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v2           #highlightValue:Z
    :cond_7
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 233
    .restart local v1       #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v5, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMNumpad;->mNumberButtons:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 234
    .restart local v0       #b:Landroid/widget/Button;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 206
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected createControlPanelView()Landroid/view/View;
    .locals 7

    .prologue
    .line 98
    iget-object v4, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMNumpad;->mContext:Landroid/content/Context;

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 99
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v4, 0x7f030006

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 101
    .local v1, controlPanel:Landroid/view/View;
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMNumpad;->mNumberButtons:Ljava/util/Map;

    .line 102
    iget-object v5, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMNumpad;->mNumberButtons:Ljava/util/Map;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const v4, 0x7f080004

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    iget-object v5, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMNumpad;->mNumberButtons:Ljava/util/Map;

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const v4, 0x7f080005

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    iget-object v5, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMNumpad;->mNumberButtons:Ljava/util/Map;

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const v4, 0x7f080006

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    iget-object v5, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMNumpad;->mNumberButtons:Ljava/util/Map;

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const v4, 0x7f080007

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    iget-object v5, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMNumpad;->mNumberButtons:Ljava/util/Map;

    const/4 v4, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const v4, 0x7f080008

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    iget-object v5, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMNumpad;->mNumberButtons:Ljava/util/Map;

    const/4 v4, 0x6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const v4, 0x7f08000a

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    iget-object v5, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMNumpad;->mNumberButtons:Ljava/util/Map;

    const/4 v4, 0x7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const v4, 0x7f08000b

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    iget-object v5, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMNumpad;->mNumberButtons:Ljava/util/Map;

    const/16 v4, 0x8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const v4, 0x7f08000c

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    iget-object v5, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMNumpad;->mNumberButtons:Ljava/util/Map;

    const/16 v4, 0x9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const v4, 0x7f08000d

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    iget-object v5, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMNumpad;->mNumberButtons:Ljava/util/Map;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const v4, 0x7f08000e

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    iget-object v4, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMNumpad;->mNumberButtons:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 119
    const v4, 0x7f080009

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    iput-object v4, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMNumpad;->mSwitchNumNoteButton:Landroid/widget/ImageButton;

    .line 120
    iget-object v4, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMNumpad;->mSwitchNumNoteButton:Landroid/widget/ImageButton;

    new-instance v5, Lcom/nrsmagic/sudoku/gui/inputmethod/IMNumpad$3;

    invoke-direct {v5, p0}, Lcom/nrsmagic/sudoku/gui/inputmethod/IMNumpad$3;-><init>(Lcom/nrsmagic/sudoku/gui/inputmethod/IMNumpad;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    return-object v1

    .line 113
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 114
    .local v3, num:Ljava/lang/Integer;
    iget-object v5, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMNumpad;->mNumberButtons:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 115
    .local v0, b:Landroid/widget/Button;
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 116
    iget-object v5, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMNumpad;->mNumberButtonClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public getAbbrName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMNumpad;->mContext:Landroid/content/Context;

    const v1, 0x7f090049

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHelpResID()I
    .locals 1

    .prologue
    .line 141
    const v0, 0x7f090053

    return v0
.end method

.method public getHighlightCompletedValues()Z
    .locals 1

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMNumpad;->mHighlightCompletedValues:Z

    return v0
.end method

.method public getNameResID()I
    .locals 1

    .prologue
    .line 136
    const v0, 0x7f090045

    return v0
.end method

.method public getShowNumberTotals()Z
    .locals 1

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMNumpad;->mShowNumberTotals:Z

    return v0
.end method

.method protected initialize(Landroid/content/Context;Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanel;Lcom/nrsmagic/sudoku/game/SudokuGame;Lcom/nrsmagic/sudoku/gui/SudokuBoardView;Lcom/nrsmagic/sudoku/gui/HintsQueue;)V
    .locals 2
    .parameter "context"
    .parameter "controlPanel"
    .parameter "game"
    .parameter "board"
    .parameter "hintsQueue"

    .prologue
    .line 91
    invoke-super/range {p0 .. p5}, Lcom/nrsmagic/sudoku/gui/inputmethod/InputMethod;->initialize(Landroid/content/Context;Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanel;Lcom/nrsmagic/sudoku/game/SudokuGame;Lcom/nrsmagic/sudoku/gui/SudokuBoardView;Lcom/nrsmagic/sudoku/gui/HintsQueue;)V

    .line 93
    invoke-virtual {p3}, Lcom/nrsmagic/sudoku/game/SudokuGame;->getCells()Lcom/nrsmagic/sudoku/game/CellCollection;

    move-result-object v0

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMNumpad;->mOnCellsChangeListener:Lcom/nrsmagic/sudoku/game/CellCollection$OnChangeListener;

    invoke-virtual {v0, v1}, Lcom/nrsmagic/sudoku/game/CellCollection;->addOnChangeListener(Lcom/nrsmagic/sudoku/game/CellCollection$OnChangeListener;)V

    .line 94
    return-void
.end method

.method public isMoveCellSelectionOnPress()Z
    .locals 1

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMNumpad;->moveCellSelectionOnPress:Z

    return v0
.end method

.method protected onActivated()V
    .locals 1

    .prologue
    .line 151
    invoke-direct {p0}, Lcom/nrsmagic/sudoku/gui/inputmethod/IMNumpad;->update()V

    .line 153
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMNumpad;->mBoard:Lcom/nrsmagic/sudoku/gui/SudokuBoardView;

    invoke-virtual {v0}, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->getSelectedCell()Lcom/nrsmagic/sudoku/game/Cell;

    move-result-object v0

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMNumpad;->mSelectedCell:Lcom/nrsmagic/sudoku/game/Cell;

    .line 154
    return-void
.end method

.method protected onCellSelected(Lcom/nrsmagic/sudoku/game/Cell;)V
    .locals 0
    .parameter "cell"

    .prologue
    .line 158
    iput-object p1, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMNumpad;->mSelectedCell:Lcom/nrsmagic/sudoku/game/Cell;

    .line 159
    return-void
.end method

.method protected onRestoreState(Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanelStatePersister$StateBundle;)V
    .locals 2
    .parameter "savedState"

    .prologue
    .line 246
    const-string v0, "editMode"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanelStatePersister$StateBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMNumpad;->mEditMode:I

    .line 247
    invoke-virtual {p0}, Lcom/nrsmagic/sudoku/gui/inputmethod/IMNumpad;->isInputMethodViewCreated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    invoke-direct {p0}, Lcom/nrsmagic/sudoku/gui/inputmethod/IMNumpad;->update()V

    .line 250
    :cond_0
    return-void
.end method

.method protected onSaveState(Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanelStatePersister$StateBundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 241
    const-string v0, "editMode"

    iget v1, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMNumpad;->mEditMode:I

    invoke-virtual {p1, v0, v1}, Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanelStatePersister$StateBundle;->putInt(Ljava/lang/String;I)V

    .line 242
    return-void
.end method

.method public setHighlightCompletedValues(Z)V
    .locals 0
    .parameter "highlightCompletedValues"

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMNumpad;->mHighlightCompletedValues:Z

    .line 78
    return-void
.end method

.method public setMoveCellSelectionOnPress(Z)V
    .locals 0
    .parameter "moveCellSelectionOnPress"

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMNumpad;->moveCellSelectionOnPress:Z

    .line 64
    return-void
.end method

.method public setShowNumberTotals(Z)V
    .locals 0
    .parameter "showNumberTotals"

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMNumpad;->mShowNumberTotals:Z

    .line 86
    return-void
.end method
