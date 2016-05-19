.class Lcom/nrsmagic/sudoku/gui/FolderListActivity$FolderListViewBinder$1;
.super Ljava/lang/Object;
.source "FolderListActivity.java"

# interfaces
.implements Lcom/nrsmagic/sudoku/gui/FolderDetailLoader$FolderDetailCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nrsmagic/sudoku/gui/FolderListActivity$FolderListViewBinder;->setViewValue(Landroid/view/View;Landroid/database/Cursor;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/nrsmagic/sudoku/gui/FolderListActivity$FolderListViewBinder;

.field private final synthetic val$detailView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/nrsmagic/sudoku/gui/FolderListActivity$FolderListViewBinder;Landroid/widget/TextView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nrsmagic/sudoku/gui/FolderListActivity$FolderListViewBinder$1;->this$1:Lcom/nrsmagic/sudoku/gui/FolderListActivity$FolderListViewBinder;

    iput-object p2, p0, Lcom/nrsmagic/sudoku/gui/FolderListActivity$FolderListViewBinder$1;->val$detailView:Landroid/widget/TextView;

    .line 389
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoaded(Lcom/nrsmagic/sudoku/game/FolderInfo;)V
    .locals 2
    .parameter "folderInfo"

    .prologue
    .line 392
    if-eqz p1, :cond_0

    .line 393
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/FolderListActivity$FolderListViewBinder$1;->val$detailView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/FolderListActivity$FolderListViewBinder$1;->this$1:Lcom/nrsmagic/sudoku/gui/FolderListActivity$FolderListViewBinder;

    #getter for: Lcom/nrsmagic/sudoku/gui/FolderListActivity$FolderListViewBinder;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/nrsmagic/sudoku/gui/FolderListActivity$FolderListViewBinder;->access$0(Lcom/nrsmagic/sudoku/gui/FolderListActivity$FolderListViewBinder;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/nrsmagic/sudoku/game/FolderInfo;->getDetail(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 394
    :cond_0
    return-void
.end method
