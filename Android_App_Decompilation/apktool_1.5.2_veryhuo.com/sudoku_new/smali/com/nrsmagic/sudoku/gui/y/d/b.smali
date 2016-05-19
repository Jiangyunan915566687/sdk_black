.class public Lcom/nrsmagic/sudoku/gui/y/d/b;
.super Landroid/widget/LinearLayout;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/widget/LinearLayout;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/LinearLayout;

.field private d:Landroid/widget/LinearLayout;

.field private e:Landroid/widget/Button;

.field private f:Landroid/widget/Button;

.field private g:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 10

    const/4 v9, 0x0

    const/high16 v8, 0x41a0

    const/4 v7, -0x1

    const/4 v6, -0x2

    const/high16 v5, 0x4120

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v7, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/nrsmagic/sudoku/gui/y/d/b;->a:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/y/d/b;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/y/d/b;->a:Landroid/widget/LinearLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/y/d/b;->a:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1, v0}, Lcom/nrsmagic/sudoku/gui/y/d/b;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/y/d/b;->c:Landroid/widget/LinearLayout;

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_1

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/y/d/b;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/y/d/b;->a:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/y/d/b;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1, v7, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v7, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/high16 v1, 0x4220

    invoke-static {p1, v1}, Lcom/nrsmagic/sudoku/gui/y/c/j;->a(Landroid/content/Context;F)I

    move-result v1

    invoke-static {p1, v5}, Lcom/nrsmagic/sudoku/gui/y/c/j;->a(Landroid/content/Context;F)I

    move-result v2

    const/high16 v3, 0x4220

    invoke-static {p1, v3}, Lcom/nrsmagic/sudoku/gui/y/c/j;->a(Landroid/content/Context;F)I

    move-result v3

    invoke-static {p1, v5}, Lcom/nrsmagic/sudoku/gui/y/c/j;->a(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/nrsmagic/sudoku/gui/y/d/b;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/y/d/b;->b:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/y/d/b;->b:Landroid/widget/TextView;

    sget-object v2, Lcom/nrsmagic/sudoku/gui/y/c/b;->aC:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/y/d/b;->b:Landroid/widget/TextView;

    const/high16 v2, 0x4190

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/y/d/b;->b:Landroid/widget/TextView;

    const/high16 v2, -0x100

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/y/d/b;->c:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/y/d/b;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v7, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-static {p1, v8}, Lcom/nrsmagic/sudoku/gui/y/c/j;->a(Landroid/content/Context;F)I

    move-result v1

    invoke-static {p1, v5}, Lcom/nrsmagic/sudoku/gui/y/c/j;->a(Landroid/content/Context;F)I

    move-result v2

    invoke-static {p1, v8}, Lcom/nrsmagic/sudoku/gui/y/c/j;->a(Landroid/content/Context;F)I

    move-result v3

    invoke-static {p1, v5}, Lcom/nrsmagic/sudoku/gui/y/c/j;->a(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/nrsmagic/sudoku/gui/y/d/b;->d:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/y/d/b;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/y/d/b;->a:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/y/d/b;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v1, 0x3f80

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-static {p1, v8}, Lcom/nrsmagic/sudoku/gui/y/c/j;->a(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/nrsmagic/sudoku/gui/y/d/b;->f:Landroid/widget/Button;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/y/d/b;->f:Landroid/widget/Button;

    sget-object v2, Lcom/nrsmagic/sudoku/gui/y/c/b;->aD:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/y/d/b;->f:Landroid/widget/Button;

    invoke-static {p1, v5}, Lcom/nrsmagic/sudoku/gui/y/c/j;->a(Landroid/content/Context;F)I

    move-result v2

    invoke-static {p1, v5}, Lcom/nrsmagic/sudoku/gui/y/c/j;->a(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v1, v9, v2, v9, v3}, Landroid/widget/Button;->setPadding(IIII)V

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/y/d/b;->f:Landroid/widget/Button;

    invoke-virtual {v1, v8}, Landroid/widget/Button;->setTextSize(F)V

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/y/d/b;->f:Landroid/widget/Button;

    const/high16 v2, -0x100

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/y/d/b;->f:Landroid/widget/Button;

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setBackgroundColor(I)V

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/y/d/b;->f:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/y/d/b;->f:Landroid/widget/Button;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/y/d/b;->d:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/y/d/b;->f:Landroid/widget/Button;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v1, 0x3f80

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-static {p1, v8}, Lcom/nrsmagic/sudoku/gui/y/c/j;->a(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/nrsmagic/sudoku/gui/y/d/b;->e:Landroid/widget/Button;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/y/d/b;->e:Landroid/widget/Button;

    sget-object v2, Lcom/nrsmagic/sudoku/gui/y/c/b;->aE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/y/d/b;->e:Landroid/widget/Button;

    invoke-virtual {v1, v8}, Landroid/widget/Button;->setTextSize(F)V

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/y/d/b;->e:Landroid/widget/Button;

    invoke-static {p1, v5}, Lcom/nrsmagic/sudoku/gui/y/c/j;->a(Landroid/content/Context;F)I

    move-result v2

    invoke-static {p1, v5}, Lcom/nrsmagic/sudoku/gui/y/c/j;->a(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v1, v9, v2, v9, v3}, Landroid/widget/Button;->setPadding(IIII)V

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/y/d/b;->e:Landroid/widget/Button;

    const/high16 v2, -0x100

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/y/d/b;->e:Landroid/widget/Button;

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setBackgroundColor(I)V

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/y/d/b;->e:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/y/d/b;->e:Landroid/widget/Button;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/y/d/b;->d:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/y/d/b;->e:Landroid/widget/Button;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :array_0
    .array-data 0x4
        0xc0t 0xc0t 0xc0t 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_1
    .array-data 0x4
        0xc0t 0xc0t 0xc0t 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method


# virtual methods
.method public a(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/nrsmagic/sudoku/gui/y/d/b;->g:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/y/d/b;->g:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/y/d/b;->g:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method
