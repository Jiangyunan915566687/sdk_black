.class Lcom/nrsmagic/sudoku/gui/SudokuListActivity$4;
.super Ljava/lang/Object;
.source "SudokuListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


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


# direct methods
.method constructor <init>(Lcom/nrsmagic/sudoku/gui/SudokuListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nrsmagic/sudoku/gui/SudokuListActivity$4;->this$0:Lcom/nrsmagic/sudoku/gui/SudokuListActivity;

    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"
    .parameter "isChecked"

    .prologue
    .line 297
    packed-switch p2, :pswitch_data_0

    .line 308
    :goto_0
    return-void

    .line 299
    :pswitch_0
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/SudokuListActivity$4;->this$0:Lcom/nrsmagic/sudoku/gui/SudokuListActivity;

    #getter for: Lcom/nrsmagic/sudoku/gui/SudokuListActivity;->mListFilter:Lcom/nrsmagic/sudoku/gui/SudokuListFilter;
    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/SudokuListActivity;->access$6(Lcom/nrsmagic/sudoku/gui/SudokuListActivity;)Lcom/nrsmagic/sudoku/gui/SudokuListFilter;

    move-result-object v0

    iput-boolean p3, v0, Lcom/nrsmagic/sudoku/gui/SudokuListFilter;->showStateNotStarted:Z

    goto :goto_0

    .line 302
    :pswitch_1
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/SudokuListActivity$4;->this$0:Lcom/nrsmagic/sudoku/gui/SudokuListActivity;

    #getter for: Lcom/nrsmagic/sudoku/gui/SudokuListActivity;->mListFilter:Lcom/nrsmagic/sudoku/gui/SudokuListFilter;
    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/SudokuListActivity;->access$6(Lcom/nrsmagic/sudoku/gui/SudokuListActivity;)Lcom/nrsmagic/sudoku/gui/SudokuListFilter;

    move-result-object v0

    iput-boolean p3, v0, Lcom/nrsmagic/sudoku/gui/SudokuListFilter;->showStatePlaying:Z

    goto :goto_0

    .line 305
    :pswitch_2
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/SudokuListActivity$4;->this$0:Lcom/nrsmagic/sudoku/gui/SudokuListActivity;

    #getter for: Lcom/nrsmagic/sudoku/gui/SudokuListActivity;->mListFilter:Lcom/nrsmagic/sudoku/gui/SudokuListFilter;
    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/SudokuListActivity;->access$6(Lcom/nrsmagic/sudoku/gui/SudokuListActivity;)Lcom/nrsmagic/sudoku/gui/SudokuListFilter;

    move-result-object v0

    iput-boolean p3, v0, Lcom/nrsmagic/sudoku/gui/SudokuListFilter;->showStateCompleted:Z

    goto :goto_0

    .line 297
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
