.class public Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;
.super Landroid/app/Activity;
.source "SudokuPlayActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity$GameTimer;
    }
.end annotation


# static fields
.field private static final DIALOG_CLEAR_NOTES:I = 0x3

.field private static final DIALOG_RESTART:I = 0x1

.field private static final DIALOG_UNDO_TO_CHECKPOINT:I = 0x4

.field private static final DIALOG_WELL_DONE:I = 0x2

.field public static final EXTRA_SUDOKU_ID:Ljava/lang/String; = "sudoku_id"

.field public static final MENU_ITEM_CLEAR_ALL_NOTES:I = 0x2

.field public static final MENU_ITEM_FILL_IN_NOTES:I = 0x3

.field public static final MENU_ITEM_HELP:I = 0x5

.field public static final MENU_ITEM_RESTART:I = 0x1

.field public static final MENU_ITEM_SETTINGS:I = 0x6

.field public static final MENU_ITEM_SET_CHECKPOINT:I = 0x7

.field public static final MENU_ITEM_UNDO:I = 0x4

.field public static final MENU_ITEM_UNDO_TO_CHECKPOINT:I = 0x8

.field private static final REQUEST_SETTINGS:I = 0x1


# instance fields
.field private mDatabase:Lcom/nrsmagic/sudoku/db/SudokuDatabase;

.field private mFillInNotesEnabled:Z

.field private mFullScreen:Z

.field private mGameTimeFormatter:Lcom/nrsmagic/sudoku/gui/GameTimeFormat;

.field private mGameTimer:Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity$GameTimer;

.field private mGuiHandler:Landroid/os/Handler;

.field private mHintsQueue:Lcom/nrsmagic/sudoku/gui/HintsQueue;

.field private mIMControlPanel:Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanel;

.field private mIMControlPanelStatePersister:Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanelStatePersister;

.field private mIMNumpad:Lcom/nrsmagic/sudoku/gui/inputmethod/IMNumpad;

.field private mIMPopup:Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopup;

.field private mIMSingleNumber:Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber;

.field private mRootLayout:Landroid/view/ViewGroup;

.field private mShowTime:Z

.field private mSudokuBoard:Lcom/nrsmagic/sudoku/gui/SudokuBoardView;

.field private mSudokuGame:Lcom/nrsmagic/sudoku/game/SudokuGame;

.field private mSudokuGameID:J

.field private mTimeLabel:Landroid/widget/TextView;

.field private onSolvedListener:Lcom/nrsmagic/sudoku/game/SudokuGame$OnPuzzleSolvedListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 97
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;->mShowTime:Z

    .line 99
    new-instance v0, Lcom/nrsmagic/sudoku/gui/GameTimeFormat;

    invoke-direct {v0}, Lcom/nrsmagic/sudoku/gui/GameTimeFormat;-><init>()V

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;->mGameTimeFormatter:Lcom/nrsmagic/sudoku/gui/GameTimeFormat;

    .line 101
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;->mFillInNotesEnabled:Z

    .line 483
    new-instance v0, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity$1;

    invoke-direct {v0, p0}, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity$1;-><init>(Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;)V

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;->onSolvedListener:Lcom/nrsmagic/sudoku/game/SudokuGame$OnPuzzleSolvedListener;

    .line 57
    return-void
.end method

.method static synthetic access$0(Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;)Lcom/nrsmagic/sudoku/gui/SudokuBoardView;
    .locals 1
    .parameter

    .prologue
    .line 88
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;->mSudokuBoard:Lcom/nrsmagic/sudoku/gui/SudokuBoardView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;)Landroid/view/ViewGroup;
    .locals 1
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;->mRootLayout:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$2(Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;)Lcom/nrsmagic/sudoku/game/SudokuGame;
    .locals 1
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;->mSudokuGame:Lcom/nrsmagic/sudoku/game/SudokuGame;

    return-object v0
.end method

.method static synthetic access$3(Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;->mShowTime:Z

    return v0
.end method

.method static synthetic access$4(Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;)Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity$GameTimer;
    .locals 1
    .parameter

    .prologue
    .line 98
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;->mGameTimer:Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity$GameTimer;

    return-object v0
.end method

.method static synthetic access$5(Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 215
    invoke-direct {p0}, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;->refreshActionBarMenu()V

    return-void
.end method

.method private refreshActionBarMenu()V
    .locals 2

    .prologue
    .line 216
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 217
    invoke-static {p0}, Lcom/nrsmagic/sudoku/utils/VersionHelperAndroid11;->refreshActionBarMenu(Landroid/app/Activity;)V

    .line 218
    :cond_0
    return-void
.end method

.method private restartActivity()V
    .locals 1

    .prologue
    .line 417
    invoke-virtual {p0}, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;->startActivity(Landroid/content/Intent;)V

    .line 418
    invoke-virtual {p0}, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;->finish()V

    .line 419
    return-void
.end method

.method private static setMenuItemEnabled(Landroid/view/Menu;IZ)V
    .locals 1
    .parameter "menu"
    .parameter "menuItemId"
    .parameter "enabled"

    .prologue
    .line 360
    if-nez p0, :cond_1

    .line 366
    :cond_0
    :goto_0
    return-void

    .line 362
    :cond_1
    invoke-interface {p0, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 363
    .local v0, menuItem:Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 365
    invoke-interface {v0, p2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 406
    packed-switch p1, :pswitch_data_0

    .line 411
    :goto_0
    return-void

    .line 408
    :pswitch_0
    invoke-direct {p0}, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;->restartActivity()V

    goto :goto_0

    .line 406
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/16 v3, 0x140

    const/16 v2, 0xf0

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 107
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 111
    invoke-virtual {p0}, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 112
    .local v0, display:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    if-ne v1, v3, :cond_2

    .line 113
    :cond_0
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    if-eq v1, v2, :cond_1

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    if-ne v1, v3, :cond_2

    .line 114
    :cond_1
    invoke-virtual {p0, v6}, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;->requestWindowFeature(I)Z

    .line 115
    invoke-virtual {p0}, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x400

    .line 116
    const/16 v3, 0x400

    .line 115
    invoke-virtual {v1, v2, v3}, Landroid/view/Window;->setFlags(II)V

    .line 117
    iput-boolean v6, p0, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;->mFullScreen:Z

    .line 121
    :cond_2
    invoke-static {p0}, Lcom/nrsmagic/sudoku/utils/AndroidUtils;->setThemeFromPreferences(Landroid/content/Context;)V

    .line 123
    const v1, 0x7f030012

    invoke-virtual {p0, v1}, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;->setContentView(I)V

    .line 125
    const v1, 0x7f080014

    invoke-virtual {p0, v1}, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;->mRootLayout:Landroid/view/ViewGroup;

    .line 126
    const v1, 0x7f080015

    invoke-virtual {p0, v1}, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;

    iput-object v1, p0, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;->mSudokuBoard:Lcom/nrsmagic/sudoku/gui/SudokuBoardView;

    .line 127
    const v1, 0x7f080020

    invoke-virtual {p0, v1}, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;->mTimeLabel:Landroid/widget/TextView;

    .line 129
    new-instance v1, Lcom/nrsmagic/sudoku/db/SudokuDatabase;

    invoke-virtual {p0}, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/nrsmagic/sudoku/db/SudokuDatabase;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;->mDatabase:Lcom/nrsmagic/sudoku/db/SudokuDatabase;

    .line 130
    new-instance v1, Lcom/nrsmagic/sudoku/gui/HintsQueue;

    invoke-direct {v1, p0}, Lcom/nrsmagic/sudoku/gui/HintsQueue;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;->mHintsQueue:Lcom/nrsmagic/sudoku/gui/HintsQueue;

    .line 131
    new-instance v1, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity$GameTimer;

    invoke-direct {v1, p0}, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity$GameTimer;-><init>(Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;)V

    iput-object v1, p0, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;->mGameTimer:Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity$GameTimer;

    .line 133
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;->mGuiHandler:Landroid/os/Handler;

    .line 136
    if-nez p1, :cond_5

    .line 138
    invoke-virtual {p0}, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "sudoku_id"

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;->mSudokuGameID:J

    .line 139
    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;->mDatabase:Lcom/nrsmagic/sudoku/db/SudokuDatabase;

    iget-wide v2, p0, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;->mSudokuGameID:J

    invoke-virtual {v1, v2, v3}, Lcom/nrsmagic/sudoku/db/SudokuDatabase;->getSudoku(J)Lcom/nrsmagic/sudoku/game/SudokuGame;

    move-result-object v1

    iput-object v1, p0, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;->mSudokuGame:Lcom/nrsmagic/sudoku/game/SudokuGame;

    .line 147
    :goto_0
    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;->mSudokuGame:Lcom/nrsmagic/sudoku/game/SudokuGame;

    invoke-virtual {v1}, Lcom/nrsmagic/sudoku/game/SudokuGame;->getState()I

    move-result v1

    if-ne v1, v6, :cond_6

    .line 148
    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;->mSudokuGame:Lcom/nrsmagic/sudoku/game/SudokuGame;

    invoke-virtual {v1}, Lcom/nrsmagic/sudoku/game/SudokuGame;->start()V

    .line 153
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;->mSudokuGame:Lcom/nrsmagic/sudoku/game/SudokuGame;

    invoke-virtual {v1}, Lcom/nrsmagic/sudoku/game/SudokuGame;->getState()I

    move-result v1

    if-ne v1, v8, :cond_4

    .line 154
    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;->mSudokuBoard:Lcom/nrsmagic/sudoku/gui/SudokuBoardView;

    invoke-virtual {v1, v6}, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->setReadOnly(Z)V

    .line 157
    :cond_4
    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;->mSudokuBoard:Lcom/nrsmagic/sudoku/gui/SudokuBoardView;

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;->mSudokuGame:Lcom/nrsmagic/sudoku/game/SudokuGame;

    invoke-virtual {v1, v2}, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->setGame(Lcom/nrsmagic/sudoku/game/SudokuGame;)V

    .line 158
    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;->mSudokuGame:Lcom/nrsmagic/sudoku/game/SudokuGame;

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;->onSolvedListener:Lcom/nrsmagic/sudoku/game/SudokuGame$OnPuzzleSolvedListener;

    invoke-virtual {v1, v2}, Lcom/nrsmagic/sudoku/game/SudokuGame;->setOnPuzzleSolvedListener(Lcom/nrsmagic/sudoku/game/SudokuGame$OnPuzzleSolvedListener;)V

    .line 160
    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;->mHintsQueue:Lcom/nrsmagic/sudoku/gui/HintsQueue;

    const-string v2, "welcome"

    const v3, 0x7f09004c

    const v4, 0x7f090050

    new-array v5, v7, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/nrsmagic/sudoku/gui/HintsQueue;->showOneTimeHint(Ljava/lang/String;II[Ljava/lang/Object;)V

    .line 162
    const v1, 0x7f080016

    invoke-virtual {p0, v1}, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanel;

    iput-object v1, p0, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;->mIMControlPanel:Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanel;

    .line 163
    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;->mIMControlPanel:Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanel;

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;->mSudokuBoard:Lcom/nrsmagic/sudoku/gui/SudokuBoardView;

    iget-object v3, p0, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;->mSudokuGame:Lcom/nrsmagic/sudoku/game/SudokuGame;

    iget-object v4, p0, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;->mHintsQueue:Lcom/nrsmagic/sudoku/gui/HintsQueue;

    invoke-virtual {v1, v2, v3, v4}, Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanel;->initialize(Lcom/nrsmagic/sudoku/gui/SudokuBoardView;Lcom/nrsmagic/sudoku/game/SudokuGame;Lcom/nrsmagic/sudoku/gui/HintsQueue;)V

    .line 165
    new-instance v1, Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanelStatePersister;

    invoke-direct {v1, p0}, Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanelStatePersister;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;->mIMControlPanelStatePersister:Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanelStatePersister;

    .line 167
    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;->mIMControlPanel:Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanel;

    invoke-virtual {v1, v7}, Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanel;->getInputMethod(I)Lcom/nrsmagic/sudoku/gui/inputmethod/InputMethod;

    move-result-object v1

    check-cast v1, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopup;

    iput-object v1, p0, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;->mIMPopup:Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopup;

    .line 168
    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;->mIMControlPanel:Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanel;

    invoke-virtual {v1, v6}, Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanel;->getInputMethod(I)Lcom/nrsmagic/sudoku/gui/inputmethod/InputMethod;

    move-result-object v1

    check-cast v1, Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber;

    iput-object v1, p0, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;->mIMSingleNumber:Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber;

    .line 169
    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;->mIMControlPanel:Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanel;

    invoke-virtual {v1, v8}, Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanel;->getInputMethod(I)Lcom/nrsmagic/sudoku/gui/inputmethod/InputMethod;

    move-result-object v1

    check-cast v1, Lcom/nrsmagic/sudoku/gui/inputmethod/IMNumpad;

    iput-object v1, p0, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;->mIMNumpad:Lcom/nrsmagic/sudoku/gui/inputmethod/IMNumpad;

    .line 170
    return-void

    .line 142
    :cond_5
    new-instance v1, Lcom/nrsmagic/sudoku/game/SudokuGame;

    invoke-direct {v1}, Lcom/nrsmagic/sudoku/game/SudokuGame;-><init>()V

    iput-object v1, p0, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;->mSudokuGame:Lcom/nrsmagic/sudoku/game/SudokuGame;

    .line 143
    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;->mSudokuGame:Lcom/nrsmagic/sudoku/game/SudokuGame;

    invoke-virtual {v1, p1}, Lcom/nrsmagic/sudoku/game/SudokuGame;->restoreState(Landroid/os/Bundle;)V

    .line 144
    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;->mGameTimer:Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity$GameTimer;

    invoke-virtual {v1, p1}, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity$GameTimer;->restoreState(Landroid/os/Bundle;)Z

    goto/16 :goto_0

    .line 149
    :cond_6
    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;->mSudokuGame:Lcom/nrsmagic/sudoku/game/SudokuGame;

    invoke-virtual {v1}, Lcom/nrsmagic/sudoku/game/SudokuGame;->getState()I

    move-result v1

    if-nez v1, :cond_3

    .line 150
    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;->mSudokuGame:Lcom/nrsmagic/sudoku/game/SudokuGame;

    invoke-virtual {v1}, Lcom/nrsmagic/sudoku/game/SudokuGame;->resume()V

    goto/16 :goto_1
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 8
    .parameter "id"

    .prologue
    const v2, 0x108003c

    const/high16 v5, 0x7f09

    const v4, 0x1040013

    const v3, 0x1040009

    const/4 v0, 0x0

    .line 423
    packed-switch p1, :pswitch_data_0

    .line 477
    :goto_0
    return-object v0

    .line 425
    :pswitch_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 426
    const v2, 0x108009b

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 427
    const v2, 0x7f090039

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 428
    const v2, 0x7f090037

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;->mGameTimeFormatter:Lcom/nrsmagic/sudoku/gui/GameTimeFormat;

    iget-object v6, p0, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;->mSudokuGame:Lcom/nrsmagic/sudoku/game/SudokuGame;

    invoke-virtual {v6}, Lcom/nrsmagic/sudoku/game/SudokuGame;->getTime()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/nrsmagic/sudoku/gui/GameTimeFormat;->format(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 429
    const v2, 0x104000a

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 430
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 432
    :pswitch_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 433
    const v2, 0x108004d

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 434
    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 435
    const v2, 0x7f090038

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 436
    new-instance v2, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity$3;

    invoke-direct {v2, p0}, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity$3;-><init>(Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;)V

    invoke-virtual {v1, v4, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 448
    invoke-virtual {v1, v3, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 449
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 451
    :pswitch_2
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 452
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 453
    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 454
    const v2, 0x7f09003a

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 455
    new-instance v2, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity$4;

    invoke-direct {v2, p0}, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity$4;-><init>(Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;)V

    invoke-virtual {v1, v4, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 460
    invoke-virtual {v1, v3, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 461
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 463
    :pswitch_3
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 464
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 465
    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 466
    const v2, 0x7f090087

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 467
    new-instance v2, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity$5;

    invoke-direct {v2, p0}, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity$5;-><init>(Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;)V

    invoke-virtual {v1, v4, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 473
    invoke-virtual {v1, v3, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 474
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 423
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 10
    .parameter "menu"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 275
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 277
    const/4 v0, 0x4

    const v1, 0x7f090033

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 278
    const/16 v1, 0x31

    const/16 v3, 0x75

    invoke-interface {v0, v1, v3}, Landroid/view/MenuItem;->setShortcut(CC)Landroid/view/MenuItem;

    move-result-object v0

    .line 279
    const v1, 0x108004c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 281
    const v0, 0x7f090036

    invoke-interface {p1, v2, v9, v9, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 282
    const/16 v1, 0x37

    const/16 v3, 0x72

    invoke-interface {v0, v1, v3}, Landroid/view/MenuItem;->setShortcut(CC)Landroid/view/MenuItem;

    move-result-object v0

    .line 283
    const v1, 0x108004d

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 285
    const v0, 0x7f090034

    invoke-interface {p1, v2, v4, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 286
    const/16 v1, 0x33

    const/16 v3, 0x61

    invoke-interface {v0, v1, v3}, Landroid/view/MenuItem;->setShortcut(CC)Landroid/view/MenuItem;

    move-result-object v0

    .line 287
    const v1, 0x108003c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 289
    iget-boolean v0, p0, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;->mFillInNotesEnabled:Z

    if-eqz v0, :cond_0

    .line 290
    const/4 v0, 0x3

    const v1, 0x7f090035

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 291
    const v1, 0x108003e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 294
    :cond_0
    const/4 v0, 0x5

    const v1, 0x7f09004e

    invoke-interface {p1, v2, v0, v9, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 295
    const/16 v1, 0x30

    const/16 v3, 0x68

    invoke-interface {v0, v1, v3}, Landroid/view/MenuItem;->setShortcut(CC)Landroid/view/MenuItem;

    move-result-object v0

    .line 296
    const v1, 0x1080040

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 298
    const/4 v0, 0x6

    const v1, 0x7f09003b

    invoke-interface {p1, v2, v0, v9, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 299
    const/16 v1, 0x39

    const/16 v3, 0x73

    invoke-interface {v0, v1, v3}, Landroid/view/MenuItem;->setShortcut(CC)Landroid/view/MenuItem;

    move-result-object v0

    .line 300
    const v1, 0x1080049

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 302
    const/4 v0, 0x7

    const v1, 0x7f090085

    invoke-interface {p1, v2, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 303
    const/16 v0, 0x8

    const v1, 0x7f090086

    invoke-interface {p1, v2, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 309
    new-instance v6, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v6, v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 310
    .local v6, intent:Landroid/content/Intent;
    const-string v0, "android.intent.category.ALTERNATIVE"

    invoke-virtual {v6, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 311
    const/high16 v1, 0x4

    .line 312
    new-instance v4, Landroid/content/ComponentName;

    const-class v0, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;

    invoke-direct {v4, p0, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object v0, p1

    move v3, v2

    move v7, v2

    move-object v8, v5

    .line 311
    invoke-interface/range {v0 .. v8}, Landroid/view/Menu;->addIntentOptions(IIILandroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I[Landroid/view/MenuItem;)I

    .line 314
    return v9
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 254
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 256
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;->mDatabase:Lcom/nrsmagic/sudoku/db/SudokuDatabase;

    invoke-virtual {v0}, Lcom/nrsmagic/sudoku/db/SudokuDatabase;->close()V

    .line 257
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 370
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 401
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 372
    :pswitch_0
    invoke-virtual {p0, v1}, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;->showDialog(I)V

    goto :goto_0

    .line 375
    :pswitch_1
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;->showDialog(I)V

    goto :goto_0

    .line 378
    :pswitch_2
    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;->mSudokuGame:Lcom/nrsmagic/sudoku/game/SudokuGame;

    invoke-virtual {v2}, Lcom/nrsmagic/sudoku/game/SudokuGame;->fillInNotes()V

    goto :goto_0

    .line 381
    :pswitch_3
    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;->mSudokuGame:Lcom/nrsmagic/sudoku/game/SudokuGame;

    invoke-virtual {v2}, Lcom/nrsmagic/sudoku/game/SudokuGame;->undo()V

    .line 382
    invoke-direct {p0}, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;->refreshActionBarMenu()V

    goto :goto_0

    .line 385
    :pswitch_4
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 386
    .local v0, i:Landroid/content/Intent;
    const-class v2, Lcom/nrsmagic/sudoku/gui/GameSettingsActivity;

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 387
    invoke-virtual {p0, v0, v1}, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 390
    .end local v0           #i:Landroid/content/Intent;
    :pswitch_5
    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;->mHintsQueue:Lcom/nrsmagic/sudoku/gui/HintsQueue;

    const v3, 0x7f09004e

    const v4, 0x7f090055

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4, v5}, Lcom/nrsmagic/sudoku/gui/HintsQueue;->showHint(II[Ljava/lang/Object;)V

    goto :goto_0

    .line 393
    :pswitch_6
    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;->mSudokuGame:Lcom/nrsmagic/sudoku/game/SudokuGame;

    invoke-virtual {v2}, Lcom/nrsmagic/sudoku/game/SudokuGame;->setUndoCheckpoint()V

    .line 394
    invoke-direct {p0}, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;->refreshActionBarMenu()V

    goto :goto_0

    .line 397
    :pswitch_7
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;->showDialog(I)V

    goto :goto_0

    .line 370
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 242
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 245
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;->mDatabase:Lcom/nrsmagic/sudoku/db/SudokuDatabase;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;->mSudokuGame:Lcom/nrsmagic/sudoku/game/SudokuGame;

    invoke-virtual {v0, v1}, Lcom/nrsmagic/sudoku/db/SudokuDatabase;->updateSudoku(Lcom/nrsmagic/sudoku/game/SudokuGame;)V

    .line 247
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;->mGameTimer:Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity$GameTimer;

    invoke-virtual {v0}, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity$GameTimer;->stop()V

    .line 248
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;->mIMControlPanel:Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanel;

    invoke-virtual {v0}, Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanel;->pause()V

    .line 249
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;->mIMControlPanelStatePersister:Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanelStatePersister;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;->mIMControlPanel:Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanel;

    invoke-virtual {v0, v1}, Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanelStatePersister;->saveState(Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanel;)V

    .line 250
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 6
    .parameter "menu"

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 319
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 340
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;->mSudokuGame:Lcom/nrsmagic/sudoku/game/SudokuGame;

    if-eqz v0, :cond_1

    .line 341
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;->mSudokuGame:Lcom/nrsmagic/sudoku/game/SudokuGame;

    invoke-virtual {v0}, Lcom/nrsmagic/sudoku/game/SudokuGame;->getState()I

    move-result v0

    if-nez v0, :cond_2

    .line 342
    invoke-static {p1, v3, v2}, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;->setMenuItemEnabled(Landroid/view/Menu;IZ)V

    .line 343
    iget-boolean v0, p0, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;->mFillInNotesEnabled:Z

    if-eqz v0, :cond_0

    .line 344
    invoke-static {p1, v4, v2}, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;->setMenuItemEnabled(Landroid/view/Menu;IZ)V

    .line 345
    :cond_0
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;->mSudokuGame:Lcom/nrsmagic/sudoku/game/SudokuGame;

    invoke-virtual {v0}, Lcom/nrsmagic/sudoku/game/SudokuGame;->hasSomethingToUndo()Z

    move-result v0

    invoke-static {p1, v5, v0}, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;->setMenuItemEnabled(Landroid/view/Menu;IZ)V

    .line 346
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;->mSudokuGame:Lcom/nrsmagic/sudoku/game/SudokuGame;

    invoke-virtual {v1}, Lcom/nrsmagic/sudoku/game/SudokuGame;->hasUndoCheckpoint()Z

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;->setMenuItemEnabled(Landroid/view/Menu;IZ)V

    .line 356
    :cond_1
    :goto_0
    return v2

    .line 348
    :cond_2
    invoke-static {p1, v3, v1}, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;->setMenuItemEnabled(Landroid/view/Menu;IZ)V

    .line 349
    iget-boolean v0, p0, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;->mFillInNotesEnabled:Z

    if-eqz v0, :cond_3

    .line 350
    invoke-static {p1, v4, v1}, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;->setMenuItemEnabled(Landroid/view/Menu;IZ)V

    .line 351
    :cond_3
    invoke-static {p1, v5, v1}, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;->setMenuItemEnabled(Landroid/view/Menu;IZ)V

    .line 352
    const/16 v0, 0x8

    invoke-static {p1, v0, v1}, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;->setMenuItemEnabled(Landroid/view/Menu;IZ)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 174
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 177
    invoke-virtual {p0}, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 179
    .local v0, gameSettings:Landroid/content/SharedPreferences;
    const-string v2, "screen_border_size"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 180
    .local v1, screenPadding:I
    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;->mRootLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 182
    const-string v2, "fill_in_notes_enabled"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;->mFillInNotesEnabled:Z

    .line 184
    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;->mSudokuBoard:Lcom/nrsmagic/sudoku/gui/SudokuBoardView;

    const-string v4, "highlight_wrong_values"

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->setHighlightWrongVals(Z)V

    .line 185
    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;->mSudokuBoard:Lcom/nrsmagic/sudoku/gui/SudokuBoardView;

    const-string v4, "highlight_touched_cell"

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->setHighlightTouchedCell(Z)V

    .line 187
    const-string v2, "show_time"

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;->mShowTime:Z

    .line 188
    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;->mSudokuGame:Lcom/nrsmagic/sudoku/game/SudokuGame;

    invoke-virtual {v2}, Lcom/nrsmagic/sudoku/game/SudokuGame;->getState()I

    move-result v2

    if-nez v2, :cond_0

    .line 189
    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;->mSudokuGame:Lcom/nrsmagic/sudoku/game/SudokuGame;

    invoke-virtual {v2}, Lcom/nrsmagic/sudoku/game/SudokuGame;->resume()V

    .line 191
    iget-boolean v2, p0, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;->mShowTime:Z

    if-eqz v2, :cond_0

    .line 192
    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;->mGameTimer:Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity$GameTimer;

    invoke-virtual {v2}, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity$GameTimer;->start()V

    .line 195
    :cond_0
    iget-object v4, p0, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;->mTimeLabel:Landroid/widget/TextView;

    iget-boolean v2, p0, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;->mFullScreen:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;->mShowTime:Z

    if-eqz v2, :cond_1

    move v2, v3

    :goto_0
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 197
    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;->mIMPopup:Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopup;

    const-string v4, "im_popup"

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopup;->setEnabled(Z)V

    .line 198
    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;->mIMSingleNumber:Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber;

    const-string v4, "im_single_number"

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber;->setEnabled(Z)V

    .line 199
    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;->mIMNumpad:Lcom/nrsmagic/sudoku/gui/inputmethod/IMNumpad;

    const-string v4, "im_numpad"

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/nrsmagic/sudoku/gui/inputmethod/IMNumpad;->setEnabled(Z)V

    .line 200
    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;->mIMNumpad:Lcom/nrsmagic/sudoku/gui/inputmethod/IMNumpad;

    const-string v4, "im_numpad_move_right"

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/nrsmagic/sudoku/gui/inputmethod/IMNumpad;->setMoveCellSelectionOnPress(Z)V

    .line 201
    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;->mIMPopup:Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopup;

    const-string v4, "highlight_completed_values"

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopup;->setHighlightCompletedValues(Z)V

    .line 202
    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;->mIMPopup:Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopup;

    const-string v4, "show_number_totals"

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopup;->setShowNumberTotals(Z)V

    .line 203
    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;->mIMSingleNumber:Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber;

    const-string v4, "highlight_completed_values"

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber;->setHighlightCompletedValues(Z)V

    .line 204
    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;->mIMSingleNumber:Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber;

    const-string v4, "show_number_totals"

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber;->setShowNumberTotals(Z)V

    .line 205
    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;->mIMNumpad:Lcom/nrsmagic/sudoku/gui/inputmethod/IMNumpad;

    const-string v4, "highlight_completed_values"

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/nrsmagic/sudoku/gui/inputmethod/IMNumpad;->setHighlightCompletedValues(Z)V

    .line 206
    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;->mIMNumpad:Lcom/nrsmagic/sudoku/gui/inputmethod/IMNumpad;

    const-string v4, "show_number_totals"

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/nrsmagic/sudoku/gui/inputmethod/IMNumpad;->setShowNumberTotals(Z)V

    .line 208
    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;->mIMControlPanel:Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanel;

    invoke-virtual {v2}, Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanel;->activateFirstInputMethod()V

    .line 209
    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;->mIMControlPanelStatePersister:Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanelStatePersister;

    iget-object v3, p0, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;->mIMControlPanel:Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanel;

    invoke-virtual {v2, v3}, Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanelStatePersister;->restoreState(Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanel;)V

    .line 211
    invoke-virtual {p0}, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;->updateTime()V

    .line 212
    invoke-direct {p0}, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;->refreshActionBarMenu()V

    .line 213
    return-void

    .line 195
    :cond_1
    const/16 v2, 0x8

    goto/16 :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "outState"

    .prologue
    .line 261
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 263
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;->mGameTimer:Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity$GameTimer;

    invoke-virtual {v0}, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity$GameTimer;->stop()V

    .line 265
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;->mSudokuGame:Lcom/nrsmagic/sudoku/game/SudokuGame;

    invoke-virtual {v0}, Lcom/nrsmagic/sudoku/game/SudokuGame;->getState()I

    move-result v0

    if-nez v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;->mSudokuGame:Lcom/nrsmagic/sudoku/game/SudokuGame;

    invoke-virtual {v0}, Lcom/nrsmagic/sudoku/game/SudokuGame;->pause()V

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;->mSudokuGame:Lcom/nrsmagic/sudoku/game/SudokuGame;

    invoke-virtual {v0, p1}, Lcom/nrsmagic/sudoku/game/SudokuGame;->saveState(Landroid/os/Bundle;)V

    .line 270
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;->mGameTimer:Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity$GameTimer;

    invoke-virtual {v0, p1}, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity$GameTimer;->saveState(Landroid/os/Bundle;)V

    .line 271
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4
    .parameter "hasFocus"

    .prologue
    .line 222
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 224
    if-eqz p1, :cond_0

    .line 227
    iget-boolean v0, p0, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;->mFullScreen:Z

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;->mGuiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity$2;

    invoke-direct {v1, p0}, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity$2;-><init>(Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;)V

    .line 234
    const-wide/16 v2, 0x3e8

    .line 228
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 238
    :cond_0
    return-void
.end method

.method updateTime()V
    .locals 4

    .prologue
    .line 497
    iget-boolean v0, p0, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;->mShowTime:Z

    if-eqz v0, :cond_0

    .line 498
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;->mGameTimeFormatter:Lcom/nrsmagic/sudoku/gui/GameTimeFormat;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;->mSudokuGame:Lcom/nrsmagic/sudoku/game/SudokuGame;

    invoke-virtual {v1}, Lcom/nrsmagic/sudoku/game/SudokuGame;->getTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/nrsmagic/sudoku/gui/GameTimeFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 499
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;->mTimeLabel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;->mGameTimeFormatter:Lcom/nrsmagic/sudoku/gui/GameTimeFormat;

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;->mSudokuGame:Lcom/nrsmagic/sudoku/game/SudokuGame;

    invoke-virtual {v2}, Lcom/nrsmagic/sudoku/game/SudokuGame;->getTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/nrsmagic/sudoku/gui/GameTimeFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 504
    :goto_0
    return-void

    .line 501
    :cond_0
    const/high16 v0, 0x7f09

    invoke-virtual {p0, v0}, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;->setTitle(I)V

    goto :goto_0
.end method
