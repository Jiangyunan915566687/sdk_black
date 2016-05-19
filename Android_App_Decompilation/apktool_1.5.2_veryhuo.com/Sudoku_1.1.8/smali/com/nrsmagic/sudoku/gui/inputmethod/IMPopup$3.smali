.class Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopup$3;
.super Ljava/lang/Object;
.source "IMPopup.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopup;


# direct methods
.method constructor <init>(Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopup;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopup$3;->this$0:Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopup;

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopup$3;->this$0:Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopup;

    iget-object v0, v0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopup;->mBoard:Lcom/nrsmagic/sudoku/gui/SudokuBoardView;

    invoke-virtual {v0}, Lcom/nrsmagic/sudoku/gui/SudokuBoardView;->hideTouchedCellHint()V

    .line 183
    return-void
.end method
