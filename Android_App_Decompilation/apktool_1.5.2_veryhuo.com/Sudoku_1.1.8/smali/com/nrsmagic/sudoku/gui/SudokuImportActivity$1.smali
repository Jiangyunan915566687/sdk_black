.class Lcom/nrsmagic/sudoku/gui/SudokuImportActivity$1;
.super Ljava/lang/Object;
.source "SudokuImportActivity.java"

# interfaces
.implements Lcom/nrsmagic/sudoku/gui/importing/AbstractImportTask$OnImportFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nrsmagic/sudoku/gui/SudokuImportActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nrsmagic/sudoku/gui/SudokuImportActivity;


# direct methods
.method constructor <init>(Lcom/nrsmagic/sudoku/gui/SudokuImportActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nrsmagic/sudoku/gui/SudokuImportActivity$1;->this$0:Lcom/nrsmagic/sudoku/gui/SudokuImportActivity;

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImportFinished(ZJ)V
    .locals 3
    .parameter "importSuccessful"
    .parameter "folderId"

    .prologue
    .line 102
    if-eqz p1, :cond_0

    .line 103
    const-wide/16 v1, -0x1

    cmp-long v1, p2, v1

    if-nez v1, :cond_1

    .line 105
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/SudokuImportActivity$1;->this$0:Lcom/nrsmagic/sudoku/gui/SudokuImportActivity;

    .line 106
    const-class v2, Lcom/nrsmagic/sudoku/gui/FolderListActivity;

    .line 105
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 107
    .local v0, i:Landroid/content/Intent;
    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/SudokuImportActivity$1;->this$0:Lcom/nrsmagic/sudoku/gui/SudokuImportActivity;

    invoke-virtual {v1, v0}, Lcom/nrsmagic/sudoku/gui/SudokuImportActivity;->startActivity(Landroid/content/Intent;)V

    .line 117
    .end local v0           #i:Landroid/content/Intent;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/SudokuImportActivity$1;->this$0:Lcom/nrsmagic/sudoku/gui/SudokuImportActivity;

    invoke-virtual {v1}, Lcom/nrsmagic/sudoku/gui/SudokuImportActivity;->finish()V

    .line 118
    return-void

    .line 110
    :cond_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/SudokuImportActivity$1;->this$0:Lcom/nrsmagic/sudoku/gui/SudokuImportActivity;

    .line 111
    const-class v2, Lcom/nrsmagic/sudoku/gui/SudokuListActivity;

    .line 110
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 112
    .restart local v0       #i:Landroid/content/Intent;
    const-string v1, "folder_id"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 113
    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/SudokuImportActivity$1;->this$0:Lcom/nrsmagic/sudoku/gui/SudokuImportActivity;

    invoke-virtual {v1, v0}, Lcom/nrsmagic/sudoku/gui/SudokuImportActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
