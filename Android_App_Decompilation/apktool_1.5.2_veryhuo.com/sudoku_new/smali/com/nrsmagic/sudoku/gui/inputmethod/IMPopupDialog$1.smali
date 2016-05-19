.class Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog$1;
.super Ljava/lang/Object;
.source "IMPopupDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;


# direct methods
.method constructor <init>(Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog$1;->this$0:Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;

    .line 299
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 302
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 304
    .local v0, number:Ljava/lang/Integer;
    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog$1;->this$0:Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;

    #getter for: Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;->mOnNumberEditListener:Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog$OnNumberEditListener;
    invoke-static {v1}, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;->access$0(Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;)Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog$OnNumberEditListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 305
    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog$1;->this$0:Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;

    #getter for: Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;->mOnNumberEditListener:Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog$OnNumberEditListener;
    invoke-static {v1}, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;->access$0(Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;)Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog$OnNumberEditListener;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog$OnNumberEditListener;->onNumberEdit(I)Z

    .line 308
    :cond_0
    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog$1;->this$0:Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;

    invoke-virtual {v1}, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;->dismiss()V

    .line 309
    return-void
.end method
