.class Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog$6;
.super Ljava/lang/Object;
.source "IMPopupDialog.java"

# interfaces
.implements Landroid/widget/TabHost$TabContentFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;->createTabView()Landroid/widget/TabHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;

.field private final synthetic val$editNoteView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog$6;->this$0:Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog;

    iput-object p2, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog$6;->val$editNoteView:Landroid/view/View;

    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createTabContent(Ljava/lang/String;)Landroid/view/View;
    .locals 1
    .parameter "tag"

    .prologue
    .line 225
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/inputmethod/IMPopupDialog$6;->val$editNoteView:Landroid/view/View;

    return-object v0
.end method
