.class Lcom/nrsmagic/sudoku/gui/FolderListActivity$3;
.super Ljava/lang/Object;
.source "FolderListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nrsmagic/sudoku/gui/FolderListActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nrsmagic/sudoku/gui/FolderListActivity;


# direct methods
.method constructor <init>(Lcom/nrsmagic/sudoku/gui/FolderListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nrsmagic/sudoku/gui/FolderListActivity$3;->this$0:Lcom/nrsmagic/sudoku/gui/FolderListActivity;

    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 263
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/FolderListActivity$3;->this$0:Lcom/nrsmagic/sudoku/gui/FolderListActivity;

    #getter for: Lcom/nrsmagic/sudoku/gui/FolderListActivity;->mDatabase:Lcom/nrsmagic/sudoku/db/SudokuDatabase;
    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/FolderListActivity;->access$0(Lcom/nrsmagic/sudoku/gui/FolderListActivity;)Lcom/nrsmagic/sudoku/db/SudokuDatabase;

    move-result-object v0

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/FolderListActivity$3;->this$0:Lcom/nrsmagic/sudoku/gui/FolderListActivity;

    #getter for: Lcom/nrsmagic/sudoku/gui/FolderListActivity;->mDeleteFolderID:J
    invoke-static {v1}, Lcom/nrsmagic/sudoku/gui/FolderListActivity;->access$5(Lcom/nrsmagic/sudoku/gui/FolderListActivity;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/nrsmagic/sudoku/db/SudokuDatabase;->deleteFolder(J)V

    .line 264
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/FolderListActivity$3;->this$0:Lcom/nrsmagic/sudoku/gui/FolderListActivity;

    #calls: Lcom/nrsmagic/sudoku/gui/FolderListActivity;->updateList()V
    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/FolderListActivity;->access$2(Lcom/nrsmagic/sudoku/gui/FolderListActivity;)V

    .line 265
    return-void
.end method
