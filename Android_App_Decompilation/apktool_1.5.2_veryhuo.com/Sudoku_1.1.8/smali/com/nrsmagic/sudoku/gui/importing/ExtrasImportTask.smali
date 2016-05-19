.class public Lcom/nrsmagic/sudoku/gui/importing/ExtrasImportTask;
.super Lcom/nrsmagic/sudoku/gui/importing/AbstractImportTask;
.source "ExtrasImportTask.java"


# instance fields
.field private mAppendToFolder:Z

.field private mFolderName:Ljava/lang/String;

.field private mGames:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .parameter "folderName"
    .parameter "games"
    .parameter "appendToFolder"

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/nrsmagic/sudoku/gui/importing/AbstractImportTask;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/nrsmagic/sudoku/gui/importing/ExtrasImportTask;->mFolderName:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lcom/nrsmagic/sudoku/gui/importing/ExtrasImportTask;->mGames:Ljava/lang/String;

    .line 20
    iput-boolean p3, p0, Lcom/nrsmagic/sudoku/gui/importing/ExtrasImportTask;->mAppendToFolder:Z

    .line 21
    return-void
.end method


# virtual methods
.method protected processImport()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nrsmagic/sudoku/db/SudokuInvalidFormatException;
        }
    .end annotation

    .prologue
    .line 25
    iget-boolean v1, p0, Lcom/nrsmagic/sudoku/gui/importing/ExtrasImportTask;->mAppendToFolder:Z

    if-eqz v1, :cond_0

    .line 26
    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/importing/ExtrasImportTask;->mFolderName:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/nrsmagic/sudoku/gui/importing/ExtrasImportTask;->appendToFolder(Ljava/lang/String;)V

    .line 31
    :goto_0
    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/importing/ExtrasImportTask;->mGames:Ljava/lang/String;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_1
    if-lt v1, v3, :cond_1

    .line 34
    return-void

    .line 28
    :cond_0
    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/importing/ExtrasImportTask;->mFolderName:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/nrsmagic/sudoku/gui/importing/ExtrasImportTask;->importFolder(Ljava/lang/String;)V

    goto :goto_0

    .line 31
    :cond_1
    aget-object v0, v2, v1

    .line 32
    .local v0, game:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/nrsmagic/sudoku/gui/importing/ExtrasImportTask;->importGame(Ljava/lang/String;)V

    .line 31
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method
