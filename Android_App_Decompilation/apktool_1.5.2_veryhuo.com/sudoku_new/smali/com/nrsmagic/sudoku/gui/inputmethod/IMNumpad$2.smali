.class Lcom/nrsmagic/sudoku/gui/inputmethod/IMNumpad$2;
.super Ljava/lang/Object;
.source "IMNumpad.java"

# interfaces
.implements Lcom/nrsmagic/sudoku/game/CellCollection$OnChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nrsmagic/sudoku/gui/inputmethod/IMNumpad;
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
    iput-object p1, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMNumpad$2;->this$0:Lcom/nrsmagic/sudoku/gui/inputmethod/IMNumpad;

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange()V
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMNumpad$2;->this$0:Lcom/nrsmagic/sudoku/gui/inputmethod/IMNumpad;

    iget-boolean v0, v0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMNumpad;->mActive:Z

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMNumpad$2;->this$0:Lcom/nrsmagic/sudoku/gui/inputmethod/IMNumpad;

    #calls: Lcom/nrsmagic/sudoku/gui/inputmethod/IMNumpad;->update()V
    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/inputmethod/IMNumpad;->access$2(Lcom/nrsmagic/sudoku/gui/inputmethod/IMNumpad;)V

    .line 201
    :cond_0
    return-void
.end method
