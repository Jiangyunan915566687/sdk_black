.class Lcom/nrsmagic/sudoku/gui/FolderListActivity$2;
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
    iput-object p1, p0, Lcom/nrsmagic/sudoku/gui/FolderListActivity$2;->this$0:Lcom/nrsmagic/sudoku/gui/FolderListActivity;

    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 249
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/FolderListActivity$2;->this$0:Lcom/nrsmagic/sudoku/gui/FolderListActivity;

    #getter for: Lcom/nrsmagic/sudoku/gui/FolderListActivity;->mDatabase:Lcom/nrsmagic/sudoku/db/SudokuDatabase;
    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/FolderListActivity;->access$0(Lcom/nrsmagic/sudoku/gui/FolderListActivity;)Lcom/nrsmagic/sudoku/db/SudokuDatabase;

    move-result-object v0

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/FolderListActivity$2;->this$0:Lcom/nrsmagic/sudoku/gui/FolderListActivity;

    #getter for: Lcom/nrsmagic/sudoku/gui/FolderListActivity;->mRenameFolderID:J
    invoke-static {v1}, Lcom/nrsmagic/sudoku/gui/FolderListActivity;->access$3(Lcom/nrsmagic/sudoku/gui/FolderListActivity;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/nrsmagic/sudoku/gui/FolderListActivity$2;->this$0:Lcom/nrsmagic/sudoku/gui/FolderListActivity;

    #getter for: Lcom/nrsmagic/sudoku/gui/FolderListActivity;->mRenameFolderNameInput:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/nrsmagic/sudoku/gui/FolderListActivity;->access$4(Lcom/nrsmagic/sudoku/gui/FolderListActivity;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/nrsmagic/sudoku/db/SudokuDatabase;->updateFolder(JLjava/lang/String;)V

    .line 250
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/FolderListActivity$2;->this$0:Lcom/nrsmagic/sudoku/gui/FolderListActivity;

    #calls: Lcom/nrsmagic/sudoku/gui/FolderListActivity;->updateList()V
    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/FolderListActivity;->access$2(Lcom/nrsmagic/sudoku/gui/FolderListActivity;)V

    .line 251
    return-void
.end method
