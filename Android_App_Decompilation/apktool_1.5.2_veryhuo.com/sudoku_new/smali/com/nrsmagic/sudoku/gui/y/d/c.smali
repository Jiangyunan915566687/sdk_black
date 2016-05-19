.class public Lcom/nrsmagic/sudoku/gui/y/d/c;
.super Ljava/lang/Object;


# static fields
.field public static a:Z

.field public static b:Ljava/util/List;

.field private static c:Landroid/view/WindowManager;

.field private static f:Landroid/content/Context;

.field private static g:Z

.field private static i:Landroid/widget/AbsoluteLayout;


# instance fields
.field private d:Landroid/view/WindowManager$LayoutParams;

.field private e:Lcom/nrsmagic/sudoku/gui/y/d/a;

.field private h:Landroid/widget/AbsoluteLayout$LayoutParams;

.field private j:I

.field private k:Z

.field private l:Z

.field private m:Lcom/nrsmagic/sudoku/gui/y/d/e;

.field private n:Lcom/nrsmagic/sudoku/gui/y/d/b;

.field private o:I

.field private p:J

.field private q:F

.field private r:F

.field private s:I

.field private t:F

.field private u:F

.field private v:F

.field private w:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/nrsmagic/sudoku/gui/y/d/c;->a:Z

    sput-boolean v0, Lcom/nrsmagic/sudoku/gui/y/d/c;->g:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;I)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x41

    iput v0, p0, Lcom/nrsmagic/sudoku/gui/y/d/c;->j:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nrsmagic/sudoku/gui/y/d/c;->k:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nrsmagic/sudoku/gui/y/d/c;->l:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/y/d/c;->m:Lcom/nrsmagic/sudoku/gui/y/d/e;

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/nrsmagic/sudoku/gui/y/d/c;->o:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/nrsmagic/sudoku/gui/y/d/c;->p:J

    iput v2, p0, Lcom/nrsmagic/sudoku/gui/y/d/c;->q:F

    iput v2, p0, Lcom/nrsmagic/sudoku/gui/y/d/c;->r:F

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/nrsmagic/sudoku/gui/y/d/c;->f:Landroid/content/Context;

    sput-object p2, Lcom/nrsmagic/sudoku/gui/y/d/c;->b:Ljava/util/List;

    iput p3, p0, Lcom/nrsmagic/sudoku/gui/y/d/c;->s:I

    invoke-direct {p0, p1}, Lcom/nrsmagic/sudoku/gui/y/d/c;->a(Landroid/content/Context;)V

    invoke-direct {p0, p1, p3}, Lcom/nrsmagic/sudoku/gui/y/d/c;->a(Landroid/content/Context;I)V

    return-void
.end method

.method static synthetic a(Lcom/nrsmagic/sudoku/gui/y/d/c;F)F
    .locals 0

    iput p1, p0, Lcom/nrsmagic/sudoku/gui/y/d/c;->t:F

    return p1
.end method

.method static synthetic a(Lcom/nrsmagic/sudoku/gui/y/d/c;J)J
    .locals 0

    iput-wide p1, p0, Lcom/nrsmagic/sudoku/gui/y/d/c;->p:J

    return-wide p1
.end method

.method static synthetic a(Lcom/nrsmagic/sudoku/gui/y/d/c;)Lcom/nrsmagic/sudoku/gui/y/d/b;
    .locals 1

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/y/d/c;->n:Lcom/nrsmagic/sudoku/gui/y/d/b;

    return-object v0
.end method

.method public static a()V
    .locals 3

    :try_start_0
    sget-object v0, Lcom/nrsmagic/sudoku/gui/y/d/c;->c:Landroid/view/WindowManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nrsmagic/sudoku/gui/y/d/c;->i:Landroid/widget/AbsoluteLayout;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nrsmagic/sudoku/gui/y/d/c;->c:Landroid/view/WindowManager;

    sget-object v1, Lcom/nrsmagic/sudoku/gui/y/d/c;->i:Landroid/widget/AbsoluteLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    sget-object v0, Lcom/nrsmagic/sudoku/gui/y/d/c;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/y/f;->a(Landroid/content/Context;)Lcom/nrsmagic/sudoku/gui/y/f;

    move-result-object v0

    sget-object v1, Lcom/nrsmagic/sudoku/gui/y/d/c;->f:Landroid/content/Context;

    invoke-static {v1}, Lcom/nrsmagic/sudoku/gui/y/c/h;->p(Landroid/content/Context;)I

    move-result v1

    sget-object v2, Lcom/nrsmagic/sudoku/gui/y/d/c;->f:Landroid/content/Context;

    invoke-static {v2}, Lcom/nrsmagic/sudoku/gui/y/c/h;->o(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/nrsmagic/sudoku/gui/y/f;->a(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/nrsmagic/sudoku/gui/y/d/d;

    invoke-direct {v1, p0, p1}, Lcom/nrsmagic/sudoku/gui/y/d/d;-><init>(Lcom/nrsmagic/sudoku/gui/y/d/c;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private a(Landroid/content/Context;I)V
    .locals 9

    const/4 v8, 0x3

    const/16 v7, -0x29a

    const/high16 v6, 0x42a0

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    sput-object v0, Lcom/nrsmagic/sudoku/gui/y/d/c;->c:Landroid/view/WindowManager;

    new-instance v0, Lcom/nrsmagic/sudoku/gui/y/d/e;

    invoke-direct {v0, p0}, Lcom/nrsmagic/sudoku/gui/y/d/e;-><init>(Lcom/nrsmagic/sudoku/gui/y/d/c;)V

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/y/d/c;->m:Lcom/nrsmagic/sudoku/gui/y/d/e;

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/y/d/c;->d:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/y/d/c;->d:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7d2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/y/d/c;->d:Landroid/view/WindowManager$LayoutParams;

    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/y/d/c;->d:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x28

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-static {p1}, Lcom/nrsmagic/sudoku/gui/y/c/j;->b(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {p1}, Lcom/nrsmagic/sudoku/gui/y/c/h;->k(Landroid/content/Context;)[I

    move-result-object v0

    sget-object v2, Lcom/nrsmagic/sudoku/gui/y/c/b;->bC:Ljava/lang/String;

    invoke-virtual {p1, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    sget-object v3, Lcom/nrsmagic/sudoku/gui/y/c/b;->bD:Ljava/lang/String;

    invoke-interface {v2, v3, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v7, :cond_0

    aget v2, v0, v5

    invoke-static {p1, v4, v2}, Lcom/nrsmagic/sudoku/gui/y/c/h;->a(Landroid/content/Context;II)V

    :cond_0
    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/y/d/c;->d:Landroid/view/WindowManager$LayoutParams;

    aget v3, v0, v4

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/y/d/c;->d:Landroid/view/WindowManager$LayoutParams;

    aget v0, v0, v5

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    if-ne p2, v5, :cond_2

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/y/d/c;->d:Landroid/view/WindowManager$LayoutParams;

    iput v8, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/y/d/c;->d:Landroid/view/WindowManager$LayoutParams;

    const/high16 v1, 0x4220

    invoke-static {p1, v1}, Lcom/nrsmagic/sudoku/gui/y/c/j;->a(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/y/d/c;->d:Landroid/view/WindowManager$LayoutParams;

    invoke-static {p1, v6}, Lcom/nrsmagic/sudoku/gui/y/c/j;->a(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    new-instance v0, Lcom/nrsmagic/sudoku/gui/y/d/a;

    invoke-direct {v0, p1, p2}, Lcom/nrsmagic/sudoku/gui/y/d/a;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/y/d/c;->e:Lcom/nrsmagic/sudoku/gui/y/d/a;

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/y/d/c;->e:Lcom/nrsmagic/sudoku/gui/y/d/a;

    new-instance v1, Lcom/nrsmagic/sudoku/gui/y/d/f;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/nrsmagic/sudoku/gui/y/d/f;-><init>(Lcom/nrsmagic/sudoku/gui/y/d/c;Lcom/nrsmagic/sudoku/gui/y/d/d;)V

    invoke-virtual {v0, v1}, Lcom/nrsmagic/sudoku/gui/y/d/a;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/y/d/c;->e:Lcom/nrsmagic/sudoku/gui/y/d/a;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/y/d/c;->m:Lcom/nrsmagic/sudoku/gui/y/d/e;

    invoke-virtual {v0, v1}, Lcom/nrsmagic/sudoku/gui/y/d/a;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/y/d/c;->e:Lcom/nrsmagic/sudoku/gui/y/d/a;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nrsmagic/sudoku/gui/y/d/a;->setTag(Ljava/lang/Object;)V

    new-instance v0, Landroid/widget/AbsoluteLayout;

    invoke-direct {v0, p1}, Landroid/widget/AbsoluteLayout;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/nrsmagic/sudoku/gui/y/d/c;->i:Landroid/widget/AbsoluteLayout;

    new-instance v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-static {p1, v6}, Lcom/nrsmagic/sudoku/gui/y/c/j;->a(Landroid/content/Context;F)I

    move-result v2

    invoke-direct {v0, v1, v2, v4, v4}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/y/d/c;->h:Landroid/widget/AbsoluteLayout$LayoutParams;

    sget-object v0, Lcom/nrsmagic/sudoku/gui/y/d/c;->i:Landroid/widget/AbsoluteLayout;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/y/d/c;->e:Lcom/nrsmagic/sudoku/gui/y/d/a;

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/y/d/c;->h:Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsoluteLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_2
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/y/d/c;->d:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x5

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto :goto_0
.end method

.method static synthetic a(Lcom/nrsmagic/sudoku/gui/y/d/c;Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/nrsmagic/sudoku/gui/y/d/c;->a(Landroid/content/Context;I)V

    return-void
.end method

.method static synthetic a(Lcom/nrsmagic/sudoku/gui/y/d/c;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/nrsmagic/sudoku/gui/y/d/c;->k:Z

    return p1
.end method

.method static synthetic b(Lcom/nrsmagic/sudoku/gui/y/d/c;F)F
    .locals 0

    iput p1, p0, Lcom/nrsmagic/sudoku/gui/y/d/c;->u:F

    return p1
.end method

.method static synthetic b(Lcom/nrsmagic/sudoku/gui/y/d/c;)I
    .locals 1

    iget v0, p0, Lcom/nrsmagic/sudoku/gui/y/d/c;->s:I

    return v0
.end method

.method static synthetic b(Lcom/nrsmagic/sudoku/gui/y/d/c;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/nrsmagic/sudoku/gui/y/d/c;->l:Z

    return p1
.end method

.method static synthetic c(Lcom/nrsmagic/sudoku/gui/y/d/c;F)F
    .locals 0

    iput p1, p0, Lcom/nrsmagic/sudoku/gui/y/d/c;->q:F

    return p1
.end method

.method static synthetic c(Lcom/nrsmagic/sudoku/gui/y/d/c;)I
    .locals 1

    iget v0, p0, Lcom/nrsmagic/sudoku/gui/y/d/c;->j:I

    return v0
.end method

.method static synthetic d(Lcom/nrsmagic/sudoku/gui/y/d/c;)F
    .locals 1

    iget v0, p0, Lcom/nrsmagic/sudoku/gui/y/d/c;->r:F

    return v0
.end method

.method static synthetic d(Lcom/nrsmagic/sudoku/gui/y/d/c;F)F
    .locals 0

    iput p1, p0, Lcom/nrsmagic/sudoku/gui/y/d/c;->r:F

    return p1
.end method

.method static synthetic e(Lcom/nrsmagic/sudoku/gui/y/d/c;)F
    .locals 1

    iget v0, p0, Lcom/nrsmagic/sudoku/gui/y/d/c;->q:F

    return v0
.end method

.method static synthetic e(Lcom/nrsmagic/sudoku/gui/y/d/c;F)F
    .locals 0

    iput p1, p0, Lcom/nrsmagic/sudoku/gui/y/d/c;->v:F

    return p1
.end method

.method static synthetic e()Landroid/view/WindowManager;
    .locals 1

    sget-object v0, Lcom/nrsmagic/sudoku/gui/y/d/c;->c:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic f(Lcom/nrsmagic/sudoku/gui/y/d/c;F)F
    .locals 0

    iput p1, p0, Lcom/nrsmagic/sudoku/gui/y/d/c;->w:F

    return p1
.end method

.method static synthetic f(Lcom/nrsmagic/sudoku/gui/y/d/c;)J
    .locals 2

    iget-wide v0, p0, Lcom/nrsmagic/sudoku/gui/y/d/c;->p:J

    return-wide v0
.end method

.method static synthetic f()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/nrsmagic/sudoku/gui/y/d/c;->f:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic g(Lcom/nrsmagic/sudoku/gui/y/d/c;)I
    .locals 1

    iget v0, p0, Lcom/nrsmagic/sudoku/gui/y/d/c;->o:I

    return v0
.end method

.method static synthetic g()Landroid/widget/AbsoluteLayout;
    .locals 1

    sget-object v0, Lcom/nrsmagic/sudoku/gui/y/d/c;->i:Landroid/widget/AbsoluteLayout;

    return-object v0
.end method

.method static synthetic h(Lcom/nrsmagic/sudoku/gui/y/d/c;)F
    .locals 1

    iget v0, p0, Lcom/nrsmagic/sudoku/gui/y/d/c;->v:F

    return v0
.end method

.method static synthetic i(Lcom/nrsmagic/sudoku/gui/y/d/c;)F
    .locals 1

    iget v0, p0, Lcom/nrsmagic/sudoku/gui/y/d/c;->t:F

    return v0
.end method

.method static synthetic j(Lcom/nrsmagic/sudoku/gui/y/d/c;)F
    .locals 1

    iget v0, p0, Lcom/nrsmagic/sudoku/gui/y/d/c;->w:F

    return v0
.end method

.method static synthetic k(Lcom/nrsmagic/sudoku/gui/y/d/c;)F
    .locals 1

    iget v0, p0, Lcom/nrsmagic/sudoku/gui/y/d/c;->u:F

    return v0
.end method

.method static synthetic l(Lcom/nrsmagic/sudoku/gui/y/d/c;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/nrsmagic/sudoku/gui/y/d/c;->l:Z

    return v0
.end method

.method static synthetic m(Lcom/nrsmagic/sudoku/gui/y/d/c;)Landroid/view/WindowManager$LayoutParams;
    .locals 1

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/y/d/c;->d:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method


# virtual methods
.method public b()V
    .locals 3

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/y/d/c;->e:Lcom/nrsmagic/sudoku/gui/y/d/a;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nrsmagic/sudoku/gui/y/d/c;->c:Landroid/view/WindowManager;

    sget-object v1, Lcom/nrsmagic/sudoku/gui/y/d/c;->i:Landroid/widget/AbsoluteLayout;

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/y/d/c;->d:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/nrsmagic/sudoku/gui/y/d/c;->g:Z

    return-void
.end method

.method public c()V
    .locals 2

    iget-boolean v0, p0, Lcom/nrsmagic/sudoku/gui/y/d/c;->k:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/y/d/c;->e:Lcom/nrsmagic/sudoku/gui/y/d/a;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nrsmagic/sudoku/gui/y/d/c;->i:Landroid/widget/AbsoluteLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/AbsoluteLayout;->setVisibility(I)V

    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/nrsmagic/sudoku/gui/y/d/c;->g:Z

    return-void
.end method

.method public d()V
    .locals 4

    const/4 v3, 0x0

    const/high16 v2, 0x4348

    sget-object v0, Lcom/nrsmagic/sudoku/gui/y/d/c;->c:Landroid/view/WindowManager;

    sget-object v1, Lcom/nrsmagic/sudoku/gui/y/d/c;->i:Landroid/widget/AbsoluteLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/y/d/c;->d:Landroid/view/WindowManager$LayoutParams;

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/y/d/c;->d:Landroid/view/WindowManager$LayoutParams;

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/y/d/c;->d:Landroid/view/WindowManager$LayoutParams;

    sget-object v1, Lcom/nrsmagic/sudoku/gui/y/d/c;->f:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/nrsmagic/sudoku/gui/y/c/j;->a(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/y/d/c;->d:Landroid/view/WindowManager$LayoutParams;

    sget-object v1, Lcom/nrsmagic/sudoku/gui/y/d/c;->f:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/nrsmagic/sudoku/gui/y/c/j;->a(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/y/d/c;->d:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x11

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    new-instance v0, Lcom/nrsmagic/sudoku/gui/y/d/b;

    sget-object v1, Lcom/nrsmagic/sudoku/gui/y/d/c;->f:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/nrsmagic/sudoku/gui/y/d/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/y/d/c;->n:Lcom/nrsmagic/sudoku/gui/y/d/b;

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/y/d/c;->n:Lcom/nrsmagic/sudoku/gui/y/d/b;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/y/d/c;->m:Lcom/nrsmagic/sudoku/gui/y/d/e;

    invoke-virtual {v0, v1}, Lcom/nrsmagic/sudoku/gui/y/d/b;->a(Landroid/view/View$OnClickListener;)V

    sget-object v0, Lcom/nrsmagic/sudoku/gui/y/d/c;->c:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/y/d/c;->n:Lcom/nrsmagic/sudoku/gui/y/d/b;

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/y/d/c;->d:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
