.class public Lcom/nrsmagic/sudoku/gui/SudokuListFilter;
.super Ljava/lang/Object;
.source "SudokuListFilter.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field public showStateCompleted:Z

.field public showStateNotStarted:Z

.field public showStatePlaying:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-boolean v0, p0, Lcom/nrsmagic/sudoku/gui/SudokuListFilter;->showStateNotStarted:Z

    .line 36
    iput-boolean v0, p0, Lcom/nrsmagic/sudoku/gui/SudokuListFilter;->showStatePlaying:Z

    .line 37
    iput-boolean v0, p0, Lcom/nrsmagic/sudoku/gui/SudokuListFilter;->showStateCompleted:Z

    .line 40
    iput-object p1, p0, Lcom/nrsmagic/sudoku/gui/SudokuListFilter;->mContext:Landroid/content/Context;

    .line 41
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 46
    .local v0, visibleStates:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-boolean v1, p0, Lcom/nrsmagic/sudoku/gui/SudokuListFilter;->showStateNotStarted:Z

    if-eqz v1, :cond_0

    .line 47
    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/SudokuListFilter;->mContext:Landroid/content/Context;

    const v2, 0x7f090022

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    :cond_0
    iget-boolean v1, p0, Lcom/nrsmagic/sudoku/gui/SudokuListFilter;->showStatePlaying:Z

    if-eqz v1, :cond_1

    .line 50
    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/SudokuListFilter;->mContext:Landroid/content/Context;

    const v2, 0x7f090021

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    :cond_1
    iget-boolean v1, p0, Lcom/nrsmagic/sudoku/gui/SudokuListFilter;->showStateCompleted:Z

    if-eqz v1, :cond_2

    .line 53
    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/SudokuListFilter;->mContext:Landroid/content/Context;

    const v2, 0x7f090020

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    :cond_2
    const-string v1, ","

    invoke-static {v0, v1}, Lcom/nrsmagic/sudoku/utils/StringUtils;->join(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
