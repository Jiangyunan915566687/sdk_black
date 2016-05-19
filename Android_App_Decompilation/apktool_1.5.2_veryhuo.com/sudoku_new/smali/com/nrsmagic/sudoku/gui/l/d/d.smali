.class Lcom/nrsmagic/sudoku/gui/l/d/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/nrsmagic/sudoku/gui/l/d/a;


# direct methods
.method constructor <init>(Lcom/nrsmagic/sudoku/gui/l/d/a;)V
    .locals 0

    iput-object p1, p0, Lcom/nrsmagic/sudoku/gui/l/d/d;->a:Lcom/nrsmagic/sudoku/gui/l/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/l/d/d;->a:Lcom/nrsmagic/sudoku/gui/l/d/a;

    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/l/d/a;->c(Lcom/nrsmagic/sudoku/gui/l/d/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/l/d/d;->a:Lcom/nrsmagic/sudoku/gui/l/d/a;

    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/l/d/a;->d(Lcom/nrsmagic/sudoku/gui/l/d/a;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/l/d/d;->a:Lcom/nrsmagic/sudoku/gui/l/d/a;

    iget-object v1, v1, Lcom/nrsmagic/sudoku/gui/l/d/a;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getWallpaperDesiredMinimumHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/l/d/d;->a:Lcom/nrsmagic/sudoku/gui/l/d/a;

    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/l/d/a;->e(Lcom/nrsmagic/sudoku/gui/l/d/a;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/l/d/d;->a:Lcom/nrsmagic/sudoku/gui/l/d/a;

    iget-object v1, v1, Lcom/nrsmagic/sudoku/gui/l/d/a;->a:Landroid/content/Context;

    const/16 v2, 0xd

    invoke-static {v1, v2}, Lcom/nrsmagic/sudoku/gui/l/e/a;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/l/d/d;->a:Lcom/nrsmagic/sudoku/gui/l/d/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nrsmagic/sudoku/gui/l/d/a;->a(Lcom/nrsmagic/sudoku/gui/l/d/a;Z)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/l/d/d;->a:Lcom/nrsmagic/sudoku/gui/l/d/a;

    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/l/d/a;->d(Lcom/nrsmagic/sudoku/gui/l/d/a;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/l/d/d;->a:Lcom/nrsmagic/sudoku/gui/l/d/a;

    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/l/d/a;->e(Lcom/nrsmagic/sudoku/gui/l/d/a;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/l/d/d;->a:Lcom/nrsmagic/sudoku/gui/l/d/a;

    iget-object v1, v1, Lcom/nrsmagic/sudoku/gui/l/d/a;->a:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/nrsmagic/sudoku/gui/l/e/a;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/l/d/d;->a:Lcom/nrsmagic/sudoku/gui/l/d/a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/nrsmagic/sudoku/gui/l/d/a;->a(Lcom/nrsmagic/sudoku/gui/l/d/a;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
