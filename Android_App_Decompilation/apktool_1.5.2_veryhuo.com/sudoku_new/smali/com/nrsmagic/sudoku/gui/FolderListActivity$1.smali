.class Lcom/nrsmagic/sudoku/gui/FolderListActivity$1;
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
    iput-object p1, p0, Lcom/nrsmagic/sudoku/gui/FolderListActivity$1;->this$0:Lcom/nrsmagic/sudoku/gui/FolderListActivity;

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 233
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/FolderListActivity$1;->this$0:Lcom/nrsmagic/sudoku/gui/FolderListActivity;

    #getter for: Lcom/nrsmagic/sudoku/gui/FolderListActivity;->mDatabase:Lcom/nrsmagic/sudoku/db/SudokuDatabase;
    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/FolderListActivity;->access$0(Lcom/nrsmagic/sudoku/gui/FolderListActivity;)Lcom/nrsmagic/sudoku/db/SudokuDatabase;

    move-result-object v0

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/FolderListActivity$1;->this$0:Lcom/nrsmagic/sudoku/gui/FolderListActivity;

    #getter for: Lcom/nrsmagic/sudoku/gui/FolderListActivity;->mAddFolderNameInput:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/nrsmagic/sudoku/gui/FolderListActivity;->access$1(Lcom/nrsmagic/sudoku/gui/FolderListActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nrsmagic/sudoku/db/SudokuDatabase;->insertFolder(Ljava/lang/String;Ljava/lang/Long;)Lcom/nrsmagic/sudoku/game/FolderInfo;

    .line 234
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/FolderListActivity$1;->this$0:Lcom/nrsmagic/sudoku/gui/FolderListActivity;

    #calls: Lcom/nrsmagic/sudoku/gui/FolderListActivity;->updateList()V
    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/FolderListActivity;->access$2(Lcom/nrsmagic/sudoku/gui/FolderListActivity;)V

    .line 235
    return-void
.end method
