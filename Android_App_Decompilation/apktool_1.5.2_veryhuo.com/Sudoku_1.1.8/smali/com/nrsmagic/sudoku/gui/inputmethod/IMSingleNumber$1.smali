.class Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber$1;
.super Ljava/lang/Object;
.source "IMSingleNumber.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber;
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
    iput-object p1, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber$1;->this$0:Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber;

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 158
    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber$1;->this$0:Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    #setter for: Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber;->mSelectedNumber:I
    invoke-static {v1, v0}, Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber;->access$0(Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber;I)V

    .line 160
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber$1;->this$0:Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber;

    #calls: Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber;->update()V
    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber;->access$1(Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber;)V

    .line 161
    return-void
.end method
