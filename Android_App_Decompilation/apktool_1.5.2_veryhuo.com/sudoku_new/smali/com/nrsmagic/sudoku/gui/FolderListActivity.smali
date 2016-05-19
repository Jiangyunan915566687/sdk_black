.class public Lcom/nrsmagic/sudoku/gui/FolderListActivity;
.super Landroid/app/ListActivity;
.source "FolderListActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nrsmagic/sudoku/gui/FolderListActivity$FolderListViewBinder;
    }
.end annotation


# static fields
.field private static final DIALOG_ABOUT:I = 0x0

.field private static final DIALOG_ADD_FOLDER:I = 0x1

.field private static final DIALOG_DELETE_FOLDER:I = 0x3

.field private static final DIALOG_RENAME_FOLDER:I = 0x2

.field public static final MENU_ITEM_ABOUT:I = 0x4

.field public static final MENU_ITEM_ADD:I = 0x1

.field public static final MENU_ITEM_DELETE:I = 0x3

.field public static final MENU_ITEM_EXPORT:I = 0x5

.field public static final MENU_ITEM_EXPORT_ALL:I = 0x6

.field public static final MENU_ITEM_IMPORT:I = 0x7

.field public static final MENU_ITEM_RENAME:I = 0x2

.field private static final TAG:Ljava/lang/String; = "FolderListActivity"


# instance fields
.field private mAddFolderNameInput:Landroid/widget/TextView;

.field private mCursor:Landroid/database/Cursor;

.field private mDatabase:Lcom/nrsmagic/sudoku/db/SudokuDatabase;

.field private mDeleteFolderID:J

.field private mFolderListBinder:Lcom/nrsmagic/sudoku/gui/FolderListActivity$FolderListViewBinder;

.field private mRenameFolderID:J

.field private mRenameFolderNameInput:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/nrsmagic/sudoku/gui/FolderListActivity;)Lcom/nrsmagic/sudoku/db/SudokuDatabase;
    .locals 1
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/FolderListActivity;->mDatabase:Lcom/nrsmagic/sudoku/db/SudokuDatabase;

    return-object v0
.end method

.method static synthetic access$1(Lcom/nrsmagic/sudoku/gui/FolderListActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/FolderListActivity;->mAddFolderNameInput:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/nrsmagic/sudoku/gui/FolderListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 364
    invoke-direct {p0}, Lcom/nrsmagic/sudoku/gui/FolderListActivity;->updateList()V

    return-void
.end method

.method static synthetic access$3(Lcom/nrsmagic/sudoku/gui/FolderListActivity;)J
    .locals 2
    .parameter

    .prologue
    .line 80
    iget-wide v0, p0, Lcom/nrsmagic/sudoku/gui/FolderListActivity;->mRenameFolderID:J

    return-wide v0
.end method

.method static synthetic access$4(Lcom/nrsmagic/sudoku/gui/FolderListActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/FolderListActivity;->mRenameFolderNameInput:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$5(Lcom/nrsmagic/sudoku/gui/FolderListActivity;)J
    .locals 2
    .parameter

    .prologue
    .line 81
    iget-wide v0, p0, Lcom/nrsmagic/sudoku/gui/FolderListActivity;->mDeleteFolderID:J

    return-wide v0
.end method

.method private updateList()V
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/FolderListActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    .line 366
    return-void
.end method


# virtual methods
.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .parameter "item"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 305
    :try_start_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v1

    check-cast v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 312
    .local v1, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;,"Landroid/widget/AdapterView$AdapterContextMenuInfo;"
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    :pswitch_0
    move v3, v4

    .line 328
    .end local v1           #info:Landroid/widget/AdapterView$AdapterContextMenuInfo;,"Landroid/widget/AdapterView$AdapterContextMenuInfo;"
    :goto_0
    return v3

    .line 306
    :catch_0
    move-exception v0

    .line 307
    .local v0, e:Ljava/lang/ClassCastException;
    const-string v3, "FolderListActivity"

    const-string v5, "bad menuInfo"

    invoke-static {v3, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v3, v4

    .line 308
    goto :goto_0

    .line 314
    .end local v0           #e:Ljava/lang/ClassCastException;
    .restart local v1       #info:Landroid/widget/AdapterView$AdapterContextMenuInfo;,"Landroid/widget/AdapterView$AdapterContextMenuInfo;"
    :pswitch_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 315
    .local v2, intent:Landroid/content/Intent;
    const-class v4, Lcom/nrsmagic/sudoku/gui/SudokuExportActivity;

    invoke-virtual {v2, p0, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 316
    const-string v4, "FOLDER_ID"

    iget-wide v5, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    invoke-virtual {v2, v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 317
    invoke-virtual {p0, v2}, Lcom/nrsmagic/sudoku/gui/FolderListActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 320
    .end local v2           #intent:Landroid/content/Intent;
    :pswitch_2
    iget-wide v4, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    iput-wide v4, p0, Lcom/nrsmagic/sudoku/gui/FolderListActivity;->mRenameFolderID:J

    .line 321
    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Lcom/nrsmagic/sudoku/gui/FolderListActivity;->showDialog(I)V

    goto :goto_0

    .line 324
    :pswitch_3
    iget-wide v4, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    iput-wide v4, p0, Lcom/nrsmagic/sudoku/gui/FolderListActivity;->mDeleteFolderID:J

    .line 325
    const/4 v4, 0x3

    invoke-virtual {p0, v4}, Lcom/nrsmagic/sudoku/gui/FolderListActivity;->showDialog(I)V

    goto :goto_0

    .line 312
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x2

    .line 85
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 87
    const v1, 0x7f030003

    invoke-virtual {p0, v1}, Lcom/nrsmagic/sudoku/gui/FolderListActivity;->setContentView(I)V

    .line 91
    invoke-virtual {p0, v6}, Lcom/nrsmagic/sudoku/gui/FolderListActivity;->setDefaultKeyMode(I)V

    .line 93
    invoke-virtual {p0}, Lcom/nrsmagic/sudoku/gui/FolderListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 105
    new-instance v1, Lcom/nrsmagic/sudoku/db/SudokuDatabase;

    invoke-virtual {p0}, Lcom/nrsmagic/sudoku/gui/FolderListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/nrsmagic/sudoku/db/SudokuDatabase;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/nrsmagic/sudoku/gui/FolderListActivity;->mDatabase:Lcom/nrsmagic/sudoku/db/SudokuDatabase;

    .line 106
    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/FolderListActivity;->mDatabase:Lcom/nrsmagic/sudoku/db/SudokuDatabase;

    invoke-virtual {v1}, Lcom/nrsmagic/sudoku/db/SudokuDatabase;->getFolderList()Landroid/database/Cursor;

    move-result-object v1

    iput-object v1, p0, Lcom/nrsmagic/sudoku/gui/FolderListActivity;->mCursor:Landroid/database/Cursor;

    .line 107
    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/FolderListActivity;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v1}, Lcom/nrsmagic/sudoku/gui/FolderListActivity;->startManagingCursor(Landroid/database/Cursor;)V

    .line 108
    new-instance v0, Landroid/widget/SimpleCursorAdapter;

    const v2, 0x7f030004

    .line 109
    iget-object v3, p0, Lcom/nrsmagic/sudoku/gui/FolderListActivity;->mCursor:Landroid/database/Cursor;

    new-array v4, v6, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v5, "name"

    aput-object v5, v4, v1

    const/4 v1, 0x1

    const-string v5, "_id"

    aput-object v5, v4, v1

    .line 110
    new-array v5, v6, [I

    fill-array-data v5, :array_0

    move-object v1, p0

    .line 108
    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 111
    .local v0, adapter:Landroid/widget/SimpleCursorAdapter;
    new-instance v1, Lcom/nrsmagic/sudoku/gui/FolderListActivity$FolderListViewBinder;

    invoke-direct {v1, p0}, Lcom/nrsmagic/sudoku/gui/FolderListActivity$FolderListViewBinder;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/nrsmagic/sudoku/gui/FolderListActivity;->mFolderListBinder:Lcom/nrsmagic/sudoku/gui/FolderListActivity$FolderListViewBinder;

    .line 112
    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/FolderListActivity;->mFolderListBinder:Lcom/nrsmagic/sudoku/gui/FolderListActivity$FolderListViewBinder;

    invoke-virtual {v0, v1}, Landroid/widget/SimpleCursorAdapter;->setViewBinder(Landroid/widget/SimpleCursorAdapter$ViewBinder;)V

    .line 114
    invoke-virtual {p0, v0}, Lcom/nrsmagic/sudoku/gui/FolderListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 120
    return-void

    .line 110
    :array_0
    .array-data 0x4
        0x2t 0x0t 0x8t 0x7ft
        0x3t 0x0t 0x8t 0x7ft
    .end array-data
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 8
    .parameter "menu"
    .parameter "view"
    .parameter "menuInfo"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 190
    :try_start_0
    move-object v0, p3

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    .local v3, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;,"Landroid/widget/AdapterView$AdapterContextMenuInfo;"
    invoke-virtual {p0}, Lcom/nrsmagic/sudoku/gui/FolderListActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    iget v5, v3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-interface {v4, v5}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/Cursor;

    .line 197
    .local v1, cursor:Landroid/database/Cursor;
    if-nez v1, :cond_0

    .line 206
    .end local v1           #cursor:Landroid/database/Cursor;
    .end local v3           #info:Landroid/widget/AdapterView$AdapterContextMenuInfo;,"Landroid/widget/AdapterView$AdapterContextMenuInfo;"
    :goto_0
    return-void

    .line 191
    :catch_0
    move-exception v2

    .line 192
    .local v2, e:Ljava/lang/ClassCastException;
    const-string v4, "FolderListActivity"

    const-string v5, "bad menuInfo"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 201
    .end local v2           #e:Ljava/lang/ClassCastException;
    .restart local v1       #cursor:Landroid/database/Cursor;
    .restart local v3       #info:Landroid/widget/AdapterView$AdapterContextMenuInfo;,"Landroid/widget/AdapterView$AdapterContextMenuInfo;"
    :cond_0
    const-string v4, "name"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 203
    const/4 v4, 0x5

    const v5, 0x7f090069

    invoke-interface {p1, v6, v4, v6, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 204
    const/4 v4, 0x1

    const v5, 0x7f090014

    invoke-interface {p1, v6, v7, v4, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 205
    const/4 v4, 0x3

    const v5, 0x7f090015

    invoke-interface {p1, v6, v4, v7, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 11
    .parameter "id"

    .prologue
    const v10, 0x7f09000a

    const v8, 0x7f080002

    const v6, 0x7f030005

    const/high16 v9, 0x104

    const/4 v7, 0x0

    .line 210
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 212
    .local v2, factory:Landroid/view/LayoutInflater;
    packed-switch p1, :pswitch_data_0

    move-object v6, v7

    .line 273
    :goto_0
    return-object v6

    .line 214
    :pswitch_0
    const/high16 v6, 0x7f03

    invoke-virtual {v2, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 215
    .local v0, aboutView:Landroid/view/View;
    const v6, 0x7f080001

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 216
    .local v4, versionLabel:Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/nrsmagic/sudoku/gui/FolderListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/nrsmagic/sudoku/utils/AndroidUtils;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 217
    .local v5, versionName:Ljava/lang/String;
    const v6, 0x7f090003

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v5, v8, v9

    invoke-virtual {p0, v6, v8}, Lcom/nrsmagic/sudoku/gui/FolderListActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 219
    const v8, 0x7f02000f

    invoke-virtual {v6, v8}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 220
    const/high16 v8, 0x7f09

    invoke-virtual {v6, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 221
    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 222
    const-string v8, "OK"

    invoke-virtual {v6, v8, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 223
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    goto :goto_0

    .line 225
    .end local v0           #aboutView:Landroid/view/View;
    .end local v4           #versionLabel:Landroid/widget/TextView;
    .end local v5           #versionName:Ljava/lang/String;
    :pswitch_1
    invoke-virtual {v2, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 226
    .local v1, addFolderView:Landroid/view/View;
    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/nrsmagic/sudoku/gui/FolderListActivity;->mAddFolderNameInput:Landroid/widget/TextView;

    .line 227
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 228
    const v8, 0x1080033

    invoke-virtual {v6, v8}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 229
    const v8, 0x7f090010

    invoke-virtual {v6, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 230
    invoke-virtual {v6, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 231
    new-instance v8, Lcom/nrsmagic/sudoku/gui/FolderListActivity$1;

    invoke-direct {v8, p0}, Lcom/nrsmagic/sudoku/gui/FolderListActivity$1;-><init>(Lcom/nrsmagic/sudoku/gui/FolderListActivity;)V

    invoke-virtual {v6, v10, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 237
    invoke-virtual {v6, v9, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 238
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    goto :goto_0

    .line 240
    .end local v1           #addFolderView:Landroid/view/View;
    :pswitch_2
    invoke-virtual {v2, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 241
    .local v3, renameFolderView:Landroid/view/View;
    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/nrsmagic/sudoku/gui/FolderListActivity;->mRenameFolderNameInput:Landroid/widget/TextView;

    .line 243
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 244
    const v8, 0x108003e

    invoke-virtual {v6, v8}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 245
    const v8, 0x7f090016

    invoke-virtual {v6, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 246
    invoke-virtual {v6, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 247
    new-instance v8, Lcom/nrsmagic/sudoku/gui/FolderListActivity$2;

    invoke-direct {v8, p0}, Lcom/nrsmagic/sudoku/gui/FolderListActivity$2;-><init>(Lcom/nrsmagic/sudoku/gui/FolderListActivity;)V

    invoke-virtual {v6, v10, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 253
    invoke-virtual {v6, v9, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 254
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    goto/16 :goto_0

    .line 256
    .end local v3           #renameFolderView:Landroid/view/View;
    :pswitch_3
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 257
    const v8, 0x108001d

    invoke-virtual {v6, v8}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 258
    const v8, 0x7f090017

    invoke-virtual {v6, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 259
    const v8, 0x7f090018

    invoke-virtual {v6, v8}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 260
    const v8, 0x1040013

    new-instance v9, Lcom/nrsmagic/sudoku/gui/FolderListActivity$3;

    invoke-direct {v9, p0}, Lcom/nrsmagic/sudoku/gui/FolderListActivity$3;-><init>(Lcom/nrsmagic/sudoku/gui/FolderListActivity;)V

    invoke-virtual {v6, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 267
    const v8, 0x1040009

    invoke-virtual {v6, v8, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 268
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    goto/16 :goto_0

    .line 212
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 154
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 182
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 131
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 132
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/FolderListActivity;->mDatabase:Lcom/nrsmagic/sudoku/db/SudokuDatabase;

    invoke-virtual {v0}, Lcom/nrsmagic/sudoku/db/SudokuDatabase;->close()V

    .line 133
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/FolderListActivity;->mFolderListBinder:Lcom/nrsmagic/sudoku/gui/FolderListActivity$FolderListViewBinder;

    invoke-virtual {v0}, Lcom/nrsmagic/sudoku/gui/FolderListActivity$FolderListViewBinder;->destroy()V

    .line 134
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 2
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 359
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/nrsmagic/sudoku/gui/SudokuListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 360
    .local v0, i:Landroid/content/Intent;
    const-string v1, "folder_id"

    invoke-virtual {v0, v1, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 361
    invoke-virtual {p0, v0}, Lcom/nrsmagic/sudoku/gui/FolderListActivity;->startActivity(Landroid/content/Intent;)V

    .line 362
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 334
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 354
    :pswitch_0
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 336
    :pswitch_1
    invoke-virtual {p0, v1}, Lcom/nrsmagic/sudoku/gui/FolderListActivity;->showDialog(I)V

    goto :goto_0

    .line 339
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 340
    .local v0, intent:Landroid/content/Intent;
    const-class v2, Lcom/nrsmagic/sudoku/gui/FileListActivity;

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 341
    const-string v2, "FOLDER_NAME"

    const-string v3, "/sdcard"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 342
    invoke-virtual {p0, v0}, Lcom/nrsmagic/sudoku/gui/FolderListActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 345
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 346
    .restart local v0       #intent:Landroid/content/Intent;
    const-class v2, Lcom/nrsmagic/sudoku/gui/SudokuExportActivity;

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 347
    const-string v2, "FOLDER_ID"

    const-wide/16 v3, -0x1

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 348
    invoke-virtual {p0, v0}, Lcom/nrsmagic/sudoku/gui/FolderListActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 351
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_4
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/nrsmagic/sudoku/gui/FolderListActivity;->showDialog(I)V

    goto :goto_0

    .line 334
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 7
    .parameter "id"
    .parameter "dialog"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 278
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 280
    packed-switch p1, :pswitch_data_0

    .line 299
    :goto_0
    :pswitch_0
    return-void

    .line 285
    :pswitch_1
    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/FolderListActivity;->mDatabase:Lcom/nrsmagic/sudoku/db/SudokuDatabase;

    iget-wide v3, p0, Lcom/nrsmagic/sudoku/gui/FolderListActivity;->mRenameFolderID:J

    invoke-virtual {v2, v3, v4}, Lcom/nrsmagic/sudoku/db/SudokuDatabase;->getFolderInfo(J)Lcom/nrsmagic/sudoku/game/FolderInfo;

    move-result-object v0

    .line 286
    .local v0, folder:Lcom/nrsmagic/sudoku/game/FolderInfo;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/nrsmagic/sudoku/game/FolderInfo;->name:Ljava/lang/String;

    .line 287
    .local v1, folderName:Ljava/lang/String;
    :goto_1
    const v2, 0x7f090016

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v1, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/nrsmagic/sudoku/gui/FolderListActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 288
    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/FolderListActivity;->mRenameFolderNameInput:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 286
    .end local v1           #folderName:Ljava/lang/String;
    :cond_0
    const-string v1, ""

    goto :goto_1

    .line 293
    .end local v0           #folder:Lcom/nrsmagic/sudoku/game/FolderInfo;
    :pswitch_2
    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/FolderListActivity;->mDatabase:Lcom/nrsmagic/sudoku/db/SudokuDatabase;

    iget-wide v3, p0, Lcom/nrsmagic/sudoku/gui/FolderListActivity;->mDeleteFolderID:J

    invoke-virtual {v2, v3, v4}, Lcom/nrsmagic/sudoku/db/SudokuDatabase;->getFolderInfo(J)Lcom/nrsmagic/sudoku/game/FolderInfo;

    move-result-object v0

    .line 294
    .restart local v0       #folder:Lcom/nrsmagic/sudoku/game/FolderInfo;
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/nrsmagic/sudoku/game/FolderInfo;->name:Ljava/lang/String;

    .line 295
    .restart local v1       #folderName:Ljava/lang/String;
    :goto_2
    const v2, 0x7f090017

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v1, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/nrsmagic/sudoku/gui/FolderListActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 294
    .end local v1           #folderName:Ljava/lang/String;
    :cond_1
    const-string v1, ""

    goto :goto_2

    .line 280
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 146
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 148
    const-string v0, "mRenameFolderID"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nrsmagic/sudoku/gui/FolderListActivity;->mRenameFolderID:J

    .line 149
    const-string v0, "mDeleteFolderID"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nrsmagic/sudoku/gui/FolderListActivity;->mDeleteFolderID:J

    .line 150
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outState"

    .prologue
    .line 138
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 140
    const-string v0, "mRenameFolderID"

    iget-wide v1, p0, Lcom/nrsmagic/sudoku/gui/FolderListActivity;->mRenameFolderID:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 141
    const-string v0, "mDeleteFolderID"

    iget-wide v1, p0, Lcom/nrsmagic/sudoku/gui/FolderListActivity;->mDeleteFolderID:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 142
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 124
    invoke-super {p0}, Landroid/app/ListActivity;->onStart()V

    .line 126
    invoke-direct {p0}, Lcom/nrsmagic/sudoku/gui/FolderListActivity;->updateList()V

    .line 127
    return-void
.end method
