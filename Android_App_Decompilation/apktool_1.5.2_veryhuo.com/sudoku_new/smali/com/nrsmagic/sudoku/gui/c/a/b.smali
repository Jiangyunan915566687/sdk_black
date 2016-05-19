.class Lcom/nrsmagic/sudoku/gui/c/a/b;
.super Landroid/widget/BaseAdapter;


# instance fields
.field final synthetic a:Lcom/nrsmagic/sudoku/gui/c/a/a;

.field private b:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/nrsmagic/sudoku/gui/c/a/a;)V
    .locals 1

    iput-object p1, p0, Lcom/nrsmagic/sudoku/gui/c/a/b;->a:Lcom/nrsmagic/sudoku/gui/c/a/a;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/c/a/b;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/c/a/b;->b:Ljava/util/List;

    return-object v0
.end method

.method public a(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/nrsmagic/sudoku/gui/c/a/b;->b:Ljava/util/List;

    invoke-virtual {p0}, Lcom/nrsmagic/sudoku/gui/c/a/b;->notifyDataSetChanged()V

    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/c/a/b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/c/a/b;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    if-nez p2, :cond_1

    new-instance v1, Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/c/a/b;->a:Lcom/nrsmagic/sudoku/gui/c/a/a;

    invoke-virtual {v0}, Lcom/nrsmagic/sudoku/gui/c/a/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v0, Landroid/widget/Gallery$LayoutParams;

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/c/a/b;->a:Lcom/nrsmagic/sudoku/gui/c/a/a;

    invoke-static {v2}, Lcom/nrsmagic/sudoku/gui/c/a/a;->a(Lcom/nrsmagic/sudoku/gui/c/a/a;)I

    move-result v2

    iget-object v3, p0, Lcom/nrsmagic/sudoku/gui/c/a/b;->a:Lcom/nrsmagic/sudoku/gui/c/a/a;

    invoke-static {v3}, Lcom/nrsmagic/sudoku/gui/c/a/a;->a(Lcom/nrsmagic/sudoku/gui/c/a/a;)I

    move-result v3

    invoke-direct {v0, v2, v3}, Landroid/widget/Gallery$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/c/a/b;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/c/a/b;->a:Lcom/nrsmagic/sudoku/gui/c/a/a;

    invoke-virtual {v2}, Lcom/nrsmagic/sudoku/gui/c/a/a;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/nrsmagic/sudoku/gui/c/d/a;->a(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object v0, v1

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-object v1

    :cond_1
    move-object v1, p2

    goto :goto_0
.end method
