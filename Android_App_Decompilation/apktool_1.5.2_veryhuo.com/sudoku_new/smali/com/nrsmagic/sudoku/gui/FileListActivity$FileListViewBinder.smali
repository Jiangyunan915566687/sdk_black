.class Lcom/nrsmagic/sudoku/gui/FileListActivity$FileListViewBinder;
.super Ljava/lang/Object;
.source "FileListActivity.java"

# interfaces
.implements Landroid/widget/SimpleAdapter$ViewBinder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nrsmagic/sudoku/gui/FileListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FileListViewBinder"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nrsmagic/sudoku/gui/FileListActivity$FileListViewBinder;)V
    .locals 0
    .parameter

    .prologue
    .line 207
    invoke-direct {p0}, Lcom/nrsmagic/sudoku/gui/FileListActivity$FileListViewBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public setViewValue(Landroid/view/View;Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 2
    .parameter "view"
    .parameter "data"
    .parameter "textRepresentation"

    .prologue
    .line 212
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 220
    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 214
    :pswitch_0
    if-nez p2, :cond_0

    move-object v0, p1

    .line 215
    check-cast v0, Landroid/widget/TextView;

    .line 216
    .local v0, detailView:Landroid/widget/TextView;
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 217
    const/4 v1, 0x1

    goto :goto_0

    .line 212
    :pswitch_data_0
    .packed-switch 0x7f080003
        :pswitch_0
    .end packed-switch
.end method
