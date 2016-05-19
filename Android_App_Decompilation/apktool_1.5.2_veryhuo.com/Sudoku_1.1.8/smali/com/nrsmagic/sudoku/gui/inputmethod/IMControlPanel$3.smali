.class Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanel$3;
.super Ljava/lang/Object;
.source "IMControlPanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanel;


# direct methods
.method constructor <init>(Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanel;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanel$3;->this$0:Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanel;

    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 267
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanel$3;->this$0:Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanel;

    invoke-virtual {v0}, Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanel;->activateNextInputMethod()V

    .line 268
    return-void
.end method
