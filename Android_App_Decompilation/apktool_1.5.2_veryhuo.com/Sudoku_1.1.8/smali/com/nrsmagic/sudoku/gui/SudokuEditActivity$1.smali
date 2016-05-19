.class Lcom/nrsmagic/sudoku/gui/SudokuEditActivity$1;
.super Ljava/lang/Object;
.source "SudokuEditActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nrsmagic/sudoku/gui/SudokuEditActivity;->onWindowFocusChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nrsmagic/sudoku/gui/SudokuEditActivity;


# direct methods
.method constructor <init>(Lcom/nrsmagic/sudoku/gui/SudokuEditActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nrsmagic/sudoku/gui/SudokuEditActivity$1;->this$0:Lcom/nrsmagic/sudoku/gui/SudokuEditActivity;

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/SudokuEditActivity$1;->this$0:Lcom/nrsmagic/sudoku/gui/SudokuEditActivity;

    invoke-virtual {v0}, Lcom/nrsmagic/sudoku/gui/SudokuEditActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 170
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/SudokuEditActivity$1;->this$0:Lcom/nrsmagic/sudoku/gui/SudokuEditActivity;

    #getter for: Lcom/nrsmagic/sudoku/gui/SudokuEditActivity;->mRootLayout:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/SudokuEditActivity;->access$0(Lcom/nrsmagic/sudoku/gui/SudokuEditActivity;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 171
    return-void
.end method
