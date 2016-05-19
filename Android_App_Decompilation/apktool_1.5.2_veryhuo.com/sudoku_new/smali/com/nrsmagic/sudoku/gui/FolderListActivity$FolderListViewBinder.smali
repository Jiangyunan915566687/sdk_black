.class Lcom/nrsmagic/sudoku/gui/FolderListActivity$FolderListViewBinder;
.super Ljava/lang/Object;
.source "FolderListActivity.java"

# interfaces
.implements Landroid/widget/SimpleCursorAdapter$ViewBinder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nrsmagic/sudoku/gui/FolderListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FolderListViewBinder"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDetailLoader:Lcom/nrsmagic/sudoku/gui/FolderDetailLoader;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 373
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 374
    iput-object p1, p0, Lcom/nrsmagic/sudoku/gui/FolderListActivity$FolderListViewBinder;->mContext:Landroid/content/Context;

    .line 375
    new-instance v0, Lcom/nrsmagic/sudoku/gui/FolderDetailLoader;

    invoke-direct {v0, p1}, Lcom/nrsmagic/sudoku/gui/FolderDetailLoader;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/FolderListActivity$FolderListViewBinder;->mDetailLoader:Lcom/nrsmagic/sudoku/gui/FolderDetailLoader;

    .line 376
    return-void
.end method

.method static synthetic access$0(Lcom/nrsmagic/sudoku/gui/FolderListActivity$FolderListViewBinder;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 369
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/FolderListActivity$FolderListViewBinder;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/FolderListActivity$FolderListViewBinder;->mDetailLoader:Lcom/nrsmagic/sudoku/gui/FolderDetailLoader;

    invoke-virtual {v0}, Lcom/nrsmagic/sudoku/gui/FolderDetailLoader;->destroy()V

    .line 403
    return-void
.end method

.method public setViewValue(Landroid/view/View;Landroid/database/Cursor;I)Z
    .locals 5
    .parameter "view"
    .parameter "c"
    .parameter "columnIndex"

    .prologue
    .line 381
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 398
    .end local p1
    :goto_0
    const/4 v3, 0x1

    return v3

    .line 383
    .restart local p1
    :pswitch_0
    check-cast p1, Landroid/widget/TextView;

    .end local p1
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 386
    .restart local p1
    :pswitch_1
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .local v1, folderID:J
    move-object v0, p1

    .line 387
    check-cast v0, Landroid/widget/TextView;

    .line 388
    .local v0, detailView:Landroid/widget/TextView;
    iget-object v3, p0, Lcom/nrsmagic/sudoku/gui/FolderListActivity$FolderListViewBinder;->mContext:Landroid/content/Context;

    const v4, 0x7f090062

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 389
    iget-object v3, p0, Lcom/nrsmagic/sudoku/gui/FolderListActivity$FolderListViewBinder;->mDetailLoader:Lcom/nrsmagic/sudoku/gui/FolderDetailLoader;

    new-instance v4, Lcom/nrsmagic/sudoku/gui/FolderListActivity$FolderListViewBinder$1;

    invoke-direct {v4, p0, v0}, Lcom/nrsmagic/sudoku/gui/FolderListActivity$FolderListViewBinder$1;-><init>(Lcom/nrsmagic/sudoku/gui/FolderListActivity$FolderListViewBinder;Landroid/widget/TextView;)V

    invoke-virtual {v3, v1, v2, v4}, Lcom/nrsmagic/sudoku/gui/FolderDetailLoader;->loadDetailAsync(JLcom/nrsmagic/sudoku/gui/FolderDetailLoader$FolderDetailCallback;)V

    goto :goto_0

    .line 381
    nop

    :pswitch_data_0
    .packed-switch 0x7f080002
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
