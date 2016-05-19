.class Lcom/nrsmagic/sudoku/gui/exporting/FileExportTask$1;
.super Ljava/lang/Object;
.source "FileExportTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nrsmagic/sudoku/gui/exporting/FileExportTask;->doInBackground([Lcom/nrsmagic/sudoku/gui/exporting/FileExportTaskParams;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nrsmagic/sudoku/gui/exporting/FileExportTask;

.field private final synthetic val$res:Lcom/nrsmagic/sudoku/gui/exporting/FileExportTaskResult;


# direct methods
.method constructor <init>(Lcom/nrsmagic/sudoku/gui/exporting/FileExportTask;Lcom/nrsmagic/sudoku/gui/exporting/FileExportTaskResult;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nrsmagic/sudoku/gui/exporting/FileExportTask$1;->this$0:Lcom/nrsmagic/sudoku/gui/exporting/FileExportTask;

    iput-object p2, p0, Lcom/nrsmagic/sudoku/gui/exporting/FileExportTask$1;->val$res:Lcom/nrsmagic/sudoku/gui/exporting/FileExportTaskResult;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/exporting/FileExportTask$1;->this$0:Lcom/nrsmagic/sudoku/gui/exporting/FileExportTask;

    #getter for: Lcom/nrsmagic/sudoku/gui/exporting/FileExportTask;->mOnExportFinishedListener:Lcom/nrsmagic/sudoku/gui/exporting/FileExportTask$OnExportFinishedListener;
    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/exporting/FileExportTask;->access$1(Lcom/nrsmagic/sudoku/gui/exporting/FileExportTask;)Lcom/nrsmagic/sudoku/gui/exporting/FileExportTask$OnExportFinishedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/exporting/FileExportTask$1;->this$0:Lcom/nrsmagic/sudoku/gui/exporting/FileExportTask;

    #getter for: Lcom/nrsmagic/sudoku/gui/exporting/FileExportTask;->mOnExportFinishedListener:Lcom/nrsmagic/sudoku/gui/exporting/FileExportTask$OnExportFinishedListener;
    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/exporting/FileExportTask;->access$1(Lcom/nrsmagic/sudoku/gui/exporting/FileExportTask;)Lcom/nrsmagic/sudoku/gui/exporting/FileExportTask$OnExportFinishedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/exporting/FileExportTask$1;->val$res:Lcom/nrsmagic/sudoku/gui/exporting/FileExportTaskResult;

    invoke-interface {v0, v1}, Lcom/nrsmagic/sudoku/gui/exporting/FileExportTask$OnExportFinishedListener;->onExportFinished(Lcom/nrsmagic/sudoku/gui/exporting/FileExportTaskResult;)V

    .line 60
    :cond_0
    return-void
.end method
