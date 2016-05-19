.class public Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanel;
.super Landroid/widget/LinearLayout;
.source "IMControlPanel.java"


# static fields
.field public static final INPUT_METHOD_NUMPAD:I = 0x2

.field public static final INPUT_METHOD_POPUP:I = 0x0

.field public static final INPUT_METHOD_SINGLE_NUMBER:I = 0x1


# instance fields
.field private mActiveMethodIndex:I

.field private mBoard:Lcom/nrsmagic/sudoku/gui/SudokuBoardView;

.field private mContext:Landroid/content/Context;

.field private mGame:Lcom/nrsmagic/sudoku/game/SudokuGame;

.field private mHintsQueue:Lcom/nrsmagic/sudoku/gui/HintsQueue;

.field private mInputMethods:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nrsmagic/sudoku/gui/inputmethod/InputMethod;",
            ">;"
        }
    .end annotation
.end field

.field private mOnCellSelected:Lcom/nrsmagic/sudoku/gui/SudokuBoardView$OnCellSelectedListener;

.field private mOnCellTapListener:Lcom/nrsmagic/sudoku/gui/SudokuBoardView$OnCellTappedListener;

.field private mSwitchModeListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanel;->mInputMethods:Ljava/util/List;

    .line 57
    const/4 v0, -0x1

    iput v0, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanel;->mActiveMethodIndex:I

    .line 246
    new-instance v0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanel$1;

    invoke-direct {v0, p0}, Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanel$1;-><init>(Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanel;)V

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanel;->mOnCellTapListener:Lcom/nrsmagic/sudoku/gui/SudokuBoardView$OnCellTappedListener;

    .line 255
    new-instance v0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanel$2;

    invoke-direct {v0, p0}, Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanel$2;-><init>(Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanel;)V

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanel;->mOnCellSelected:Lcom/nrsmagic/sudoku/gui/SudokuBoardView$OnCellSelectedListener;

    .line 264
    new-instance v0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanel$3;

    invoke-direct {v0, p0}, Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanel$3;-><init>(Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanel;)V

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanel;->mSwitchModeListener:Landroid/view/View$OnClickListener;

    .line 61
    iput-object p1, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanel;->mContext:Landroid/content/Context;

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanel;->mInputMethods:Ljava/util/List;

    .line 57
    const/4 v0, -0x1

    iput v0, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanel;->mActiveMethodIndex:I

    .line 246
    new-instance v0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanel$1;

    invoke-direct {v0, p0}, Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanel$1;-><init>(Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanel;)V

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanel;->mOnCellTapListener:Lcom/nrsmagic/sudoku/gui/SudokuBoardView$OnCellTappedListener;

    .line 255
    new-instance v0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanel$2;

    invoke-direct {v0, p0}, Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanel$2;-><init>(Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanel;)V

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanel;->mOnCellSelected:Lcom/nrsmagic/sudoku/gui/SudokuBoardView$OnCellSelectedListener;

    .line 264
    new-instance v0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanel$3;

    invoke-direct {v0, p0}, Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanel$3;-><init>(Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanel;)V

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanel;->mSwitchModeListener:Landroid/view/View$OnClickListener;

    .line 66
    iput-object p1, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanel;->mContext:Landroid/content/Context;

    .line 67
    return-void
.end method

.method static synthetic access$0(Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanel;)I
    .locals 1
    .parameter

    .prologue
    .line 57
    iget v0, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanel;->mActiveMethodIndex:I

    return v0
.end method

.method static synthetic access$1(Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanel;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanel;->mInputMethods:Ljava/util/List;

    return-object v0
.end method

.method private addInputMethod(ILcom/nrsmagic/sudoku/gui/inputmethod/InputMethod;)V
    .locals 6
    .parameter "methodIndex"
    .parameter "im"

    .prologue
    .line 227
    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanel;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanel;->mGame:Lcom/nrsmagic/sudoku/game/SudokuGame;

    iget-object v4, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanel;->mBoard:Lcom/nrsmagic/sudoku/gui/SudokuBoardView;

    iget-object v5, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanel;->mHintsQueue:Lcom/nrsmagic/sudoku/gui/HintsQueue;

    move-object v0, p2

    move-object v2, p0

    invoke-virtual/range {v0 .. v5}, Lcom/nrsmagic/sudoku/gui/inputmethod/InputMethod;->initialize(Landroid/content/Context;Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanel;Lcom/nrsmagic/sudoku/game/SudokuGame;Lcom/nrsmagic/sudoku/gui/SudokuBoardView;Lcom/nrsmagic/sudoku/gui/HintsQueue;)V

    .line 228
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanel;->mInputMethods:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 229
    return-void
.end method

.method private createInputMethods()V
    .locals 2

    .prologue
    .line 219
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanel;->mInputMethods:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 220
    const/4 v0, 0x0

    new-instance v1, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopup;

    invoke-direct {v1}, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopup;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanel;->addInputMethod(ILcom/nrsmagic/sudoku/gui/inputmethod/InputMethod;)V

    .line 221
    const/4 v0, 0x1

    new-instance v1, Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber;

    invoke-direct {v1}, Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanel;->addInputMethod(ILcom/nrsmagic/sudoku/gui/inputmethod/InputMethod;)V

    .line 222
    const/4 v0, 0x2

    new-instance v1, Lcom/nrsmagic/sudoku/gui/inputmethod/IMNumpad;

    invoke-direct {v1}, Lcom/nrsmagic/sudoku/gui/inputmethod/IMNumpad;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanel;->addInputMethod(ILcom/nrsmagic/sudoku/gui/inputmethod/InputMethod;)V

    .line 224
    :cond_0
    return-void
.end method

.method private ensureControlPanel(I)V
    .locals 5
    .parameter "methodID"

    .prologue
    const/4 v4, -0x1

    .line 237
    iget-object v3, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanel;->mInputMethods:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nrsmagic/sudoku/gui/inputmethod/InputMethod;

    .line 238
    .local v1, im:Lcom/nrsmagic/sudoku/gui/inputmethod/InputMethod;
    invoke-virtual {v1}, Lcom/nrsmagic/sudoku/gui/inputmethod/InputMethod;->isInputMethodViewCreated()Z

    move-result v3

    if-nez v3, :cond_0

    .line 239
    invoke-virtual {v1}, Lcom/nrsmagic/sudoku/gui/inputmethod/InputMethod;->getInputMethodView()Landroid/view/View;

    move-result-object v0

    .line 240
    .local v0, controlPanel:Landroid/view/View;
    const v3, 0x7f08000f

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 241
    .local v2, switchModeButton:Landroid/widget/Button;
    iget-object v3, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanel;->mSwitchModeListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 242
    invoke-virtual {p0, v0, v4, v4}, Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanel;->addView(Landroid/view/View;II)V

    .line 244
    .end local v0           #controlPanel:Landroid/view/View;
    .end local v2           #switchModeButton:Landroid/widget/Button;
    :cond_0
    return-void
.end method

.method private ensureInputMethods()V
    .locals 2

    .prologue
    .line 212
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanel;->mInputMethods:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 213
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Input methods are not created yet. Call initialize() first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 216
    :cond_0
    return-void
.end method


# virtual methods
.method public activateFirstInputMethod()V
    .locals 2

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanel;->ensureInputMethods()V

    .line 86
    iget v0, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanel;->mActiveMethodIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanel;->mInputMethods:Ljava/util/List;

    iget v1, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanel;->mActiveMethodIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nrsmagic/sudoku/gui/inputmethod/InputMethod;

    invoke-virtual {v0}, Lcom/nrsmagic/sudoku/gui/inputmethod/InputMethod;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 87
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanel;->activateInputMethod(I)V

    .line 90
    :cond_1
    return-void
.end method

.method public activateInputMethod(I)V
    .locals 11
    .parameter "methodID"

    .prologue
    const/4 v7, 0x0

    const/4 v9, -0x1

    .line 100
    if-lt p1, v9, :cond_0

    iget-object v6, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanel;->mInputMethods:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lt p1, v6, :cond_1

    .line 101
    :cond_0
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v8, "Invalid method id: %s."

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v7

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 104
    :cond_1
    invoke-direct {p0}, Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanel;->ensureInputMethods()V

    .line 106
    iget v6, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanel;->mActiveMethodIndex:I

    if-eq v6, v9, :cond_2

    .line 107
    iget-object v6, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanel;->mInputMethods:Ljava/util/List;

    iget v8, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanel;->mActiveMethodIndex:I

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/nrsmagic/sudoku/gui/inputmethod/InputMethod;

    invoke-virtual {v6}, Lcom/nrsmagic/sudoku/gui/inputmethod/InputMethod;->deactivate()V

    .line 110
    :cond_2
    const/4 v3, 0x0

    .line 111
    .local v3, idFound:Z
    move v2, p1

    .line 112
    .local v2, id:I
    const/4 v5, 0x0

    .line 114
    .local v5, numOfCycles:I
    if-eq v2, v9, :cond_3

    .line 115
    :goto_0
    if-nez v3, :cond_3

    iget-object v6, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanel;->mInputMethods:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-le v5, v6, :cond_6

    .line 130
    :cond_3
    :goto_1
    if-nez v3, :cond_4

    .line 131
    const/4 v2, -0x1

    .line 134
    :cond_4
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    iget-object v6, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanel;->mInputMethods:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lt v1, v6, :cond_9

    .line 141
    iput v2, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanel;->mActiveMethodIndex:I

    .line 142
    iget v6, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanel;->mActiveMethodIndex:I

    if-eq v6, v9, :cond_5

    .line 143
    iget-object v6, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanel;->mInputMethods:Ljava/util/List;

    iget v8, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanel;->mActiveMethodIndex:I

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nrsmagic/sudoku/gui/inputmethod/InputMethod;

    .line 144
    .local v0, activeMethod:Lcom/nrsmagic/sudoku/gui/inputmethod/InputMethod;
    invoke-virtual {v0}, Lcom/nrsmagic/sudoku/gui/inputmethod/InputMethod;->activate()V

    .line 146
    iget-object v6, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanel;->mHintsQueue:Lcom/nrsmagic/sudoku/gui/HintsQueue;

    if-eqz v6, :cond_5

    .line 147
    iget-object v6, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanel;->mHintsQueue:Lcom/nrsmagic/sudoku/gui/HintsQueue;

    invoke-virtual {v0}, Lcom/nrsmagic/sudoku/gui/inputmethod/InputMethod;->getInputMethodName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Lcom/nrsmagic/sudoku/gui/inputmethod/InputMethod;->getNameResID()I

    move-result v9

    invoke-virtual {v0}, Lcom/nrsmagic/sudoku/gui/inputmethod/InputMethod;->getHelpResID()I

    move-result v10

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v6, v8, v9, v10, v7}, Lcom/nrsmagic/sudoku/gui/HintsQueue;->showOneTimeHint(Ljava/lang/String;II[Ljava/lang/Object;)V

    .line 150
    .end local v0           #activeMethod:Lcom/nrsmagic/sudoku/gui/inputmethod/InputMethod;
    :cond_5
    return-void

    .line 116
    .end local v1           #i:I
    :cond_6
    iget-object v6, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanel;->mInputMethods:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/nrsmagic/sudoku/gui/inputmethod/InputMethod;

    invoke-virtual {v6}, Lcom/nrsmagic/sudoku/gui/inputmethod/InputMethod;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 117
    invoke-direct {p0, v2}, Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanel;->ensureControlPanel(I)V

    .line 118
    const/4 v3, 0x1

    .line 119
    goto :goto_1

    .line 122
    :cond_7
    add-int/lit8 v2, v2, 0x1

    .line 123
    iget-object v6, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanel;->mInputMethods:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ne v2, v6, :cond_8

    .line 124
    const/4 v2, 0x0

    .line 126
    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 135
    .restart local v1       #i:I
    :cond_9
    iget-object v6, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanel;->mInputMethods:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nrsmagic/sudoku/gui/inputmethod/InputMethod;

    .line 136
    .local v4, im:Lcom/nrsmagic/sudoku/gui/inputmethod/InputMethod;
    invoke-virtual {v4}, Lcom/nrsmagic/sudoku/gui/inputmethod/InputMethod;->isInputMethodViewCreated()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 137
    invoke-virtual {v4}, Lcom/nrsmagic/sudoku/gui/inputmethod/InputMethod;->getInputMethodView()Landroid/view/View;

    move-result-object v8

    if-ne v1, v2, :cond_b

    move v6, v7

    :goto_3
    invoke-virtual {v8, v6}, Landroid/view/View;->setVisibility(I)V

    .line 134
    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 137
    :cond_b
    const/16 v6, 0x8

    goto :goto_3
.end method

.method public activateNextInputMethod()V
    .locals 6

    .prologue
    .line 153
    invoke-direct {p0}, Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanel;->ensureInputMethods()V

    .line 155
    iget v1, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanel;->mActiveMethodIndex:I

    add-int/lit8 v0, v1, 0x1

    .line 156
    .local v0, id:I
    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanel;->mInputMethods:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 157
    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanel;->mHintsQueue:Lcom/nrsmagic/sudoku/gui/HintsQueue;

    if-eqz v1, :cond_0

    .line 158
    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanel;->mHintsQueue:Lcom/nrsmagic/sudoku/gui/HintsQueue;

    const-string v2, "thatIsAll"

    const v3, 0x7f09004f

    const v4, 0x7f090054

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/nrsmagic/sudoku/gui/HintsQueue;->showOneTimeHint(Ljava/lang/String;II[Ljava/lang/Object;)V

    .line 160
    :cond_0
    const/4 v0, 0x0

    .line 162
    :cond_1
    invoke-virtual {p0, v0}, Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanel;->activateInputMethod(I)V

    .line 163
    return-void
.end method

.method public getActiveMethodIndex()I
    .locals 1

    .prologue
    .line 183
    iget v0, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanel;->mActiveMethodIndex:I

    return v0
.end method

.method public getInputMethod(I)Lcom/nrsmagic/sudoku/gui/inputmethod/InputMethod;
    .locals 1
    .parameter "methodId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/nrsmagic/sudoku/gui/inputmethod/InputMethod;",
            ">(I)TT;"
        }
    .end annotation

    .prologue
    .line 173
    invoke-direct {p0}, Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanel;->ensureInputMethods()V

    .line 175
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanel;->mInputMethods:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nrsmagic/sudoku/gui/inputmethod/InputMethod;

    return-object v0
.end method

.method public getInputMethods()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nrsmagic/sudoku/gui/inputmethod/InputMethod;",
            ">;"
        }
    .end annotation

    .prologue
    .line 179
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanel;->mInputMethods:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public initialize(Lcom/nrsmagic/sudoku/gui/SudokuBoardView;Lcom/nrsmagic/sudoku/game/SudokuGame;Lcom/nrsmagic/sudoku/gui/HintsQueue;)V
    .locals 2
    .parameter "board"
    .parameter "game"
    .parameter "hintsQueue"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanel;->mBoard:Lcom/nrsmagic/sudoku/gui/SudokuBoardView;

    .line 71
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanel;->mBoard:Lcom/nrsmagic/sudoku/gui/SudokuBoardView;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanel;->mOnCellTapListener:Lcom/nrsmagic/sudoku/gui/SudokuBoardView$OnCellTappedListener;

    invoke-virtual {v0, v1}, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->setOnCellTappedListener(Lcom/nrsmagic/sudoku/gui/SudokuBoardView$OnCellTappedListener;)V

    .line 72
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanel;->mBoard:Lcom/nrsmagic/sudoku/gui/SudokuBoardView;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanel;->mOnCellSelected:Lcom/nrsmagic/sudoku/gui/SudokuBoardView$OnCellSelectedListener;

    invoke-virtual {v0, v1}, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->setOnCellSelectedListener(Lcom/nrsmagic/sudoku/gui/SudokuBoardView$OnCellSelectedListener;)V

    .line 74
    iput-object p2, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanel;->mGame:Lcom/nrsmagic/sudoku/game/SudokuGame;

    .line 75
    iput-object p3, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanel;->mHintsQueue:Lcom/nrsmagic/sudoku/gui/HintsQueue;

    .line 77
    invoke-direct {p0}, Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanel;->createInputMethods()V

    .line 78
    return-void
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 203
    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanel;->mInputMethods:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 206
    return-void

    .line 203
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nrsmagic/sudoku/gui/inputmethod/InputMethod;

    .line 204
    .local v0, im:Lcom/nrsmagic/sudoku/gui/inputmethod/InputMethod;
    invoke-virtual {v0}, Lcom/nrsmagic/sudoku/gui/inputmethod/InputMethod;->pause()V

    goto :goto_0
.end method

.method public showHelpForActiveMethod()V
    .locals 5

    .prologue
    .line 187
    invoke-direct {p0}, Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanel;->ensureInputMethods()V

    .line 189
    iget v1, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanel;->mActiveMethodIndex:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 190
    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanel;->mInputMethods:Ljava/util/List;

    iget v2, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanel;->mActiveMethodIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nrsmagic/sudoku/gui/inputmethod/InputMethod;

    .line 191
    .local v0, activeMethod:Lcom/nrsmagic/sudoku/gui/inputmethod/InputMethod;
    invoke-virtual {v0}, Lcom/nrsmagic/sudoku/gui/inputmethod/InputMethod;->activate()V

    .line 193
    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanel;->mHintsQueue:Lcom/nrsmagic/sudoku/gui/HintsQueue;

    invoke-virtual {v0}, Lcom/nrsmagic/sudoku/gui/inputmethod/InputMethod;->getNameResID()I

    move-result v2

    invoke-virtual {v0}, Lcom/nrsmagic/sudoku/gui/inputmethod/InputMethod;->getHelpResID()I

    move-result v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3, v4}, Lcom/nrsmagic/sudoku/gui/HintsQueue;->showHint(II[Ljava/lang/Object;)V

    .line 195
    .end local v0           #activeMethod:Lcom/nrsmagic/sudoku/gui/inputmethod/InputMethod;
    :cond_0
    return-void
.end method
