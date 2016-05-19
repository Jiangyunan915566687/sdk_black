.class public abstract Lcom/nrsmagic/sudoku/gui/inputmethod/InputMethod;
.super Ljava/lang/Object;
.source "InputMethod.java"


# instance fields
.field protected mActive:Z

.field protected mBoard:Lcom/nrsmagic/sudoku/gui/SudokuBoardView;

.field protected mContext:Landroid/content/Context;

.field protected mControlPanel:Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanel;

.field private mEnabled:Z

.field protected mGame:Lcom/nrsmagic/sudoku/game/SudokuGame;

.field protected mHintsQueue:Lcom/nrsmagic/sudoku/gui/HintsQueue;

.field private mInputMethodName:Ljava/lang/String;

.field protected mInputMethodView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/InputMethod;->mActive:Z

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/InputMethod;->mEnabled:Z

    .line 58
    return-void
.end method


# virtual methods
.method public activate()V
    .locals 1

    .prologue
    .line 131
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/InputMethod;->mActive:Z

    .line 132
    invoke-virtual {p0}, Lcom/nrsmagic/sudoku/gui/inputmethod/InputMethod;->onActivated()V

    .line 133
    return-void
.end method

.method protected abstract createControlPanelView()Landroid/view/View;
.end method

.method public deactivate()V
    .locals 1

    .prologue
    .line 136
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/InputMethod;->mActive:Z

    .line 137
    invoke-virtual {p0}, Lcom/nrsmagic/sudoku/gui/inputmethod/InputMethod;->onDeactivated()V

    .line 138
    return-void
.end method

.method public abstract getAbbrName()Ljava/lang/String;
.end method

.method public abstract getHelpResID()I
.end method

.method protected getInputMethodName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/InputMethod;->mInputMethodName:Ljava/lang/String;

    return-object v0
.end method

.method public getInputMethodView()Landroid/view/View;
    .locals 6

    .prologue
    .line 74
    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/InputMethod;->mInputMethodView:Landroid/view/View;

    if-nez v2, :cond_0

    .line 75
    invoke-virtual {p0}, Lcom/nrsmagic/sudoku/gui/inputmethod/InputMethod;->createControlPanelView()Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/InputMethod;->mInputMethodView:Landroid/view/View;

    .line 76
    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/InputMethod;->mInputMethodView:Landroid/view/View;

    const v3, 0x7f08000f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .local v1, switchModeView:Landroid/view/View;
    move-object v0, v1

    .line 77
    check-cast v0, Landroid/widget/Button;

    .line 78
    .local v0, switchModeButton:Landroid/widget/Button;
    invoke-virtual {p0}, Lcom/nrsmagic/sudoku/gui/inputmethod/InputMethod;->getAbbrName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 79
    invoke-virtual {v0}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    new-instance v3, Landroid/graphics/LightingColorFilter;

    const v4, -0xff0001

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 80
    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/InputMethod;->mInputMethodView:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/nrsmagic/sudoku/gui/inputmethod/InputMethod;->onControlPanelCreated(Landroid/view/View;)V

    .line 83
    .end local v0           #switchModeButton:Landroid/widget/Button;
    .end local v1           #switchModeView:Landroid/view/View;
    :cond_0
    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/InputMethod;->mInputMethodView:Landroid/view/View;

    return-object v2
.end method

.method public abstract getNameResID()I
.end method

.method protected initialize(Landroid/content/Context;Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanel;Lcom/nrsmagic/sudoku/game/SudokuGame;Lcom/nrsmagic/sudoku/gui/SudokuBoardView;Lcom/nrsmagic/sudoku/gui/HintsQueue;)V
    .locals 1
    .parameter "context"
    .parameter "controlPanel"
    .parameter "game"
    .parameter "board"
    .parameter "hintsQueue"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/InputMethod;->mContext:Landroid/content/Context;

    .line 62
    iput-object p2, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/InputMethod;->mControlPanel:Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanel;

    .line 63
    iput-object p3, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/InputMethod;->mGame:Lcom/nrsmagic/sudoku/game/SudokuGame;

    .line 64
    iput-object p4, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/InputMethod;->mBoard:Lcom/nrsmagic/sudoku/gui/SudokuBoardView;

    .line 65
    iput-object p5, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/InputMethod;->mHintsQueue:Lcom/nrsmagic/sudoku/gui/HintsQueue;

    .line 66
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/InputMethod;->mInputMethodName:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/InputMethod;->mEnabled:Z

    return v0
.end method

.method public isInputMethodViewCreated()Z
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/InputMethod;->mInputMethodView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onActivated()V
    .locals 0

    .prologue
    .line 147
    return-void
.end method

.method protected onCellSelected(Lcom/nrsmagic/sudoku/game/Cell;)V
    .locals 0
    .parameter "cell"

    .prologue
    .line 160
    return-void
.end method

.method protected onCellTapped(Lcom/nrsmagic/sudoku/game/Cell;)V
    .locals 0
    .parameter "cell"

    .prologue
    .line 169
    return-void
.end method

.method protected onControlPanelCreated(Landroid/view/View;)V
    .locals 0
    .parameter "controlPanel"

    .prologue
    .line 144
    return-void
.end method

.method protected onDeactivated()V
    .locals 0

    .prologue
    .line 150
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 96
    return-void
.end method

.method protected onRestoreState(Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanelStatePersister$StateBundle;)V
    .locals 0
    .parameter "savedState"

    .prologue
    .line 175
    return-void
.end method

.method protected onSaveState(Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanelStatePersister$StateBundle;)V
    .locals 0
    .parameter "outState"

    .prologue
    .line 172
    return-void
.end method

.method public pause()V
    .locals 0

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/nrsmagic/sudoku/gui/inputmethod/InputMethod;->onPause()V

    .line 92
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 119
    iput-boolean p1, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/InputMethod;->mEnabled:Z

    .line 121
    if-nez p1, :cond_0

    .line 122
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/InputMethod;->mControlPanel:Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanel;

    invoke-virtual {v0}, Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanel;->activateNextInputMethod()V

    .line 124
    :cond_0
    return-void
.end method
