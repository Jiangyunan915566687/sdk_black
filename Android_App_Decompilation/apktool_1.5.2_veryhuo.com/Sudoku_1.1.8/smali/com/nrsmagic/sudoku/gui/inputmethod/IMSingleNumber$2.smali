.class Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber$2;
.super Ljava/lang/Object;
.source "IMSingleNumber.java"

# interfaces
.implements Lcom/nrsmagic/sudoku/game/CellCollection$OnChangeListener;


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
    iput-object p1, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber$2;->this$0:Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber;

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange()V
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber$2;->this$0:Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber;

    iget-boolean v0, v0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber;->mActive:Z

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber$2;->this$0:Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber;

    #calls: Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber;->update()V
    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber;->access$1(Lcom/nrsmagic/sudoku/gui/inputmethod/IMSingleNumber;)V

    .line 171
    :cond_0
    return-void
.end method
