.class public Lcom/nrsmagic/sudoku/gui/SudokuEditActivity;
.super Landroid/app/Activity;
.source "SudokuEditActivity.java"


# static fields
.field public static final EXTRA_FOLDER_ID:Ljava/lang/String; = "folder_id"

.field public static final EXTRA_SUDOKU_ID:Ljava/lang/String; = "sudoku_id"

.field public static final MENU_ITEM_CANCEL:I = 0x2

.field public static final MENU_ITEM_SAVE:I = 0x1

.field private static final STATE_CANCEL:I = 0x2

.field private static final STATE_EDIT:I = 0x0

.field private static final STATE_INSERT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SudokuEditActivity"


# instance fields
.field private mBoard:Lcom/nrsmagic/sudoku/gui/SudokuBoardView;

.field private mDatabase:Lcom/nrsmagic/sudoku/db/SudokuDatabase;

.field private mFolderID:J

.field private mFullScreen:Z

.field private mGame:Lcom/nrsmagic/sudoku/game/SudokuGame;

.field private mGuiHandler:Landroid/os/Handler;

.field private mInputMethods:Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanel;

.field private mRootLayout:Landroid/view/ViewGroup;

.field private mState:I

.field private mSudokuID:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/nrsmagic/sudoku/gui/SudokuEditActivity;)Landroid/view/ViewGroup;
    .locals 1
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/SudokuEditActivity;->mRootLayout:Landroid/view/ViewGroup;

    return-object v0
.end method

.method private savePuzzle()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 240
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/SudokuEditActivity;->mGame:Lcom/nrsmagic/sudoku/game/SudokuGame;

    invoke-virtual {v0}, Lcom/nrsmagic/sudoku/game/SudokuGame;->getCells()Lcom/nrsmagic/sudoku/game/CellCollection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nrsmagic/sudoku/game/CellCollection;->markFilledCellsAsNotEditable()V

    .line 242
    iget v0, p0, Lcom/nrsmagic/sudoku/gui/SudokuEditActivity;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 253
    :goto_0
    return-void

    .line 244
    :pswitch_0
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/SudokuEditActivity;->mDatabase:Lcom/nrsmagic/sudoku/db/SudokuDatabase;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/SudokuEditActivity;->mGame:Lcom/nrsmagic/sudoku/game/SudokuGame;

    invoke-virtual {v0, v1}, Lcom/nrsmagic/sudoku/db/SudokuDatabase;->updateSudoku(Lcom/nrsmagic/sudoku/game/SudokuGame;)V

    .line 245
    invoke-virtual {p0}, Lcom/nrsmagic/sudoku/gui/SudokuEditActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f09005c

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 248
    :pswitch_1
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/SudokuEditActivity;->mGame:Lcom/nrsmagic/sudoku/game/SudokuGame;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/nrsmagic/sudoku/game/SudokuGame;->setCreated(J)V

    .line 249
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/SudokuEditActivity;->mDatabase:Lcom/nrsmagic/sudoku/db/SudokuDatabase;

    iget-wide v1, p0, Lcom/nrsmagic/sudoku/gui/SudokuEditActivity;->mFolderID:J

    iget-object v3, p0, Lcom/nrsmagic/sudoku/gui/SudokuEditActivity;->mGame:Lcom/nrsmagic/sudoku/game/SudokuGame;

    invoke-virtual {v0, v1, v2, v3}, Lcom/nrsmagic/sudoku/db/SudokuDatabase;->insertSudoku(JLcom/nrsmagic/sudoku/game/SudokuGame;)J

    .line 250
    invoke-virtual {p0}, Lcom/nrsmagic/sudoku/gui/SudokuEditActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f09005b

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 242
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "savedInstanceState"

    .prologue
    const/16 v6, 0xf0

    const/4 v12, 0x2

    const-wide/16 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 82
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 86
    invoke-virtual {p0}, Lcom/nrsmagic/sudoku/gui/SudokuEditActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 87
    .local v1, display:Landroid/view/Display;
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v4

    if-eq v4, v6, :cond_0

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v4

    const/16 v5, 0x140

    if-ne v4, v5, :cond_2

    .line 88
    :cond_0
    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v4

    if-eq v4, v6, :cond_1

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v4

    const/16 v5, 0x140

    if-ne v4, v5, :cond_2

    .line 89
    :cond_1
    invoke-virtual {p0, v8}, Lcom/nrsmagic/sudoku/gui/SudokuEditActivity;->requestWindowFeature(I)Z

    .line 90
    invoke-virtual {p0}, Lcom/nrsmagic/sudoku/gui/SudokuEditActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x400

    .line 91
    const/16 v6, 0x400

    .line 90
    invoke-virtual {v4, v5, v6}, Landroid/view/Window;->setFlags(II)V

    .line 92
    iput-boolean v8, p0, Lcom/nrsmagic/sudoku/gui/SudokuEditActivity;->mFullScreen:Z

    .line 96
    :cond_2
    invoke-static {p0}, Lcom/nrsmagic/sudoku/utils/AndroidUtils;->setThemeFromPreferences(Landroid/content/Context;)V

    .line 98
    const v4, 0x7f03000d

    invoke-virtual {p0, v4}, Lcom/nrsmagic/sudoku/gui/SudokuEditActivity;->setContentView(I)V

    .line 99
    const v4, 0x7f080014

    invoke-virtual {p0, v4}, Lcom/nrsmagic/sudoku/gui/SudokuEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/nrsmagic/sudoku/gui/SudokuEditActivity;->mRootLayout:Landroid/view/ViewGroup;

    .line 100
    const v4, 0x7f080015

    invoke-virtual {p0, v4}, Lcom/nrsmagic/sudoku/gui/SudokuEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;

    iput-object v4, p0, Lcom/nrsmagic/sudoku/gui/SudokuEditActivity;->mBoard:Lcom/nrsmagic/sudoku/gui/SudokuBoardView;

    .line 102
    new-instance v4, Lcom/nrsmagic/sudoku/db/SudokuDatabase;

    invoke-virtual {p0}, Lcom/nrsmagic/sudoku/gui/SudokuEditActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/nrsmagic/sudoku/db/SudokuDatabase;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/nrsmagic/sudoku/gui/SudokuEditActivity;->mDatabase:Lcom/nrsmagic/sudoku/db/SudokuDatabase;

    .line 104
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    iput-object v4, p0, Lcom/nrsmagic/sudoku/gui/SudokuEditActivity;->mGuiHandler:Landroid/os/Handler;

    .line 106
    invoke-virtual {p0}, Lcom/nrsmagic/sudoku/gui/SudokuEditActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 107
    .local v3, intent:Landroid/content/Intent;
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, action:Ljava/lang/String;
    const-string v4, "android.intent.action.EDIT"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 110
    iput v9, p0, Lcom/nrsmagic/sudoku/gui/SudokuEditActivity;->mState:I

    .line 111
    const-string v4, "sudoku_id"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 112
    const-string v4, "sudoku_id"

    invoke-virtual {v3, v4, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/nrsmagic/sudoku/gui/SudokuEditActivity;->mSudokuID:J

    .line 133
    :goto_0
    if-eqz p1, :cond_7

    .line 134
    new-instance v4, Lcom/nrsmagic/sudoku/game/SudokuGame;

    invoke-direct {v4}, Lcom/nrsmagic/sudoku/game/SudokuGame;-><init>()V

    iput-object v4, p0, Lcom/nrsmagic/sudoku/gui/SudokuEditActivity;->mGame:Lcom/nrsmagic/sudoku/game/SudokuGame;

    .line 135
    iget-object v4, p0, Lcom/nrsmagic/sudoku/gui/SudokuEditActivity;->mGame:Lcom/nrsmagic/sudoku/game/SudokuGame;

    invoke-virtual {v4, p1}, Lcom/nrsmagic/sudoku/game/SudokuGame;->restoreState(Landroid/os/Bundle;)V

    .line 145
    :goto_1
    iget-object v4, p0, Lcom/nrsmagic/sudoku/gui/SudokuEditActivity;->mBoard:Lcom/nrsmagic/sudoku/gui/SudokuBoardView;

    iget-object v5, p0, Lcom/nrsmagic/sudoku/gui/SudokuEditActivity;->mGame:Lcom/nrsmagic/sudoku/game/SudokuGame;

    invoke-virtual {v4, v5}, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->setGame(Lcom/nrsmagic/sudoku/game/SudokuGame;)V

    .line 147
    const v4, 0x7f080016

    invoke-virtual {p0, v4}, Lcom/nrsmagic/sudoku/gui/SudokuEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanel;

    iput-object v4, p0, Lcom/nrsmagic/sudoku/gui/SudokuEditActivity;->mInputMethods:Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanel;

    .line 148
    iget-object v4, p0, Lcom/nrsmagic/sudoku/gui/SudokuEditActivity;->mInputMethods:Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanel;

    iget-object v5, p0, Lcom/nrsmagic/sudoku/gui/SudokuEditActivity;->mBoard:Lcom/nrsmagic/sudoku/gui/SudokuBoardView;

    iget-object v6, p0, Lcom/nrsmagic/sudoku/gui/SudokuEditActivity;->mGame:Lcom/nrsmagic/sudoku/game/SudokuGame;

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanel;->initialize(Lcom/nrsmagic/sudoku/gui/SudokuBoardView;Lcom/nrsmagic/sudoku/game/SudokuGame;Lcom/nrsmagic/sudoku/gui/HintsQueue;)V

    .line 151
    iget-object v4, p0, Lcom/nrsmagic/sudoku/gui/SudokuEditActivity;->mInputMethods:Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanel;

    invoke-virtual {v4}, Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanel;->getInputMethods()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_9

    .line 154
    iget-object v4, p0, Lcom/nrsmagic/sudoku/gui/SudokuEditActivity;->mInputMethods:Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanel;

    invoke-virtual {v4, v12}, Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanel;->getInputMethod(I)Lcom/nrsmagic/sudoku/gui/inputmethod/InputMethod;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/nrsmagic/sudoku/gui/inputmethod/InputMethod;->setEnabled(Z)V

    .line 155
    iget-object v4, p0, Lcom/nrsmagic/sudoku/gui/SudokuEditActivity;->mInputMethods:Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanel;

    invoke-virtual {v4, v12}, Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanel;->activateInputMethod(I)V

    .line 156
    :goto_3
    return-void

    .line 114
    :cond_3
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Extra with key \'%s\' is required."

    new-array v6, v8, [Ljava/lang/Object;

    const-string v7, "sudoku_id"

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 116
    :cond_4
    const-string v4, "android.intent.action.INSERT"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 117
    iput v8, p0, Lcom/nrsmagic/sudoku/gui/SudokuEditActivity;->mState:I

    .line 118
    iput-wide v10, p0, Lcom/nrsmagic/sudoku/gui/SudokuEditActivity;->mSudokuID:J

    .line 120
    const-string v4, "folder_id"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 121
    const-string v4, "folder_id"

    invoke-virtual {v3, v4, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/nrsmagic/sudoku/gui/SudokuEditActivity;->mFolderID:J

    goto :goto_0

    .line 123
    :cond_5
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Extra with key \'%s\' is required."

    new-array v6, v8, [Ljava/lang/Object;

    const-string v7, "folder_id"

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 128
    :cond_6
    const-string v4, "SudokuEditActivity"

    const-string v5, "Unknown action, exiting."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    invoke-virtual {p0}, Lcom/nrsmagic/sudoku/gui/SudokuEditActivity;->finish()V

    goto :goto_3

    .line 137
    :cond_7
    iget-wide v4, p0, Lcom/nrsmagic/sudoku/gui/SudokuEditActivity;->mSudokuID:J

    cmp-long v4, v4, v10

    if-eqz v4, :cond_8

    .line 139
    iget-object v4, p0, Lcom/nrsmagic/sudoku/gui/SudokuEditActivity;->mDatabase:Lcom/nrsmagic/sudoku/db/SudokuDatabase;

    iget-wide v5, p0, Lcom/nrsmagic/sudoku/gui/SudokuEditActivity;->mSudokuID:J

    invoke-virtual {v4, v5, v6}, Lcom/nrsmagic/sudoku/db/SudokuDatabase;->getSudoku(J)Lcom/nrsmagic/sudoku/game/SudokuGame;

    move-result-object v4

    iput-object v4, p0, Lcom/nrsmagic/sudoku/gui/SudokuEditActivity;->mGame:Lcom/nrsmagic/sudoku/game/SudokuGame;

    .line 140
    iget-object v4, p0, Lcom/nrsmagic/sudoku/gui/SudokuEditActivity;->mGame:Lcom/nrsmagic/sudoku/game/SudokuGame;

    invoke-virtual {v4}, Lcom/nrsmagic/sudoku/game/SudokuGame;->getCells()Lcom/nrsmagic/sudoku/game/CellCollection;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nrsmagic/sudoku/game/CellCollection;->markAllCellsAsEditable()V

    goto/16 :goto_1

    .line 142
    :cond_8
    invoke-static {}, Lcom/nrsmagic/sudoku/game/SudokuGame;->createEmptyGame()Lcom/nrsmagic/sudoku/game/SudokuGame;

    move-result-object v4

    iput-object v4, p0, Lcom/nrsmagic/sudoku/gui/SudokuEditActivity;->mGame:Lcom/nrsmagic/sudoku/game/SudokuGame;

    goto/16 :goto_1

    .line 151
    :cond_9
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nrsmagic/sudoku/gui/inputmethod/InputMethod;

    .line 152
    .local v2, im:Lcom/nrsmagic/sudoku/gui/inputmethod/InputMethod;
    invoke-virtual {v2, v9}, Lcom/nrsmagic/sudoku/gui/inputmethod/InputMethod;->setEnabled(Z)V

    goto/16 :goto_2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 10
    .parameter "menu"

    .prologue
    const/4 v5, 0x0

    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 205
    const v0, 0x7f09000a

    invoke-interface {p1, v2, v9, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 206
    const/16 v1, 0x31

    const/16 v3, 0x73

    invoke-interface {v0, v1, v3}, Landroid/view/MenuItem;->setShortcut(CC)Landroid/view/MenuItem;

    move-result-object v0

    .line 207
    const v1, 0x108004e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 208
    const/4 v0, 0x2

    const/high16 v1, 0x104

    invoke-interface {p1, v2, v0, v9, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 209
    const/16 v1, 0x33

    const/16 v3, 0x63

    invoke-interface {v0, v1, v3}, Landroid/view/MenuItem;->setShortcut(CC)Landroid/view/MenuItem;

    move-result-object v0

    .line 210
    const v1, 0x1080038

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 216
    new-instance v6, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/nrsmagic/sudoku/gui/SudokuEditActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v6, v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 217
    .local v6, intent:Landroid/content/Intent;
    const-string v0, "android.intent.category.ALTERNATIVE"

    invoke-virtual {v6, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 218
    const/high16 v1, 0x4

    .line 219
    new-instance v4, Landroid/content/ComponentName;

    const-class v0, Lcom/nrsmagic/sudoku/gui/SudokuEditActivity;

    invoke-direct {v4, p0, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object v0, p1

    move v3, v2

    move v7, v2

    move-object v8, v5

    .line 218
    invoke-interface/range {v0 .. v8}, Landroid/view/Menu;->addIntentOptions(IIILandroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I[Landroid/view/MenuItem;)I

    .line 221
    return v9
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 190
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 191
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/SudokuEditActivity;->mDatabase:Lcom/nrsmagic/sudoku/db/SudokuDatabase;

    invoke-virtual {v0}, Lcom/nrsmagic/sudoku/db/SudokuDatabase;->close()V

    .line 192
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 226
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 236
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 229
    :pswitch_0
    invoke-virtual {p0}, Lcom/nrsmagic/sudoku/gui/SudokuEditActivity;->finish()V

    goto :goto_0

    .line 232
    :pswitch_1
    const/4 v1, 0x2

    iput v1, p0, Lcom/nrsmagic/sudoku/gui/SudokuEditActivity;->mState:I

    .line 233
    invoke-virtual {p0}, Lcom/nrsmagic/sudoku/gui/SudokuEditActivity;->finish()V

    goto :goto_0

    .line 226
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 181
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 183
    invoke-virtual {p0}, Lcom/nrsmagic/sudoku/gui/SudokuEditActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/nrsmagic/sudoku/gui/SudokuEditActivity;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/SudokuEditActivity;->mGame:Lcom/nrsmagic/sudoku/game/SudokuGame;

    invoke-virtual {v0}, Lcom/nrsmagic/sudoku/game/SudokuGame;->getCells()Lcom/nrsmagic/sudoku/game/CellCollection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nrsmagic/sudoku/game/CellCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 184
    invoke-direct {p0}, Lcom/nrsmagic/sudoku/gui/SudokuEditActivity;->savePuzzle()V

    .line 186
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "outState"

    .prologue
    .line 196
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 198
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/SudokuEditActivity;->mGame:Lcom/nrsmagic/sudoku/game/SudokuGame;

    invoke-virtual {v0, p1}, Lcom/nrsmagic/sudoku/game/SudokuGame;->saveState(Landroid/os/Bundle;)V

    .line 199
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4
    .parameter "hasFocus"

    .prologue
    .line 160
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 162
    if-eqz p1, :cond_0

    .line 165
    iget-boolean v0, p0, Lcom/nrsmagic/sudoku/gui/SudokuEditActivity;->mFullScreen:Z

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/SudokuEditActivity;->mGuiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/nrsmagic/sudoku/gui/SudokuEditActivity$1;

    invoke-direct {v1, p0}, Lcom/nrsmagic/sudoku/gui/SudokuEditActivity$1;-><init>(Lcom/nrsmagic/sudoku/gui/SudokuEditActivity;)V

    .line 172
    const-wide/16 v2, 0x3e8

    .line 166
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 176
    :cond_0
    return-void
.end method
