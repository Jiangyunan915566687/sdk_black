.class final Lcom/nrsmagic/sudoku/gui/l/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/nrsmagic/sudoku/gui/l/b;->a:Landroid/view/View;

    iput-object p2, p0, Lcom/nrsmagic/sudoku/gui/l/b;->b:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/nrsmagic/sudoku/gui/l/a;->b()Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {}, Lcom/nrsmagic/sudoku/gui/l/a;->b()Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    invoke-static {}, Lcom/nrsmagic/sudoku/gui/l/a;->c()Landroid/view/animation/TranslateAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    invoke-static {}, Lcom/nrsmagic/sudoku/gui/l/a;->b()Ljava/util/Stack;

    move-result-object v0

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/l/b;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/l/b;->a:Landroid/view/View;

    sput-object v0, Lcom/nrsmagic/sudoku/gui/l/a;->a:Landroid/view/View;

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/l/b;->b:Landroid/app/Activity;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/l/b;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/l/b;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    invoke-static {}, Lcom/nrsmagic/sudoku/gui/l/a;->b()Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/l/b;->a:Landroid/view/View;

    invoke-static {}, Lcom/nrsmagic/sudoku/gui/l/a;->d()Landroid/view/animation/TranslateAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    return-void
.end method
