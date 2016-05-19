.class Lcom/nrsmagic/sudoku/gui/SudokuListActivity$7;
.super Ljava/lang/Object;
.source "SudokuListActivity.java"

# interfaces
.implements Lcom/nrsmagic/sudoku/gui/FolderDetailLoader$FolderDetailCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nrsmagic/sudoku/gui/SudokuListActivity;->updateTitle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nrsmagic/sudoku/gui/SudokuListActivity;


# direct methods
.method constructor <init>(Lcom/nrsmagic/sudoku/gui/SudokuListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nrsmagic/sudoku/gui/SudokuListActivity$7;->this$0:Lcom/nrsmagic/sudoku/gui/SudokuListActivity;

    .line 465
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoaded(Lcom/nrsmagic/sudoku/game/FolderInfo;)V
    .locals 3
    .parameter "folderInfo"

    .prologue
    .line 468
    if-eqz p1, :cond_0

    .line 469
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/SudokuListActivity$7;->this$0:Lcom/nrsmagic/sudoku/gui/SudokuListActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/nrsmagic/sudoku/game/FolderInfo;->name:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/SudokuListActivity$7;->this$0:Lcom/nrsmagic/sudoku/gui/SudokuListActivity;

    invoke-virtual {v2}, Lcom/nrsmagic/sudoku/gui/SudokuListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/nrsmagic/sudoku/game/FolderInfo;->getDetail(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nrsmagic/sudoku/gui/SudokuListActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 470
    :cond_0
    return-void
.end method
