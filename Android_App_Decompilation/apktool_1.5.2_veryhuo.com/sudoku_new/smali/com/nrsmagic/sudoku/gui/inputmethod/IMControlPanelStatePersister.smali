.class public Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanelStatePersister;
.super Ljava/lang/Object;
.source "IMControlPanelStatePersister.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanelStatePersister$StateBundle;
    }
.end annotation


# static fields
.field private static final PREFIX:Ljava/lang/String;


# instance fields
.field private mPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanel;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanelStatePersister;->PREFIX:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanelStatePersister;->mPreferences:Landroid/content/SharedPreferences;

    .line 22
    return-void
.end method


# virtual methods
.method public restoreState(Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanel;)V
    .locals 9
    .parameter "controlPanel"

    .prologue
    const/4 v8, 0x0

    .line 40
    new-instance v0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanelStatePersister$StateBundle;

    iget-object v4, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanelStatePersister;->mPreferences:Landroid/content/SharedPreferences;

    new-instance v5, Ljava/lang/StringBuilder;

    sget-object v6, Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanelStatePersister;->PREFIX:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v4, v5, v8}, Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanelStatePersister$StateBundle;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    .line 41
    .local v0, cpState:Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanelStatePersister$StateBundle;
    const-string v4, "activeMethodIndex"

    invoke-virtual {v0, v4, v8}, Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanelStatePersister$StateBundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 42
    .local v2, methodId:I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    .line 43
    invoke-virtual {p1, v2}, Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanel;->activateInputMethod(I)V

    .line 47
    :cond_0
    invoke-virtual {p1}, Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanel;->getInputMethods()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 51
    return-void

    .line 47
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nrsmagic/sudoku/gui/inputmethod/InputMethod;

    .line 48
    .local v1, im:Lcom/nrsmagic/sudoku/gui/inputmethod/InputMethod;
    new-instance v3, Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanelStatePersister$StateBundle;

    iget-object v5, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanelStatePersister;->mPreferences:Landroid/content/SharedPreferences;

    new-instance v6, Ljava/lang/StringBuilder;

    sget-object v7, Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanelStatePersister;->PREFIX:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/nrsmagic/sudoku/gui/inputmethod/InputMethod;->getInputMethodName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v5, v6, v8}, Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanelStatePersister$StateBundle;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    .line 49
    .local v3, savedState:Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanelStatePersister$StateBundle;
    invoke-virtual {v1, v3}, Lcom/nrsmagic/sudoku/gui/inputmethod/InputMethod;->onRestoreState(Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanelStatePersister$StateBundle;)V

    goto :goto_0
.end method

.method public saveState(Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanel;)V
    .locals 8
    .parameter "controlPanel"

    .prologue
    const/4 v7, 0x1

    .line 26
    new-instance v0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanelStatePersister$StateBundle;

    iget-object v3, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanelStatePersister;->mPreferences:Landroid/content/SharedPreferences;

    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanelStatePersister;->PREFIX:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4, v7}, Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanelStatePersister$StateBundle;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    .line 27
    .local v0, cpState:Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanelStatePersister$StateBundle;
    const-string v3, "activeMethodIndex"

    invoke-virtual {p1}, Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanel;->getActiveMethodIndex()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanelStatePersister$StateBundle;->putInt(Ljava/lang/String;I)V

    .line 28
    invoke-virtual {v0}, Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanelStatePersister$StateBundle;->commit()V

    .line 31
    invoke-virtual {p1}, Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanel;->getInputMethods()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 36
    return-void

    .line 31
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nrsmagic/sudoku/gui/inputmethod/InputMethod;

    .line 32
    .local v1, im:Lcom/nrsmagic/sudoku/gui/inputmethod/InputMethod;
    new-instance v2, Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanelStatePersister$StateBundle;

    iget-object v4, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanelStatePersister;->mPreferences:Landroid/content/SharedPreferences;

    new-instance v5, Ljava/lang/StringBuilder;

    sget-object v6, Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanelStatePersister;->PREFIX:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/nrsmagic/sudoku/gui/inputmethod/InputMethod;->getInputMethodName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v4, v5, v7}, Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanelStatePersister$StateBundle;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    .line 33
    .local v2, outState:Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanelStatePersister$StateBundle;
    invoke-virtual {v1, v2}, Lcom/nrsmagic/sudoku/gui/inputmethod/InputMethod;->onSaveState(Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanelStatePersister$StateBundle;)V

    .line 34
    invoke-virtual {v2}, Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanelStatePersister$StateBundle;->commit()V

    goto :goto_0
.end method
