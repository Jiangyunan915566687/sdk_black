.class Lcom/nrsmagic/sudoku/gui/SudokuExportActivity$3;
.super Ljava/lang/Object;
.source "SudokuExportActivity.java"

# interfaces
.implements Lcom/nrsmagic/sudoku/gui/exporting/FileExportTask$OnExportFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nrsmagic/sudoku/gui/SudokuExportActivity;->startExportToFileTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nrsmagic/sudoku/gui/SudokuExportActivity;


# direct methods
.method constructor <init>(Lcom/nrsmagic/sudoku/gui/SudokuExportActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nrsmagic/sudoku/gui/SudokuExportActivity$3;->this$0:Lcom/nrsmagic/sudoku/gui/SudokuExportActivity;

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExportFinished(Lcom/nrsmagic/sudoku/gui/exporting/FileExportTaskResult;)V
    .locals 6
    .parameter "result"

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 158
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/SudokuExportActivity$3;->this$0:Lcom/nrsmagic/sudoku/gui/SudokuExportActivity;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/nrsmagic/sudoku/gui/SudokuExportActivity;->dismissDialog(I)V

    .line 160
    iget-boolean v0, p1, Lcom/nrsmagic/sudoku/gui/exporting/FileExportTaskResult;->successful:Z

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/SudokuExportActivity$3;->this$0:Lcom/nrsmagic/sudoku/gui/SudokuExportActivity;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/SudokuExportActivity$3;->this$0:Lcom/nrsmagic/sudoku/gui/SudokuExportActivity;

    const v2, 0x7f090079

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p1, Lcom/nrsmagic/sudoku/gui/exporting/FileExportTaskResult;->file:Ljava/io/File;

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/nrsmagic/sudoku/gui/SudokuExportActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 165
    :goto_0
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/SudokuExportActivity$3;->this$0:Lcom/nrsmagic/sudoku/gui/SudokuExportActivity;

    invoke-virtual {v0}, Lcom/nrsmagic/sudoku/gui/SudokuExportActivity;->finish()V

    .line 166
    return-void

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/SudokuExportActivity$3;->this$0:Lcom/nrsmagic/sudoku/gui/SudokuExportActivity;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/SudokuExportActivity$3;->this$0:Lcom/nrsmagic/sudoku/gui/SudokuExportActivity;

    const v2, 0x7f09006e

    invoke-virtual {v1, v2}, Lcom/nrsmagic/sudoku/gui/SudokuExportActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
