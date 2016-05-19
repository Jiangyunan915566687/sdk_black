.class public Lcom/nrsmagic/sudoku/gui/m/d/a;
.super Landroid/view/View;


# instance fields
.field a:Landroid/graphics/Bitmap;

.field b:Z

.field public c:I

.field public d:I

.field private e:I

.field private f:I

.field private g:Landroid/content/Context;

.field private h:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3

    const/4 v2, 0x5

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-boolean v1, p0, Lcom/nrsmagic/sudoku/gui/m/d/a;->b:Z

    iput v0, p0, Lcom/nrsmagic/sudoku/gui/m/d/a;->c:I

    iput v0, p0, Lcom/nrsmagic/sudoku/gui/m/d/a;->d:I

    iput v2, p0, Lcom/nrsmagic/sudoku/gui/m/d/a;->e:I

    const/16 v0, 0xff

    iput v0, p0, Lcom/nrsmagic/sudoku/gui/m/d/a;->f:I

    iput-object p1, p0, Lcom/nrsmagic/sudoku/gui/m/d/a;->g:Landroid/content/Context;

    iput p2, p0, Lcom/nrsmagic/sudoku/gui/m/d/a;->h:I

    if-ne p2, v1, :cond_1

    const/4 v0, 0x1

    :try_start_0
    invoke-static {p1, v0}, Lcom/nrsmagic/sudoku/gui/m/c/a;->a(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/m/d/a;->a:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/m/d/a;->a:Landroid/graphics/Bitmap;

    const/16 v1, 0x28

    const/16 v2, 0x50

    invoke-static {v0, p1, v1, v2}, Lcom/nrsmagic/sudoku/gui/m/c/k;->a(Landroid/graphics/Bitmap;Landroid/content/Context;II)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/m/d/a;->a:Landroid/graphics/Bitmap;

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    const/4 v0, 0x5

    :try_start_1
    invoke-static {p1, v0}, Lcom/nrsmagic/sudoku/gui/m/c/a;->a(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/m/d/a;->a:Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    const/4 v3, 0x1

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iget v1, p0, Lcom/nrsmagic/sudoku/gui/m/d/a;->f:I

    const/16 v2, 0xfa

    if-le v1, v2, :cond_2

    iput-boolean v3, p0, Lcom/nrsmagic/sudoku/gui/m/d/a;->b:Z

    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/nrsmagic/sudoku/gui/m/d/a;->b:Z

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/nrsmagic/sudoku/gui/m/d/a;->f:I

    iget v2, p0, Lcom/nrsmagic/sudoku/gui/m/d/a;->e:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/nrsmagic/sudoku/gui/m/d/a;->f:I

    :goto_1
    iget v1, p0, Lcom/nrsmagic/sudoku/gui/m/d/a;->f:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/m/d/a;->a:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/nrsmagic/sudoku/gui/m/d/a;->h:I

    if-ne v1, v3, :cond_4

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/m/d/a;->a:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/m/d/a;->g:Landroid/content/Context;

    const/high16 v3, -0x3fc0

    invoke-static {v2, v3}, Lcom/nrsmagic/sudoku/gui/m/c/k;->a(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/nrsmagic/sudoku/gui/m/d/a;->d:I

    int-to-float v3, v3

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_1
    :goto_2
    invoke-virtual {p0}, Lcom/nrsmagic/sudoku/gui/m/d/a;->postInvalidate()V

    return-void

    :cond_2
    iget v1, p0, Lcom/nrsmagic/sudoku/gui/m/d/a;->f:I

    const/16 v2, 0x64

    if-ge v1, v2, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/nrsmagic/sudoku/gui/m/d/a;->b:Z

    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/nrsmagic/sudoku/gui/m/d/a;->f:I

    iget v2, p0, Lcom/nrsmagic/sudoku/gui/m/d/a;->e:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/nrsmagic/sudoku/gui/m/d/a;->f:I

    goto :goto_1

    :cond_4
    iget v1, p0, Lcom/nrsmagic/sudoku/gui/m/d/a;->h:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/m/d/a;->a:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/m/d/a;->g:Landroid/content/Context;

    const/high16 v3, 0x4040

    invoke-static {v2, v3}, Lcom/nrsmagic/sudoku/gui/m/c/k;->a(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/nrsmagic/sudoku/gui/m/d/a;->d:I

    int-to-float v3, v3

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_2
.end method
