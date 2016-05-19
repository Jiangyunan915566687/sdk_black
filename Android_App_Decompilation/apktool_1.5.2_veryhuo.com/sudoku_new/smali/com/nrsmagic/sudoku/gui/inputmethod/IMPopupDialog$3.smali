.class Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog$3;
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
    iput-object p1, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog$3;->this$0:Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;

    .line 333
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const/4 v5, 0x0

    .line 336
    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog$3;->this$0:Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;

    #getter for: Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;->mTabHost:Landroid/widget/TabHost;
    invoke-static {v2}, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;->access$2(Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;)Landroid/widget/TabHost;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v1

    .line 338
    .local v1, currentTab:Ljava/lang/String;
    const-string v2, "number"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 339
    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog$3;->this$0:Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;

    #getter for: Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;->mOnNumberEditListener:Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog$OnNumberEditListener;
    invoke-static {v2}, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;->access$0(Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;)Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog$OnNumberEditListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 340
    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog$3;->this$0:Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;

    #getter for: Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;->mOnNumberEditListener:Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog$OnNumberEditListener;
    invoke-static {v2}, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;->access$0(Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;)Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog$OnNumberEditListener;

    move-result-object v2

    invoke-interface {v2, v5}, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog$OnNumberEditListener;->onNumberEdit(I)Z

    .line 342
    :cond_0
    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog$3;->this$0:Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;

    invoke-virtual {v2}, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;->dismiss()V

    .line 349
    :cond_1
    return-void

    .line 344
    :cond_2
    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog$3;->this$0:Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;

    #getter for: Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;->mNoteNumberButtons:Ljava/util/Map;
    invoke-static {v2}, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;->access$3(Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    .line 345
    .local v0, b:Landroid/widget/ToggleButton;
    invoke-virtual {v0, v5}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 346
    iget-object v3, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog$3;->this$0:Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;

    #getter for: Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;->mNoteSelectedNumbers:Ljava/util/Set;
    invoke-static {v3}, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;->access$1(Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;)Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method
