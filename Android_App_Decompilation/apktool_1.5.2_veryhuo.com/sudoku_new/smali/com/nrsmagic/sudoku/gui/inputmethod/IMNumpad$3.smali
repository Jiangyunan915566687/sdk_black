.class Lcom/nrsmagic/sudoku/gui/inputmethod/IMNumpad$3;
.super Ljava/lang/Object;
.source "IMNumpad.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nrsmagic/sudoku/gui/inputmethod/IMNumpad;->createControlPanelView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nrsmagic/sudoku/gui/inputmethod/IMNumpad;


# direct methods
.method constructor <init>(Lcom/nrsmagic/sudoku/gui/inputmethod/IMNumpad;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMNumpad$3;->this$0:Lcom/nrsmagic/sudoku/gui/inputmethod/IMNumpad;

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 124
    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMNumpad$3;->this$0:Lcom/nrsmagic/sudoku/gui/inputmethod/IMNumpad;

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMNumpad$3;->this$0:Lcom/nrsmagic/sudoku/gui/inputmethod/IMNumpad;

    #getter for: Lcom/nrsmagic/sudoku/gui/inputmethod/IMNumpad;->mEditMode:I
    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/inputmethod/IMNumpad;->access$1(Lcom/nrsmagic/sudoku/gui/inputmethod/IMNumpad;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    #setter for: Lcom/nrsmagic/sudoku/gui/inputmethod/IMNumpad;->mEditMode:I
    invoke-static {v1, v0}, Lcom/nrsmagic/sudoku/gui/inputmethod/IMNumpad;->access$3(Lcom/nrsmagic/sudoku/gui/inputmethod/IMNumpad;I)V

    .line 125
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMNumpad$3;->this$0:Lcom/nrsmagic/sudoku/gui/inputmethod/IMNumpad;

    #calls: Lcom/nrsmagic/sudoku/gui/inputmethod/IMNumpad;->update()V
    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/inputmethod/IMNumpad;->access$2(Lcom/nrsmagic/sudoku/gui/inputmethod/IMNumpad;)V

    .line 126
    return-void

    .line 124
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
