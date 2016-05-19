.class Lcom/nrsmagic/sudoku/gui/SudokuExportActivity$1;
.super Ljava/lang/Object;
.source "SudokuExportActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nrsmagic/sudoku/gui/SudokuExportActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nrsmagic/sudoku/gui/SudokuExportActivity;


# direct methods
.method constructor <init>(Lcom/nrsmagic/sudoku/gui/SudokuExportActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nrsmagic/sudoku/gui/SudokuExportActivity$1;->this$0:Lcom/nrsmagic/sudoku/gui/SudokuExportActivity;

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/SudokuExportActivity$1;->this$0:Lcom/nrsmagic/sudoku/gui/SudokuExportActivity;

    #calls: Lcom/nrsmagic/sudoku/gui/SudokuExportActivity;->exportToFile()V
    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/SudokuExportActivity;->access$0(Lcom/nrsmagic/sudoku/gui/SudokuExportActivity;)V

    .line 104
    return-void
.end method
