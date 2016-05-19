.class Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber$3;
.super Ljava/lang/Object;
.source "IMSingleNumber.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber;->createControlPanelView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber;


# direct methods
.method constructor <init>(Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber$3;->this$0:Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber;

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 145
    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber$3;->this$0:Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber;

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber$3;->this$0:Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber;

    #getter for: Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber;->mEditMode:I
    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber;->access$2(Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    #setter for: Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber;->mEditMode:I
    invoke-static {v1, v0}, Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber;->access$3(Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber;I)V

    .line 146
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber$3;->this$0:Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber;

    #calls: Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber;->update()V
    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber;->access$1(Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber;)V

    .line 147
    return-void

    .line 145
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
