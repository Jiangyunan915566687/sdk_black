.class public Lcom/nrsmagic/sudoku/gui/m/d/i;
.super Landroid/widget/LinearLayout;


# static fields
.field public static a:Lcom/nrsmagic/sudoku/gui/m/d/l;


# instance fields
.field public b:Landroid/widget/AdapterView$OnItemClickListener;

.field private c:Landroid/content/Context;

.field private d:Lcom/nrsmagic/sudoku/gui/m/d/o;

.field private e:Ljava/util/List;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/view/animation/RotateAnimation;

.field private h:Z

.field private i:Landroid/widget/ImageView;

.field private j:Landroid/view/animation/Animation$AnimationListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/os/Handler;)V
    .locals 9

    const/high16 v8, 0x42c8

    const/high16 v7, 0x4120

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, -0x1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-boolean v5, p0, Lcom/nrsmagic/sudoku/gui/m/d/i;->h:Z

    new-instance v0, Lcom/nrsmagic/sudoku/gui/m/d/k;

    invoke-direct {v0, p0}, Lcom/nrsmagic/sudoku/gui/m/d/k;-><init>(Lcom/nrsmagic/sudoku/gui/m/d/i;)V

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/m/d/i;->j:Landroid/view/animation/Animation$AnimationListener;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/m/d/i;->b:Landroid/widget/AdapterView$OnItemClickListener;

    iput-object p1, p0, Lcom/nrsmagic/sudoku/gui/m/d/i;->c:Landroid/content/Context;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/nrsmagic/sudoku/gui/m/d/i;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    if-ne p2, v5, :cond_3

    const/4 v2, 0x3

    invoke-static {p1, v2}, Lcom/nrsmagic/sudoku/gui/m/c/a;->a(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    invoke-static {p1}, Lcom/nrsmagic/sudoku/gui/m/c/k;->b(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {p1, v8}, Lcom/nrsmagic/sudoku/gui/m/c/k;->a(Landroid/content/Context;F)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    const/4 v2, 0x3

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    :cond_1
    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/nrsmagic/sudoku/gui/m/d/i;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v3, 0x4170

    invoke-static {p1, v3}, Lcom/nrsmagic/sudoku/gui/m/c/k;->a(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    if-ne p2, v5, :cond_5

    invoke-static {p1, v7}, Lcom/nrsmagic/sudoku/gui/m/c/k;->a(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    :cond_2
    :goto_1
    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lcom/nrsmagic/sudoku/gui/m/d/o;

    invoke-direct {v0, p1}, Lcom/nrsmagic/sudoku/gui/m/d/o;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/m/d/i;->d:Lcom/nrsmagic/sudoku/gui/m/d/o;

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/m/d/i;->d:Lcom/nrsmagic/sudoku/gui/m/d/o;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/nrsmagic/sudoku/gui/m/d/o;->setVisibility(I)V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/m/d/i;->d:Lcom/nrsmagic/sudoku/gui/m/d/o;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/nrsmagic/sudoku/gui/m/d/o;->setDivider(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/m/d/i;->d:Lcom/nrsmagic/sudoku/gui/m/d/o;

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Lcom/nrsmagic/sudoku/gui/m/d/o;->setDividerHeight(I)V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/m/d/i;->d:Lcom/nrsmagic/sudoku/gui/m/d/o;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/nrsmagic/sudoku/gui/m/d/o;->setVerticalScrollBarEnabled(Z)V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/m/d/i;->d:Lcom/nrsmagic/sudoku/gui/m/d/o;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/nrsmagic/sudoku/gui/m/d/o;->setCacheColorHint(I)V

    invoke-static {p1}, Lcom/nrsmagic/sudoku/gui/m/c/k;->b(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    invoke-static {p1, v2}, Lcom/nrsmagic/sudoku/gui/m/c/k;->b(Landroid/content/Context;F)I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    invoke-static {p1, v0}, Lcom/nrsmagic/sudoku/gui/m/c/k;->b(Landroid/content/Context;F)I

    move-result v0

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x42a0

    invoke-static {p1, v3}, Lcom/nrsmagic/sudoku/gui/m/c/k;->a(Landroid/content/Context;F)I

    move-result v3

    add-int/lit8 v0, v0, -0x64

    int-to-float v0, v0

    invoke-static {p1, v0}, Lcom/nrsmagic/sudoku/gui/m/c/k;->a(Landroid/content/Context;F)I

    move-result v0

    invoke-direct {v2, v3, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/m/d/i;->d:Lcom/nrsmagic/sudoku/gui/m/d/o;

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/m/d/i;->i:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/m/d/i;->i:Landroid/widget/ImageView;

    const v2, -0xff0100

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x42b4

    invoke-static {p1, v2}, Lcom/nrsmagic/sudoku/gui/m/c/k;->a(Landroid/content/Context;F)I

    move-result v2

    const/high16 v3, 0x3f80

    invoke-static {p1, v3}, Lcom/nrsmagic/sudoku/gui/m/c/k;->a(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/m/d/i;->i:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/m/d/i;->f:Landroid/widget/ImageView;

    :try_start_0
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/m/d/i;->f:Landroid/widget/ImageView;

    const/4 v2, 0x7

    invoke-static {p1, v2}, Lcom/nrsmagic/sudoku/gui/m/c/a;->a(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x4248

    invoke-static {p1, v2}, Lcom/nrsmagic/sudoku/gui/m/c/k;->a(Landroid/content/Context;F)I

    move-result v2

    invoke-direct {v0, v4, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/m/d/i;->f:Landroid/widget/ImageView;

    new-instance v3, Lcom/nrsmagic/sudoku/gui/m/d/j;

    invoke-direct {v3, p0, p1, p3}, Lcom/nrsmagic/sudoku/gui/m/d/j;-><init>(Lcom/nrsmagic/sudoku/gui/m/d/i;Landroid/content/Context;Landroid/os/Handler;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/m/d/i;->f:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {p1, v6}, Lcom/nrsmagic/sudoku/gui/m/c/a;->a(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/nrsmagic/sudoku/gui/m/d/i;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_3
    if-ne p2, v6, :cond_1

    const/4 v2, 0x6

    invoke-static {p1, v2}, Lcom/nrsmagic/sudoku/gui/m/c/a;->a(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_4

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    invoke-static {p1}, Lcom/nrsmagic/sudoku/gui/m/c/k;->b(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {p1, v8}, Lcom/nrsmagic/sudoku/gui/m/c/k;->a(Landroid/content/Context;F)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    const/4 v2, 0x5

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    goto/16 :goto_0

    :cond_5
    if-ne p2, v6, :cond_2

    invoke-static {p1, v7}, Lcom/nrsmagic/sudoku/gui/m/c/k;->a(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    goto/16 :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method static synthetic a(Lcom/nrsmagic/sudoku/gui/m/d/i;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/nrsmagic/sudoku/gui/m/d/i;->h:Z

    return v0
.end method


# virtual methods
.method public a()V
    .locals 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nrsmagic/sudoku/gui/m/d/i;->h:Z

    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x4434

    iget-object v3, p0, Lcom/nrsmagic/sudoku/gui/m/d/i;->f:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget-object v4, p0, Lcom/nrsmagic/sudoku/gui/m/d/i;->f:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/RotateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/m/d/i;->g:Landroid/view/animation/RotateAnimation;

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/m/d/i;->g:Landroid/view/animation/RotateAnimation;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/m/d/i;->g:Landroid/view/animation/RotateAnimation;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/m/d/i;->j:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/m/d/i;->f:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/m/d/i;->g:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/util/List;)V
    .locals 2

    iput-object p2, p0, Lcom/nrsmagic/sudoku/gui/m/d/i;->e:Ljava/util/List;

    new-instance v0, Lcom/nrsmagic/sudoku/gui/m/d/l;

    invoke-direct {v0, p1, p2}, Lcom/nrsmagic/sudoku/gui/m/d/l;-><init>(Landroid/content/Context;Ljava/util/List;)V

    sput-object v0, Lcom/nrsmagic/sudoku/gui/m/d/i;->a:Lcom/nrsmagic/sudoku/gui/m/d/l;

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/m/d/i;->d:Lcom/nrsmagic/sudoku/gui/m/d/o;

    sget-object v1, Lcom/nrsmagic/sudoku/gui/m/d/i;->a:Lcom/nrsmagic/sudoku/gui/m/d/l;

    invoke-virtual {v0, v1}, Lcom/nrsmagic/sudoku/gui/m/d/o;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/m/d/i;->b:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/m/d/i;->d:Lcom/nrsmagic/sudoku/gui/m/d/o;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/m/d/i;->b:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/nrsmagic/sudoku/gui/m/d/o;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_0
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/m/d/i;->d:Lcom/nrsmagic/sudoku/gui/m/d/o;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/m/d/i;->b:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/nrsmagic/sudoku/gui/m/d/o;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    sget-object v0, Lcom/nrsmagic/sudoku/gui/m/d/i;->a:Lcom/nrsmagic/sudoku/gui/m/d/l;

    invoke-virtual {v0}, Lcom/nrsmagic/sudoku/gui/m/d/l;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/m/d/i;->d:Lcom/nrsmagic/sudoku/gui/m/d/o;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nrsmagic/sudoku/gui/m/d/o;->setVisibility(I)V

    return-void
.end method

.method public a(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/nrsmagic/sudoku/gui/m/d/i;->b:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/nrsmagic/sudoku/gui/m/d/i;->h:Z

    return-void
.end method
