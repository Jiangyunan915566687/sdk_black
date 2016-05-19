.class public Lcom/nrsmagic/sudoku/gui/r/d/e;
.super Landroid/widget/LinearLayout;


# static fields
.field public static a:I


# instance fields
.field private b:Landroid/widget/ImageButton;

.field private c:Landroid/content/Context;

.field private d:Lcom/nrsmagic/sudoku/gui/r/d/h;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, -0x1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/d/e;->d:Lcom/nrsmagic/sudoku/gui/r/d/h;

    iput-object p1, p0, Lcom/nrsmagic/sudoku/gui/r/d/e;->c:Landroid/content/Context;

    const v0, -0x131314

    invoke-virtual {p0, v0}, Lcom/nrsmagic/sudoku/gui/r/d/e;->setBackgroundColor(I)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/nrsmagic/sudoku/gui/r/d/e;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic a(Lcom/nrsmagic/sudoku/gui/r/d/e;)Lcom/nrsmagic/sudoku/gui/r/d/h;
    .locals 1

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/d/e;->d:Lcom/nrsmagic/sudoku/gui/r/d/h;

    return-object v0
.end method

.method static synthetic b(Lcom/nrsmagic/sudoku/gui/r/d/e;)Landroid/widget/ImageButton;
    .locals 1

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/d/e;->b:Landroid/widget/ImageButton;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;I)V
    .locals 2

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p2}, Lcom/nrsmagic/sudoku/gui/r/d/e;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/r/d/e;->c:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/nrsmagic/sudoku/gui/r/e/a;->a(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public a(Lcom/nrsmagic/sudoku/gui/r/d/h;)V
    .locals 0

    iput-object p1, p0, Lcom/nrsmagic/sudoku/gui/r/d/e;->d:Lcom/nrsmagic/sudoku/gui/r/d/h;

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    new-instance v0, Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/r/d/e;->c:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/d/e;->b:Landroid/widget/ImageButton;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/r/d/e;->b:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/nrsmagic/sudoku/gui/r/d/e;->c:Landroid/content/Context;

    invoke-static {v3, v0}, Lcom/nrsmagic/sudoku/gui/r/e/a;->a(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/d/e;->b:Landroid/widget/ImageButton;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-direct {v2, v3, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v0, 0x3f80

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/d/e;->c:Landroid/content/Context;

    const/4 v3, 0x3

    invoke-static {v0, v3}, Lcom/nrsmagic/sudoku/gui/r/e/h;->a(Landroid/content/Context;I)I

    move-result v0

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/d/e;->b:Landroid/widget/ImageButton;

    invoke-virtual {p0, v0, v2}, Lcom/nrsmagic/sudoku/gui/r/d/e;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/d/e;->b:Landroid/widget/ImageButton;

    new-instance v3, Lcom/nrsmagic/sudoku/gui/r/d/f;

    invoke-direct {v3, p0}, Lcom/nrsmagic/sudoku/gui/r/d/f;-><init>(Lcom/nrsmagic/sudoku/gui/r/d/e;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/d/e;->b:Landroid/widget/ImageButton;

    new-instance v3, Lcom/nrsmagic/sudoku/gui/r/d/g;

    invoke-direct {v3, p0, p1, v2}, Lcom/nrsmagic/sudoku/gui/r/d/g;-><init>(Lcom/nrsmagic/sudoku/gui/r/d/e;Ljava/util/List;Landroid/widget/LinearLayout$LayoutParams;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_2
    return-void
.end method
