.class Lcom/nrsmagic/sudoku/gui/r/d/j;
.super Landroid/widget/BaseAdapter;


# instance fields
.field a:Ljava/util/List;

.field final synthetic b:Lcom/nrsmagic/sudoku/gui/r/d/i;


# direct methods
.method constructor <init>(Lcom/nrsmagic/sudoku/gui/r/d/i;)V
    .locals 1

    iput-object p1, p0, Lcom/nrsmagic/sudoku/gui/r/d/j;->b:Lcom/nrsmagic/sudoku/gui/r/d/i;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/d/j;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/d/j;->a:Ljava/util/List;

    return-object v0
.end method

.method public a(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/nrsmagic/sudoku/gui/r/d/j;->a:Ljava/util/List;

    invoke-virtual {p0}, Lcom/nrsmagic/sudoku/gui/r/d/j;->notifyDataSetChanged()V

    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/d/j;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/d/j;->a:Ljava/util/List;

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

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/d/j;->b:Lcom/nrsmagic/sudoku/gui/r/d/i;

    invoke-virtual {v0}, Lcom/nrsmagic/sudoku/gui/r/d/i;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v0, Landroid/widget/Gallery$LayoutParams;

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/r/d/j;->b:Lcom/nrsmagic/sudoku/gui/r/d/i;

    invoke-static {v2}, Lcom/nrsmagic/sudoku/gui/r/d/i;->a(Lcom/nrsmagic/sudoku/gui/r/d/i;)I

    move-result v2

    iget-object v3, p0, Lcom/nrsmagic/sudoku/gui/r/d/j;->b:Lcom/nrsmagic/sudoku/gui/r/d/i;

    invoke-static {v3}, Lcom/nrsmagic/sudoku/gui/r/d/i;->a(Lcom/nrsmagic/sudoku/gui/r/d/i;)I

    move-result v3

    invoke-direct {v0, v2, v3}, Landroid/widget/Gallery$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/d/j;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/r/d/j;->b:Lcom/nrsmagic/sudoku/gui/r/d/i;

    invoke-virtual {v2}, Lcom/nrsmagic/sudoku/gui/r/d/i;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/nrsmagic/sudoku/gui/r/e/a;->a(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-object v1

    :cond_1
    move-object v1, p2

    goto :goto_0
.end method
