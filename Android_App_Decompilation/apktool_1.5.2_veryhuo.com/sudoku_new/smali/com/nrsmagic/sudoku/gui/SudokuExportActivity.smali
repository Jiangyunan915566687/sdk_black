.class public Lcom/nrsmagic/sudoku/gui/SudokuExportActivity;
.super Landroid/app/Activity;
.source "SudokuExportActivity.java"


# static fields
.field public static final ALL_FOLDERS:J = -0x1L

.field private static final DIALOG_FILE_EXISTS:I = 0x1

.field private static final DIALOG_PROGRESS:I = 0x2

.field public static final EXTRA_FOLDER_ID:Ljava/lang/String; = "FOLDER_ID"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDirectoryEdit:Landroid/widget/EditText;

.field private mExportParams:Lcom/nrsmagic/sudoku/gui/exporting/FileExportTaskParams;

.field private mFileExportTask:Lcom/nrsmagic/sudoku/gui/exporting/FileExportTask;

.field private mFileNameEdit:Landroid/widget/EditText;

.field private mOnSaveClickListener:Landroid/view/View$OnClickListener;

.field private mSaveButton:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lcom/nrsmagic/sudoku/gui/SudokuExportActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nrsmagic/sudoku/gui/SudokuExportActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 100
    new-instance v0, Lcom/nrsmagic/sudoku/gui/SudokuExportActivity$1;

    invoke-direct {v0, p0}, Lcom/nrsmagic/sudoku/gui/SudokuExportActivity$1;-><init>(Lcom/nrsmagic/sudoku/gui/SudokuExportActivity;)V

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/SudokuExportActivity;->mOnSaveClickListener:Landroid/view/View$OnClickListener;

    .line 28
    return-void
.end method

.method static synthetic access$0(Lcom/nrsmagic/sudoku/gui/SudokuExportActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/nrsmagic/sudoku/gui/SudokuExportActivity;->exportToFile()V

    return-void
.end method

.method static synthetic access$1(Lcom/nrsmagic/sudoku/gui/SudokuExportActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 153
    invoke-direct {p0}, Lcom/nrsmagic/sudoku/gui/SudokuExportActivity;->startExportToFileTask()V

    return-void
.end method

.method private exportToFile()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 136
    new-instance v3, Ljava/io/File;

    const-string v4, "/sdcard"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 137
    .local v3, sdcard:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 138
    const v4, 0x7f090078

    invoke-static {p0, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 139
    invoke-virtual {p0}, Lcom/nrsmagic/sudoku/gui/SudokuExportActivity;->finish()V

    .line 142
    :cond_0
    iget-object v4, p0, Lcom/nrsmagic/sudoku/gui/SudokuExportActivity;->mDirectoryEdit:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 143
    .local v0, directory:Ljava/lang/String;
    iget-object v4, p0, Lcom/nrsmagic/sudoku/gui/SudokuExportActivity;->mFileNameEdit:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    .line 145
    .local v2, filename:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ".opensudoku"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 147
    invoke-virtual {p0, v6}, Lcom/nrsmagic/sudoku/gui/SudokuExportActivity;->showDialog(I)V

    .line 151
    :goto_0
    return-void

    .line 149
    :cond_1
    invoke-direct {p0}, Lcom/nrsmagic/sudoku/gui/SudokuExportActivity;->startExportToFileTask()V

    goto :goto_0
.end method

.method private startExportToFileTask()V
    .locals 6

    .prologue
    .line 154
    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/SudokuExportActivity;->mFileExportTask:Lcom/nrsmagic/sudoku/gui/exporting/FileExportTask;

    new-instance v3, Lcom/nrsmagic/sudoku/gui/SudokuExportActivity$3;

    invoke-direct {v3, p0}, Lcom/nrsmagic/sudoku/gui/SudokuExportActivity$3;-><init>(Lcom/nrsmagic/sudoku/gui/SudokuExportActivity;)V

    invoke-virtual {v2, v3}, Lcom/nrsmagic/sudoku/gui/exporting/FileExportTask;->setOnExportFinishedListener(Lcom/nrsmagic/sudoku/gui/exporting/FileExportTask$OnExportFinishedListener;)V

    .line 169
    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/SudokuExportActivity;->mDirectoryEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 170
    .local v0, directory:Ljava/lang/String;
    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/SudokuExportActivity;->mFileNameEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 172
    .local v1, filename:Ljava/lang/String;
    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/SudokuExportActivity;->mExportParams:Lcom/nrsmagic/sudoku/gui/exporting/FileExportTaskParams;

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ".opensudoku"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, v2, Lcom/nrsmagic/sudoku/gui/exporting/FileExportTaskParams;->file:Ljava/io/File;

    .line 174
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/nrsmagic/sudoku/gui/SudokuExportActivity;->showDialog(I)V

    .line 175
    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/SudokuExportActivity;->mFileExportTask:Lcom/nrsmagic/sudoku/gui/exporting/FileExportTask;

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/nrsmagic/sudoku/gui/exporting/FileExportTaskParams;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/nrsmagic/sudoku/gui/SudokuExportActivity;->mExportParams:Lcom/nrsmagic/sudoku/gui/exporting/FileExportTaskParams;

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Lcom/nrsmagic/sudoku/gui/exporting/FileExportTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 177
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    const-wide/16 v8, -0x1

    .line 55
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    const v5, 0x7f03000e

    invoke-virtual {p0, v5}, Lcom/nrsmagic/sudoku/gui/SudokuExportActivity;->setContentView(I)V

    .line 59
    const v5, 0x7f080017

    invoke-virtual {p0, v5}, Lcom/nrsmagic/sudoku/gui/SudokuExportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/nrsmagic/sudoku/gui/SudokuExportActivity;->mFileNameEdit:Landroid/widget/EditText;

    .line 60
    const v5, 0x7f080018

    invoke-virtual {p0, v5}, Lcom/nrsmagic/sudoku/gui/SudokuExportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/nrsmagic/sudoku/gui/SudokuExportActivity;->mDirectoryEdit:Landroid/widget/EditText;

    .line 61
    const v5, 0x7f080019

    invoke-virtual {p0, v5}, Lcom/nrsmagic/sudoku/gui/SudokuExportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/nrsmagic/sudoku/gui/SudokuExportActivity;->mSaveButton:Landroid/widget/Button;

    .line 62
    iget-object v5, p0, Lcom/nrsmagic/sudoku/gui/SudokuExportActivity;->mSaveButton:Landroid/widget/Button;

    iget-object v6, p0, Lcom/nrsmagic/sudoku/gui/SudokuExportActivity;->mOnSaveClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    new-instance v5, Lcom/nrsmagic/sudoku/gui/exporting/FileExportTask;

    invoke-direct {v5, p0}, Lcom/nrsmagic/sudoku/gui/exporting/FileExportTask;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/nrsmagic/sudoku/gui/SudokuExportActivity;->mFileExportTask:Lcom/nrsmagic/sudoku/gui/exporting/FileExportTask;

    .line 65
    new-instance v5, Lcom/nrsmagic/sudoku/gui/exporting/FileExportTaskParams;

    invoke-direct {v5}, Lcom/nrsmagic/sudoku/gui/exporting/FileExportTaskParams;-><init>()V

    iput-object v5, p0, Lcom/nrsmagic/sudoku/gui/SudokuExportActivity;->mExportParams:Lcom/nrsmagic/sudoku/gui/exporting/FileExportTaskParams;

    .line 67
    invoke-virtual {p0}, Lcom/nrsmagic/sudoku/gui/SudokuExportActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 68
    .local v3, intent:Landroid/content/Intent;
    const-string v5, "FOLDER_ID"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 69
    iget-object v5, p0, Lcom/nrsmagic/sudoku/gui/SudokuExportActivity;->mExportParams:Lcom/nrsmagic/sudoku/gui/exporting/FileExportTaskParams;

    const-string v6, "FOLDER_ID"

    invoke-virtual {v3, v6, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iput-object v6, v5, Lcom/nrsmagic/sudoku/gui/exporting/FileExportTaskParams;->folderID:Ljava/lang/Long;

    .line 78
    const/4 v1, 0x0

    .line 79
    .local v1, fileName:Ljava/lang/String;
    const-string v5, "yyyy-MM-dd"

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-static {v5, v6}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 80
    .local v4, timestamp:Ljava/lang/String;
    iget-object v5, p0, Lcom/nrsmagic/sudoku/gui/SudokuExportActivity;->mExportParams:Lcom/nrsmagic/sudoku/gui/exporting/FileExportTaskParams;

    iget-object v5, v5, Lcom/nrsmagic/sudoku/gui/exporting/FileExportTaskParams;->folderID:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v5, v5, v8

    if-nez v5, :cond_1

    .line 81
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "all-folders-"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 93
    :goto_0
    iget-object v5, p0, Lcom/nrsmagic/sudoku/gui/SudokuExportActivity;->mFileNameEdit:Landroid/widget/EditText;

    invoke-virtual {v5, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 98
    .end local v1           #fileName:Ljava/lang/String;
    .end local v4           #timestamp:Ljava/lang/String;
    :goto_1
    return-void

    .line 73
    :cond_0
    sget-object v5, Lcom/nrsmagic/sudoku/gui/SudokuExportActivity;->TAG:Ljava/lang/String;

    const-string v6, "No \'FOLDER_ID\' extra provided, exiting."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    invoke-virtual {p0}, Lcom/nrsmagic/sudoku/gui/SudokuExportActivity;->finish()V

    goto :goto_1

    .line 83
    .restart local v1       #fileName:Ljava/lang/String;
    .restart local v4       #timestamp:Ljava/lang/String;
    :cond_1
    new-instance v0, Lcom/nrsmagic/sudoku/db/SudokuDatabase;

    invoke-virtual {p0}, Lcom/nrsmagic/sudoku/gui/SudokuExportActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/nrsmagic/sudoku/db/SudokuDatabase;-><init>(Landroid/content/Context;)V

    .line 84
    .local v0, database:Lcom/nrsmagic/sudoku/db/SudokuDatabase;
    iget-object v5, p0, Lcom/nrsmagic/sudoku/gui/SudokuExportActivity;->mExportParams:Lcom/nrsmagic/sudoku/gui/exporting/FileExportTaskParams;

    iget-object v5, v5, Lcom/nrsmagic/sudoku/gui/exporting/FileExportTaskParams;->folderID:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Lcom/nrsmagic/sudoku/db/SudokuDatabase;->getFolderInfo(J)Lcom/nrsmagic/sudoku/game/FolderInfo;

    move-result-object v2

    .line 85
    .local v2, folder:Lcom/nrsmagic/sudoku/game/FolderInfo;
    if-nez v2, :cond_2

    .line 86
    sget-object v5, Lcom/nrsmagic/sudoku/gui/SudokuExportActivity;->TAG:Ljava/lang/String;

    const-string v6, "Folder with id %s not found, exiting."

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/nrsmagic/sudoku/gui/SudokuExportActivity;->mExportParams:Lcom/nrsmagic/sudoku/gui/exporting/FileExportTaskParams;

    iget-object v9, v9, Lcom/nrsmagic/sudoku/gui/exporting/FileExportTaskParams;->folderID:Ljava/lang/Long;

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-virtual {p0}, Lcom/nrsmagic/sudoku/gui/SudokuExportActivity;->finish()V

    goto :goto_1

    .line 90
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, v2, Lcom/nrsmagic/sudoku/game/FolderInfo;->name:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 91
    invoke-virtual {v0}, Lcom/nrsmagic/sudoku/db/SudokuDatabase;->close()V

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter "id"

    .prologue
    const/4 v0, 0x0

    .line 110
    packed-switch p1, :pswitch_data_0

    .line 132
    :goto_0
    return-object v0

    .line 113
    :pswitch_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 114
    const v2, 0x7f090068

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 115
    const v2, 0x7f09007a

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 116
    const v2, 0x1040013

    new-instance v3, Lcom/nrsmagic/sudoku/gui/SudokuExportActivity$2;

    invoke-direct {v3, p0}, Lcom/nrsmagic/sudoku/gui/SudokuExportActivity$2;-><init>(Lcom/nrsmagic/sudoku/gui/SudokuExportActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 122
    const v2, 0x1040009

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 123
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 125
    :pswitch_1
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 126
    .local v0, progressDialog:Landroid/app/ProgressDialog;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 127
    const/high16 v1, 0x7f09

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 128
    const v1, 0x7f09006d

    invoke-virtual {p0, v1}, Lcom/nrsmagic/sudoku/gui/SudokuExportActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 110
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
