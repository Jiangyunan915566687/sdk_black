.class Lcom/nrsmagic/sudoku/gui/HintsQueue$2;
.super Ljava/lang/Object;
.source "HintsQueue.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


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
    iput-object p1, p0, Lcom/nrsmagic/sudoku/gui/HintsQueue$2;->this$0:Lcom/nrsmagic/sudoku/gui/HintsQueue;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 3
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    .line 60
    const-string v0, "show_hints"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/HintsQueue$2;->this$0:Lcom/nrsmagic/sudoku/gui/HintsQueue;

    const-string v1, "show_hints"

    const/4 v2, 0x1

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    #setter for: Lcom/nrsmagic/sudoku/gui/HintsQueue;->mOneTimeHintsEnabled:Z
    invoke-static {v0, v1}, Lcom/nrsmagic/sudoku/gui/HintsQueue;->access$0(Lcom/nrsmagic/sudoku/gui/HintsQueue;Z)V

    .line 63
    :cond_0
    return-void
.end method
