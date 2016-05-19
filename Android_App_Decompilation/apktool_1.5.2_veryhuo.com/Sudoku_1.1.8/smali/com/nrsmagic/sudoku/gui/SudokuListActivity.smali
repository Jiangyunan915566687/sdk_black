.class public Lcom/nrsmagic/sudoku/gui/SudokuListActivity;
.super Landroid/app/ListActivity;
.source "SudokuListActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nrsmagic/sudoku/gui/SudokuListActivity$SudokuListViewBinder;
    }
.end annotation


# static fields
.field private static final DIALOG_DELETE_PUZZLE:I = 0x0

.field private static final DIALOG_EDIT_NOTE:I = 0x2

.field private static final DIALOG_FILTER:I = 0x3

.field private static final DIALOG_RESET_PUZZLE:I = 0x1

.field public static final EXTRA_FOLDER_ID:Ljava/lang/String; = "folder_id"

.field private static final FILTER_STATE_NOT_STARTED:Ljava/lang/String; = "filter1"

.field private static final FILTER_STATE_PLAYING:Ljava/lang/String; = "filter0"

.field private static final FILTER_STATE_SOLVED:Ljava/lang/String; = "filter2"

.field public static final MENU_ITEM_DELETE:I = 0x3

.field public static final MENU_ITEM_EDIT:I = 0x2

.field public static final MENU_ITEM_EDIT_NOTE:I = 0x6

.field public static final MENU_ITEM_PLAY:I = 0x4

.field public static final MENU_ITEM_RESET:I = 0x5

.field private static final TAG:Ljava/lang/String; = "SudokuListActivity"


# instance fields
.field private mAdapter:Landroid/widget/SimpleCursorAdapter;

.field private mCursor:Landroid/database/Cursor;

.field private mDatabase:Lcom/nrsmagic/sudoku/db/SudokuDatabase;

.field private mDeletePuzzleID:J

.field private mEditNoteInput:Landroid/widget/TextView;

.field private mEditNotePuzzleID:J

.field private mFilterStatus:Landroid/widget/TextView;

.field private mFolderDetailLoader:Lcom/nrsmagic/sudoku/gui/FolderDetailLoader;

.field private mFolderID:J

.field private mListFilter:Lcom/nrsmagic/sudoku/gui/SudokuListFilter;

.field private mResetPuzzleID:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/nrsmagic/sudoku/gui/SudokuListActivity;)Lcom/nrsmagic/sudoku/db/SudokuDatabase;
    .locals 1
    .parameter

    .prologue
    .line 105
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/SudokuListActivity;->mDatabase:Lcom/nrsmagic/sudoku/db/SudokuDatabase;

    return-object v0
.end method

.method static synthetic access$1(Lcom/nrsmagic/sudoku/gui/SudokuListActivity;)J
    .locals 2
    .parameter

    .prologue
    .line 95
    iget-wide v0, p0, Lcom/nrsmagic/sudoku/gui/SudokuListActivity;->mDeletePuzzleID:J

    return-wide v0
.end method

.method static synthetic access$2(Lcom/nrsmagic/sudoku/gui/SudokuListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 439
    invoke-direct {p0}, Lcom/nrsmagic/sudoku/gui/SudokuListActivity;->updateList()V

    return-void
.end method

.method static synthetic access$3(Lcom/nrsmagic/sudoku/gui/SudokuListActivity;)J
    .locals 2
    .parameter

    .prologue
    .line 97
    iget-wide v0, p0, Lcom/nrsmagic/sudoku/gui/SudokuListActivity;->mEditNotePuzzleID:J

    return-wide v0
.end method

.method static synthetic access$4(Lcom/nrsmagic/sudoku/gui/SudokuListActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 98
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/SudokuListActivity;->mEditNoteInput:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$5(Lcom/nrsmagic/sudoku/gui/SudokuListActivity;)J
    .locals 2
    .parameter

    .prologue
    .line 96
    iget-wide v0, p0, Lcom/nrsmagic/sudoku/gui/SudokuListActivity;->mResetPuzzleID:J

    return-wide v0
.end method

.method static synthetic access$6(Lcom/nrsmagic/sudoku/gui/SudokuListActivity;)Lcom/nrsmagic/sudoku/gui/SudokuListFilter;
    .locals 1
    .parameter

    .prologue
    .line 99
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/SudokuListActivity;->mListFilter:Lcom/nrsmagic/sudoku/gui/SudokuListFilter;

    return-object v0
.end method

.method private playSudoku(J)V
    .locals 2
    .parameter "sudokuID"

    .prologue
    .line 475
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 476
    .local v0, i:Landroid/content/Intent;
    const-string v1, "sudoku_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 477
    invoke-virtual {p0, v0}, Lcom/nrsmagic/sudoku/gui/SudokuListActivity;->startActivity(Landroid/content/Intent;)V

    .line 478
    return-void
.end method

.method private updateFilterStatus()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 453
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/SudokuListActivity;->mListFilter:Lcom/nrsmagic/sudoku/gui/SudokuListFilter;

    iget-boolean v0, v0, Lcom/nrsmagic/sudoku/gui/SudokuListFilter;->showStateCompleted:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/SudokuListActivity;->mListFilter:Lcom/nrsmagic/sudoku/gui/SudokuListFilter;

    iget-boolean v0, v0, Lcom/nrsmagic/sudoku/gui/SudokuListFilter;->showStateNotStarted:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/SudokuListActivity;->mListFilter:Lcom/nrsmagic/sudoku/gui/SudokuListFilter;

    iget-boolean v0, v0, Lcom/nrsmagic/sudoku/gui/SudokuListFilter;->showStatePlaying:Z

    if-eqz v0, :cond_0

    .line 454
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/SudokuListActivity;->mFilterStatus:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 459
    :goto_0
    return-void

    .line 456
    :cond_0
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/SudokuListActivity;->mFilterStatus:Landroid/widget/TextView;

    const v1, 0x7f090032

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/nrsmagic/sudoku/gui/SudokuListActivity;->mListFilter:Lcom/nrsmagic/sudoku/gui/SudokuListFilter;

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/nrsmagic/sudoku/gui/SudokuListActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 457
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/SudokuListActivity;->mFilterStatus:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateList()V
    .locals 4

    .prologue
    .line 440
    invoke-direct {p0}, Lcom/nrsmagic/sudoku/gui/SudokuListActivity;->updateTitle()V

    .line 441
    invoke-direct {p0}, Lcom/nrsmagic/sudoku/gui/SudokuListActivity;->updateFilterStatus()V

    .line 443
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/SudokuListActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 444
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/SudokuListActivity;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lcom/nrsmagic/sudoku/gui/SudokuListActivity;->stopManagingCursor(Landroid/database/Cursor;)V

    .line 446
    :cond_0
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/SudokuListActivity;->mDatabase:Lcom/nrsmagic/sudoku/db/SudokuDatabase;

    iget-wide v1, p0, Lcom/nrsmagic/sudoku/gui/SudokuListActivity;->mFolderID:J

    iget-object v3, p0, Lcom/nrsmagic/sudoku/gui/SudokuListActivity;->mListFilter:Lcom/nrsmagic/sudoku/gui/SudokuListFilter;

    invoke-virtual {v0, v1, v2, v3}, Lcom/nrsmagic/sudoku/db/SudokuDatabase;->getSudokuList(JLcom/nrsmagic/sudoku/gui/SudokuListFilter;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/SudokuListActivity;->mCursor:Landroid/database/Cursor;

    .line 447
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/SudokuListActivity;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lcom/nrsmagic/sudoku/gui/SudokuListActivity;->startManagingCursor(Landroid/database/Cursor;)V

    .line 448
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/SudokuListActivity;->mAdapter:Landroid/widget/SimpleCursorAdapter;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/SudokuListActivity;->mCursor:Landroid/database/Cursor;

    invoke-virtual {v0, v1}, Landroid/widget/SimpleCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 449
    return-void
.end method

.method private updateTitle()V
    .locals 5

    .prologue
    .line 462
    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/SudokuListActivity;->mDatabase:Lcom/nrsmagic/sudoku/db/SudokuDatabase;

    iget-wide v2, p0, Lcom/nrsmagic/sudoku/gui/SudokuListActivity;->mFolderID:J

    invoke-virtual {v1, v2, v3}, Lcom/nrsmagic/sudoku/db/SudokuDatabase;->getFolderInfo(J)Lcom/nrsmagic/sudoku/game/FolderInfo;

    move-result-object v0

    .line 463
    .local v0, folder:Lcom/nrsmagic/sudoku/game/FolderInfo;
    iget-object v1, v0, Lcom/nrsmagic/sudoku/game/FolderInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/nrsmagic/sudoku/gui/SudokuListActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 465
    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/SudokuListActivity;->mFolderDetailLoader:Lcom/nrsmagic/sudoku/gui/FolderDetailLoader;

    iget-wide v2, p0, Lcom/nrsmagic/sudoku/gui/SudokuListActivity;->mFolderID:J

    new-instance v4, Lcom/nrsmagic/sudoku/gui/SudokuListActivity$7;

    invoke-direct {v4, p0}, Lcom/nrsmagic/sudoku/gui/SudokuListActivity$7;-><init>(Lcom/nrsmagic/sudoku/gui/SudokuListActivity;)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/nrsmagic/sudoku/gui/FolderDetailLoader;->loadDetailAsync(JLcom/nrsmagic/sudoku/gui/FolderDetailLoader$FolderDetailCallback;)V

    .line 472
    return-void
.end method


# virtual methods
.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .parameter "item"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 375
    :try_start_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v2

    check-cast v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 381
    .local v2, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;,"Landroid/widget/AdapterView$AdapterContextMenuInfo;"
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    move v3, v4

    .line 404
    .end local v2           #info:Landroid/widget/AdapterView$AdapterContextMenuInfo;,"Landroid/widget/AdapterView$AdapterContextMenuInfo;"
    :goto_0
    return v3

    .line 376
    :catch_0
    move-exception v0

    .line 377
    .local v0, e:Ljava/lang/ClassCastException;
    const-string v3, "SudokuListActivity"

    const-string v5, "bad menuInfo"

    invoke-static {v3, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v3, v4

    .line 378
    goto :goto_0

    .line 383
    .end local v0           #e:Ljava/lang/ClassCastException;
    .restart local v2       #info:Landroid/widget/AdapterView$AdapterContextMenuInfo;,"Landroid/widget/AdapterView$AdapterContextMenuInfo;"
    :pswitch_0
    iget-wide v4, v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    invoke-direct {p0, v4, v5}, Lcom/nrsmagic/sudoku/gui/SudokuListActivity;->playSudoku(J)V

    goto :goto_0

    .line 386
    :pswitch_1
    new-instance v1, Landroid/content/Intent;

    const-class v4, Lcom/nrsmagic/sudoku/gui/SudokuEditActivity;

    invoke-direct {v1, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 387
    .local v1, i:Landroid/content/Intent;
    const-string v4, "android.intent.action.EDIT"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 388
    const-string v4, "sudoku_id"

    iget-wide v5, v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    invoke-virtual {v1, v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 389
    invoke-virtual {p0, v1}, Lcom/nrsmagic/sudoku/gui/SudokuListActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 392
    .end local v1           #i:Landroid/content/Intent;
    :pswitch_2
    iget-wide v5, v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    iput-wide v5, p0, Lcom/nrsmagic/sudoku/gui/SudokuListActivity;->mDeletePuzzleID:J

    .line 393
    invoke-virtual {p0, v4}, Lcom/nrsmagic/sudoku/gui/SudokuListActivity;->showDialog(I)V

    goto :goto_0

    .line 396
    :pswitch_3
    iget-wide v4, v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    iput-wide v4, p0, Lcom/nrsmagic/sudoku/gui/SudokuListActivity;->mEditNotePuzzleID:J

    .line 397
    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Lcom/nrsmagic/sudoku/gui/SudokuListActivity;->showDialog(I)V

    goto :goto_0

    .line 400
    :pswitch_4
    iget-wide v4, v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    iput-wide v4, p0, Lcom/nrsmagic/sudoku/gui/SudokuListActivity;->mResetPuzzleID:J

    .line 401
    invoke-virtual {p0, v3}, Lcom/nrsmagic/sudoku/gui/SudokuListActivity;->showDialog(I)V

    goto :goto_0

    .line 381
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    const/4 v10, 0x6

    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 110
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 113
    invoke-static {p0}, Lcom/nrsmagic/sudoku/utils/AndroidUtils;->setThemeFromPreferences(Landroid/content/Context;)V

    .line 115
    const v0, 0x7f03000f

    invoke-virtual {p0, v0}, Lcom/nrsmagic/sudoku/gui/SudokuListActivity;->setContentView(I)V

    .line 116
    const v0, 0x7f08001a

    invoke-virtual {p0, v0}, Lcom/nrsmagic/sudoku/gui/SudokuListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/SudokuListActivity;->mFilterStatus:Landroid/widget/TextView;

    .line 118
    invoke-virtual {p0}, Lcom/nrsmagic/sudoku/gui/SudokuListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 119
    invoke-virtual {p0, v9}, Lcom/nrsmagic/sudoku/gui/SudokuListActivity;->setDefaultKeyMode(I)V

    .line 121
    new-instance v0, Lcom/nrsmagic/sudoku/db/SudokuDatabase;

    invoke-virtual {p0}, Lcom/nrsmagic/sudoku/gui/SudokuListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nrsmagic/sudoku/db/SudokuDatabase;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/SudokuListActivity;->mDatabase:Lcom/nrsmagic/sudoku/db/SudokuDatabase;

    .line 122
    new-instance v0, Lcom/nrsmagic/sudoku/gui/FolderDetailLoader;

    invoke-virtual {p0}, Lcom/nrsmagic/sudoku/gui/SudokuListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nrsmagic/sudoku/gui/FolderDetailLoader;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/SudokuListActivity;->mFolderDetailLoader:Lcom/nrsmagic/sudoku/gui/FolderDetailLoader;

    .line 124
    invoke-virtual {p0}, Lcom/nrsmagic/sudoku/gui/SudokuListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    .line 125
    .local v6, intent:Landroid/content/Intent;
    const-string v0, "folder_id"

    invoke-virtual {v6, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    const-string v0, "folder_id"

    const-wide/16 v1, 0x0

    invoke-virtual {v6, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nrsmagic/sudoku/gui/SudokuListActivity;->mFolderID:J

    .line 133
    invoke-virtual {p0}, Lcom/nrsmagic/sudoku/gui/SudokuListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 134
    .local v7, settings:Landroid/content/SharedPreferences;
    new-instance v0, Lcom/nrsmagic/sudoku/gui/SudokuListFilter;

    invoke-virtual {p0}, Lcom/nrsmagic/sudoku/gui/SudokuListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nrsmagic/sudoku/gui/SudokuListFilter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/SudokuListActivity;->mListFilter:Lcom/nrsmagic/sudoku/gui/SudokuListFilter;

    .line 135
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/SudokuListActivity;->mListFilter:Lcom/nrsmagic/sudoku/gui/SudokuListFilter;

    const-string v1, "filter1"

    invoke-interface {v7, v1, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/nrsmagic/sudoku/gui/SudokuListFilter;->showStateNotStarted:Z

    .line 136
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/SudokuListActivity;->mListFilter:Lcom/nrsmagic/sudoku/gui/SudokuListFilter;

    const-string v1, "filter0"

    invoke-interface {v7, v1, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/nrsmagic/sudoku/gui/SudokuListFilter;->showStatePlaying:Z

    .line 137
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/SudokuListActivity;->mListFilter:Lcom/nrsmagic/sudoku/gui/SudokuListFilter;

    const-string v1, "filter2"

    invoke-interface {v7, v1, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/nrsmagic/sudoku/gui/SudokuListFilter;->showStateCompleted:Z

    .line 139
    new-instance v0, Landroid/widget/SimpleCursorAdapter;

    const v2, 0x7f030010

    .line 140
    const/4 v3, 0x0

    new-array v4, v10, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v5, "data"

    aput-object v5, v4, v1

    const-string v1, "state"

    aput-object v1, v4, v8

    .line 141
    const-string v1, "time"

    aput-object v1, v4, v9

    const/4 v1, 0x3

    const-string v5, "last_played"

    aput-object v5, v4, v1

    const/4 v1, 0x4

    .line 142
    const-string v5, "created"

    aput-object v5, v4, v1

    const/4 v1, 0x5

    const-string v5, "puzzle_note"

    aput-object v5, v4, v1

    .line 143
    new-array v5, v10, [I

    fill-array-data v5, :array_0

    move-object v1, p0

    .line 144
    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 139
    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/SudokuListActivity;->mAdapter:Landroid/widget/SimpleCursorAdapter;

    .line 145
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/SudokuListActivity;->mAdapter:Landroid/widget/SimpleCursorAdapter;

    new-instance v1, Lcom/nrsmagic/sudoku/gui/SudokuListActivity$SudokuListViewBinder;

    invoke-direct {v1, p0}, Lcom/nrsmagic/sudoku/gui/SudokuListActivity$SudokuListViewBinder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/SimpleCursorAdapter;->setViewBinder(Landroid/widget/SimpleCursorAdapter$ViewBinder;)V

    .line 146
    invoke-direct {p0}, Lcom/nrsmagic/sudoku/gui/SudokuListActivity;->updateList()V

    .line 147
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/SudokuListActivity;->mAdapter:Landroid/widget/SimpleCursorAdapter;

    invoke-virtual {p0, v0}, Lcom/nrsmagic/sudoku/gui/SudokuListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 148
    .end local v7           #settings:Landroid/content/SharedPreferences;
    :goto_0
    return-void

    .line 128
    :cond_0
    const-string v0, "SudokuListActivity"

    const-string v1, "No \'folder_id\' extra provided, exiting."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    invoke-virtual {p0}, Lcom/nrsmagic/sudoku/gui/SudokuListActivity;->finish()V

    goto :goto_0

    .line 143
    :array_0
    .array-data 0x4
        0x15t 0x0t 0x8t 0x7ft
        0x1bt 0x0t 0x8t 0x7ft
        0x1ct 0x0t 0x8t 0x7ft
        0x1dt 0x0t 0x8t 0x7ft
        0x1et 0x0t 0x8t 0x7ft
        0x1ft 0x0t 0x8t 0x7ft
    .end array-data
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 11
    .parameter "menu"
    .parameter "view"
    .parameter "menuInfo"

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 349
    :try_start_0
    move-object v0, p3

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 355
    .local v3, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;,"Landroid/widget/AdapterView$AdapterContextMenuInfo;"
    invoke-virtual {p0}, Lcom/nrsmagic/sudoku/gui/SudokuListActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    iget v5, v3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-interface {v4, v5}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/Cursor;

    .line 356
    .local v1, cursor:Landroid/database/Cursor;
    if-nez v1, :cond_0

    .line 369
    .end local v1           #cursor:Landroid/database/Cursor;
    .end local v3           #info:Landroid/widget/AdapterView$AdapterContextMenuInfo;,"Landroid/widget/AdapterView$AdapterContextMenuInfo;"
    :goto_0
    return-void

    .line 350
    :catch_0
    move-exception v2

    .line 351
    .local v2, e:Ljava/lang/ClassCastException;
    const-string v4, "SudokuListActivity"

    const-string v5, "bad menuInfo"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 361
    .end local v2           #e:Ljava/lang/ClassCastException;
    .restart local v1       #cursor:Landroid/database/Cursor;
    .restart local v3       #info:Landroid/widget/AdapterView$AdapterContextMenuInfo;,"Landroid/widget/AdapterView$AdapterContextMenuInfo;"
    :cond_0
    const-string v4, "Puzzle"

    invoke-interface {p1, v4}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 364
    const v4, 0x7f09002e

    invoke-interface {p1, v7, v10, v7, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 365
    const/4 v4, 0x6

    const/4 v5, 0x1

    const v6, 0x7f09000f

    invoke-interface {p1, v7, v4, v5, v6}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 366
    const/4 v4, 0x5

    const v5, 0x7f09002f

    invoke-interface {p1, v7, v4, v8, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 367
    const v4, 0x7f090030

    invoke-interface {p1, v7, v8, v9, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 368
    const v4, 0x7f090031

    invoke-interface {p1, v7, v9, v10, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 9
    .parameter "id"

    .prologue
    const v7, 0x1040013

    const v6, 0x1040009

    const/high16 v8, 0x104

    const/4 v4, 0x0

    .line 234
    invoke-virtual {p0}, Lcom/nrsmagic/sudoku/gui/SudokuListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 235
    .local v2, settings:Landroid/content/SharedPreferences;
    packed-switch p1, :pswitch_data_0

    move-object v3, v4

    .line 327
    :goto_0
    return-object v3

    .line 237
    :pswitch_0
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 238
    const v5, 0x108001d

    .line 237
    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 238
    const-string v5, "Puzzle"

    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 239
    const v5, 0x7f09002c

    .line 238
    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 241
    new-instance v5, Lcom/nrsmagic/sudoku/gui/SudokuListActivity$1;

    invoke-direct {v5, p0}, Lcom/nrsmagic/sudoku/gui/SudokuListActivity$1;-><init>(Lcom/nrsmagic/sudoku/gui/SudokuListActivity;)V

    .line 240
    invoke-virtual {v3, v7, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 247
    invoke-virtual {v3, v6, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    goto :goto_0

    .line 250
    :pswitch_1
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 251
    .local v0, factory:Landroid/view/LayoutInflater;
    const v3, 0x7f030011

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 253
    .local v1, noteView:Landroid/view/View;
    const v3, 0x7f08001f

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/nrsmagic/sudoku/gui/SudokuListActivity;->mEditNoteInput:Landroid/widget/TextView;

    .line 254
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 255
    const v5, 0x1080033

    .line 254
    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 255
    const v5, 0x7f09000f

    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 256
    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v5, 0x7f09000a

    .line 257
    new-instance v6, Lcom/nrsmagic/sudoku/gui/SudokuListActivity$2;

    invoke-direct {v6, p0}, Lcom/nrsmagic/sudoku/gui/SudokuListActivity$2;-><init>(Lcom/nrsmagic/sudoku/gui/SudokuListActivity;)V

    .line 256
    invoke-virtual {v3, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 266
    invoke-virtual {v3, v8, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    goto :goto_0

    .line 268
    .end local v0           #factory:Landroid/view/LayoutInflater;
    .end local v1           #noteView:Landroid/view/View;
    :pswitch_2
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 269
    const v5, 0x108004d

    .line 268
    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 269
    const-string v5, "Puzzle"

    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 270
    const v5, 0x7f09002d

    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 272
    new-instance v5, Lcom/nrsmagic/sudoku/gui/SudokuListActivity$3;

    invoke-direct {v5, p0}, Lcom/nrsmagic/sudoku/gui/SudokuListActivity$3;-><init>(Lcom/nrsmagic/sudoku/gui/SudokuListActivity;)V

    .line 271
    invoke-virtual {v3, v7, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 282
    invoke-virtual {v3, v6, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    goto/16 :goto_0

    .line 284
    :pswitch_3
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 285
    const v4, 0x1080057

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 286
    const v4, 0x7f09002a

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 288
    const/high16 v4, 0x7f06

    .line 289
    const/4 v5, 0x3

    new-array v5, v5, [Z

    const/4 v6, 0x0

    .line 290
    iget-object v7, p0, Lcom/nrsmagic/sudoku/gui/SudokuListActivity;->mListFilter:Lcom/nrsmagic/sudoku/gui/SudokuListFilter;

    iget-boolean v7, v7, Lcom/nrsmagic/sudoku/gui/SudokuListFilter;->showStateNotStarted:Z

    aput-boolean v7, v5, v6

    const/4 v6, 0x1

    .line 291
    iget-object v7, p0, Lcom/nrsmagic/sudoku/gui/SudokuListActivity;->mListFilter:Lcom/nrsmagic/sudoku/gui/SudokuListFilter;

    iget-boolean v7, v7, Lcom/nrsmagic/sudoku/gui/SudokuListFilter;->showStatePlaying:Z

    aput-boolean v7, v5, v6

    const/4 v6, 0x2

    .line 292
    iget-object v7, p0, Lcom/nrsmagic/sudoku/gui/SudokuListActivity;->mListFilter:Lcom/nrsmagic/sudoku/gui/SudokuListFilter;

    iget-boolean v7, v7, Lcom/nrsmagic/sudoku/gui/SudokuListFilter;->showStateCompleted:Z

    aput-boolean v7, v5, v6

    .line 294
    new-instance v6, Lcom/nrsmagic/sudoku/gui/SudokuListActivity$4;

    invoke-direct {v6, p0}, Lcom/nrsmagic/sudoku/gui/SudokuListActivity$4;-><init>(Lcom/nrsmagic/sudoku/gui/SudokuListActivity;)V

    .line 287
    invoke-virtual {v3, v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 310
    const v4, 0x104000a

    new-instance v5, Lcom/nrsmagic/sudoku/gui/SudokuListActivity$5;

    invoke-direct {v5, p0, v2}, Lcom/nrsmagic/sudoku/gui/SudokuListActivity$5;-><init>(Lcom/nrsmagic/sudoku/gui/SudokuListActivity;Landroid/content/SharedPreferences;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 320
    new-instance v4, Lcom/nrsmagic/sudoku/gui/SudokuListActivity$6;

    invoke-direct {v4, p0}, Lcom/nrsmagic/sudoku/gui/SudokuListActivity$6;-><init>(Lcom/nrsmagic/sudoku/gui/SudokuListActivity;)V

    invoke-virtual {v3, v8, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 325
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    goto/16 :goto_0

    .line 235
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 10
    .parameter "menu"

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 201
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 203
    invoke-virtual {p0}, Lcom/nrsmagic/sudoku/gui/SudokuListActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v9

    .line 204
    .local v9, inflater:Landroid/view/MenuInflater;
    const/high16 v0, 0x7f0b

    invoke-virtual {v9, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 222
    new-instance v6, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/nrsmagic/sudoku/gui/SudokuListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v6, v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 223
    .local v6, intent:Landroid/content/Intent;
    const-string v0, "android.intent.category.ALTERNATIVE"

    invoke-virtual {v6, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 224
    const/high16 v1, 0x4

    .line 225
    new-instance v4, Landroid/content/ComponentName;

    const-class v0, Lcom/nrsmagic/sudoku/gui/SudokuListActivity;

    invoke-direct {v4, p0, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object v0, p1

    move v3, v2

    move v7, v2

    move-object v8, v5

    .line 224
    invoke-interface/range {v0 .. v8}, Landroid/view/Menu;->addIntentOptions(IIILandroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I[Landroid/view/MenuItem;)I

    .line 228
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 152
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 154
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/SudokuListActivity;->mDatabase:Lcom/nrsmagic/sudoku/db/SudokuDatabase;

    invoke-virtual {v0}, Lcom/nrsmagic/sudoku/db/SudokuDatabase;->close()V

    .line 155
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/SudokuListActivity;->mFolderDetailLoader:Lcom/nrsmagic/sudoku/gui/FolderDetailLoader;

    invoke-virtual {v0}, Lcom/nrsmagic/sudoku/gui/FolderDetailLoader;->destroy()V

    .line 156
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 188
    invoke-virtual {p0}, Lcom/nrsmagic/sudoku/gui/SudokuListActivity;->isTaskRoot()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    .line 189
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 190
    .local v0, i:Landroid/content/Intent;
    const-class v1, Lcom/nrsmagic/sudoku/gui/FolderListActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 191
    invoke-virtual {p0, v0}, Lcom/nrsmagic/sudoku/gui/SudokuListActivity;->startActivity(Landroid/content/Intent;)V

    .line 192
    invoke-virtual {p0}, Lcom/nrsmagic/sudoku/gui/SudokuListActivity;->finish()V

    .line 193
    const/4 v1, 0x1

    .line 196
    .end local v0           #i:Landroid/content/Intent;
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 0
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 433
    invoke-direct {p0, p4, p5}, Lcom/nrsmagic/sudoku/gui/SudokuListActivity;->playSudoku(J)V

    .line 434
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 409
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 428
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 412
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/nrsmagic/sudoku/gui/SudokuEditActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 413
    .local v0, i:Landroid/content/Intent;
    const-string v2, "android.intent.action.INSERT"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 414
    const-string v2, "folder_id"

    iget-wide v3, p0, Lcom/nrsmagic/sudoku/gui/SudokuListActivity;->mFolderID:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 415
    invoke-virtual {p0, v0}, Lcom/nrsmagic/sudoku/gui/SudokuListActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 419
    .end local v0           #i:Landroid/content/Intent;
    :pswitch_1
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/nrsmagic/sudoku/gui/SudokuListActivity;->showDialog(I)V

    goto :goto_0

    .line 409
    nop

    :pswitch_data_0
    .packed-switch 0x7f080021
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 4
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 332
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 334
    packed-switch p1, :pswitch_data_0

    .line 342
    :goto_0
    return-void

    .line 336
    :pswitch_0
    new-instance v0, Lcom/nrsmagic/sudoku/db/SudokuDatabase;

    invoke-virtual {p0}, Lcom/nrsmagic/sudoku/gui/SudokuListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/nrsmagic/sudoku/db/SudokuDatabase;-><init>(Landroid/content/Context;)V

    .line 337
    .local v0, db:Lcom/nrsmagic/sudoku/db/SudokuDatabase;
    iget-wide v2, p0, Lcom/nrsmagic/sudoku/gui/SudokuListActivity;->mEditNotePuzzleID:J

    invoke-virtual {v0, v2, v3}, Lcom/nrsmagic/sudoku/db/SudokuDatabase;->getSudoku(J)Lcom/nrsmagic/sudoku/game/SudokuGame;

    move-result-object v1

    .line 338
    .local v1, game:Lcom/nrsmagic/sudoku/game/SudokuGame;
    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/SudokuListActivity;->mEditNoteInput:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/nrsmagic/sudoku/game/SudokuGame;->getNote()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 334
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 169
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 171
    const-string v0, "mDeletePuzzleID"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nrsmagic/sudoku/gui/SudokuListActivity;->mDeletePuzzleID:J

    .line 172
    const-string v0, "mResetPuzzleID"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nrsmagic/sudoku/gui/SudokuListActivity;->mResetPuzzleID:J

    .line 173
    const-string v0, "mEditNotePuzzleID"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nrsmagic/sudoku/gui/SudokuListActivity;->mEditNotePuzzleID:J

    .line 174
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 178
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 181
    invoke-direct {p0}, Lcom/nrsmagic/sudoku/gui/SudokuListActivity;->updateTitle()V

    .line 182
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outState"

    .prologue
    .line 160
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 162
    const-string v0, "mDeletePuzzleID"

    iget-wide v1, p0, Lcom/nrsmagic/sudoku/gui/SudokuListActivity;->mDeletePuzzleID:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 163
    const-string v0, "mResetPuzzleID"

    iget-wide v1, p0, Lcom/nrsmagic/sudoku/gui/SudokuListActivity;->mResetPuzzleID:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 164
    const-string v0, "mEditNotePuzzleID"

    iget-wide v1, p0, Lcom/nrsmagic/sudoku/gui/SudokuListActivity;->mEditNotePuzzleID:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 165
    return-void
.end method
