.class Lcom/nrsmagic/sudoku/gui/FileListActivity$3;
.super Ljava/lang/Object;
.source "FileListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nrsmagic/sudoku/gui/FileListActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nrsmagic/sudoku/gui/FileListActivity;


# direct methods
.method constructor <init>(Lcom/nrsmagic/sudoku/gui/FileListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nrsmagic/sudoku/gui/FileListActivity$3;->this$0:Lcom/nrsmagic/sudoku/gui/FileListActivity;

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 166
    iget-object v3, p0, Lcom/nrsmagic/sudoku/gui/FileListActivity$3;->this$0:Lcom/nrsmagic/sudoku/gui/FileListActivity;

    #getter for: Lcom/nrsmagic/sudoku/gui/FileListActivity;->mSelectedFile:Ljava/io/File;
    invoke-static {v3}, Lcom/nrsmagic/sudoku/gui/FileListActivity;->access$0(Lcom/nrsmagic/sudoku/gui/FileListActivity;)Ljava/io/File;

    move-result-object v0

    .line 167
    .local v0, f:Ljava/io/File;
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/nrsmagic/sudoku/gui/FileListActivity$3;->this$0:Lcom/nrsmagic/sudoku/gui/FileListActivity;

    #getter for: Lcom/nrsmagic/sudoku/gui/FileListActivity;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/nrsmagic/sudoku/gui/FileListActivity;->access$1(Lcom/nrsmagic/sudoku/gui/FileListActivity;)Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/nrsmagic/sudoku/gui/ImportSudokuActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 168
    .local v1, i:Landroid/content/Intent;
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    .line 169
    .local v2, u:Landroid/net/Uri;
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 170
    iget-object v3, p0, Lcom/nrsmagic/sudoku/gui/FileListActivity$3;->this$0:Lcom/nrsmagic/sudoku/gui/FileListActivity;

    invoke-virtual {v3, v1}, Lcom/nrsmagic/sudoku/gui/FileListActivity;->startActivity(Landroid/content/Intent;)V

    .line 172
    return-void
.end method
