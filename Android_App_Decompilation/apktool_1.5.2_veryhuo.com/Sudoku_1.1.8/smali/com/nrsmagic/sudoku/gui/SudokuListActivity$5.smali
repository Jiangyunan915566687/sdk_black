.class Lcom/nrsmagic/sudoku/gui/SudokuListActivity$5;
.super Ljava/lang/Object;
.source "SudokuListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nrsmagic/sudoku/gui/SudokuListActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nrsmagic/sudoku/gui/SudokuListActivity;

.field private final synthetic val$settings:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Lcom/nrsmagic/sudoku/gui/SudokuListActivity;Landroid/content/SharedPreferences;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nrsmagic/sudoku/gui/SudokuListActivity$5;->this$0:Lcom/nrsmagic/sudoku/gui/SudokuListActivity;

    iput-object p2, p0, Lcom/nrsmagic/sudoku/gui/SudokuListActivity$5;->val$settings:Landroid/content/SharedPreferences;

    .line 310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 312
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/SudokuListActivity$5;->val$settings:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 313
    const-string v1, "filter1"

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/SudokuListActivity$5;->this$0:Lcom/nrsmagic/sudoku/gui/SudokuListActivity;

    #getter for: Lcom/nrsmagic/sudoku/gui/SudokuListActivity;->mListFilter:Lcom/nrsmagic/sudoku/gui/SudokuListFilter;
    invoke-static {v2}, Lcom/nrsmagic/sudoku/gui/SudokuListActivity;->access$6(Lcom/nrsmagic/sudoku/gui/SudokuListActivity;)Lcom/nrsmagic/sudoku/gui/SudokuListFilter;

    move-result-object v2

    iget-boolean v2, v2, Lcom/nrsmagic/sudoku/gui/SudokuListFilter;->showStateNotStarted:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 314
    const-string v1, "filter0"

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/SudokuListActivity$5;->this$0:Lcom/nrsmagic/sudoku/gui/SudokuListActivity;

    #getter for: Lcom/nrsmagic/sudoku/gui/SudokuListActivity;->mListFilter:Lcom/nrsmagic/sudoku/gui/SudokuListFilter;
    invoke-static {v2}, Lcom/nrsmagic/sudoku/gui/SudokuListActivity;->access$6(Lcom/nrsmagic/sudoku/gui/SudokuListActivity;)Lcom/nrsmagic/sudoku/gui/SudokuListFilter;

    move-result-object v2

    iget-boolean v2, v2, Lcom/nrsmagic/sudoku/gui/SudokuListFilter;->showStatePlaying:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 315
    const-string v1, "filter2"

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/SudokuListActivity$5;->this$0:Lcom/nrsmagic/sudoku/gui/SudokuListActivity;

    #getter for: Lcom/nrsmagic/sudoku/gui/SudokuListActivity;->mListFilter:Lcom/nrsmagic/sudoku/gui/SudokuListFilter;
    invoke-static {v2}, Lcom/nrsmagic/sudoku/gui/SudokuListActivity;->access$6(Lcom/nrsmagic/sudoku/gui/SudokuListActivity;)Lcom/nrsmagic/sudoku/gui/SudokuListFilter;

    move-result-object v2

    iget-boolean v2, v2, Lcom/nrsmagic/sudoku/gui/SudokuListFilter;->showStateCompleted:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 316
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 317
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/SudokuListActivity$5;->this$0:Lcom/nrsmagic/sudoku/gui/SudokuListActivity;

    #calls: Lcom/nrsmagic/sudoku/gui/SudokuListActivity;->updateList()V
    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/SudokuListActivity;->access$2(Lcom/nrsmagic/sudoku/gui/SudokuListActivity;)V

    .line 318
    return-void
.end method
