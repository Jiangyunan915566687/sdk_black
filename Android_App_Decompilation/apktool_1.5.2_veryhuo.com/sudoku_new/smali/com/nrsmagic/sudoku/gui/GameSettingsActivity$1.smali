.class Lcom/nrsmagic/sudoku/gui/GameSettingsActivity$1;
.super Ljava/lang/Object;
.source "GameSettingsActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nrsmagic/sudoku/gui/GameSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nrsmagic/sudoku/gui/GameSettingsActivity;


# direct methods
.method constructor <init>(Lcom/nrsmagic/sudoku/gui/GameSettingsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nrsmagic/sudoku/gui/GameSettingsActivity$1;->this$0:Lcom/nrsmagic/sudoku/gui/GameSettingsActivity;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 53
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 55
    .local v1, newVal:Z
    new-instance v0, Lcom/nrsmagic/sudoku/gui/HintsQueue;

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/GameSettingsActivity$1;->this$0:Lcom/nrsmagic/sudoku/gui/GameSettingsActivity;

    invoke-direct {v0, v2}, Lcom/nrsmagic/sudoku/gui/HintsQueue;-><init>(Landroid/content/Context;)V

    .line 56
    .local v0, hm:Lcom/nrsmagic/sudoku/gui/HintsQueue;
    if-eqz v1, :cond_0

    .line 57
    invoke-virtual {v0}, Lcom/nrsmagic/sudoku/gui/HintsQueue;->resetOneTimeHints()V

    .line 59
    :cond_0
    const/4 v2, 0x1

    return v2
.end method
