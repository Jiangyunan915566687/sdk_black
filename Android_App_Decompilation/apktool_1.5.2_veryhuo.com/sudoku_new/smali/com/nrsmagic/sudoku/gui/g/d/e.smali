.class public Lcom/nrsmagic/sudoku/gui/g/d/e;
.super Landroid/widget/LinearLayout;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field public static a:Z

.field public static b:Z

.field public static c:Lcom/nrsmagic/sudoku/gui/g/d/a;

.field public static d:Ljava/util/Map;


# instance fields
.field private e:Landroid/widget/ImageButton;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/ImageView;

.field private h:Lcom/nrsmagic/sudoku/gui/g/d/h;

.field private i:Landroid/widget/ProgressBar;

.field private j:Landroid/app/Activity;

.field private k:Ljava/util/List;

.field private l:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/nrsmagic/sudoku/gui/g/d/e;->a:Z

    sput-boolean v0, Lcom/nrsmagic/sudoku/gui/g/d/e;->b:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/nrsmagic/sudoku/gui/g/d/e;->d:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 9

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/g/d/e;->e:Landroid/widget/ImageButton;

    new-instance v0, Lcom/nrsmagic/sudoku/gui/g/d/g;

    invoke-direct {v0, p0}, Lcom/nrsmagic/sudoku/gui/g/d/g;-><init>(Lcom/nrsmagic/sudoku/gui/g/d/e;)V

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/g/d/e;->l:Landroid/os/Handler;

    :try_start_0
    iput-object p1, p0, Lcom/nrsmagic/sudoku/gui/g/d/e;->j:Landroid/app/Activity;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/nrsmagic/sudoku/gui/g/d/e;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/nrsmagic/sudoku/gui/g/c/r;->d:Z

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nrsmagic/sudoku/gui/g/d/e;->setOrientation(I)V

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/nrsmagic/sudoku/gui/g/d/e;->setBackgroundColor(I)V

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v2, Landroid/widget/RelativeLayout;

    invoke-direct {v2, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v4, 0x2d

    invoke-static {p1, v4}, Lcom/nrsmagic/sudoku/gui/g/c/t;->a(Landroid/content/Context;I)I

    move-result v4

    const/16 v5, 0x2d

    invoke-static {p1, v5}, Lcom/nrsmagic/sudoku/gui/g/c/t;->a(Landroid/content/Context;I)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0xb

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/4 v4, 0x7

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/nrsmagic/sudoku/gui/g/d/e;->f:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/nrsmagic/sudoku/gui/g/d/e;->f:Landroid/widget/TextView;

    const/high16 v5, 0x41a0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v4, p0, Lcom/nrsmagic/sudoku/gui/g/d/e;->f:Landroid/widget/TextView;

    const v5, -0xff0100

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v4, p0, Lcom/nrsmagic/sudoku/gui/g/d/e;->f:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v4, p0, Lcom/nrsmagic/sudoku/gui/g/d/e;->f:Landroid/widget/TextView;

    sget-object v5, Lcom/nrsmagic/sudoku/gui/g/c/h;->bo:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v4, Landroid/widget/ImageButton;

    invoke-direct {v4, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/nrsmagic/sudoku/gui/g/d/e;->e:Landroid/widget/ImageButton;

    iget-object v4, p0, Lcom/nrsmagic/sudoku/gui/g/d/e;->e:Landroid/widget/ImageButton;

    const v5, -0xff0100

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v4, v5, v6}, Landroid/widget/ImageButton;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v4, p0, Lcom/nrsmagic/sudoku/gui/g/d/e;->e:Landroid/widget/ImageButton;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v4, p0, Lcom/nrsmagic/sudoku/gui/g/d/e;->e:Landroid/widget/ImageButton;

    const v5, 0x108005f

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v4, p0, Lcom/nrsmagic/sudoku/gui/g/d/e;->e:Landroid/widget/ImageButton;

    new-instance v5, Lcom/nrsmagic/sudoku/gui/g/d/f;

    invoke-direct {v5, p0, p1}, Lcom/nrsmagic/sudoku/gui/g/d/f;-><init>(Lcom/nrsmagic/sudoku/gui/g/d/e;Landroid/app/Activity;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    const/4 v6, -0x2

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v5, 0xf

    invoke-static {p1, v5}, Lcom/nrsmagic/sudoku/gui/g/c/t;->a(Landroid/content/Context;I)I

    move-result v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    const/16 v5, 0x14

    invoke-static {p1, v5}, Lcom/nrsmagic/sudoku/gui/g/c/t;->a(Landroid/content/Context;I)I

    move-result v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v5, p0, Lcom/nrsmagic/sudoku/gui/g/d/e;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v5, 0x2d

    invoke-static {p1, v5}, Lcom/nrsmagic/sudoku/gui/g/c/t;->a(Landroid/content/Context;I)I

    move-result v5

    const/16 v6, 0x2d

    invoke-static {p1, v6}, Lcom/nrsmagic/sudoku/gui/g/c/t;->a(Landroid/content/Context;I)I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getWidth()I

    move-result v5

    int-to-double v5, v5

    const-wide v7, 0x4002666666666666L

    div-double/2addr v5, v7

    double-to-int v5, v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    const/4 v5, 0x7

    invoke-static {p1, v5}, Lcom/nrsmagic/sudoku/gui/g/c/t;->a(Landroid/content/Context;I)I

    move-result v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v4, p0, Lcom/nrsmagic/sudoku/gui/g/d/e;->e:Landroid/widget/ImageButton;

    invoke-virtual {v2, v4, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v0, v1}, Lcom/nrsmagic/sudoku/gui/g/d/e;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v1, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/g/d/e;->g:Landroid/widget/ImageView;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-static {p1, v2}, Lcom/nrsmagic/sudoku/gui/g/c/t;->a(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/g/d/e;->g:Landroid/widget/ImageView;

    const/16 v2, 0x14

    invoke-static {p1, v2}, Lcom/nrsmagic/sudoku/gui/g/c/t;->a(Landroid/content/Context;I)I

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0x14

    invoke-static {p1, v4}, Lcom/nrsmagic/sudoku/gui/g/c/t;->a(Landroid/content/Context;I)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/ImageView;->setPadding(IIII)V

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/g/d/e;->g:Landroid/widget/ImageView;

    const v2, -0xff0100

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/g/d/e;->g:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/g/d/e;->g:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v0}, Lcom/nrsmagic/sudoku/gui/g/d/e;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lcom/nrsmagic/sudoku/gui/g/d/h;

    invoke-direct {v0, p1}, Lcom/nrsmagic/sudoku/gui/g/d/h;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/g/d/e;->h:Lcom/nrsmagic/sudoku/gui/g/d/h;

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/g/d/e;->h:Lcom/nrsmagic/sudoku/gui/g/d/h;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lcom/nrsmagic/sudoku/gui/g/c/t;->a(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nrsmagic/sudoku/gui/g/d/h;->setHorizontalSpacing(I)V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/g/d/e;->h:Lcom/nrsmagic/sudoku/gui/g/d/h;

    const/16 v1, 0x12

    invoke-static {p1, v1}, Lcom/nrsmagic/sudoku/gui/g/c/t;->a(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nrsmagic/sudoku/gui/g/d/h;->setVerticalSpacing(I)V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/g/d/e;->h:Lcom/nrsmagic/sudoku/gui/g/d/h;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/nrsmagic/sudoku/gui/g/d/h;->setNumColumns(I)V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/g/d/e;->h:Lcom/nrsmagic/sudoku/gui/g/d/h;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/nrsmagic/sudoku/gui/g/d/h;->setVisibility(I)V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/g/d/e;->h:Lcom/nrsmagic/sudoku/gui/g/d/h;

    const/16 v1, 0x19

    invoke-static {p1, v1}, Lcom/nrsmagic/sudoku/gui/g/c/t;->a(Landroid/content/Context;I)I

    move-result v1

    const/16 v2, 0x14

    invoke-static {p1, v2}, Lcom/nrsmagic/sudoku/gui/g/c/t;->a(Landroid/content/Context;I)I

    move-result v2

    const/16 v3, 0x14

    invoke-static {p1, v3}, Lcom/nrsmagic/sudoku/gui/g/c/t;->a(Landroid/content/Context;I)I

    move-result v3

    const/16 v4, 0x14

    invoke-static {p1, v4}, Lcom/nrsmagic/sudoku/gui/g/c/t;->a(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/nrsmagic/sudoku/gui/g/d/h;->setPadding(IIII)V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/g/d/e;->h:Lcom/nrsmagic/sudoku/gui/g/d/h;

    invoke-virtual {v0, p0}, Lcom/nrsmagic/sudoku/gui/g/d/h;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/g/d/e;->h:Lcom/nrsmagic/sudoku/gui/g/d/h;

    const/4 v1, -0x1

    const/4 v2, -0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/nrsmagic/sudoku/gui/g/d/e;->addView(Landroid/view/View;II)V

    new-instance v0, Landroid/widget/ProgressBar;

    invoke-direct {v0, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/g/d/e;->i:Landroid/widget/ProgressBar;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, -0x2d

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    div-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, -0x78

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/g/d/e;->i:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v1, v0}, Lcom/nrsmagic/sudoku/gui/g/d/e;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/nrsmagic/sudoku/gui/g/d/e;)Lcom/nrsmagic/sudoku/gui/g/d/h;
    .locals 1

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/g/d/e;->h:Lcom/nrsmagic/sudoku/gui/g/d/h;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/g/d/e;->e:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/g/d/e;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/g/d/e;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/g/d/e;->h:Lcom/nrsmagic/sudoku/gui/g/d/h;

    invoke-virtual {v0, v1}, Lcom/nrsmagic/sudoku/gui/g/d/h;->setVisibility(I)V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/g/d/e;->i:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 3

    new-instance v0, Lcom/nrsmagic/sudoku/gui/g/d/a;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/g/d/e;->j:Landroid/app/Activity;

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/g/d/e;->l:Landroid/os/Handler;

    invoke-direct {v0, v1, p1, v2}, Lcom/nrsmagic/sudoku/gui/g/d/a;-><init>(Landroid/content/Context;Ljava/util/List;Landroid/os/Handler;)V

    sput-object v0, Lcom/nrsmagic/sudoku/gui/g/d/e;->c:Lcom/nrsmagic/sudoku/gui/g/d/a;

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/g/d/e;->h:Lcom/nrsmagic/sudoku/gui/g/d/h;

    sget-object v1, Lcom/nrsmagic/sudoku/gui/g/d/e;->c:Lcom/nrsmagic/sudoku/gui/g/d/a;

    invoke-virtual {v0, v1}, Lcom/nrsmagic/sudoku/gui/g/d/h;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/g/d/e;->h:Lcom/nrsmagic/sudoku/gui/g/d/h;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nrsmagic/sudoku/gui/g/d/h;->setFocusable(Z)V

    iput-object p1, p0, Lcom/nrsmagic/sudoku/gui/g/d/e;->k:Ljava/util/List;

    return-void
.end method

.method public b()V
    .locals 2

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/g/d/e;->e:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/g/d/e;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/g/d/e;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/g/d/e;->h:Lcom/nrsmagic/sudoku/gui/g/d/h;

    invoke-virtual {v0, v1}, Lcom/nrsmagic/sudoku/gui/g/d/h;->setVisibility(I)V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/g/d/e;->i:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/g/d/e;->i:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3

    new-instance v0, Lcom/nrsmagic/sudoku/gui/g/a/b;

    invoke-direct {v0}, Lcom/nrsmagic/sudoku/gui/g/a/b;-><init>()V

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/g/d/e;->j:Landroid/app/Activity;

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/g/d/e;->k:Ljava/util/List;

    invoke-virtual {v0, p3, v1, v2}, Lcom/nrsmagic/sudoku/gui/g/a/b;->a(ILandroid/content/Context;Ljava/util/List;)V

    return-void
.end method
