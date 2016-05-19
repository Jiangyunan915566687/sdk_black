.class public Lcom/nrsmagic/sudoku/gui/FileImportActivity;
.super Landroid/app/Activity;
.source "FileImportActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 43
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/nrsmagic/sudoku/gui/ImportSudokuActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 46
    .local v0, i:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/nrsmagic/sudoku/gui/FileImportActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 47
    invoke-virtual {p0, v0}, Lcom/nrsmagic/sudoku/gui/FileImportActivity;->startActivity(Landroid/content/Intent;)V

    .line 48
    invoke-virtual {p0}, Lcom/nrsmagic/sudoku/gui/FileImportActivity;->finish()V

    .line 49
    return-void
.end method
