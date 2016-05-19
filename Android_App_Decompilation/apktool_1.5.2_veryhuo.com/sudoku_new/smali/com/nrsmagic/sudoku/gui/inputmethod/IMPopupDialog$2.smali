.class Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog$2;
.super Ljava/lang/Object;
.source "IMPopupDialog.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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
    iput-object p1, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog$2;->this$0:Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;

    .line 315
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 320
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 321
    .local v0, number:Ljava/lang/Integer;
    if-eqz p2, :cond_0

    .line 322
    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog$2;->this$0:Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;

    #getter for: Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;->mNoteSelectedNumbers:Ljava/util/Set;
    invoke-static {v1}, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;->access$1(Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 326
    :goto_0
    return-void

    .line 324
    :cond_0
    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog$2;->this$0:Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;

    #getter for: Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;->mNoteSelectedNumbers:Ljava/util/Set;
    invoke-static {v1}, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;->access$1(Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method
