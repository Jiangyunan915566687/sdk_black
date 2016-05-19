.class public Lcom/nrsmagic/sudoku/gui/g/d/b;
.super Landroid/widget/LinearLayout;


# instance fields
.field final synthetic a:Lcom/nrsmagic/sudoku/gui/g/d/a;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/ProgressBar;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/FrameLayout;

.field private g:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/nrsmagic/sudoku/gui/g/d/a;Landroid/content/Context;Lcom/nrsmagic/sudoku/gui/g/b/b;ILandroid/view/ViewGroup;)V
    .locals 8

    const/4 v2, -0x1

    const/16 v7, 0x11

    const/4 v6, -0x2

    const/16 v5, 0x3c

    const/4 v4, 0x1

    iput-object p1, p0, Lcom/nrsmagic/sudoku/gui/g/d/b;->a:Lcom/nrsmagic/sudoku/gui/g/d/a;

    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v4}, Lcom/nrsmagic/sudoku/gui/g/d/b;->setOrientation(I)V

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-static {p1}, Lcom/nrsmagic/sudoku/gui/g/d/a;->a(Lcom/nrsmagic/sudoku/gui/g/d/a;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/nrsmagic/sudoku/gui/g/d/b;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/nrsmagic/sudoku/gui/g/d/b;->f:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput v7, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/g/d/b;->f:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/nrsmagic/sudoku/gui/g/d/b;->b:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {p1}, Lcom/nrsmagic/sudoku/gui/g/d/a;->a(Lcom/nrsmagic/sudoku/gui/g/d/a;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v5}, Lcom/nrsmagic/sudoku/gui/g/c/t;->a(Landroid/content/Context;I)I

    move-result v2

    invoke-static {p1}, Lcom/nrsmagic/sudoku/gui/g/d/a;->a(Lcom/nrsmagic/sudoku/gui/g/d/a;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v5}, Lcom/nrsmagic/sudoku/gui/g/c/t;->a(Landroid/content/Context;I)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput v7, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/g/d/b;->f:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/nrsmagic/sudoku/gui/g/d/b;->b:Landroid/widget/ImageView;

    invoke-virtual {v2, v3, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/nrsmagic/sudoku/gui/g/d/b;->c:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/g/d/b;->c:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {p1}, Lcom/nrsmagic/sudoku/gui/g/d/a;->a(Lcom/nrsmagic/sudoku/gui/g/d/a;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v5}, Lcom/nrsmagic/sudoku/gui/g/c/t;->a(Landroid/content/Context;I)I

    move-result v2

    invoke-static {p1}, Lcom/nrsmagic/sudoku/gui/g/d/a;->a(Lcom/nrsmagic/sudoku/gui/g/d/a;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v5}, Lcom/nrsmagic/sudoku/gui/g/c/t;->a(Landroid/content/Context;I)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/g/d/b;->c:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/g/d/b;->f:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/nrsmagic/sudoku/gui/g/d/b;->c:Landroid/widget/ImageView;

    invoke-virtual {v2, v3, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    const v3, 0x1010078

    invoke-direct {v1, p2, v2, v3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, Lcom/nrsmagic/sudoku/gui/g/d/b;->d:Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/g/d/b;->d:Landroid/widget/ProgressBar;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/g/d/b;->d:Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/g/d/b;->d:Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x51

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/g/d/b;->f:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/nrsmagic/sudoku/gui/g/d/b;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v3, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/nrsmagic/sudoku/gui/g/d/b;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/g/d/b;->e:Landroid/widget/TextView;

    const/high16 v2, -0x100

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/g/d/b;->e:Landroid/widget/TextView;

    const/high16 v2, 0x4120

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/g/d/b;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/g/d/b;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/g/d/b;->e:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/g/d/b;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p1}, Lcom/nrsmagic/sudoku/gui/g/d/a;->a(Lcom/nrsmagic/sudoku/gui/g/d/a;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v5}, Lcom/nrsmagic/sudoku/gui/g/c/t;->a(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v1, v2, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/g/d/b;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/nrsmagic/sudoku/gui/g/d/b;->g:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/g/d/b;->g:Landroid/widget/TextView;

    const/high16 v2, 0x4120

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/g/d/b;->g:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/g/d/b;->g:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/g/d/b;->g:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/g/d/b;->g:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p1}, Lcom/nrsmagic/sudoku/gui/g/d/a;->a(Lcom/nrsmagic/sudoku/gui/g/d/a;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v5}, Lcom/nrsmagic/sudoku/gui/g/c/t;->a(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v1, v2, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/g/d/b;->g:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/g/d/b;->g:Landroid/widget/TextView;

    const-string v3, "0%"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/g/d/b;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ne v0, p4, :cond_0

    sget-object v0, Lcom/nrsmagic/sudoku/gui/g/c/r;->c:Ljava/util/Map;

    iget-object v1, p3, Lcom/nrsmagic/sudoku/gui/g/b/b;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/g/d/b;->g:Landroid/widget/TextView;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nrsmagic/sudoku/gui/g/c/r;->a:Ljava/util/Map;

    iget-object v1, p3, Lcom/nrsmagic/sudoku/gui/g/b/b;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/g/d/b;->d:Landroid/widget/ProgressBar;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nrsmagic/sudoku/gui/g/c/r;->b:Ljava/util/Map;

    iget-object v1, p3, Lcom/nrsmagic/sudoku/gui/g/b/b;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/g/d/b;->e:Landroid/widget/TextView;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/nrsmagic/sudoku/gui/g/d/b;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/g/d/b;->e:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic b(Lcom/nrsmagic/sudoku/gui/g/d/b;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/g/d/b;->b:Landroid/widget/ImageView;

    return-object v0
.end method
