.class public Lcom/nrsmagic/sudoku/gui/l/d/s;
.super Landroid/view/View;


# instance fields
.field A:Landroid/graphics/drawable/GradientDrawable;

.field B:Landroid/graphics/drawable/GradientDrawable;

.field C:Landroid/graphics/drawable/GradientDrawable;

.field D:Landroid/graphics/drawable/GradientDrawable;

.field E:Landroid/graphics/Paint;

.field F:Landroid/graphics/Paint;

.field G:Landroid/graphics/Rect;

.field private H:I

.field private I:I

.field private J:Landroid/graphics/Path;

.field private K:Landroid/graphics/Path;

.field private L:I

.field private M:I

.field private N:Landroid/graphics/Bitmap;

.field private O:Landroid/graphics/Canvas;

.field private P:Landroid/graphics/Paint;

.field private Q:Lcom/nrsmagic/sudoku/gui/l/d/t;

.field private R:I

.field private S:I

.field private T:I

.field private U:I

.field private V:Landroid/content/Context;

.field a:Landroid/graphics/Bitmap;

.field b:Landroid/graphics/Bitmap;

.field c:Landroid/graphics/PointF;

.field d:Landroid/graphics/PointF;

.field e:Landroid/graphics/PointF;

.field f:Landroid/graphics/PointF;

.field g:Landroid/graphics/PointF;

.field h:Landroid/graphics/PointF;

.field i:Landroid/graphics/PointF;

.field j:Landroid/graphics/PointF;

.field k:Landroid/graphics/PointF;

.field l:F

.field m:F

.field n:F

.field o:F

.field p:Landroid/graphics/ColorMatrixColorFilter;

.field q:Landroid/graphics/Matrix;

.field r:[F

.field s:Z

.field t:F

.field u:[I

.field v:[I

.field w:Landroid/graphics/drawable/GradientDrawable;

.field x:Landroid/graphics/drawable/GradientDrawable;

.field y:Landroid/graphics/drawable/GradientDrawable;

.field z:Landroid/graphics/drawable/GradientDrawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/nrsmagic/sudoku/gui/l/b/f;)V
    .locals 8

    const/16 v7, 0x14

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput v4, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->H:I

    iput v4, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->I:I

    iput-object v5, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->a:Landroid/graphics/Bitmap;

    iput-object v5, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->b:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->c:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->d:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->e:Landroid/graphics/PointF;

    iput v4, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->L:I

    iput v4, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->M:I

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->f:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->g:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->h:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->i:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->j:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->k:Landroid/graphics/PointF;

    const/16 v0, 0x9

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->r:[F

    iget v0, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->H:I

    int-to-double v0, v0

    iget v2, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->I:I

    int-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->t:F

    iput-object v5, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->Q:Lcom/nrsmagic/sudoku/gui/l/d/t;

    iput v4, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->R:I

    iput-object v5, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->G:Landroid/graphics/Rect;

    iput v7, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->U:I

    iput-object p1, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->V:Landroid/content/Context;

    sget-object v0, Lcom/nrsmagic/sudoku/gui/l/e/b;->F:Ljava/lang/String;

    iget v1, p2, Lcom/nrsmagic/sudoku/gui/l/b/f;->e:I

    invoke-static {p1, v0, v1}, Lcom/nrsmagic/sudoku/gui/l/e/h;->a(Landroid/content/Context;Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/nrsmagic/sudoku/gui/l/d/u;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->a:Landroid/graphics/Bitmap;

    sget-object v0, Lcom/nrsmagic/sudoku/gui/l/e/b;->G:Ljava/lang/String;

    iget v1, p2, Lcom/nrsmagic/sudoku/gui/l/b/f;->e:I

    invoke-static {p1, v0, v1}, Lcom/nrsmagic/sudoku/gui/l/e/h;->a(Landroid/content/Context;Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/nrsmagic/sudoku/gui/l/d/u;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->b:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->S:I

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->T:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->H:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->I:I

    iget v0, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->S:I

    iget v1, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->H:I

    if-gt v0, v1, :cond_1

    iget v0, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->T:I

    iget v1, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->I:I

    if-gt v0, v1, :cond_1

    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->S:I

    iget v2, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->T:I

    invoke-direct {v0, v4, v4, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->G:Landroid/graphics/Rect;

    iget v0, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->S:I

    iput v0, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->L:I

    iput v4, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->M:I

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->d:Landroid/graphics/PointF;

    iget v1, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->S:I

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->d:Landroid/graphics/PointF;

    iput v6, v0, Landroid/graphics/PointF;->y:F

    :cond_0
    :goto_0
    new-instance v0, Lcom/nrsmagic/sudoku/gui/l/d/t;

    invoke-direct {v0, p0}, Lcom/nrsmagic/sudoku/gui/l/d/t;-><init>(Lcom/nrsmagic/sudoku/gui/l/d/s;)V

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->Q:Lcom/nrsmagic/sudoku/gui/l/d/t;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->J:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->K:Landroid/graphics/Path;

    invoke-direct {p0}, Lcom/nrsmagic/sudoku/gui/l/d/s;->d()V

    iget v0, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->S:I

    iget v1, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->T:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->N:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->N:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->O:Landroid/graphics/Canvas;

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->P:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->E:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->F:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->F:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    new-array v1, v7, [F

    fill-array-data v1, :array_1

    invoke-virtual {v0, v1}, Landroid/graphics/ColorMatrix;->set([F)V

    new-instance v1, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v1, v0}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    iput-object v1, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->p:Landroid/graphics/ColorMatrixColorFilter;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->q:Landroid/graphics/Matrix;

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->Q:Lcom/nrsmagic/sudoku/gui/l/d/t;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nrsmagic/sudoku/gui/l/d/t;->a(Z)V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->Q:Lcom/nrsmagic/sudoku/gui/l/d/t;

    invoke-virtual {v0}, Lcom/nrsmagic/sudoku/gui/l/d/t;->start()V

    return-void

    :cond_1
    iget v0, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->S:I

    iget v1, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->H:I

    if-gt v0, v1, :cond_2

    iget v0, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->T:I

    iget v1, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->I:I

    if-le v0, v1, :cond_0

    :cond_2
    iget v0, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->H:I

    iput v0, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->S:I

    iget v0, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->I:I

    iput v0, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->T:I

    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->H:I

    iget v2, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->I:I

    invoke-direct {v0, v4, v4, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->G:Landroid/graphics/Rect;

    iget v0, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->S:I

    iput v0, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->L:I

    iput v4, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->M:I

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->d:Landroid/graphics/PointF;

    iget v1, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->S:I

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->d:Landroid/graphics/PointF;

    iput v6, v0, Landroid/graphics/PointF;->y:F

    goto/16 :goto_0

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    :array_1
    .array-data 0x4
        0xcdt 0xcct 0xct 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0xa0t 0x42t
        0x0t 0x0t 0x0t 0x0t
        0xcdt 0xcct 0xct 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0xa0t 0x42t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xcdt 0xcct 0xct 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0xa0t 0x42t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xcdt 0xcct 0x4ct 0x3et
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic a(Lcom/nrsmagic/sudoku/gui/l/d/s;)I
    .locals 1

    iget v0, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->U:I

    return v0
.end method

.method private a(FF)V
    .locals 2

    iget v0, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->L:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->M:I

    iget v1, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->I:I

    if-eq v0, v1, :cond_1

    :cond_0
    iget v0, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->L:I

    iget v1, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->H:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->M:I

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->s:Z

    :goto_0
    return-void

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->s:Z

    goto :goto_0
.end method

.method private a(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V
    .locals 6

    const/4 v5, 0x0

    const/high16 v4, 0x4080

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->K:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->K:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->c:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->c:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->K:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->i:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->i:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->K:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->k:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->k:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->K:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->j:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->j:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->K:Landroid/graphics/Path;

    iget v1, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->L:I

    int-to-float v1, v1

    iget v2, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->M:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->K:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->f:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget v1, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->L:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-double v0, v0

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->h:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget v3, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->M:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->n:F

    iget-boolean v0, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->s:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->c:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    float-to-int v2, v0

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->c:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget v1, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->o:F

    div-float/2addr v1, v4

    add-float/2addr v0, v1

    float-to-int v1, v0

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->w:Landroid/graphics/drawable/GradientDrawable;

    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v3, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->G:Landroid/graphics/Rect;

    invoke-virtual {p1, p2, v5, v3, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget v3, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->n:F

    iget-object v4, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->c:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    iget-object v5, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->c:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v3, v4, v5}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object v3, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->c:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    float-to-int v3, v3

    iget v4, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->t:F

    iget-object v5, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->c:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    add-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->c:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget v1, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->o:F

    div-float/2addr v1, v4

    sub-float/2addr v0, v1

    float-to-int v2, v0

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->c:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    float-to-int v1, v0

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->x:Landroid/graphics/drawable/GradientDrawable;

    goto :goto_0
.end method

.method private a(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Path;)V
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->J:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->J:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->c:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->c:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->J:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->f:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->f:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget-object v3, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->g:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->g:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Path;->quadTo(FFFF)V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->J:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->d:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->d:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->J:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->e:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->e:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->J:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->h:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->h:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget-object v3, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->j:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->j:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Path;->quadTo(FFFF)V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->J:Landroid/graphics/Path;

    iget v1, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->L:I

    int-to-float v1, v1

    iget v2, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->M:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->J:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->G:Landroid/graphics/Rect;

    invoke-virtual {p1, p2, v5, v0, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private c()V
    .locals 7

    const/high16 v6, 0x4080

    const/high16 v5, 0x4000

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->d:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget v1, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->L:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    div-float/2addr v0, v5

    iput v0, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->l:F

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->d:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget v1, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->M:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    div-float/2addr v0, v5

    iput v0, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->m:F

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->f:Landroid/graphics/PointF;

    iget v1, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->l:F

    iget v2, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->M:I

    int-to-float v2, v2

    iget v3, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->m:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->M:I

    int-to-float v3, v3

    iget v4, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->m:F

    sub-float/2addr v3, v4

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->L:I

    int-to-float v3, v3

    iget v4, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->l:F

    sub-float/2addr v3, v4

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->f:Landroid/graphics/PointF;

    iget v1, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->M:I

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/PointF;->y:F

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->h:Landroid/graphics/PointF;

    iget v1, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->L:I

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->h:Landroid/graphics/PointF;

    iget v1, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->m:F

    iget v2, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->L:I

    int-to-float v2, v2

    iget v3, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->l:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->L:I

    int-to-float v3, v3

    iget v4, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->l:F

    sub-float/2addr v3, v4

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->M:I

    int-to-float v3, v3

    iget v4, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->m:F

    sub-float/2addr v3, v4

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->y:F

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->c:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->f:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget v2, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->L:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->f:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v3

    div-float/2addr v2, v5

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->c:Landroid/graphics/PointF;

    iget v1, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->M:I

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/PointF;->y:F

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->j:Landroid/graphics/PointF;

    iget v1, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->L:I

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->j:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->h:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget v2, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->M:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->h:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v3

    div-float/2addr v2, v5

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->y:F

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->d:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget v1, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->L:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-double v0, v0

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->d:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget v3, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->M:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->o:F

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->d:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->f:Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->c:Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->j:Landroid/graphics/PointF;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/nrsmagic/sudoku/gui/l/d/s;->a(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v0

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->g:Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->d:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->h:Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->c:Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->j:Landroid/graphics/PointF;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/nrsmagic/sudoku/gui/l/d/s;->a(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v0

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->e:Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->i:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->c:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->f:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    mul-float/2addr v2, v5

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->g:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    add-float/2addr v1, v2

    div-float/2addr v1, v6

    iput v1, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->i:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->f:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    mul-float/2addr v1, v5

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->c:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->g:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    add-float/2addr v1, v2

    div-float/2addr v1, v6

    iput v1, v0, Landroid/graphics/PointF;->y:F

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->k:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->j:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->h:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    mul-float/2addr v2, v5

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->e:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    add-float/2addr v1, v2

    div-float/2addr v1, v6

    iput v1, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->k:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->h:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    mul-float/2addr v1, v5

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->j:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->e:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    add-float/2addr v1, v2

    div-float/2addr v1, v6

    iput v1, v0, Landroid/graphics/PointF;->y:F

    return-void
.end method

.method private d()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x0

    new-array v0, v4, [I

    fill-array-data v0, :array_0

    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->RIGHT_LEFT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v1, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->z:Landroid/graphics/drawable/GradientDrawable;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->z:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v1, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->y:Landroid/graphics/drawable/GradientDrawable;

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->y:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    new-array v0, v4, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->u:[I

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->RIGHT_LEFT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->u:[I

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->x:Landroid/graphics/drawable/GradientDrawable;

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->x:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->u:[I

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->w:Landroid/graphics/drawable/GradientDrawable;

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->w:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    new-array v0, v4, [I

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->v:[I

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->v:[I

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->C:Landroid/graphics/drawable/GradientDrawable;

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->C:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->RIGHT_LEFT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->v:[I

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->D:Landroid/graphics/drawable/GradientDrawable;

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->D:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->v:[I

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->B:Landroid/graphics/drawable/GradientDrawable;

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->B:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->v:[I

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->A:Landroid/graphics/drawable/GradientDrawable;

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->A:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    return-void

    :array_0
    .array-data 0x4
        0x33t 0x33t 0x33t 0x0t
        0x33t 0x33t 0x33t 0xb0t
    .end array-data

    :array_1
    .array-data 0x4
        0x11t 0x11t 0x11t 0xfft
        0x11t 0x11t 0x11t 0x0t
    .end array-data

    :array_2
    .array-data 0x4
        0x11t 0x11t 0x11t 0x80t
        0x11t 0x11t 0x11t 0x0t
    .end array-data
.end method


# virtual methods
.method public a(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 7

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iget v1, p2, Landroid/graphics/PointF;->y:F

    iget v2, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v2

    iget v2, p2, Landroid/graphics/PointF;->x:F

    iget v3, p1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v3

    div-float/2addr v1, v2

    iget v2, p1, Landroid/graphics/PointF;->x:F

    iget v3, p2, Landroid/graphics/PointF;->y:F

    mul-float/2addr v2, v3

    iget v3, p2, Landroid/graphics/PointF;->x:F

    iget v4, p1, Landroid/graphics/PointF;->y:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget v3, p1, Landroid/graphics/PointF;->x:F

    iget v4, p2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v3, v4

    div-float/2addr v2, v3

    iget v3, p4, Landroid/graphics/PointF;->y:F

    iget v4, p3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v3, v4

    iget v4, p4, Landroid/graphics/PointF;->x:F

    iget v5, p3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v4, v5

    div-float/2addr v3, v4

    iget v4, p3, Landroid/graphics/PointF;->x:F

    iget v5, p4, Landroid/graphics/PointF;->y:F

    mul-float/2addr v4, v5

    iget v5, p4, Landroid/graphics/PointF;->x:F

    iget v6, p3, Landroid/graphics/PointF;->y:F

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    iget v5, p3, Landroid/graphics/PointF;->x:F

    iget v6, p4, Landroid/graphics/PointF;->x:F

    sub-float/2addr v5, v6

    div-float/2addr v4, v5

    sub-float/2addr v4, v2

    sub-float v3, v1, v3

    div-float v3, v4, v3

    iput v3, v0, Landroid/graphics/PointF;->x:F

    iget v3, v0, Landroid/graphics/PointF;->x:F

    mul-float/2addr v1, v3

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->y:F

    return-object v0
.end method

.method public a()V
    .locals 3

    iget v0, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->R:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->O:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->a:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->J:Landroid/graphics/Path;

    invoke-direct {p0, v0, v1, v2}, Lcom/nrsmagic/sudoku/gui/l/d/s;->a(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Path;)V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->O:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->b:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0, v1}, Lcom/nrsmagic/sudoku/gui/l/d/s;->a(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->O:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->b:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->J:Landroid/graphics/Path;

    invoke-direct {p0, v0, v1, v2}, Lcom/nrsmagic/sudoku/gui/l/d/s;->a(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Path;)V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->O:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->a:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0, v1}, Lcom/nrsmagic/sudoku/gui/l/d/s;->a(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public b()V
    .locals 3

    const/16 v2, 0xbb8

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->d:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget v1, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->S:I

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/16 v0, 0x14

    iput v0, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->U:I

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->d:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    const/high16 v2, 0x4120

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->d:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->y:F

    const/high16 v2, 0x4000

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->y:F

    :goto_0
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->d:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->d:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-direct {p0, v0, v1}, Lcom/nrsmagic/sudoku/gui/l/d/s;->a(FF)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->d:Landroid/graphics/PointF;

    iget v1, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->S:I

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->d:Landroid/graphics/PointF;

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/PointF;->y:F

    iget v0, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->R:I

    if-nez v0, :cond_1

    iput v2, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->U:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->R:I

    goto :goto_0

    :cond_1
    iput v2, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->U:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->R:I

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    const/4 v2, 0x0

    const/high16 v0, -0x2000

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->O:Landroid/graphics/Canvas;

    const v1, -0x555556

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    invoke-direct {p0}, Lcom/nrsmagic/sudoku/gui/l/d/s;->c()V

    invoke-virtual {p0}, Lcom/nrsmagic/sudoku/gui/l/d/s;->a()V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->V:Landroid/content/Context;

    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/l/l;->a(Landroid/content/Context;)Lcom/nrsmagic/sudoku/gui/l/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nrsmagic/sudoku/gui/l/l;->a()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->N:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->P:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->V:Landroid/content/Context;

    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/l/l;->a(Landroid/content/Context;)Lcom/nrsmagic/sudoku/gui/l/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nrsmagic/sudoku/gui/l/l;->a()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget v1, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->H:I

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->V:Landroid/content/Context;

    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/l/l;->a(Landroid/content/Context;)Lcom/nrsmagic/sudoku/gui/l/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nrsmagic/sudoku/gui/l/l;->a()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iget v1, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->I:I

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->N:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->H:I

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->I:I

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->P:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->V:Landroid/content/Context;

    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/l/l;->a(Landroid/content/Context;)Lcom/nrsmagic/sudoku/gui/l/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nrsmagic/sudoku/gui/l/l;->a()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget v1, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->H:I

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->V:Landroid/content/Context;

    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/l/l;->a(Landroid/content/Context;)Lcom/nrsmagic/sudoku/gui/l/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nrsmagic/sudoku/gui/l/l;->a()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iget v1, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->I:I

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->N:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->P:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->N:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->P:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2

    iget v0, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->S:I

    iget v1, p0, Lcom/nrsmagic/sudoku/gui/l/d/s;->T:I

    invoke-virtual {p0, v0, v1}, Lcom/nrsmagic/sudoku/gui/l/d/s;->setMeasuredDimension(II)V

    return-void
.end method
