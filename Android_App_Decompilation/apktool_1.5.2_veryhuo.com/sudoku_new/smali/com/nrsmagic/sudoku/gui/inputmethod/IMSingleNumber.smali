.class public Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber;
.super Lcom/nrsmagic/sudoku/gui/inputmethod/InputMethod;
.source "IMSingleNumber.java"


# static fields
.field private static final MODE_EDIT_NOTE:I = 0x1

.field private static final MODE_EDIT_VALUE:I


# instance fields
.field private mEditMode:I

.field private mGuiHandler:Landroid/os/Handler;

.field private mHighlightCompletedValues:Z

.field private mNumberButtonClicked:Landroid/view/View$OnClickListener;

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

.field private mSelectedNumber:I

.field private mShowNumberTotals:Z

.field private mSwitchNumNoteButton:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 67
    invoke-direct {p0}, Lcom/nrsmagic/sudoku/gui/inputmethod/InputMethod;-><init>()V

    .line 56
    iput-boolean v1, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber;->mHighlightCompletedValues:Z

    .line 57
    iput-boolean v0, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber;->mShowNumberTotals:Z

    .line 59
    iput v1, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber;->mSelectedNumber:I

    .line 60
    iput v0, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber;->mEditMode:I

    .line 154
    new-instance v0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber$1;

    invoke-direct {v0, p0}, Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber$1;-><init>(Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber;)V

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber;->mNumberButtonClicked:Landroid/view/View$OnClickListener;

    .line 164
    new-instance v0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber$2;

    invoke-direct {v0, p0}, Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber$2;-><init>(Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber;)V

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber;->mOnCellsChangeListener:Lcom/nrsmagic/sudoku/game/CellCollection$OnChangeListener;

    .line 69
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber;->mGuiHandler:Landroid/os/Handler;

    .line 70
    return-void
.end method

.method static synthetic access$0(Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 59
    iput p1, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber;->mSelectedNumber:I

    return-void
.end method

.method static synthetic access$1(Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber;)V
    .locals 0
    .parameter

    .prologue
    .line 174
    invoke-direct {p0}, Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber;->update()V

    return-void
.end method

.method static synthetic access$2(Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber;)I
    .locals 1
    .parameter

    .prologue
    .line 60
    iget v0, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber;->mEditMode:I

    return v0
.end method

.method static synthetic access$3(Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 60
    iput p1, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber;->mEditMode:I

    return-void
.end method

.method static synthetic access$4(Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber;)Ljava/util/Map;
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber;->mNumberButtons:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$5(Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber;)I
    .locals 1
    .parameter

    .prologue
    .line 59
    iget v0, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber;->mSelectedNumber:I

    return v0
.end method

.method static synthetic access$6(Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber;)Z
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber;->mHighlightCompletedValues:Z

    return v0
.end method

.method static synthetic access$7(Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber;)Z
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber;->mShowNumberTotals:Z

    return v0
.end method

.method private update()V
    .locals 4

    .prologue
    .line 175
    iget v0, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber;->mEditMode:I

    packed-switch v0, :pswitch_data_0

    .line 186
    :goto_0
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber;->mGuiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber$4;

    invoke-direct {v1, p0}, Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber$4;-><init>(Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber;)V

    .line 231
    const-wide/16 v2, 0x64

    .line 186
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 232
    return-void

    .line 177
    :pswitch_0
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber;->mSwitchNumNoteButton:Landroid/widget/ImageButton;

    const v1, 0x7f020010

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 180
    :pswitch_1
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber;->mSwitchNumNoteButton:Landroid/widget/ImageButton;

    const v1, 0x7f020011

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 175
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
    .line 119
    iget-object v4, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber;->mContext:Landroid/content/Context;

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 120
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v4, 0x7f03000a

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 122
    .local v1, controlPanel:Landroid/view/View;
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber;->mNumberButtons:Ljava/util/Map;

    .line 123
    iget-object v5, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber;->mNumberButtons:Ljava/util/Map;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const v4, 0x7f080004

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    iget-object v5, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber;->mNumberButtons:Ljava/util/Map;

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const v4, 0x7f080005

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    iget-object v5, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber;->mNumberButtons:Ljava/util/Map;

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const v4, 0x7f080006

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    iget-object v5, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber;->mNumberButtons:Ljava/util/Map;

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const v4, 0x7f080007

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    iget-object v5, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber;->mNumberButtons:Ljava/util/Map;

    const/4 v4, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const v4, 0x7f080008

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    iget-object v5, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber;->mNumberButtons:Ljava/util/Map;

    const/4 v4, 0x6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const v4, 0x7f08000a

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    iget-object v5, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber;->mNumberButtons:Ljava/util/Map;

    const/4 v4, 0x7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const v4, 0x7f08000b

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    iget-object v5, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber;->mNumberButtons:Ljava/util/Map;

    const/16 v4, 0x8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const v4, 0x7f08000c

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    iget-object v5, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber;->mNumberButtons:Ljava/util/Map;

    const/16 v4, 0x9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const v4, 0x7f08000d

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    iget-object v5, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber;->mNumberButtons:Ljava/util/Map;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const v4, 0x7f08000e

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    iget-object v4, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber;->mNumberButtons:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 140
    const v4, 0x7f080009

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    iput-object v4, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber;->mSwitchNumNoteButton:Landroid/widget/ImageButton;

    .line 141
    iget-object v4, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber;->mSwitchNumNoteButton:Landroid/widget/ImageButton;

    new-instance v5, Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber$3;

    invoke-direct {v5, p0}, Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber$3;-><init>(Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    return-object v1

    .line 134
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 135
    .local v3, num:Ljava/lang/Integer;
    iget-object v5, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber;->mNumberButtons:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 136
    .local v0, b:Landroid/widget/Button;
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 137
    iget-object v5, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber;->mNumberButtonClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public getAbbrName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber;->mContext:Landroid/content/Context;

    const v1, 0x7f09004b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHelpResID()I
    .locals 1

    .prologue
    .line 109
    const v0, 0x7f090052

    return v0
.end method

.method public getHighlightCompletedValues()Z
    .locals 1

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber;->mHighlightCompletedValues:Z

    return v0
.end method

.method public getNameResID()I
    .locals 1

    .prologue
    .line 104
    const v0, 0x7f090043

    return v0
.end method

.method public getShowNumberTotals()Z
    .locals 1

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber;->mShowNumberTotals:Z

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
    .line 97
    invoke-super/range {p0 .. p5}, Lcom/nrsmagic/sudoku/gui/inputmethod/InputMethod;->initialize(Landroid/content/Context;Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanel;Lcom/nrsmagic/sudoku/game/SudokuGame;Lcom/nrsmagic/sudoku/gui/SudokuBoardView;Lcom/nrsmagic/sudoku/gui/HintsQueue;)V

    .line 99
    invoke-virtual {p3}, Lcom/nrsmagic/sudoku/game/SudokuGame;->getCells()Lcom/nrsmagic/sudoku/game/CellCollection;

    move-result-object v0

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber;->mOnCellsChangeListener:Lcom/nrsmagic/sudoku/game/CellCollection$OnChangeListener;

    invoke-virtual {v0, v1}, Lcom/nrsmagic/sudoku/game/CellCollection;->addOnChangeListener(Lcom/nrsmagic/sudoku/game/CellCollection$OnChangeListener;)V

    .line 100
    return-void
.end method

.method protected onActivated()V
    .locals 0

    .prologue
    .line 236
    invoke-direct {p0}, Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber;->update()V

    .line 237
    return-void
.end method

.method protected onCellTapped(Lcom/nrsmagic/sudoku/game/Cell;)V
    .locals 3
    .parameter "cell"

    .prologue
    const/16 v2, 0x9

    .line 241
    iget v0, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber;->mSelectedNumber:I

    .line 243
    .local v0, selNumber:I
    iget v1, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber;->mEditMode:I

    packed-switch v1, :pswitch_data_0

    .line 271
    :cond_0
    :goto_0
    return-void

    .line 245
    :pswitch_0
    if-nez v0, :cond_1

    .line 246
    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber;->mGame:Lcom/nrsmagic/sudoku/game/SudokuGame;

    sget-object v2, Lcom/nrsmagic/sudoku/game/CellNote;->EMPTY:Lcom/nrsmagic/sudoku/game/CellNote;

    invoke-virtual {v1, p1, v2}, Lcom/nrsmagic/sudoku/game/SudokuGame;->setCellNote(Lcom/nrsmagic/sudoku/game/Cell;Lcom/nrsmagic/sudoku/game/CellNote;)V

    goto :goto_0

    .line 247
    :cond_1
    if-lez v0, :cond_0

    if-gt v0, v2, :cond_0

    .line 248
    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber;->mGame:Lcom/nrsmagic/sudoku/game/SudokuGame;

    invoke-virtual {p1}, Lcom/nrsmagic/sudoku/game/Cell;->getNote()Lcom/nrsmagic/sudoku/game/CellNote;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/nrsmagic/sudoku/game/CellNote;->toggleNumber(I)Lcom/nrsmagic/sudoku/game/CellNote;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/nrsmagic/sudoku/game/SudokuGame;->setCellNote(Lcom/nrsmagic/sudoku/game/Cell;Lcom/nrsmagic/sudoku/game/CellNote;)V

    goto :goto_0

    .line 252
    :pswitch_1
    if-ltz v0, :cond_0

    if-gt v0, v2, :cond_0

    .line 253
    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber;->mNumberButtons:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 257
    invoke-virtual {p1}, Lcom/nrsmagic/sudoku/game/Cell;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 258
    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber;->mGame:Lcom/nrsmagic/sudoku/game/SudokuGame;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/nrsmagic/sudoku/game/SudokuGame;->setCellValue(Lcom/nrsmagic/sudoku/game/Cell;I)V

    goto :goto_0

    .line 262
    :cond_2
    invoke-virtual {p1}, Lcom/nrsmagic/sudoku/game/Cell;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 263
    const/4 v0, 0x0

    .line 265
    :cond_3
    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber;->mGame:Lcom/nrsmagic/sudoku/game/SudokuGame;

    invoke-virtual {v1, p1, v0}, Lcom/nrsmagic/sudoku/game/SudokuGame;->setCellValue(Lcom/nrsmagic/sudoku/game/Cell;I)V

    goto :goto_0

    .line 243
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onRestoreState(Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanelStatePersister$StateBundle;)V
    .locals 2
    .parameter "savedState"

    .prologue
    .line 281
    const-string v0, "selectedNumber"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanelStatePersister$StateBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber;->mSelectedNumber:I

    .line 282
    const-string v0, "editMode"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanelStatePersister$StateBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber;->mEditMode:I

    .line 283
    invoke-virtual {p0}, Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber;->isInputMethodViewCreated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    invoke-direct {p0}, Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber;->update()V

    .line 286
    :cond_0
    return-void
.end method

.method protected onSaveState(Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanelStatePersister$StateBundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 275
    const-string v0, "selectedNumber"

    iget v1, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber;->mSelectedNumber:I

    invoke-virtual {p1, v0, v1}, Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanelStatePersister$StateBundle;->putInt(Ljava/lang/String;I)V

    .line 276
    const-string v0, "editMode"

    iget v1, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber;->mEditMode:I

    invoke-virtual {p1, v0, v1}, Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanelStatePersister$StateBundle;->putInt(Ljava/lang/String;I)V

    .line 277
    return-void
.end method

.method public setHighlightCompletedValues(Z)V
    .locals 0
    .parameter "highlightCompletedValues"

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber;->mHighlightCompletedValues:Z

    .line 84
    return-void
.end method

.method public setShowNumberTotals(Z)V
    .locals 0
    .parameter "showNumberTotals"

    .prologue
    .line 91
    iput-boolean p1, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber;->mShowNumberTotals:Z

    .line 92
    return-void
.end method
