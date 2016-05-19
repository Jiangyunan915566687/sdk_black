.class public Lcom/nrsmagic/sudoku/gui/SudokuImportActivity;
.super Landroid/app/Activity;
.source "SudokuImportActivity.java"


# static fields
.field public static final EXTRA_APPEND_TO_FOLDER:Ljava/lang/String; = "APPEND_TO_FOLDER"

.field public static final EXTRA_FOLDER_NAME:Ljava/lang/String; = "FOLDER_NAME"

.field public static final EXTRA_GAMES:Ljava/lang/String; = "GAMES"

.field private static final TAG:Ljava/lang/String; = "ImportSudokuActivity"


# instance fields
.field private mOnImportFinishedListener:Lcom/nrsmagic/sudoku/gui/importing/AbstractImportTask$OnImportFinishedListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 98
    new-instance v0, Lcom/nrsmagic/sudoku/gui/SudokuImportActivity$1;

    invoke-direct {v0, p0}, Lcom/nrsmagic/sudoku/gui/SudokuImportActivity$1;-><init>(Lcom/nrsmagic/sudoku/gui/SudokuImportActivity;)V

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/SudokuImportActivity;->mOnImportFinishedListener:Lcom/nrsmagic/sudoku/gui/importing/AbstractImportTask$OnImportFinishedListener;

    .line 25
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "savedInstanceState"

    .prologue
    const/4 v9, 0x3

    const/4 v11, 0x0

    .line 45
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    invoke-virtual {p0, v9}, Lcom/nrsmagic/sudoku/gui/SudokuImportActivity;->requestWindowFeature(I)Z

    .line 48
    const v7, 0x7f03000b

    invoke-virtual {p0, v7}, Lcom/nrsmagic/sudoku/gui/SudokuImportActivity;->setContentView(I)V

    .line 49
    invoke-virtual {p0}, Lcom/nrsmagic/sudoku/gui/SudokuImportActivity;->getWindow()Landroid/view/Window;

    move-result-object v7

    .line 50
    const v8, 0x7f02000f

    .line 49
    invoke-virtual {v7, v9, v8}, Landroid/view/Window;->setFeatureDrawableResource(II)V

    .line 52
    const v7, 0x7f080011

    invoke-virtual {p0, v7}, Lcom/nrsmagic/sudoku/gui/SudokuImportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ProgressBar;

    .line 55
    .local v6, progressBar:Landroid/widget/ProgressBar;
    invoke-virtual {p0}, Lcom/nrsmagic/sudoku/gui/SudokuImportActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 56
    .local v5, intent:Landroid/content/Intent;
    invoke-virtual {v5}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 57
    .local v1, dataUri:Landroid/net/Uri;
    if-eqz v1, :cond_3

    .line 58
    const-string v7, "application/x-opensudoku"

    invoke-virtual {v5}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 59
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, ".opensudoku"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 61
    :cond_0
    new-instance v4, Lcom/nrsmagic/sudoku/gui/importing/OpenSudokuImportTask;

    invoke-direct {v4, v1}, Lcom/nrsmagic/sudoku/gui/importing/OpenSudokuImportTask;-><init>(Landroid/net/Uri;)V

    .line 92
    .local v4, importTask:Lcom/nrsmagic/sudoku/gui/importing/AbstractImportTask;
    :goto_0
    invoke-virtual {v4, p0, v6}, Lcom/nrsmagic/sudoku/gui/importing/AbstractImportTask;->initialize(Landroid/content/Context;Landroid/widget/ProgressBar;)V

    .line 93
    iget-object v7, p0, Lcom/nrsmagic/sudoku/gui/SudokuImportActivity;->mOnImportFinishedListener:Lcom/nrsmagic/sudoku/gui/importing/AbstractImportTask$OnImportFinishedListener;

    invoke-virtual {v4, v7}, Lcom/nrsmagic/sudoku/gui/importing/AbstractImportTask;->setOnImportFinishedListener(Lcom/nrsmagic/sudoku/gui/importing/AbstractImportTask$OnImportFinishedListener;)V

    .line 95
    new-array v7, v11, [Ljava/lang/Void;

    invoke-virtual {v4, v7}, Lcom/nrsmagic/sudoku/gui/importing/AbstractImportTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 96
    .end local v4           #importTask:Lcom/nrsmagic/sudoku/gui/importing/AbstractImportTask;
    :goto_1
    return-void

    .line 63
    :cond_1
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, ".sdm"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 65
    new-instance v4, Lcom/nrsmagic/sudoku/gui/importing/SdmImportTask;

    invoke-direct {v4, v1}, Lcom/nrsmagic/sudoku/gui/importing/SdmImportTask;-><init>(Landroid/net/Uri;)V

    .line 67
    .restart local v4       #importTask:Lcom/nrsmagic/sudoku/gui/importing/AbstractImportTask;
    goto :goto_0

    .line 70
    .end local v4           #importTask:Lcom/nrsmagic/sudoku/gui/importing/AbstractImportTask;
    :cond_2
    const-string v7, "ImportSudokuActivity"

    .line 72
    const-string v8, "Unknown type of data provided (mime-type=%s; uri=%s), exiting."

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    .line 73
    invoke-virtual {v5}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v11

    const/4 v10, 0x1

    aput-object v1, v9, v10

    .line 71
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 69
    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    invoke-virtual {p0}, Lcom/nrsmagic/sudoku/gui/SudokuImportActivity;->finish()V

    goto :goto_1

    .line 78
    :cond_3
    const-string v7, "FOLDER_NAME"

    invoke-virtual {v5, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 80
    const-string v7, "FOLDER_NAME"

    invoke-virtual {v5, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 81
    .local v2, folderName:Ljava/lang/String;
    const-string v7, "GAMES"

    invoke-virtual {v5, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 83
    .local v3, games:Ljava/lang/String;
    const-string v7, "APPEND_TO_FOLDER"

    .line 82
    invoke-virtual {v5, v7, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 84
    .local v0, appendToFolder:Z
    new-instance v4, Lcom/nrsmagic/sudoku/gui/importing/ExtrasImportTask;

    invoke-direct {v4, v2, v3, v0}, Lcom/nrsmagic/sudoku/gui/importing/ExtrasImportTask;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 86
    .restart local v4       #importTask:Lcom/nrsmagic/sudoku/gui/importing/AbstractImportTask;
    goto :goto_0

    .line 87
    .end local v0           #appendToFolder:Z
    .end local v2           #folderName:Ljava/lang/String;
    .end local v3           #games:Ljava/lang/String;
    .end local v4           #importTask:Lcom/nrsmagic/sudoku/gui/importing/AbstractImportTask;
    :cond_4
    const-string v7, "ImportSudokuActivity"

    const-string v8, "No data provided, exiting."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-virtual {p0}, Lcom/nrsmagic/sudoku/gui/SudokuImportActivity;->finish()V

    goto :goto_1
.end method
