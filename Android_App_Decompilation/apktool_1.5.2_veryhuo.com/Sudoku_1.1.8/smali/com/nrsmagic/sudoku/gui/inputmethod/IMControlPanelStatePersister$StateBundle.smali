.class public Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanelStatePersister$StateBundle;
.super Ljava/lang/Object;
.source "IMControlPanelStatePersister.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanelStatePersister;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StateBundle"
.end annotation


# instance fields
.field private final mEditable:Z

.field private final mPrefEditor:Landroid/content/SharedPreferences$Editor;

.field private final mPreferences:Landroid/content/SharedPreferences;

.field private final mPrefix:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V
    .locals 1
    .parameter "preferences"
    .parameter "prefix"
    .parameter "editable"

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanelStatePersister$StateBundle;->mPreferences:Landroid/content/SharedPreferences;

    .line 71
    iput-object p2, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanelStatePersister$StateBundle;->mPrefix:Ljava/lang/String;

    .line 72
    iput-boolean p3, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanelStatePersister$StateBundle;->mEditable:Z

    .line 74
    iget-boolean v0, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanelStatePersister$StateBundle;->mEditable:Z

    if-eqz v0, :cond_0

    .line 75
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanelStatePersister$StateBundle;->mPrefEditor:Landroid/content/SharedPreferences$Editor;

    .line 79
    :goto_0
    return-void

    .line 77
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanelStatePersister$StateBundle;->mPrefEditor:Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method


# virtual methods
.method public commit()V
    .locals 2

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanelStatePersister$StateBundle;->mEditable:Z

    if-nez v0, :cond_0

    .line 127
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "StateBundle is not editable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanelStatePersister$StateBundle;->mPrefEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 130
    return-void
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 3
    .parameter "key"
    .parameter "defValue"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanelStatePersister$StateBundle;->mPreferences:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanelStatePersister$StateBundle;->mPrefix:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getFloat(Ljava/lang/String;F)F
    .locals 3
    .parameter "key"
    .parameter "defValue"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanelStatePersister$StateBundle;->mPreferences:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanelStatePersister$StateBundle;->mPrefix:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 3
    .parameter "key"
    .parameter "defValue"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanelStatePersister$StateBundle;->mPreferences:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanelStatePersister$StateBundle;->mPrefix:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "key"
    .parameter "defValue"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanelStatePersister$StateBundle;->mPreferences:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanelStatePersister$StateBundle;->mPrefix:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public putBoolean(Ljava/lang/String;Z)V
    .locals 3
    .parameter "key"
    .parameter "value"

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanelStatePersister$StateBundle;->mEditable:Z

    if-nez v0, :cond_0

    .line 99
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "StateBundle is not editable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanelStatePersister$StateBundle;->mPrefEditor:Landroid/content/SharedPreferences$Editor;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanelStatePersister$StateBundle;->mPrefix:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 102
    return-void
.end method

.method public putFloat(Ljava/lang/String;F)V
    .locals 3
    .parameter "key"
    .parameter "value"

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanelStatePersister$StateBundle;->mEditable:Z

    if-nez v0, :cond_0

    .line 106
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "StateBundle is not editable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanelStatePersister$StateBundle;->mPrefEditor:Landroid/content/SharedPreferences$Editor;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanelStatePersister$StateBundle;->mPrefix:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 109
    return-void
.end method

.method public putInt(Ljava/lang/String;I)V
    .locals 3
    .parameter "key"
    .parameter "value"

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanelStatePersister$StateBundle;->mEditable:Z

    if-nez v0, :cond_0

    .line 113
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "StateBundle is not editable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanelStatePersister$StateBundle;->mPrefEditor:Landroid/content/SharedPreferences$Editor;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanelStatePersister$StateBundle;->mPrefix:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 116
    return-void
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "key"
    .parameter "value"

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanelStatePersister$StateBundle;->mEditable:Z

    if-nez v0, :cond_0

    .line 120
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "StateBundle is not editable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanelStatePersister$StateBundle;->mPrefEditor:Landroid/content/SharedPreferences$Editor;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMControlPanelStatePersister$StateBundle;->mPrefix:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 123
    return-void
.end method
