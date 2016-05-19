.class public Lcom/nrsmagic/sudoku/gui/FileListActivity;
.super Landroid/app/ListActivity;
.source "FileListActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nrsmagic/sudoku/gui/FileListActivity$FileListViewBinder;
    }
.end annotation


# static fields
.field private static final DIALOG_IMPORT_FILE:I = 0x0

.field public static final EXTRA_FOLDER_NAME:Ljava/lang/String; = "FOLDER_NAME"

.field public static final ITEM_KEY_DETAIL:Ljava/lang/String; = "detail"

.field public static final ITEM_KEY_FILE:Ljava/lang/String; = "file"

.field public static final ITEM_KEY_NAME:Ljava/lang/String; = "name"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDirectory:Ljava/lang/String;

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSelectedFile:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 67
    iput-object p0, p0, Lcom/nrsmagic/sudoku/gui/FileListActivity;->mContext:Landroid/content/Context;

    .line 54
    return-void
.end method

.method static synthetic access$0(Lcom/nrsmagic/sudoku/gui/FileListActivity;)Ljava/io/File;
    .locals 1
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/FileListActivity;->mSelectedFile:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$1(Lcom/nrsmagic/sudoku/gui/FileListActivity;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/FileListActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 20
    .parameter "savedInstanceState"

    .prologue
    .line 71
    invoke-super/range {p0 .. p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 73
    const v3, 0x7f030001

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/nrsmagic/sudoku/gui/FileListActivity;->setContentView(I)V

    .line 75
    const/4 v3, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/nrsmagic/sudoku/gui/FileListActivity;->setDefaultKeyMode(I)V

    .line 77
    invoke-virtual/range {p0 .. p0}, Lcom/nrsmagic/sudoku/gui/FileListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 79
    invoke-virtual/range {p0 .. p0}, Lcom/nrsmagic/sudoku/gui/FileListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v13

    .line 80
    .local v13, intent:Landroid/content/Intent;
    const-string v3, "FOLDER_NAME"

    invoke-virtual {v13, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 81
    .local v14, mDirectory:Ljava/lang/String;
    new-instance v16, Ljava/io/File;

    move-object/from16 v0, v16

    invoke-direct {v0, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 83
    .local v16, selected_dir:Ljava/io/File;
    new-instance v3, Lcom/nrsmagic/sudoku/gui/FileListActivity$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/nrsmagic/sudoku/gui/FileListActivity$1;-><init>(Lcom/nrsmagic/sudoku/gui/FileListActivity;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v10

    .line 90
    .local v10, dirs:[Ljava/io/File;
    new-instance v3, Lcom/nrsmagic/sudoku/gui/FileListActivity$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/nrsmagic/sudoku/gui/FileListActivity$2;-><init>(Lcom/nrsmagic/sudoku/gui/FileListActivity;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v12

    .line 97
    .local v12, files:[Ljava/io/File;
    invoke-static {v10}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 98
    invoke-static {v12}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 100
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/nrsmagic/sudoku/gui/FileListActivity;->mList:Ljava/util/List;

    .line 101
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 102
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 103
    .local v15, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "file"

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-interface {v15, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    const-string v3, "name"

    const-string v4, ".."

    invoke-interface {v15, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nrsmagic/sudoku/gui/FileListActivity;->mList:Ljava/util/List;

    invoke-interface {v3, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    .end local v15           #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    array-length v4, v10

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v4, :cond_1

    .line 113
    invoke-static/range {p0 .. p0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v9

    .line 114
    .local v9, dateFormat:Ljava/text/DateFormat;
    invoke-static/range {p0 .. p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v17

    .line 115
    .local v17, timeFormat:Ljava/text/DateFormat;
    array-length v4, v12

    const/4 v3, 0x0

    :goto_1
    if-lt v3, v4, :cond_2

    .line 123
    const/4 v3, 0x2

    new-array v6, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "name"

    aput-object v4, v6, v3

    const/4 v3, 0x1

    const-string v4, "detail"

    aput-object v4, v6, v3

    .line 124
    .local v6, from:[Ljava/lang/String;
    const/4 v3, 0x2

    new-array v7, v3, [I

    fill-array-data v7, :array_0

    .line 126
    .local v7, to:[I
    new-instance v2, Landroid/widget/SimpleAdapter;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nrsmagic/sudoku/gui/FileListActivity;->mList:Ljava/util/List;

    const v5, 0x7f030004

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 127
    .local v2, adapter:Landroid/widget/SimpleAdapter;
    new-instance v3, Lcom/nrsmagic/sudoku/gui/FileListActivity$FileListViewBinder;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/nrsmagic/sudoku/gui/FileListActivity$FileListViewBinder;-><init>(Lcom/nrsmagic/sudoku/gui/FileListActivity$FileListViewBinder;)V

    invoke-virtual {v2, v3}, Landroid/widget/SimpleAdapter;->setViewBinder(Landroid/widget/SimpleAdapter$ViewBinder;)V

    .line 128
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/nrsmagic/sudoku/gui/FileListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 129
    return-void

    .line 107
    .end local v2           #adapter:Landroid/widget/SimpleAdapter;
    .end local v6           #from:[Ljava/lang/String;
    .end local v7           #to:[I
    .end local v9           #dateFormat:Ljava/text/DateFormat;
    .end local v17           #timeFormat:Ljava/text/DateFormat;
    :cond_1
    aget-object v11, v10, v3

    .line 108
    .local v11, f:Ljava/io/File;
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 109
    .restart local v15       #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v5, "file"

    invoke-interface {v15, v5, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    const-string v5, "name"

    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v15, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nrsmagic/sudoku/gui/FileListActivity;->mList:Ljava/util/List;

    invoke-interface {v5, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 115
    .end local v11           #f:Ljava/io/File;
    .end local v15           #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v9       #dateFormat:Ljava/text/DateFormat;
    .restart local v17       #timeFormat:Ljava/text/DateFormat;
    :cond_2
    aget-object v11, v12, v3

    .line 116
    .restart local v11       #f:Ljava/io/File;
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 117
    .restart local v15       #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v5, "file"

    invoke-interface {v15, v5, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    const-string v5, "name"

    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v15, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    new-instance v8, Ljava/util/Date;

    invoke-virtual {v11}, Ljava/io/File;->lastModified()J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-direct {v8, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 120
    .local v8, date:Ljava/util/Date;
    const-string v5, "detail"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v15, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nrsmagic/sudoku/gui/FileListActivity;->mList:Ljava/util/List;

    invoke-interface {v5, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 124
    :array_0
    .array-data 0x4
        0x2t 0x0t 0x8t 0x7ft
        0x3t 0x0t 0x8t 0x7ft
    .end array-data
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter "id"

    .prologue
    const/4 v0, 0x0

    const v3, 0x7f090011

    .line 157
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 158
    packed-switch p1, :pswitch_data_0

    .line 178
    :goto_0
    return-object v0

    .line 160
    :pswitch_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 161
    const v2, 0x1080055

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 162
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 163
    new-instance v2, Lcom/nrsmagic/sudoku/gui/FileListActivity$3;

    invoke-direct {v2, p0}, Lcom/nrsmagic/sudoku/gui/FileListActivity$3;-><init>(Lcom/nrsmagic/sudoku/gui/FileListActivity;)V

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 174
    const/high16 v2, 0x104

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 175
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 158
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 138
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 139
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 4
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 194
    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/FileListActivity;->mList:Ljava/util/List;

    long-to-int v3, p4

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    const-string v3, "file"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 195
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 196
    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/FileListActivity;->mSelectedFile:Ljava/io/File;

    .line 197
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/nrsmagic/sudoku/gui/FileListActivity;->showDialog(I)V

    .line 205
    :cond_0
    :goto_0
    return-void

    .line 198
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 199
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 200
    .local v1, intent:Landroid/content/Intent;
    const-class v2, Lcom/nrsmagic/sudoku/gui/FileListActivity;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 201
    const-string v2, "FOLDER_NAME"

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 202
    invoke-virtual {p0, v1}, Lcom/nrsmagic/sudoku/gui/FileListActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 4
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 183
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 185
    packed-switch p1, :pswitch_data_0

    .line 190
    :goto_0
    return-void

    .line 187
    :pswitch_0
    const v0, 0x7f090012

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/nrsmagic/sudoku/gui/FileListActivity;->mSelectedFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/nrsmagic/sudoku/gui/FileListActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 185
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "state"

    .prologue
    .line 150
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 152
    const-string v0, "mDirectory"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/FileListActivity;->mDirectory:Ljava/lang/String;

    .line 153
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 143
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 145
    const-string v0, "mDirectory"

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/FileListActivity;->mDirectory:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 133
    invoke-super {p0}, Landroid/app/ListActivity;->onStart()V

    .line 134
    return-void
.end method
