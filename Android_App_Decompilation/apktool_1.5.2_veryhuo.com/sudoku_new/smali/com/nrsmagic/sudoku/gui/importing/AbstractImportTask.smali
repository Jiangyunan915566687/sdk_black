.class public abstract Lcom/nrsmagic/sudoku/gui/importing/AbstractImportTask;
.super Landroid/os/AsyncTask;
.source "AbstractImportTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nrsmagic/sudoku/gui/importing/AbstractImportTask$OnImportFinishedListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field static final NUM_OF_PROGRESS_UPDATES:I = 0x14


# instance fields
.field protected mContext:Landroid/content/Context;

.field private mDatabase:Lcom/nrsmagic/sudoku/db/SudokuDatabase;

.field private mFolder:Lcom/nrsmagic/sudoku/game/FolderInfo;

.field private mFolderCount:I

.field private mGameCount:I

.field private mImportError:Ljava/lang/String;

.field private mImportParams:Lcom/nrsmagic/sudoku/db/SudokuImportParams;

.field private mImportSuccessful:Z

.field private mOnImportFinishedListener:Lcom/nrsmagic/sudoku/gui/importing/AbstractImportTask$OnImportFinishedListener;

.field private mProgressBar:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 194
    new-instance v0, Lcom/nrsmagic/sudoku/db/SudokuImportParams;

    invoke-direct {v0}, Lcom/nrsmagic/sudoku/db/SudokuImportParams;-><init>()V

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/importing/AbstractImportTask;->mImportParams:Lcom/nrsmagic/sudoku/db/SudokuImportParams;

    .line 34
    return-void
.end method

.method private processImportInternal()Ljava/lang/Boolean;
    .locals 11

    .prologue
    const/4 v8, 0x1

    const/4 v10, 0x0

    const/4 v7, 0x0

    .line 106
    iput-boolean v8, p0, Lcom/nrsmagic/sudoku/gui/importing/AbstractImportTask;->mImportSuccessful:Z

    .line 108
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 110
    .local v3, start:J
    new-instance v5, Lcom/nrsmagic/sudoku/db/SudokuDatabase;

    iget-object v6, p0, Lcom/nrsmagic/sudoku/gui/importing/AbstractImportTask;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/nrsmagic/sudoku/db/SudokuDatabase;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/nrsmagic/sudoku/gui/importing/AbstractImportTask;->mDatabase:Lcom/nrsmagic/sudoku/db/SudokuDatabase;

    .line 112
    :try_start_0
    iget-object v5, p0, Lcom/nrsmagic/sudoku/gui/importing/AbstractImportTask;->mDatabase:Lcom/nrsmagic/sudoku/db/SudokuDatabase;

    invoke-virtual {v5}, Lcom/nrsmagic/sudoku/db/SudokuDatabase;->beginTransaction()V

    .line 115
    invoke-virtual {p0}, Lcom/nrsmagic/sudoku/gui/importing/AbstractImportTask;->processImport()V

    .line 117
    iget-object v5, p0, Lcom/nrsmagic/sudoku/gui/importing/AbstractImportTask;->mDatabase:Lcom/nrsmagic/sudoku/db/SudokuDatabase;

    invoke-virtual {v5}, Lcom/nrsmagic/sudoku/db/SudokuDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/nrsmagic/sudoku/db/SudokuInvalidFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    iget-object v5, p0, Lcom/nrsmagic/sudoku/gui/importing/AbstractImportTask;->mDatabase:Lcom/nrsmagic/sudoku/db/SudokuDatabase;

    invoke-virtual {v5}, Lcom/nrsmagic/sudoku/db/SudokuDatabase;->endTransaction()V

    .line 122
    iget-object v5, p0, Lcom/nrsmagic/sudoku/gui/importing/AbstractImportTask;->mDatabase:Lcom/nrsmagic/sudoku/db/SudokuDatabase;

    invoke-virtual {v5}, Lcom/nrsmagic/sudoku/db/SudokuDatabase;->close()V

    .line 123
    iput-object v7, p0, Lcom/nrsmagic/sudoku/gui/importing/AbstractImportTask;->mDatabase:Lcom/nrsmagic/sudoku/db/SudokuDatabase;

    .line 127
    :goto_0
    iget v5, p0, Lcom/nrsmagic/sudoku/gui/importing/AbstractImportTask;->mFolderCount:I

    if-nez v5, :cond_0

    iget v5, p0, Lcom/nrsmagic/sudoku/gui/importing/AbstractImportTask;->mGameCount:I

    if-nez v5, :cond_0

    .line 128
    iget-object v5, p0, Lcom/nrsmagic/sudoku/gui/importing/AbstractImportTask;->mContext:Landroid/content/Context;

    const v6, 0x7f09005e

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/nrsmagic/sudoku/gui/importing/AbstractImportTask;->setError(Ljava/lang/String;)V

    .line 129
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 137
    :goto_1
    return-object v5

    .line 118
    :catch_0
    move-exception v0

    .line 119
    .local v0, e:Lcom/nrsmagic/sudoku/db/SudokuInvalidFormatException;
    :try_start_1
    iget-object v5, p0, Lcom/nrsmagic/sudoku/gui/importing/AbstractImportTask;->mContext:Landroid/content/Context;

    const v6, 0x7f090060

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/nrsmagic/sudoku/gui/importing/AbstractImportTask;->setError(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 121
    iget-object v5, p0, Lcom/nrsmagic/sudoku/gui/importing/AbstractImportTask;->mDatabase:Lcom/nrsmagic/sudoku/db/SudokuDatabase;

    invoke-virtual {v5}, Lcom/nrsmagic/sudoku/db/SudokuDatabase;->endTransaction()V

    .line 122
    iget-object v5, p0, Lcom/nrsmagic/sudoku/gui/importing/AbstractImportTask;->mDatabase:Lcom/nrsmagic/sudoku/db/SudokuDatabase;

    invoke-virtual {v5}, Lcom/nrsmagic/sudoku/db/SudokuDatabase;->close()V

    .line 123
    iput-object v7, p0, Lcom/nrsmagic/sudoku/gui/importing/AbstractImportTask;->mDatabase:Lcom/nrsmagic/sudoku/db/SudokuDatabase;

    goto :goto_0

    .line 120
    .end local v0           #e:Lcom/nrsmagic/sudoku/db/SudokuInvalidFormatException;
    :catchall_0
    move-exception v5

    .line 121
    iget-object v6, p0, Lcom/nrsmagic/sudoku/gui/importing/AbstractImportTask;->mDatabase:Lcom/nrsmagic/sudoku/db/SudokuDatabase;

    invoke-virtual {v6}, Lcom/nrsmagic/sudoku/db/SudokuDatabase;->endTransaction()V

    .line 122
    iget-object v6, p0, Lcom/nrsmagic/sudoku/gui/importing/AbstractImportTask;->mDatabase:Lcom/nrsmagic/sudoku/db/SudokuDatabase;

    invoke-virtual {v6}, Lcom/nrsmagic/sudoku/db/SudokuDatabase;->close()V

    .line 123
    iput-object v7, p0, Lcom/nrsmagic/sudoku/gui/importing/AbstractImportTask;->mDatabase:Lcom/nrsmagic/sudoku/db/SudokuDatabase;

    .line 124
    throw v5

    .line 132
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 134
    .local v1, end:J
    const-string v5, "OpenSudoku"

    const-string v6, "Imported in %f seconds."

    new-array v7, v8, [Ljava/lang/Object;

    .line 135
    sub-long v8, v1, v3

    long-to-float v8, v8

    const/high16 v9, 0x447a

    div-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v7, v10

    .line 134
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-boolean v5, p0, Lcom/nrsmagic/sudoku/gui/importing/AbstractImportTask;->mImportSuccessful:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    goto :goto_1
.end method


# virtual methods
.method protected appendToFolder(Ljava/lang/String;)V
    .locals 3
    .parameter "name"

    .prologue
    .line 181
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/importing/AbstractImportTask;->mDatabase:Lcom/nrsmagic/sudoku/db/SudokuDatabase;

    if-nez v0, :cond_0

    .line 182
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Database is not opened."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 185
    :cond_0
    iget v0, p0, Lcom/nrsmagic/sudoku/gui/importing/AbstractImportTask;->mFolderCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/nrsmagic/sudoku/gui/importing/AbstractImportTask;->mFolderCount:I

    .line 187
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/importing/AbstractImportTask;->mFolder:Lcom/nrsmagic/sudoku/game/FolderInfo;

    .line 188
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/importing/AbstractImportTask;->mDatabase:Lcom/nrsmagic/sudoku/db/SudokuDatabase;

    invoke-virtual {v0, p1}, Lcom/nrsmagic/sudoku/db/SudokuDatabase;->findFolder(Ljava/lang/String;)Lcom/nrsmagic/sudoku/game/FolderInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/importing/AbstractImportTask;->mFolder:Lcom/nrsmagic/sudoku/game/FolderInfo;

    .line 189
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/importing/AbstractImportTask;->mFolder:Lcom/nrsmagic/sudoku/game/FolderInfo;

    if-nez v0, :cond_1

    .line 190
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/importing/AbstractImportTask;->mDatabase:Lcom/nrsmagic/sudoku/db/SudokuDatabase;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/nrsmagic/sudoku/db/SudokuDatabase;->insertFolder(Ljava/lang/String;Ljava/lang/Long;)Lcom/nrsmagic/sudoku/game/FolderInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/importing/AbstractImportTask;->mFolder:Lcom/nrsmagic/sudoku/game/FolderInfo;

    .line 192
    :cond_1
    return-void
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 3
    .parameter "params"

    .prologue
    .line 63
    :try_start_0
    invoke-direct {p0}, Lcom/nrsmagic/sudoku/gui/importing/AbstractImportTask;->processImportInternal()Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 69
    :goto_0
    return-object v1

    .line 64
    :catch_0
    move-exception v0

    .line 65
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "OpenSudoku"

    const-string v2, "Exception occurred during import."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 66
    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/importing/AbstractImportTask;->mContext:Landroid/content/Context;

    const v2, 0x7f09005f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/nrsmagic/sudoku/gui/importing/AbstractImportTask;->setError(Ljava/lang/String;)V

    .line 69
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/nrsmagic/sudoku/gui/importing/AbstractImportTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected importFolder(Ljava/lang/String;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 154
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/nrsmagic/sudoku/gui/importing/AbstractImportTask;->importFolder(Ljava/lang/String;J)V

    .line 155
    return-void
.end method

.method protected importFolder(Ljava/lang/String;J)V
    .locals 2
    .parameter "name"
    .parameter "created"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/importing/AbstractImportTask;->mDatabase:Lcom/nrsmagic/sudoku/db/SudokuDatabase;

    if-nez v0, :cond_0

    .line 166
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Database is not opened."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 169
    :cond_0
    iget v0, p0, Lcom/nrsmagic/sudoku/gui/importing/AbstractImportTask;->mFolderCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/nrsmagic/sudoku/gui/importing/AbstractImportTask;->mFolderCount:I

    .line 171
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/importing/AbstractImportTask;->mDatabase:Lcom/nrsmagic/sudoku/db/SudokuDatabase;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/nrsmagic/sudoku/db/SudokuDatabase;->insertFolder(Ljava/lang/String;Ljava/lang/Long;)Lcom/nrsmagic/sudoku/game/FolderInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/importing/AbstractImportTask;->mFolder:Lcom/nrsmagic/sudoku/game/FolderInfo;

    .line 172
    return-void
.end method

.method protected importGame(Lcom/nrsmagic/sudoku/db/SudokuImportParams;)V
    .locals 3
    .parameter "pars"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nrsmagic/sudoku/db/SudokuInvalidFormatException;
        }
    .end annotation

    .prologue
    .line 215
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/importing/AbstractImportTask;->mDatabase:Lcom/nrsmagic/sudoku/db/SudokuDatabase;

    if-nez v0, :cond_0

    .line 216
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Database is not opened."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/importing/AbstractImportTask;->mDatabase:Lcom/nrsmagic/sudoku/db/SudokuDatabase;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/importing/AbstractImportTask;->mFolder:Lcom/nrsmagic/sudoku/game/FolderInfo;

    iget-wide v1, v1, Lcom/nrsmagic/sudoku/game/FolderInfo;->id:J

    invoke-virtual {v0, v1, v2, p1}, Lcom/nrsmagic/sudoku/db/SudokuDatabase;->importSudoku(JLcom/nrsmagic/sudoku/db/SudokuImportParams;)J

    .line 220
    return-void
.end method

.method protected importGame(Ljava/lang/String;)V
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nrsmagic/sudoku/db/SudokuInvalidFormatException;
        }
    .end annotation

    .prologue
    .line 203
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/importing/AbstractImportTask;->mImportParams:Lcom/nrsmagic/sudoku/db/SudokuImportParams;

    invoke-virtual {v0}, Lcom/nrsmagic/sudoku/db/SudokuImportParams;->clear()V

    .line 204
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/importing/AbstractImportTask;->mImportParams:Lcom/nrsmagic/sudoku/db/SudokuImportParams;

    iput-object p1, v0, Lcom/nrsmagic/sudoku/db/SudokuImportParams;->data:Ljava/lang/String;

    .line 205
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/importing/AbstractImportTask;->mImportParams:Lcom/nrsmagic/sudoku/db/SudokuImportParams;

    invoke-virtual {p0, v0}, Lcom/nrsmagic/sudoku/gui/importing/AbstractImportTask;->importGame(Lcom/nrsmagic/sudoku/db/SudokuImportParams;)V

    .line 206
    return-void
.end method

.method public initialize(Landroid/content/Context;Landroid/widget/ProgressBar;)V
    .locals 0
    .parameter "context"
    .parameter "progressBar"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/nrsmagic/sudoku/gui/importing/AbstractImportTask;->mContext:Landroid/content/Context;

    .line 52
    iput-object p2, p0, Lcom/nrsmagic/sudoku/gui/importing/AbstractImportTask;->mProgressBar:Landroid/widget/ProgressBar;

    .line 53
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 9
    .parameter "result"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 82
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 84
    iget v2, p0, Lcom/nrsmagic/sudoku/gui/importing/AbstractImportTask;->mFolderCount:I

    if-ne v2, v7, :cond_3

    .line 85
    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/importing/AbstractImportTask;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/nrsmagic/sudoku/gui/importing/AbstractImportTask;->mContext:Landroid/content/Context;

    const v4, 0x7f09005d

    new-array v5, v7, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/nrsmagic/sudoku/gui/importing/AbstractImportTask;->mFolder:Lcom/nrsmagic/sudoku/game/FolderInfo;

    iget-object v6, v6, Lcom/nrsmagic/sudoku/game/FolderInfo;->name:Ljava/lang/String;

    aput-object v6, v5, v8

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 86
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 96
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/importing/AbstractImportTask;->mOnImportFinishedListener:Lcom/nrsmagic/sudoku/gui/importing/AbstractImportTask$OnImportFinishedListener;

    if-eqz v2, :cond_2

    .line 97
    const-wide/16 v0, -0x1

    .line 98
    .local v0, folderId:J
    iget v2, p0, Lcom/nrsmagic/sudoku/gui/importing/AbstractImportTask;->mFolderCount:I

    if-ne v2, v7, :cond_1

    .line 99
    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/importing/AbstractImportTask;->mFolder:Lcom/nrsmagic/sudoku/game/FolderInfo;

    iget-wide v0, v2, Lcom/nrsmagic/sudoku/game/FolderInfo;->id:J

    .line 101
    :cond_1
    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/importing/AbstractImportTask;->mOnImportFinishedListener:Lcom/nrsmagic/sudoku/gui/importing/AbstractImportTask$OnImportFinishedListener;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-interface {v2, v3, v0, v1}, Lcom/nrsmagic/sudoku/gui/importing/AbstractImportTask$OnImportFinishedListener;->onImportFinished(ZJ)V

    .line 103
    .end local v0           #folderId:J
    :cond_2
    return-void

    .line 87
    :cond_3
    iget v2, p0, Lcom/nrsmagic/sudoku/gui/importing/AbstractImportTask;->mFolderCount:I

    if-le v2, v7, :cond_0

    .line 88
    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/importing/AbstractImportTask;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/nrsmagic/sudoku/gui/importing/AbstractImportTask;->mContext:Landroid/content/Context;

    const v4, 0x7f09006b

    new-array v5, v7, [Ljava/lang/Object;

    iget v6, p0, Lcom/nrsmagic/sudoku/gui/importing/AbstractImportTask;->mFolderCount:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 89
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 93
    :cond_4
    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/importing/AbstractImportTask;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/nrsmagic/sudoku/gui/importing/AbstractImportTask;->mImportError:Ljava/lang/String;

    invoke-static {v2, v3, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/nrsmagic/sudoku/gui/importing/AbstractImportTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 2
    .parameter "values"

    .prologue
    .line 74
    array-length v0, p1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 75
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/importing/AbstractImportTask;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x1

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/importing/AbstractImportTask;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 78
    return-void
.end method

.method protected bridge varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/nrsmagic/sudoku/gui/importing/AbstractImportTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method

.method protected abstract processImport()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nrsmagic/sudoku/db/SudokuInvalidFormatException;
        }
    .end annotation
.end method

.method protected setError(Ljava/lang/String;)V
    .locals 1
    .parameter "error"

    .prologue
    .line 223
    iput-object p1, p0, Lcom/nrsmagic/sudoku/gui/importing/AbstractImportTask;->mImportError:Ljava/lang/String;

    .line 224
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nrsmagic/sudoku/gui/importing/AbstractImportTask;->mImportSuccessful:Z

    .line 225
    return-void
.end method

.method public setOnImportFinishedListener(Lcom/nrsmagic/sudoku/gui/importing/AbstractImportTask$OnImportFinishedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/nrsmagic/sudoku/gui/importing/AbstractImportTask;->mOnImportFinishedListener:Lcom/nrsmagic/sudoku/gui/importing/AbstractImportTask$OnImportFinishedListener;

    .line 57
    return-void
.end method
