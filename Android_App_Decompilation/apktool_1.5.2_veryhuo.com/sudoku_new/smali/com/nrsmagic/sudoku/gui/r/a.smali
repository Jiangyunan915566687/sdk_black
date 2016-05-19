.class public Lcom/nrsmagic/sudoku/gui/r/a;
.super Ljava/lang/Object;


# static fields
.field protected static a:Landroid/view/View;

.field private static b:Landroid/os/Handler;

.field private static c:Lcom/nrsmagic/sudoku/gui/r/q;

.field private static d:Lcom/nrsmagic/sudoku/gui/r/q;

.field private static e:Ljava/util/Stack;

.field private static f:Landroid/app/Activity;

.field private static g:Landroid/view/animation/TranslateAnimation;

.field private static h:Landroid/view/animation/TranslateAnimation;

.field private static i:Landroid/view/animation/TranslateAnimation;

.field private static j:Landroid/view/animation/TranslateAnimation;

.field private static k:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/nrsmagic/sudoku/gui/r/a;->b:Landroid/os/Handler;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    sput-object v0, Lcom/nrsmagic/sudoku/gui/r/a;->e:Ljava/util/Stack;

    new-instance v0, Lcom/nrsmagic/sudoku/gui/r/c;

    invoke-direct {v0}, Lcom/nrsmagic/sudoku/gui/r/c;-><init>()V

    sput-object v0, Lcom/nrsmagic/sudoku/gui/r/a;->k:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method static synthetic a(Lcom/nrsmagic/sudoku/gui/r/q;)Lcom/nrsmagic/sudoku/gui/r/q;
    .locals 0

    sput-object p0, Lcom/nrsmagic/sudoku/gui/r/a;->d:Lcom/nrsmagic/sudoku/gui/r/q;

    return-object p0
.end method

.method public static a()V
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/nrsmagic/sudoku/gui/r/a;->b:Landroid/os/Handler;

    sput-object v1, Lcom/nrsmagic/sudoku/gui/r/a;->c:Lcom/nrsmagic/sudoku/gui/r/q;

    sput-object v1, Lcom/nrsmagic/sudoku/gui/r/a;->d:Lcom/nrsmagic/sudoku/gui/r/q;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    sput-object v0, Lcom/nrsmagic/sudoku/gui/r/a;->e:Ljava/util/Stack;

    sput-object v1, Lcom/nrsmagic/sudoku/gui/r/a;->a:Landroid/view/View;

    sput-object v1, Lcom/nrsmagic/sudoku/gui/r/a;->f:Landroid/app/Activity;

    sput-object v1, Lcom/nrsmagic/sudoku/gui/r/a;->g:Landroid/view/animation/TranslateAnimation;

    sput-object v1, Lcom/nrsmagic/sudoku/gui/r/a;->h:Landroid/view/animation/TranslateAnimation;

    sput-object v1, Lcom/nrsmagic/sudoku/gui/r/a;->i:Landroid/view/animation/TranslateAnimation;

    sput-object v1, Lcom/nrsmagic/sudoku/gui/r/a;->j:Landroid/view/animation/TranslateAnimation;

    return-void
.end method

.method public static a(Landroid/app/Activity;)V
    .locals 3

    sput-object p0, Lcom/nrsmagic/sudoku/gui/r/a;->f:Landroid/app/Activity;

    invoke-static {p0}, Lcom/nrsmagic/sudoku/gui/r/a/d;->a(Landroid/content/Context;)Lcom/nrsmagic/sudoku/gui/r/a/d;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->requestWindowFeature(I)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/nrsmagic/sudoku/gui/r/e/b;->aS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/r/e/d;->a(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/nrsmagic/sudoku/gui/r/e/b;->P:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/nrsmagic/sudoku/gui/r/b/f;

    invoke-direct {v1}, Lcom/nrsmagic/sudoku/gui/r/b/f;-><init>()V

    invoke-virtual {v1, v0}, Lcom/nrsmagic/sudoku/gui/r/b/f;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/nrsmagic/sudoku/gui/r/a;->h()V

    new-instance v0, Lcom/nrsmagic/sudoku/gui/r/q;

    invoke-direct {v0, p0, v1}, Lcom/nrsmagic/sudoku/gui/r/q;-><init>(Landroid/app/Activity;Lcom/nrsmagic/sudoku/gui/r/b/f;)V

    sput-object v0, Lcom/nrsmagic/sudoku/gui/r/a;->c:Lcom/nrsmagic/sudoku/gui/r/q;

    sget-object v0, Lcom/nrsmagic/sudoku/gui/r/a;->c:Lcom/nrsmagic/sudoku/gui/r/q;

    sget-object v1, Lcom/nrsmagic/sudoku/gui/r/a;->k:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/nrsmagic/sudoku/gui/r/q;->a(Landroid/widget/AdapterView$OnItemClickListener;)V

    sget-object v0, Lcom/nrsmagic/sudoku/gui/r/a;->c:Lcom/nrsmagic/sudoku/gui/r/q;

    invoke-virtual {v0}, Lcom/nrsmagic/sudoku/gui/r/q;->a()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;Landroid/view/View;)V
    .locals 2

    sget-object v0, Lcom/nrsmagic/sudoku/gui/r/a;->b:Landroid/os/Handler;

    new-instance v1, Lcom/nrsmagic/sudoku/gui/r/b;

    invoke-direct {v1, p1, p0}, Lcom/nrsmagic/sudoku/gui/r/b;-><init>(Landroid/view/View;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static a(Landroid/view/animation/TranslateAnimation;)V
    .locals 2

    const-wide/16 v0, 0x190

    invoke-virtual {p0, v0, v1}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-void
.end method

.method public static a(ILandroid/view/KeyEvent;)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-ne p0, v1, :cond_5

    sget-object v1, Lcom/nrsmagic/sudoku/gui/r/a;->c:Lcom/nrsmagic/sudoku/gui/r/q;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/nrsmagic/sudoku/gui/r/a;->c:Lcom/nrsmagic/sudoku/gui/r/q;

    invoke-virtual {v1}, Lcom/nrsmagic/sudoku/gui/r/q;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lcom/nrsmagic/sudoku/gui/r/a;->d:Lcom/nrsmagic/sudoku/gui/r/q;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/nrsmagic/sudoku/gui/r/a;->d:Lcom/nrsmagic/sudoku/gui/r/q;

    invoke-virtual {v1}, Lcom/nrsmagic/sudoku/gui/r/q;->b()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    sget-object v1, Lcom/nrsmagic/sudoku/gui/r/a;->c:Lcom/nrsmagic/sudoku/gui/r/q;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/nrsmagic/sudoku/gui/r/a;->c:Lcom/nrsmagic/sudoku/gui/r/q;

    invoke-virtual {v1}, Lcom/nrsmagic/sudoku/gui/r/q;->b()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    sget-object v1, Lcom/nrsmagic/sudoku/gui/r/a;->d:Lcom/nrsmagic/sudoku/gui/r/q;

    if-eqz v1, :cond_5

    sget-object v1, Lcom/nrsmagic/sudoku/gui/r/a;->d:Lcom/nrsmagic/sudoku/gui/r/q;

    invoke-virtual {v1}, Lcom/nrsmagic/sudoku/gui/r/q;->b()Z

    move-result v1

    if-nez v1, :cond_5

    :cond_4
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/nrsmagic/sudoku/gui/r/d;

    invoke-direct {v2}, Lcom/nrsmagic/sudoku/gui/r/d;-><init>()V

    const-wide/16 v3, 0x12c

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Landroid/app/Activity;)Landroid/view/View;
    .locals 3

    const/4 v2, 0x1

    sget-object v0, Lcom/nrsmagic/sudoku/gui/r/a;->e:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-le v0, v2, :cond_0

    sget-object v0, Lcom/nrsmagic/sudoku/gui/r/a;->e:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    sget-object v1, Lcom/nrsmagic/sudoku/gui/r/a;->i:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    sget-object v0, Lcom/nrsmagic/sudoku/gui/r/a;->e:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    sput-object v0, Lcom/nrsmagic/sudoku/gui/r/a;->a:Landroid/view/View;

    sget-object v0, Lcom/nrsmagic/sudoku/gui/r/a;->a:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusable(Z)V

    sget-object v0, Lcom/nrsmagic/sudoku/gui/r/a;->a:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    sget-object v0, Lcom/nrsmagic/sudoku/gui/r/a;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocusFromTouch()Z

    sget-object v0, Lcom/nrsmagic/sudoku/gui/r/a;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    sget-object v0, Lcom/nrsmagic/sudoku/gui/r/a;->a:Landroid/view/View;

    sget-object v1, Lcom/nrsmagic/sudoku/gui/r/a;->j:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    sget-object v0, Lcom/nrsmagic/sudoku/gui/r/a;->a:Landroid/view/View;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b()Ljava/util/Stack;
    .locals 1

    sget-object v0, Lcom/nrsmagic/sudoku/gui/r/a;->e:Ljava/util/Stack;

    return-object v0
.end method

.method static synthetic c()Landroid/view/animation/TranslateAnimation;
    .locals 1

    sget-object v0, Lcom/nrsmagic/sudoku/gui/r/a;->g:Landroid/view/animation/TranslateAnimation;

    return-object v0
.end method

.method static synthetic d()Landroid/view/animation/TranslateAnimation;
    .locals 1

    sget-object v0, Lcom/nrsmagic/sudoku/gui/r/a;->h:Landroid/view/animation/TranslateAnimation;

    return-object v0
.end method

.method static synthetic e()Landroid/app/Activity;
    .locals 1

    sget-object v0, Lcom/nrsmagic/sudoku/gui/r/a;->f:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic f()Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1

    sget-object v0, Lcom/nrsmagic/sudoku/gui/r/a;->k:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method static synthetic g()Lcom/nrsmagic/sudoku/gui/r/q;
    .locals 1

    sget-object v0, Lcom/nrsmagic/sudoku/gui/r/a;->d:Lcom/nrsmagic/sudoku/gui/r/q;

    return-object v0
.end method

.method private static h()V
    .locals 15

    const/high16 v14, 0x3f80

    const/high16 v4, -0x4080

    const/4 v2, 0x0

    const/4 v1, 0x1

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    move v3, v1

    move v5, v1

    move v6, v2

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    sput-object v0, Lcom/nrsmagic/sudoku/gui/r/a;->g:Landroid/view/animation/TranslateAnimation;

    sget-object v0, Lcom/nrsmagic/sudoku/gui/r/a;->g:Landroid/view/animation/TranslateAnimation;

    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/r/a;->a(Landroid/view/animation/TranslateAnimation;)V

    new-instance v5, Landroid/view/animation/TranslateAnimation;

    move v6, v1

    move v7, v14

    move v8, v1

    move v9, v2

    move v10, v1

    move v11, v2

    move v12, v1

    move v13, v2

    invoke-direct/range {v5 .. v13}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    sput-object v5, Lcom/nrsmagic/sudoku/gui/r/a;->h:Landroid/view/animation/TranslateAnimation;

    sget-object v0, Lcom/nrsmagic/sudoku/gui/r/a;->h:Landroid/view/animation/TranslateAnimation;

    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/r/a;->a(Landroid/view/animation/TranslateAnimation;)V

    new-instance v5, Landroid/view/animation/TranslateAnimation;

    move v6, v1

    move v7, v2

    move v8, v1

    move v9, v14

    move v10, v1

    move v11, v2

    move v12, v1

    move v13, v2

    invoke-direct/range {v5 .. v13}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    sput-object v5, Lcom/nrsmagic/sudoku/gui/r/a;->i:Landroid/view/animation/TranslateAnimation;

    sget-object v0, Lcom/nrsmagic/sudoku/gui/r/a;->i:Landroid/view/animation/TranslateAnimation;

    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/r/a;->a(Landroid/view/animation/TranslateAnimation;)V

    new-instance v5, Landroid/view/animation/TranslateAnimation;

    move v6, v1

    move v7, v4

    move v8, v1

    move v9, v2

    move v10, v1

    move v11, v2

    move v12, v1

    move v13, v2

    invoke-direct/range {v5 .. v13}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    sput-object v5, Lcom/nrsmagic/sudoku/gui/r/a;->j:Landroid/view/animation/TranslateAnimation;

    sget-object v0, Lcom/nrsmagic/sudoku/gui/r/a;->j:Landroid/view/animation/TranslateAnimation;

    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/r/a;->a(Landroid/view/animation/TranslateAnimation;)V

    return-void
.end method
