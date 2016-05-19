.class final Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity$GameTimer;
.super Lcom/nrsmagic/sudoku/gui/Timer;
.source "SudokuPlayActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "GameTimer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;


# direct methods
.method constructor <init>(Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;)V
    .locals 2
    .parameter

    .prologue
    .line 510
    iput-object p1, p0, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity$GameTimer;->this$0:Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;

    .line 511
    const-wide/16 v0, 0x3e8

    invoke-direct {p0, v0, v1}, Lcom/nrsmagic/sudoku/gui/Timer;-><init>(J)V

    .line 512
    return-void
.end method


# virtual methods
.method protected step(IJ)Z
    .locals 1
    .parameter "count"
    .parameter "time"

    .prologue
    .line 516
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity$GameTimer;->this$0:Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;

    invoke-virtual {v0}, Lcom/nrsmagic/sudoku/gui/SudokuPlayActivity;->updateTime()V

    .line 519
    const/4 v0, 0x0

    return v0
.end method
