.class Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity$2;
.super Ljava/lang/Object;
.source "SudokuPlayActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;->onWindowFocusChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;


# direct methods
.method constructor <init>(Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity$2;->this$0:Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 231
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity$2;->this$0:Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;

    invoke-virtual {v0}, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 232
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity$2;->this$0:Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;

    #getter for: Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;->mRootLayout:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;->access$1(Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 233
    return-void
.end method
