.class Lcom/nrsmagic/sudoku/gui/l/d/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Landroid/widget/LinearLayout$LayoutParams;

.field final synthetic c:Lcom/nrsmagic/sudoku/gui/l/d/e;


# direct methods
.method constructor <init>(Lcom/nrsmagic/sudoku/gui/l/d/e;Ljava/util/List;Landroid/widget/LinearLayout$LayoutParams;)V
    .locals 0

    iput-object p1, p0, Lcom/nrsmagic/sudoku/gui/l/d/g;->c:Lcom/nrsmagic/sudoku/gui/l/d/e;

    iput-object p2, p0, Lcom/nrsmagic/sudoku/gui/l/d/g;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/nrsmagic/sudoku/gui/l/d/g;->b:Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/l/d/g;->c:Lcom/nrsmagic/sudoku/gui/l/d/e;

    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/l/d/e;->b(Lcom/nrsmagic/sudoku/gui/l/d/e;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getWidth()I

    move-result v1

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/l/d/g;->a:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/l/d/g;->a:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    mul-int/2addr v0, v1

    div-int/2addr v0, v2

    sget v1, Lcom/nrsmagic/sudoku/gui/l/d/e;->a:I

    if-nez v1, :cond_0

    sput v0, Lcom/nrsmagic/sudoku/gui/l/d/e;->a:I

    :cond_0
    sget v0, Lcom/nrsmagic/sudoku/gui/l/d/e;->a:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/l/d/g;->b:Landroid/widget/LinearLayout$LayoutParams;

    sget v1, Lcom/nrsmagic/sudoku/gui/l/d/e;->a:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/l/d/g;->c:Lcom/nrsmagic/sudoku/gui/l/d/e;

    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/l/d/e;->b(Lcom/nrsmagic/sudoku/gui/l/d/e;)Landroid/widget/ImageButton;

    move-result-object v0

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/l/d/g;->b:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method
