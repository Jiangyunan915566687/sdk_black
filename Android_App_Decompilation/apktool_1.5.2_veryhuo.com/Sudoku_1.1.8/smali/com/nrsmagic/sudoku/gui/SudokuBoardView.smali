.class public Lcom/nrsmagic/sudoku/gui/SudokuBoardView;
.super Landroid/view/View;
.source "SudokuBoardView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nrsmagic/sudoku/gui/SudokuBoardView$OnCellSelectedListener;,
        Lcom/nrsmagic/sudoku/gui/SudokuBoardView$OnCellTappedListener;
    }
.end annotation


# static fields
.field public static final DEFAULT_BOARD_SIZE:I = 0x64

.field private static final NO_COLOR:I


# instance fields
.field private mAutoHideTouchedCellHint:Z

.field private mBackgroundColorReadOnly:Landroid/graphics/Paint;

.field private mBackgroundColorSecondary:Landroid/graphics/Paint;

.field private mBackgroundColorSelected:Landroid/graphics/Paint;

.field private mBackgroundColorTouched:Landroid/graphics/Paint;

.field private mCellHeight:F

.field private mCellNotePaint:Landroid/graphics/Paint;

.field private mCellValueInvalidPaint:Landroid/graphics/Paint;

.field private mCellValuePaint:Landroid/graphics/Paint;

.field private mCellValueReadonlyPaint:Landroid/graphics/Paint;

.field private mCellWidth:F

.field private mCells:Lcom/nrsmagic/sudoku/game/CellCollection;

.field private mGame:Lcom/nrsmagic/sudoku/game/SudokuGame;

.field private mHighlightTouchedCell:Z

.field private mHighlightWrongVals:Z

.field private mLinePaint:Landroid/graphics/Paint;

.field private mNoteTop:F

.field private mNumberLeft:I

.field private mNumberTop:I

.field private mOnCellSelectedListener:Lcom/nrsmagic/sudoku/gui/SudokuBoardView$OnCellSelectedListener;

.field private mOnCellTappedListener:Lcom/nrsmagic/sudoku/gui/SudokuBoardView$OnCellTappedListener;

.field private mReadonly:Z

.field private mSectorLinePaint:Landroid/graphics/Paint;

.field private mSectorLineWidth:I

.field private mSelectedCell:Lcom/nrsmagic/sudoku/game/Cell;

.field private mTouchedCell:Lcom/nrsmagic/sudoku/game/Cell;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 91
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/16 v6, 0x32

    const/4 v5, 0x0

    const/high16 v4, -0x100

    const/4 v3, 0x1

    .line 100
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    iput-boolean v5, p0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mReadonly:Z

    .line 64
    iput-boolean v3, p0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mHighlightWrongVals:Z

    .line 65
    iput-boolean v3, p0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mHighlightTouchedCell:Z

    .line 66
    iput-boolean v3, p0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mAutoHideTouchedCellHint:Z

    .line 102
    invoke-virtual {p0, v3}, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->setFocusable(Z)V

    .line 103
    invoke-virtual {p0, v3}, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->setFocusableInTouchMode(Z)V

    .line 105
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mLinePaint:Landroid/graphics/Paint;

    .line 106
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mSectorLinePaint:Landroid/graphics/Paint;

    .line 107
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mCellValuePaint:Landroid/graphics/Paint;

    .line 108
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mCellValueReadonlyPaint:Landroid/graphics/Paint;

    .line 109
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mCellValueInvalidPaint:Landroid/graphics/Paint;

    .line 110
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mCellNotePaint:Landroid/graphics/Paint;

    .line 111
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mBackgroundColorSecondary:Landroid/graphics/Paint;

    .line 112
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mBackgroundColorReadOnly:Landroid/graphics/Paint;

    .line 113
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mBackgroundColorTouched:Landroid/graphics/Paint;

    .line 114
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mBackgroundColorSelected:Landroid/graphics/Paint;

    .line 116
    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mCellValuePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 117
    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mCellValueReadonlyPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 118
    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mCellValueInvalidPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 119
    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mCellNotePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 120
    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mCellValueInvalidPaint:Landroid/graphics/Paint;

    const/high16 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 122
    sget-object v1, Lcom/nrsmagic/sudoku/R$styleable;->SudokuBoardView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 124
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->setLineColor(I)V

    .line 125
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->setSectorLineColor(I)V

    .line 126
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->setTextColor(I)V

    .line 127
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->setTextColorReadOnly(I)V

    .line 128
    const/4 v1, 0x4

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->setTextColorNote(I)V

    .line 129
    const/4 v1, 0x5

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->setBackgroundColor(I)V

    .line 130
    const/4 v1, 0x6

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->setBackgroundColorSecondary(I)V

    .line 131
    const/4 v1, 0x7

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->setBackgroundColorReadOnly(I)V

    .line 132
    const/16 v1, 0x8

    const/16 v2, 0xff

    invoke-static {v6, v6, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->setBackgroundColorTouched(I)V

    .line 133
    const/16 v1, 0x9

    const/16 v2, -0x100

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->setBackgroundColorSelected(I)V

    .line 135
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 136
    return-void
.end method

.method private computeSectorLineWidth(II)V
    .locals 5
    .parameter "widthInPx"
    .parameter "heightInPx"

    .prologue
    .line 383
    if-ge p1, p2, :cond_1

    move v3, p1

    .line 384
    .local v3, sizeInPx:I
    :goto_0
    invoke-virtual {p0}, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v0, v4, Landroid/util/DisplayMetrics;->density:F

    .line 385
    .local v0, dipScale:F
    int-to-float v4, v3

    div-float v2, v4, v0

    .line 387
    .local v2, sizeInDip:F
    const/high16 v1, 0x4000

    .line 389
    .local v1, sectorLineWidthInDip:F
    const/high16 v4, 0x4316

    cmpl-float v4, v2, v4

    if-lez v4, :cond_0

    .line 390
    const/high16 v1, 0x4040

    .line 393
    :cond_0
    mul-float v4, v1, v0

    float-to-int v4, v4

    iput v4, p0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mSectorLineWidth:I

    .line 394
    return-void

    .end local v0           #dipScale:F
    .end local v1           #sectorLineWidthInDip:F
    .end local v2           #sizeInDip:F
    .end local v3           #sizeInPx:I
    :cond_1
    move v3, p2

    .line 383
    goto :goto_0
.end method

.method private getCellAtPoint(II)Lcom/nrsmagic/sudoku/game/Cell;
    .locals 7
    .parameter "x"
    .parameter "y"

    .prologue
    const/16 v6, 0x9

    .line 703
    invoke-virtual {p0}, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->getPaddingLeft()I

    move-result v4

    sub-int v1, p1, v4

    .line 704
    .local v1, lx:I
    invoke-virtual {p0}, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->getPaddingTop()I

    move-result v4

    sub-int v2, p2, v4

    .line 706
    .local v2, ly:I
    int-to-float v4, v2

    iget v5, p0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mCellHeight:F

    div-float/2addr v4, v5

    float-to-int v3, v4

    .line 707
    .local v3, row:I
    int-to-float v4, v1

    iget v5, p0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mCellWidth:F

    div-float/2addr v4, v5

    float-to-int v0, v4

    .line 709
    .local v0, col:I
    if-ltz v0, :cond_0

    if-ge v0, v6, :cond_0

    .line 710
    if-ltz v3, :cond_0

    if-ge v3, v6, :cond_0

    .line 711
    iget-object v4, p0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mCells:Lcom/nrsmagic/sudoku/game/CellCollection;

    invoke-virtual {v4, v3, v0}, Lcom/nrsmagic/sudoku/game/CellCollection;->getCell(II)Lcom/nrsmagic/sudoku/game/Cell;

    move-result-object v4

    .line 713
    :goto_0
    return-object v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private moveCellSelection(II)Z
    .locals 3
    .parameter "vx"
    .parameter "vy"

    .prologue
    .line 662
    const/4 v1, 0x0

    .line 663
    .local v1, newRow:I
    const/4 v0, 0x0

    .line 665
    .local v0, newCol:I
    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mSelectedCell:Lcom/nrsmagic/sudoku/game/Cell;

    if-eqz v2, :cond_0

    .line 666
    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mSelectedCell:Lcom/nrsmagic/sudoku/game/Cell;

    invoke-virtual {v2}, Lcom/nrsmagic/sudoku/game/Cell;->getRowIndex()I

    move-result v2

    add-int v1, v2, p2

    .line 667
    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mSelectedCell:Lcom/nrsmagic/sudoku/game/Cell;

    invoke-virtual {v2}, Lcom/nrsmagic/sudoku/game/Cell;->getColumnIndex()I

    move-result v2

    add-int v0, v2, p1

    .line 670
    :cond_0
    invoke-direct {p0, v1, v0}, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->moveCellSelectionTo(II)Z

    move-result v2

    return v2
.end method

.method private moveCellSelectionTo(II)Z
    .locals 1
    .parameter "row"
    .parameter "col"

    .prologue
    const/16 v0, 0x9

    .line 682
    if-ltz p2, :cond_0

    if-ge p2, v0, :cond_0

    .line 683
    if-ltz p1, :cond_0

    if-ge p1, v0, :cond_0

    .line 684
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mCells:Lcom/nrsmagic/sudoku/game/CellCollection;

    invoke-virtual {v0, p1, p2}, Lcom/nrsmagic/sudoku/game/CellCollection;->getCell(II)Lcom/nrsmagic/sudoku/game/Cell;

    move-result-object v0

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mSelectedCell:Lcom/nrsmagic/sudoku/game/Cell;

    .line 685
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mSelectedCell:Lcom/nrsmagic/sudoku/game/Cell;

    invoke-virtual {p0, v0}, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->onCellSelected(Lcom/nrsmagic/sudoku/game/Cell;)V

    .line 687
    invoke-virtual {p0}, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->postInvalidate()V

    .line 688
    const/4 v0, 0x1

    .line 691
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setCellNote(Lcom/nrsmagic/sudoku/game/Cell;Lcom/nrsmagic/sudoku/game/CellNote;)V
    .locals 1
    .parameter "cell"
    .parameter "note"

    .prologue
    .line 644
    invoke-virtual {p1}, Lcom/nrsmagic/sudoku/game/Cell;->isEditable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 645
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mGame:Lcom/nrsmagic/sudoku/game/SudokuGame;

    if-eqz v0, :cond_1

    .line 646
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mGame:Lcom/nrsmagic/sudoku/game/SudokuGame;

    invoke-virtual {v0, p1, p2}, Lcom/nrsmagic/sudoku/game/SudokuGame;->setCellNote(Lcom/nrsmagic/sudoku/game/Cell;Lcom/nrsmagic/sudoku/game/CellNote;)V

    .line 651
    :cond_0
    :goto_0
    return-void

    .line 648
    :cond_1
    invoke-virtual {p1, p2}, Lcom/nrsmagic/sudoku/game/Cell;->setNote(Lcom/nrsmagic/sudoku/game/CellNote;)V

    goto :goto_0
.end method

.method private setCellValue(Lcom/nrsmagic/sudoku/game/Cell;I)V
    .locals 1
    .parameter "cell"
    .parameter "value"

    .prologue
    .line 634
    invoke-virtual {p1}, Lcom/nrsmagic/sudoku/game/Cell;->isEditable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 635
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mGame:Lcom/nrsmagic/sudoku/game/SudokuGame;

    if-eqz v0, :cond_1

    .line 636
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mGame:Lcom/nrsmagic/sudoku/game/SudokuGame;

    invoke-virtual {v0, p1, p2}, Lcom/nrsmagic/sudoku/game/SudokuGame;->setCellValue(Lcom/nrsmagic/sudoku/game/Cell;I)V

    .line 641
    :cond_0
    :goto_0
    return-void

    .line 638
    :cond_1
    invoke-virtual {p1, p2}, Lcom/nrsmagic/sudoku/game/Cell;->setValue(I)V

    goto :goto_0
.end method


# virtual methods
.method public getAutoHideTouchedCellHint()Z
    .locals 1

    .prologue
    .line 276
    iget-boolean v0, p0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mAutoHideTouchedCellHint:Z

    return v0
.end method

.method public getBackgroundColorReadOnly()I
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mBackgroundColorReadOnly:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getBackgroundColorSecondary()I
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mBackgroundColorSecondary:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getBackgroundColorSelected()I
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mBackgroundColorSelected:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getBackgroundColorTouched()I
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mBackgroundColorTouched:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getCells()Lcom/nrsmagic/sudoku/game/CellCollection;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mCells:Lcom/nrsmagic/sudoku/game/CellCollection;

    return-object v0
.end method

.method public getHighlightTouchedCell()Z
    .locals 1

    .prologue
    .line 268
    iget-boolean v0, p0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mHighlightTouchedCell:Z

    return v0
.end method

.method public getHighlightWrongVals()Z
    .locals 1

    .prologue
    .line 260
    iget-boolean v0, p0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mHighlightWrongVals:Z

    return v0
.end method

.method public getLineColor()I
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getSectorLineColor()I
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mSectorLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getSelectedCell()Lcom/nrsmagic/sudoku/game/Cell;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mSelectedCell:Lcom/nrsmagic/sudoku/game/Cell;

    return-object v0
.end method

.method public getTextColor()I
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mCellValuePaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getTextColorNote()I
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mCellNotePaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getTextColorReadOnly()I
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mCellValueReadonlyPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public hideTouchedCellHint()V
    .locals 1

    .prologue
    .line 305
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mTouchedCell:Lcom/nrsmagic/sudoku/game/Cell;

    .line 306
    invoke-virtual {p0}, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->postInvalidate()V

    .line 307
    return-void
.end method

.method public isReadOnly()Z
    .locals 1

    .prologue
    .line 251
    iget-boolean v0, p0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mReadonly:Z

    return v0
.end method

.method public moveCellSelectionRight()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 623
    const/4 v1, 0x1

    invoke-direct {p0, v1, v2}, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->moveCellSelection(II)Z

    move-result v1

    if-nez v1, :cond_0

    .line 624
    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mSelectedCell:Lcom/nrsmagic/sudoku/game/Cell;

    invoke-virtual {v1}, Lcom/nrsmagic/sudoku/game/Cell;->getRowIndex()I

    move-result v0

    .line 625
    .local v0, selRow:I
    add-int/lit8 v0, v0, 0x1

    .line 626
    invoke-direct {p0, v0, v2}, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->moveCellSelectionTo(II)Z

    move-result v1

    if-nez v1, :cond_0

    .line 627
    invoke-direct {p0, v2, v2}, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->moveCellSelectionTo(II)Z

    .line 630
    .end local v0           #selRow:I
    :cond_0
    invoke-virtual {p0}, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->postInvalidate()V

    .line 631
    return-void
.end method

.method protected onCellSelected(Lcom/nrsmagic/sudoku/game/Cell;)V
    .locals 1
    .parameter "cell"

    .prologue
    .line 311
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mOnCellSelectedListener:Lcom/nrsmagic/sudoku/gui/SudokuBoardView$OnCellSelectedListener;

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mOnCellSelectedListener:Lcom/nrsmagic/sudoku/gui/SudokuBoardView$OnCellSelectedListener;

    invoke-interface {v0, p1}, Lcom/nrsmagic/sudoku/gui/SudokuBoardView$OnCellSelectedListener;->onCellSelected(Lcom/nrsmagic/sudoku/game/Cell;)V

    .line 314
    :cond_0
    return-void
.end method

.method protected onCellTapped(Lcom/nrsmagic/sudoku/game/Cell;)V
    .locals 1
    .parameter "cell"

    .prologue
    .line 289
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mOnCellTappedListener:Lcom/nrsmagic/sudoku/gui/SudokuBoardView$OnCellTappedListener;

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mOnCellTappedListener:Lcom/nrsmagic/sudoku/gui/SudokuBoardView$OnCellTappedListener;

    invoke-interface {v0, p1}, Lcom/nrsmagic/sudoku/gui/SudokuBoardView$OnCellTappedListener;->onCellTapped(Lcom/nrsmagic/sudoku/game/Cell;)V

    .line 292
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 35
    .parameter "canvas"

    .prologue
    .line 398
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 404
    invoke-virtual/range {p0 .. p0}, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->getWidth()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->getPaddingRight()I

    move-result v4

    sub-int v34, v2, v4

    .line 405
    .local v34, width:I
    invoke-virtual/range {p0 .. p0}, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->getHeight()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->getPaddingBottom()I

    move-result v4

    sub-int v20, v2, v4

    .line 407
    .local v20, height:I
    invoke-virtual/range {p0 .. p0}, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->getPaddingLeft()I

    move-result v27

    .line 408
    .local v27, paddingLeft:I
    invoke-virtual/range {p0 .. p0}, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->getPaddingTop()I

    move-result v28

    .line 411
    .local v28, paddingTop:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mBackgroundColorSecondary:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    if-eqz v2, :cond_0

    .line 412
    const/high16 v2, 0x4040

    move-object/from16 v0, p0

    iget v4, v0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mCellWidth:F

    mul-float v3, v2, v4

    const/4 v4, 0x0

    const/high16 v2, 0x40c0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mCellWidth:F

    mul-float/2addr v5, v2

    const/high16 v2, 0x4040

    move-object/from16 v0, p0

    iget v7, v0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mCellWidth:F

    mul-float v6, v2, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mBackgroundColorSecondary:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 413
    const/4 v3, 0x0

    const/high16 v2, 0x4040

    move-object/from16 v0, p0

    iget v4, v0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mCellWidth:F

    mul-float/2addr v4, v2

    const/high16 v2, 0x4040

    move-object/from16 v0, p0

    iget v5, v0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mCellWidth:F

    mul-float/2addr v5, v2

    const/high16 v2, 0x40c0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mCellWidth:F

    mul-float v6, v2, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mBackgroundColorSecondary:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 414
    const/high16 v2, 0x40c0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mCellWidth:F

    mul-float v3, v2, v4

    const/high16 v2, 0x4040

    move-object/from16 v0, p0

    iget v4, v0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mCellWidth:F

    mul-float/2addr v4, v2

    const/high16 v2, 0x4110

    move-object/from16 v0, p0

    iget v5, v0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mCellWidth:F

    mul-float/2addr v5, v2

    const/high16 v2, 0x40c0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mCellWidth:F

    mul-float v6, v2, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mBackgroundColorSecondary:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 415
    const/high16 v2, 0x4040

    move-object/from16 v0, p0

    iget v4, v0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mCellWidth:F

    mul-float v3, v2, v4

    const/high16 v2, 0x40c0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mCellWidth:F

    mul-float/2addr v4, v2

    const/high16 v2, 0x40c0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mCellWidth:F

    mul-float/2addr v5, v2

    const/high16 v2, 0x4110

    move-object/from16 v0, p0

    iget v7, v0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mCellWidth:F

    mul-float v6, v2, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mBackgroundColorSecondary:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 420
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mCells:Lcom/nrsmagic/sudoku/game/CellCollection;

    if-eqz v2, :cond_2

    .line 422
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mBackgroundColorReadOnly:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    if-eqz v2, :cond_3

    const/16 v19, 0x1

    .line 424
    .local v19, hasBackgroundColorReadOnly:Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mCellValuePaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->ascent()F

    move-result v25

    .line 425
    .local v25, numberAscent:F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mCellNotePaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->ascent()F

    move-result v22

    .line 426
    .local v22, noteAscent:F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mCellWidth:F

    const/high16 v4, 0x4040

    div-float v23, v2, v4

    .line 427
    .local v23, noteWidth:F
    const/16 v30, 0x0

    .local v30, row:I
    :goto_1
    const/16 v2, 0x9

    move/from16 v0, v30

    if-lt v0, v2, :cond_4

    .line 475
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mReadonly:Z

    if-nez v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mSelectedCell:Lcom/nrsmagic/sudoku/game/Cell;

    if-eqz v2, :cond_1

    .line 476
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mSelectedCell:Lcom/nrsmagic/sudoku/game/Cell;

    invoke-virtual {v2}, Lcom/nrsmagic/sudoku/game/Cell;->getColumnIndex()I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mCellWidth:F

    mul-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    add-int v15, v2, v27

    .line 477
    .local v15, cellLeft:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mSelectedCell:Lcom/nrsmagic/sudoku/game/Cell;

    invoke-virtual {v2}, Lcom/nrsmagic/sudoku/game/Cell;->getRowIndex()I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mCellHeight:F

    mul-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    add-int v16, v2, v28

    .line 479
    .local v16, cellTop:I
    int-to-float v3, v15

    move/from16 v0, v16

    int-to-float v4, v0

    .line 480
    int-to-float v2, v15

    move-object/from16 v0, p0

    iget v5, v0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mCellWidth:F

    add-float/2addr v5, v2

    move/from16 v0, v16

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mCellHeight:F

    add-float v6, v2, v7

    .line 481
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mBackgroundColorSelected:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    .line 478
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 486
    .end local v15           #cellLeft:I
    .end local v16           #cellTop:I
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mHighlightTouchedCell:Z

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mTouchedCell:Lcom/nrsmagic/sudoku/game/Cell;

    if-eqz v2, :cond_2

    .line 487
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mTouchedCell:Lcom/nrsmagic/sudoku/game/Cell;

    invoke-virtual {v2}, Lcom/nrsmagic/sudoku/game/Cell;->getColumnIndex()I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mCellWidth:F

    mul-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    add-int v15, v2, v27

    .line 488
    .restart local v15       #cellLeft:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mTouchedCell:Lcom/nrsmagic/sudoku/game/Cell;

    invoke-virtual {v2}, Lcom/nrsmagic/sudoku/game/Cell;->getRowIndex()I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mCellHeight:F

    mul-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    add-int v16, v2, v28

    .line 490
    .restart local v16       #cellTop:I
    int-to-float v3, v15

    move/from16 v0, v28

    int-to-float v4, v0

    .line 491
    int-to-float v2, v15

    move-object/from16 v0, p0

    iget v5, v0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mCellWidth:F

    add-float/2addr v5, v2

    move/from16 v0, v20

    int-to-float v6, v0

    .line 492
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mBackgroundColorTouched:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    .line 489
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 494
    move/from16 v0, v27

    int-to-float v3, v0

    move/from16 v0, v16

    int-to-float v4, v0

    .line 495
    move/from16 v0, v34

    int-to-float v5, v0

    move/from16 v0, v16

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mCellHeight:F

    add-float v6, v2, v7

    .line 496
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mBackgroundColorTouched:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    .line 493
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 502
    .end local v15           #cellLeft:I
    .end local v16           #cellTop:I
    .end local v19           #hasBackgroundColorReadOnly:Z
    .end local v22           #noteAscent:F
    .end local v23           #noteWidth:F
    .end local v25           #numberAscent:F
    .end local v30           #row:I
    :cond_2
    const/4 v13, 0x0

    .local v13, c:I
    :goto_2
    const/16 v2, 0x9

    if-le v13, v2, :cond_b

    .line 508
    const/16 v29, 0x0

    .local v29, r:I
    :goto_3
    const/16 v2, 0x9

    move/from16 v0, v29

    if-le v0, v2, :cond_c

    .line 513
    move-object/from16 v0, p0

    iget v2, v0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mSectorLineWidth:I

    div-int/lit8 v31, v2, 0x2

    .line 514
    .local v31, sectorLineWidth1:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mSectorLineWidth:I

    rem-int/lit8 v2, v2, 0x2

    add-int v32, v31, v2

    .line 517
    .local v32, sectorLineWidth2:I
    const/4 v13, 0x0

    :goto_4
    const/16 v2, 0x9

    if-le v13, v2, :cond_d

    .line 522
    const/16 v29, 0x0

    :goto_5
    const/16 v2, 0x9

    move/from16 v0, v29

    if-le v0, v2, :cond_e

    .line 527
    return-void

    .line 422
    .end local v13           #c:I
    .end local v29           #r:I
    .end local v31           #sectorLineWidth1:I
    .end local v32           #sectorLineWidth2:I
    :cond_3
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 428
    .restart local v19       #hasBackgroundColorReadOnly:Z
    .restart local v22       #noteAscent:F
    .restart local v23       #noteWidth:F
    .restart local v25       #numberAscent:F
    .restart local v30       #row:I
    :cond_4
    const/16 v18, 0x0

    .local v18, col:I
    :goto_6
    const/16 v2, 0x9

    move/from16 v0, v18

    if-lt v0, v2, :cond_5

    .line 427
    add-int/lit8 v30, v30, 0x1

    goto/16 :goto_1

    .line 429
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mCells:Lcom/nrsmagic/sudoku/game/CellCollection;

    move/from16 v0, v30

    move/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Lcom/nrsmagic/sudoku/game/CellCollection;->getCell(II)Lcom/nrsmagic/sudoku/game/Cell;

    move-result-object v14

    .line 431
    .local v14, cell:Lcom/nrsmagic/sudoku/game/Cell;
    move/from16 v0, v18

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mCellWidth:F

    mul-float/2addr v2, v4

    move/from16 v0, v27

    int-to-float v4, v0

    add-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v15

    .line 432
    .restart local v15       #cellLeft:I
    move/from16 v0, v30

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mCellHeight:F

    mul-float/2addr v2, v4

    move/from16 v0, v28

    int-to-float v4, v0

    add-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v16

    .line 435
    .restart local v16       #cellTop:I
    invoke-virtual {v14}, Lcom/nrsmagic/sudoku/game/Cell;->isEditable()Z

    move-result v2

    if-nez v2, :cond_6

    if-eqz v19, :cond_6

    .line 436
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mBackgroundColorReadOnly:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    if-eqz v2, :cond_6

    .line 438
    int-to-float v3, v15

    move/from16 v0, v16

    int-to-float v4, v0

    .line 439
    int-to-float v2, v15

    move-object/from16 v0, p0

    iget v5, v0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mCellWidth:F

    add-float/2addr v5, v2

    move/from16 v0, v16

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mCellHeight:F

    add-float v6, v2, v7

    .line 440
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mBackgroundColorReadOnly:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    .line 437
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 445
    :cond_6
    invoke-virtual {v14}, Lcom/nrsmagic/sudoku/game/Cell;->getValue()I

    move-result v33

    .line 446
    .local v33, value:I
    if-eqz v33, :cond_a

    .line 447
    invoke-virtual {v14}, Lcom/nrsmagic/sudoku/game/Cell;->isEditable()Z

    move-result v2

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mCellValuePaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    .line 449
    .local v17, cellValuePaint:Landroid/graphics/Paint;
    :goto_7
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mHighlightWrongVals:Z

    if-eqz v2, :cond_7

    invoke-virtual {v14}, Lcom/nrsmagic/sudoku/game/Cell;->isValid()Z

    move-result v2

    if-nez v2, :cond_7

    .line 450
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mCellValueInvalidPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    .line 452
    :cond_7
    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 453
    move-object/from16 v0, p0

    iget v4, v0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mNumberLeft:I

    add-int/2addr v4, v15

    int-to-float v4, v4

    .line 454
    move-object/from16 v0, p0

    iget v5, v0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mNumberTop:I

    add-int v5, v5, v16

    int-to-float v5, v5

    sub-float v5, v5, v25

    .line 452
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v2, v4, v5, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 428
    .end local v17           #cellValuePaint:Landroid/graphics/Paint;
    :cond_8
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_6

    .line 447
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mCellValueReadonlyPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    goto :goto_7

    .line 457
    :cond_a
    invoke-virtual {v14}, Lcom/nrsmagic/sudoku/game/Cell;->getNote()Lcom/nrsmagic/sudoku/game/CellNote;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nrsmagic/sudoku/game/CellNote;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    .line 458
    invoke-virtual {v14}, Lcom/nrsmagic/sudoku/game/Cell;->getNote()Lcom/nrsmagic/sudoku/game/CellNote;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nrsmagic/sudoku/game/CellNote;->getNotedNumbers()Ljava/util/Set;

    move-result-object v26

    .line 459
    .local v26, numbers:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Integer;>;"
    invoke-interface/range {v26 .. v26}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Integer;

    .line 460
    .local v24, number:Ljava/lang/Integer;
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v21, v4, -0x1

    .line 461
    .local v21, n:I
    rem-int/lit8 v13, v21, 0x3

    .line 462
    .restart local v13       #c:I
    div-int/lit8 v29, v21, 0x3

    .line 464
    .restart local v29       #r:I
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    int-to-float v5, v15

    int-to-float v7, v13

    mul-float v7, v7, v23

    add-float/2addr v5, v7

    const/high16 v7, 0x4000

    add-float/2addr v5, v7

    move/from16 v0, v16

    int-to-float v7, v0

    move-object/from16 v0, p0

    iget v8, v0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mNoteTop:F

    add-float/2addr v7, v8

    sub-float v7, v7, v22

    move/from16 v0, v29

    int-to-float v8, v0

    mul-float v8, v8, v23

    add-float/2addr v7, v8

    const/high16 v8, 0x3f80

    sub-float/2addr v7, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mCellNotePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_8

    .line 503
    .end local v14           #cell:Lcom/nrsmagic/sudoku/game/Cell;
    .end local v15           #cellLeft:I
    .end local v16           #cellTop:I
    .end local v18           #col:I
    .end local v19           #hasBackgroundColorReadOnly:Z
    .end local v21           #n:I
    .end local v22           #noteAscent:F
    .end local v23           #noteWidth:F
    .end local v24           #number:Ljava/lang/Integer;
    .end local v25           #numberAscent:F
    .end local v26           #numbers:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Integer;>;"
    .end local v29           #r:I
    .end local v30           #row:I
    .end local v33           #value:I
    :cond_b
    int-to-float v2, v13

    move-object/from16 v0, p0

    iget v4, v0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mCellWidth:F

    mul-float/2addr v2, v4

    move/from16 v0, v27

    int-to-float v4, v0

    add-float v3, v2, v4

    .line 504
    .local v3, x:F
    move/from16 v0, v28

    int-to-float v4, v0

    move/from16 v0, v20

    int-to-float v6, v0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mLinePaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    move v5, v3

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 502
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_2

    .line 509
    .end local v3           #x:F
    .restart local v29       #r:I
    :cond_c
    move/from16 v0, v29

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mCellHeight:F

    mul-float/2addr v2, v4

    move/from16 v0, v28

    int-to-float v4, v0

    add-float v6, v2, v4

    .line 510
    .local v6, y:F
    move/from16 v0, v27

    int-to-float v5, v0

    move/from16 v0, v34

    int-to-float v7, v0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mLinePaint:Landroid/graphics/Paint;

    move-object/from16 v4, p1

    move v8, v6

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 508
    add-int/lit8 v29, v29, 0x1

    goto/16 :goto_3

    .line 518
    .end local v6           #y:F
    .restart local v31       #sectorLineWidth1:I
    .restart local v32       #sectorLineWidth2:I
    :cond_d
    int-to-float v2, v13

    move-object/from16 v0, p0

    iget v4, v0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mCellWidth:F

    mul-float/2addr v2, v4

    move/from16 v0, v27

    int-to-float v4, v0

    add-float v3, v2, v4

    .line 519
    .restart local v3       #x:F
    move/from16 v0, v31

    int-to-float v2, v0

    sub-float v8, v3, v2

    move/from16 v0, v28

    int-to-float v9, v0

    move/from16 v0, v32

    int-to-float v2, v0

    add-float v10, v3, v2

    move/from16 v0, v20

    int-to-float v11, v0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mSectorLinePaint:Landroid/graphics/Paint;

    move-object/from16 v7, p1

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 517
    add-int/lit8 v13, v13, 0x3

    goto/16 :goto_4

    .line 523
    .end local v3           #x:F
    :cond_e
    move/from16 v0, v29

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mCellHeight:F

    mul-float/2addr v2, v4

    move/from16 v0, v28

    int-to-float v4, v0

    add-float v6, v2, v4

    .line 524
    .restart local v6       #y:F
    move/from16 v0, v27

    int-to-float v8, v0

    move/from16 v0, v31

    int-to-float v2, v0

    sub-float v9, v6, v2

    move/from16 v0, v34

    int-to-float v10, v0

    move/from16 v0, v32

    int-to-float v2, v0

    add-float v11, v6, v2

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mSectorLinePaint:Landroid/graphics/Paint;

    move-object/from16 v7, p1

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 522
    add-int/lit8 v29, v29, 0x3

    goto/16 :goto_5
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v5, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 566
    iget-boolean v4, p0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mReadonly:Z

    if-nez v4, :cond_5

    .line 567
    sparse-switch p1, :sswitch_data_0

    .line 597
    const/16 v4, 0x8

    if-lt p1, v4, :cond_5

    const/16 v4, 0x10

    if-gt p1, v4, :cond_5

    .line 598
    add-int/lit8 v1, p1, -0x7

    .line 599
    .local v1, selNumber:I
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mSelectedCell:Lcom/nrsmagic/sudoku/game/Cell;

    .line 601
    .local v0, cell:Lcom/nrsmagic/sudoku/game/Cell;
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 603
    :cond_0
    invoke-virtual {v0}, Lcom/nrsmagic/sudoku/game/Cell;->getNote()Lcom/nrsmagic/sudoku/game/CellNote;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/nrsmagic/sudoku/game/CellNote;->toggleNumber(I)Lcom/nrsmagic/sudoku/game/CellNote;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->setCellNote(Lcom/nrsmagic/sudoku/game/Cell;Lcom/nrsmagic/sudoku/game/CellNote;)V

    .line 614
    .end local v0           #cell:Lcom/nrsmagic/sudoku/game/Cell;
    .end local v1           #selNumber:I
    :cond_1
    :goto_0
    return v2

    .line 569
    :sswitch_0
    invoke-direct {p0, v3, v5}, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->moveCellSelection(II)Z

    move-result v2

    goto :goto_0

    .line 571
    :sswitch_1
    invoke-direct {p0, v2, v3}, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->moveCellSelection(II)Z

    move-result v2

    goto :goto_0

    .line 573
    :sswitch_2
    invoke-direct {p0, v3, v2}, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->moveCellSelection(II)Z

    move-result v2

    goto :goto_0

    .line 575
    :sswitch_3
    invoke-direct {p0, v5, v3}, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->moveCellSelection(II)Z

    move-result v2

    goto :goto_0

    .line 581
    :sswitch_4
    iget-object v4, p0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mSelectedCell:Lcom/nrsmagic/sudoku/game/Cell;

    if-eqz v4, :cond_1

    .line 582
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 583
    :cond_2
    iget-object v3, p0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mSelectedCell:Lcom/nrsmagic/sudoku/game/Cell;

    sget-object v4, Lcom/nrsmagic/sudoku/game/CellNote;->EMPTY:Lcom/nrsmagic/sudoku/game/CellNote;

    invoke-direct {p0, v3, v4}, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->setCellNote(Lcom/nrsmagic/sudoku/game/Cell;Lcom/nrsmagic/sudoku/game/CellNote;)V

    goto :goto_0

    .line 585
    :cond_3
    iget-object v4, p0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mSelectedCell:Lcom/nrsmagic/sudoku/game/Cell;

    invoke-direct {p0, v4, v3}, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->setCellValue(Lcom/nrsmagic/sudoku/game/Cell;I)V

    .line 586
    invoke-virtual {p0}, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->moveCellSelectionRight()V

    goto :goto_0

    .line 591
    :sswitch_5
    iget-object v3, p0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mSelectedCell:Lcom/nrsmagic/sudoku/game/Cell;

    if-eqz v3, :cond_1

    .line 592
    iget-object v3, p0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mSelectedCell:Lcom/nrsmagic/sudoku/game/Cell;

    invoke-virtual {p0, v3}, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->onCellTapped(Lcom/nrsmagic/sudoku/game/Cell;)V

    goto :goto_0

    .line 606
    .restart local v0       #cell:Lcom/nrsmagic/sudoku/game/Cell;
    .restart local v1       #selNumber:I
    :cond_4
    invoke-direct {p0, v0, v1}, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->setCellValue(Lcom/nrsmagic/sudoku/game/Cell;I)V

    .line 607
    invoke-virtual {p0}, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->moveCellSelectionRight()V

    goto :goto_0

    .end local v0           #cell:Lcom/nrsmagic/sudoku/game/Cell;
    .end local v1           #selNumber:I
    :cond_5
    move v2, v3

    .line 614
    goto :goto_0

    .line 567
    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_4
        0x13 -> :sswitch_0
        0x14 -> :sswitch_2
        0x15 -> :sswitch_3
        0x16 -> :sswitch_1
        0x17 -> :sswitch_5
        0x3e -> :sswitch_4
        0x43 -> :sswitch_4
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 11
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v9, 0x4110

    const/high16 v10, 0x4000

    const/high16 v8, 0x4000

    const/high16 v7, -0x8000

    .line 318
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 319
    .local v5, widthMode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 320
    .local v6, widthSize:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 321
    .local v2, heightMode:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 329
    .local v3, heightSize:I
    const/4 v4, -0x1

    .local v4, width:I
    const/4 v1, -0x1

    .line 330
    .local v1, height:I
    if-ne v5, v8, :cond_6

    .line 331
    move v4, v6

    .line 338
    :cond_0
    :goto_0
    if-ne v2, v8, :cond_7

    .line 339
    move v1, v3

    .line 347
    :cond_1
    :goto_1
    if-eq v5, v8, :cond_2

    .line 348
    move v4, v1

    .line 351
    :cond_2
    if-eq v2, v8, :cond_3

    .line 352
    move v1, v4

    .line 355
    :cond_3
    if-ne v5, v7, :cond_4

    if-le v4, v6, :cond_4

    .line 356
    move v4, v6

    .line 358
    :cond_4
    if-ne v2, v7, :cond_5

    if-le v1, v3, :cond_5

    .line 359
    move v1, v3

    .line 362
    :cond_5
    invoke-virtual {p0}, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->getPaddingLeft()I

    move-result v7

    sub-int v7, v4, v7

    invoke-virtual {p0}, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->getPaddingRight()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    div-float/2addr v7, v9

    iput v7, p0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mCellWidth:F

    .line 363
    invoke-virtual {p0}, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->getPaddingTop()I

    move-result v7

    sub-int v7, v1, v7

    invoke-virtual {p0}, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->getPaddingBottom()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    div-float/2addr v7, v9

    iput v7, p0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mCellHeight:F

    .line 365
    invoke-virtual {p0, v4, v1}, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->setMeasuredDimension(II)V

    .line 367
    iget v7, p0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mCellHeight:F

    const/high16 v8, 0x3f40

    mul-float v0, v7, v8

    .line 368
    .local v0, cellTextSize:F
    iget-object v7, p0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mCellValuePaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 369
    iget-object v7, p0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mCellValueReadonlyPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 370
    iget-object v7, p0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mCellValueInvalidPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 371
    iget-object v7, p0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mCellNotePaint:Landroid/graphics/Paint;

    iget v8, p0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mCellHeight:F

    const/high16 v9, 0x4040

    div-float/2addr v8, v9

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 373
    iget v7, p0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mCellWidth:F

    iget-object v8, p0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mCellValuePaint:Landroid/graphics/Paint;

    const-string v9, "9"

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v8

    sub-float/2addr v7, v8

    div-float/2addr v7, v10

    float-to-int v7, v7

    iput v7, p0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mNumberLeft:I

    .line 374
    iget v7, p0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mCellHeight:F

    iget-object v8, p0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mCellValuePaint:Landroid/graphics/Paint;

    invoke-virtual {v8}, Landroid/graphics/Paint;->getTextSize()F

    move-result v8

    sub-float/2addr v7, v8

    div-float/2addr v7, v10

    float-to-int v7, v7

    iput v7, p0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mNumberTop:I

    .line 377
    iget v7, p0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mCellHeight:F

    const/high16 v8, 0x4248

    div-float/2addr v7, v8

    iput v7, p0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mNoteTop:F

    .line 379
    invoke-direct {p0, v4, v1}, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->computeSectorLineWidth(II)V

    .line 380
    return-void

    .line 333
    .end local v0           #cellTextSize:F
    :cond_6
    const/16 v4, 0x64

    .line 334
    if-ne v5, v7, :cond_0

    if-le v4, v6, :cond_0

    .line 335
    move v4, v6

    goto/16 :goto_0

    .line 341
    :cond_7
    const/16 v1, 0x64

    .line 342
    if-ne v2, v7, :cond_1

    if-le v1, v3, :cond_1

    .line 343
    move v1, v3

    goto/16 :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    .line 532
    iget-boolean v2, p0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mReadonly:Z

    if-nez v2, :cond_1

    .line 533
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v0, v2

    .line 534
    .local v0, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v1, v2

    .line 536
    .local v1, y:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 558
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->postInvalidate()V

    .line 561
    .end local v0           #x:I
    .end local v1           #y:I
    :cond_1
    iget-boolean v2, p0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mReadonly:Z

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    :goto_1
    return v2

    .line 539
    .restart local v0       #x:I
    .restart local v1       #y:I
    :pswitch_0
    invoke-direct {p0, v0, v1}, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->getCellAtPoint(II)Lcom/nrsmagic/sudoku/game/Cell;

    move-result-object v2

    iput-object v2, p0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mTouchedCell:Lcom/nrsmagic/sudoku/game/Cell;

    goto :goto_0

    .line 542
    :pswitch_1
    invoke-direct {p0, v0, v1}, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->getCellAtPoint(II)Lcom/nrsmagic/sudoku/game/Cell;

    move-result-object v2

    iput-object v2, p0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mSelectedCell:Lcom/nrsmagic/sudoku/game/Cell;

    .line 543
    invoke-virtual {p0}, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->invalidate()V

    .line 545
    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mSelectedCell:Lcom/nrsmagic/sudoku/game/Cell;

    if-eqz v2, :cond_2

    .line 546
    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mSelectedCell:Lcom/nrsmagic/sudoku/game/Cell;

    invoke-virtual {p0, v2}, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->onCellTapped(Lcom/nrsmagic/sudoku/game/Cell;)V

    .line 547
    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mSelectedCell:Lcom/nrsmagic/sudoku/game/Cell;

    invoke-virtual {p0, v2}, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->onCellSelected(Lcom/nrsmagic/sudoku/game/Cell;)V

    .line 550
    :cond_2
    iget-boolean v2, p0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mAutoHideTouchedCellHint:Z

    if-eqz v2, :cond_0

    .line 551
    iput-object v3, p0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mTouchedCell:Lcom/nrsmagic/sudoku/game/Cell;

    goto :goto_0

    .line 555
    :pswitch_2
    iput-object v3, p0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mTouchedCell:Lcom/nrsmagic/sudoku/game/Cell;

    goto :goto_0

    .line 561
    .end local v0           #x:I
    .end local v1           #y:I
    :cond_3
    const/4 v2, 0x1

    goto :goto_1

    .line 536
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setAutoHideTouchedCellHint(Z)V
    .locals 0
    .parameter "autoHideTouchedCellHint"

    .prologue
    .line 272
    iput-boolean p1, p0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mAutoHideTouchedCellHint:Z

    .line 273
    return-void
.end method

.method public setBackgroundColorReadOnly(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 191
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mBackgroundColorReadOnly:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 192
    return-void
.end method

.method public setBackgroundColorSecondary(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 183
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mBackgroundColorSecondary:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 184
    return-void
.end method

.method public setBackgroundColorSelected(I)V
    .locals 2
    .parameter "color"

    .prologue
    .line 208
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mBackgroundColorSelected:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 209
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mBackgroundColorSelected:Landroid/graphics/Paint;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 210
    return-void
.end method

.method public setBackgroundColorTouched(I)V
    .locals 2
    .parameter "color"

    .prologue
    .line 199
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mBackgroundColorTouched:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 200
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mBackgroundColorTouched:Landroid/graphics/Paint;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 201
    return-void
.end method

.method public setCells(Lcom/nrsmagic/sudoku/game/CellCollection;)V
    .locals 2
    .parameter "cells"

    .prologue
    const/4 v1, 0x0

    .line 218
    iput-object p1, p0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mCells:Lcom/nrsmagic/sudoku/game/CellCollection;

    .line 220
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mCells:Lcom/nrsmagic/sudoku/game/CellCollection;

    if-eqz v0, :cond_1

    .line 221
    iget-boolean v0, p0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mReadonly:Z

    if-nez v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mCells:Lcom/nrsmagic/sudoku/game/CellCollection;

    invoke-virtual {v0, v1, v1}, Lcom/nrsmagic/sudoku/game/CellCollection;->getCell(II)Lcom/nrsmagic/sudoku/game/Cell;

    move-result-object v0

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mSelectedCell:Lcom/nrsmagic/sudoku/game/Cell;

    .line 223
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mSelectedCell:Lcom/nrsmagic/sudoku/game/Cell;

    invoke-virtual {p0, v0}, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->onCellSelected(Lcom/nrsmagic/sudoku/game/Cell;)V

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mCells:Lcom/nrsmagic/sudoku/game/CellCollection;

    new-instance v1, Lcom/nrsmagic/sudoku/gui/SudokuBoardView$1;

    invoke-direct {v1, p0}, Lcom/nrsmagic/sudoku/gui/SudokuBoardView$1;-><init>(Lcom/nrsmagic/sudoku/gui/SudokuBoardView;)V

    invoke-virtual {v0, v1}, Lcom/nrsmagic/sudoku/game/CellCollection;->addOnChangeListener(Lcom/nrsmagic/sudoku/game/CellCollection$OnChangeListener;)V

    .line 234
    :cond_1
    invoke-virtual {p0}, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->postInvalidate()V

    .line 235
    return-void
.end method

.method public setGame(Lcom/nrsmagic/sudoku/game/SudokuGame;)V
    .locals 1
    .parameter "game"

    .prologue
    .line 213
    iput-object p1, p0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mGame:Lcom/nrsmagic/sudoku/game/SudokuGame;

    .line 214
    invoke-virtual {p1}, Lcom/nrsmagic/sudoku/game/SudokuGame;->getCells()Lcom/nrsmagic/sudoku/game/CellCollection;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->setCells(Lcom/nrsmagic/sudoku/game/CellCollection;)V

    .line 215
    return-void
.end method

.method public setHighlightTouchedCell(Z)V
    .locals 0
    .parameter "highlightTouchedCell"

    .prologue
    .line 264
    iput-boolean p1, p0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mHighlightTouchedCell:Z

    .line 265
    return-void
.end method

.method public setHighlightWrongVals(Z)V
    .locals 0
    .parameter "highlightWrongVals"

    .prologue
    .line 255
    iput-boolean p1, p0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mHighlightWrongVals:Z

    .line 256
    invoke-virtual {p0}, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->postInvalidate()V

    .line 257
    return-void
.end method

.method public setLineColor(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 144
    return-void
.end method

.method public setOnCellSelectedListener(Lcom/nrsmagic/sudoku/gui/SudokuBoardView$OnCellSelectedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 301
    iput-object p1, p0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mOnCellSelectedListener:Lcom/nrsmagic/sudoku/gui/SudokuBoardView$OnCellSelectedListener;

    .line 302
    return-void
.end method

.method public setOnCellTappedListener(Lcom/nrsmagic/sudoku/gui/SudokuBoardView$OnCellTappedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 285
    iput-object p1, p0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mOnCellTappedListener:Lcom/nrsmagic/sudoku/gui/SudokuBoardView$OnCellTappedListener;

    .line 286
    return-void
.end method

.method public setReadOnly(Z)V
    .locals 0
    .parameter "readonly"

    .prologue
    .line 246
    iput-boolean p1, p0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mReadonly:Z

    .line 247
    invoke-virtual {p0}, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->postInvalidate()V

    .line 248
    return-void
.end method

.method public setSectorLineColor(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 151
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mSectorLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 152
    return-void
.end method

.method public setTextColor(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 159
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mCellValuePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 160
    return-void
.end method

.method public setTextColorNote(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mCellNotePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 176
    return-void
.end method

.method public setTextColorReadOnly(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 167
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->mCellValueReadonlyPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 168
    return-void
.end method
