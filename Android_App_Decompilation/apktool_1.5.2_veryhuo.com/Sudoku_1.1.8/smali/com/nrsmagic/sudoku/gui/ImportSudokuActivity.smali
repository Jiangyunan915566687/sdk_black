.class public Lcom/nrsmagic/sudoku/gui/ImportSudokuActivity;
.super Landroid/app/Activity;
.source "ImportSudokuActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 38
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/nrsmagic/sudoku/gui/ImportSudokuActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 41
    .local v0, intent:Landroid/content/Intent;
    const-class v1, Lcom/nrsmagic/sudoku/gui/SudokuImportActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 42
    invoke-virtual {p0, v0}, Lcom/nrsmagic/sudoku/gui/ImportSudokuActivity;->startActivity(Landroid/content/Intent;)V

    .line 43
    invoke-virtual {p0}, Lcom/nrsmagic/sudoku/gui/ImportSudokuActivity;->finish()V

    .line 44
    return-void
.end method
