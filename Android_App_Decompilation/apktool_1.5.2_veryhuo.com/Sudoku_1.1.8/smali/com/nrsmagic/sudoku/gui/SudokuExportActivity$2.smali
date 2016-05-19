.class Lcom/nrsmagic/sudoku/gui/SudokuExportActivity$2;
.super Ljava/lang/Object;
.source "SudokuExportActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nrsmagic/sudoku/gui/SudokuExportActivity;->onCreateDialog(I)Landroid/app/Dialog;
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
    iput-object p1, p0, Lcom/nrsmagic/sudoku/gui/SudokuExportActivity$2;->this$0:Lcom/nrsmagic/sudoku/gui/SudokuExportActivity;

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/SudokuExportActivity$2;->this$0:Lcom/nrsmagic/sudoku/gui/SudokuExportActivity;

    #calls: Lcom/nrsmagic/sudoku/gui/SudokuExportActivity;->startExportToFileTask()V
    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/SudokuExportActivity;->access$1(Lcom/nrsmagic/sudoku/gui/SudokuExportActivity;)V

    .line 120
    return-void
.end method
