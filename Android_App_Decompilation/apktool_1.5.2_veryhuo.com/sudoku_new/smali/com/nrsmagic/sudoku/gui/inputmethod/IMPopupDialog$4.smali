.class Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog$4;
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
    iput-object p1, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog$4;->this$0:Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;

    .line 355
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 359
    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog$4;->this$0:Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;

    #getter for: Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;->mOnNoteEditListener:Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog$OnNoteEditListener;
    invoke-static {v1}, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;->access$4(Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;)Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog$OnNoteEditListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 360
    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog$4;->this$0:Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;

    #getter for: Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;->mNoteSelectedNumbers:Ljava/util/Set;
    invoke-static {v1}, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;->access$1(Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    new-array v0, v1, [Ljava/lang/Integer;

    .line 361
    .local v0, numbers:[Ljava/lang/Integer;
    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog$4;->this$0:Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;

    #getter for: Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;->mOnNoteEditListener:Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog$OnNoteEditListener;
    invoke-static {v1}, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;->access$4(Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;)Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog$OnNoteEditListener;

    move-result-object v2

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog$4;->this$0:Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;

    #getter for: Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;->mNoteSelectedNumbers:Ljava/util/Set;
    invoke-static {v1}, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;->access$1(Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Integer;

    invoke-interface {v2, v1}, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog$OnNoteEditListener;->onNoteEdit([Ljava/lang/Integer;)Z

    .line 363
    .end local v0           #numbers:[Ljava/lang/Integer;
    :cond_0
    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog$4;->this$0:Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;

    invoke-virtual {v1}, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;->dismiss()V

    .line 364
    return-void
.end method
