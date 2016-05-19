.class Lcom/nrsmagic/sudoku/gui/HintsQueue$3;
.super Ljava/lang/Object;
.source "HintsQueue.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nrsmagic/sudoku/gui/HintsQueue;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nrsmagic/sudoku/gui/HintsQueue;


# direct methods
.method constructor <init>(Lcom/nrsmagic/sudoku/gui/HintsQueue;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nrsmagic/sudoku/gui/HintsQueue$3;->this$0:Lcom/nrsmagic/sudoku/gui/HintsQueue;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/HintsQueue$3;->this$0:Lcom/nrsmagic/sudoku/gui/HintsQueue;

    #calls: Lcom/nrsmagic/sudoku/gui/HintsQueue;->processQueue()V
    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/HintsQueue;->access$1(Lcom/nrsmagic/sudoku/gui/HintsQueue;)V

    .line 79
    return-void
.end method
