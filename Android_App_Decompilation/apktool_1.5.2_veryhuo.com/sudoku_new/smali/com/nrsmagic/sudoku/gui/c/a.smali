.class public Lcom/nrsmagic/sudoku/gui/c/a;
.super Ljava/lang/Object;


# static fields
.field protected static a:Lcom/nrsmagic/sudoku/gui/c/m;

.field static b:Landroid/widget/AdapterView$OnItemClickListener;

.field private static c:Landroid/app/Activity;

.field private static d:Lcom/nrsmagic/sudoku/gui/c/an;

.field private static e:Lcom/nrsmagic/sudoku/gui/c/g;

.field private static f:Lcom/nrsmagic/sudoku/gui/c/g;

.field private static g:Landroid/view/animation/TranslateAnimation;

.field private static h:Landroid/view/animation/TranslateAnimation;

.field private static i:Landroid/view/animation/TranslateAnimation;

.field private static j:Landroid/view/animation/TranslateAnimation;

.field private static k:Ljava/util/Stack;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    sput-object v0, Lcom/nrsmagic/sudoku/gui/c/a;->k:Ljava/util/Stack;

    new-instance v0, Lcom/nrsmagic/sudoku/gui/c/d;

    invoke-direct {v0}, Lcom/nrsmagic/sudoku/gui/c/d;-><init>()V

    sput-object v0, Lcom/nrsmagic/sudoku/gui/c/a;->b:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method static synthetic a(Lcom/nrsmagic/sudoku/gui/c/g;)Lcom/nrsmagic/sudoku/gui/c/g;
    .locals 0

    sput-object p0, Lcom/nrsmagic/sudoku/gui/c/a;->f:Lcom/nrsmagic/sudoku/gui/c/g;

    return-object p0
.end method

.method public static a()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/nrsmagic/sudoku/gui/c/a;->a:Lcom/nrsmagic/sudoku/gui/c/m;

    sput-object v0, Lcom/nrsmagic/sudoku/gui/c/a;->c:Landroid/app/Activity;

    sput-object v0, Lcom/nrsmagic/sudoku/gui/c/a;->d:Lcom/nrsmagic/sudoku/gui/c/an;

    sput-object v0, Lcom/nrsmagic/sudoku/gui/c/a;->e:Lcom/nrsmagic/sudoku/gui/c/g;

    sput-object v0, Lcom/nrsmagic/sudoku/gui/c/a;->f:Lcom/nrsmagic/sudoku/gui/c/g;

    sput-object v0, Lcom/nrsmagic/sudoku/gui/c/a;->g:Landroid/view/animation/TranslateAnimation;

    sput-object v0, Lcom/nrsmagic/sudoku/gui/c/a;->h:Landroid/view/animation/TranslateAnimation;

    sput-object v0, Lcom/nrsmagic/sudoku/gui/c/a;->i:Landroid/view/animation/TranslateAnimation;

    sput-object v0, Lcom/nrsmagic/sudoku/gui/c/a;->j:Landroid/view/animation/TranslateAnimation;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    sput-object v0, Lcom/nrsmagic/sudoku/gui/c/a;->k:Ljava/util/Stack;

    return-void
.end method

.method public static a(Landroid/app/Activity;)V
    .locals 6

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v4}, Landroid/app/Activity;->requestWindowFeature(I)Z

    invoke-static {}, Lcom/nrsmagic/sudoku/gui/c/a;->d()V

    invoke-static {p0}, Lcom/nrsmagic/sudoku/gui/c/b/d;->a(Landroid/content/Context;)Lcom/nrsmagic/sudoku/gui/c/b/d;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    new-instance v1, Lcom/nrsmagic/sudoku/gui/c/an;

    invoke-direct {v1}, Lcom/nrsmagic/sudoku/gui/c/an;-><init>()V

    sput-object v1, Lcom/nrsmagic/sudoku/gui/c/a;->d:Lcom/nrsmagic/sudoku/gui/c/an;

    sget-object v1, Lcom/nrsmagic/sudoku/gui/c/a;->d:Lcom/nrsmagic/sudoku/gui/c/an;

    sget-object v2, Lcom/nrsmagic/sudoku/gui/c/l;->aA:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nrsmagic/sudoku/gui/c/an;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/nrsmagic/sudoku/gui/c/a;->d:Lcom/nrsmagic/sudoku/gui/c/an;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/nrsmagic/sudoku/gui/c/an;->l:Ljava/lang/Integer;

    sget-object v1, Lcom/nrsmagic/sudoku/gui/c/l;->Q:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    sget-object v2, Lcom/nrsmagic/sudoku/gui/c/l;->S:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    sget-object v3, Lcom/nrsmagic/sudoku/gui/c/a;->d:Lcom/nrsmagic/sudoku/gui/c/an;

    sget-object v4, Lcom/nrsmagic/sudoku/gui/c/l;->R:Ljava/lang/String;

    const/4 v5, -0x1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, v3, Lcom/nrsmagic/sudoku/gui/c/an;->f:I

    sget-object v0, Lcom/nrsmagic/sudoku/gui/c/a;->d:Lcom/nrsmagic/sudoku/gui/c/an;

    invoke-static {p0, v0}, Lcom/nrsmagic/sudoku/gui/c/bb;->b(Landroid/content/Context;Lcom/nrsmagic/sudoku/gui/c/an;)Z

    sget-object v0, Lcom/nrsmagic/sudoku/gui/c/a;->d:Lcom/nrsmagic/sudoku/gui/c/an;

    invoke-static {p0, v0, v2, v1}, Lcom/nrsmagic/sudoku/gui/c/a;->a(Landroid/app/Activity;Lcom/nrsmagic/sudoku/gui/c/an;ZZ)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 7

    const/4 v6, 0x1

    const v0, 0x186ab

    if-ne p1, v0, :cond_0

    const/16 v0, 0x4b0

    if-ne p2, v0, :cond_0

    sget-object v0, Lcom/nrsmagic/sudoku/gui/c/a;->d:Lcom/nrsmagic/sudoku/gui/c/an;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/nrsmagic/sudoku/gui/c/l;->ch:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/nrsmagic/sudoku/gui/c/a;->d:Lcom/nrsmagic/sudoku/gui/c/an;

    iget-object v1, v1, Lcom/nrsmagic/sudoku/gui/c/an;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/nrsmagic/sudoku/gui/c/l;->cj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    sget-object v0, Lcom/nrsmagic/sudoku/gui/c/a;->d:Lcom/nrsmagic/sudoku/gui/c/an;

    invoke-static {p0, v0}, Lcom/nrsmagic/sudoku/gui/c/a;->a(Landroid/content/Context;Lcom/nrsmagic/sudoku/gui/c/an;)V

    const/4 v1, 0x0

    const/4 v2, -0x1

    sget-object v3, Lcom/nrsmagic/sudoku/gui/c/a;->d:Lcom/nrsmagic/sudoku/gui/c/an;

    sget v4, Lcom/nrsmagic/sudoku/gui/c/bb;->a:I

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/nrsmagic/sudoku/gui/c/bb;->a(Landroid/content/Context;Landroid/content/Intent;ILcom/nrsmagic/sudoku/gui/c/an;IZZ)V

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private static a(Landroid/app/Activity;Lcom/nrsmagic/sudoku/gui/c/an;ZZ)V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x2

    const/4 v5, 0x0

    if-nez p2, :cond_0

    iget-byte v0, p1, Lcom/nrsmagic/sudoku/gui/c/an;->e:B

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    iget v0, p1, Lcom/nrsmagic/sudoku/gui/c/an;->s:I

    if-ne v0, v8, :cond_1

    new-instance v0, Lcom/nrsmagic/sudoku/gui/c/g;

    invoke-direct {v0, p0, p1, v5}, Lcom/nrsmagic/sudoku/gui/c/g;-><init>(Landroid/app/Activity;Lcom/nrsmagic/sudoku/gui/c/an;Z)V

    sput-object v0, Lcom/nrsmagic/sudoku/gui/c/a;->e:Lcom/nrsmagic/sudoku/gui/c/g;

    sput-object p0, Lcom/nrsmagic/sudoku/gui/c/a;->c:Landroid/app/Activity;

    sget-object v0, Lcom/nrsmagic/sudoku/gui/c/a;->e:Lcom/nrsmagic/sudoku/gui/c/g;

    sget-object v1, Lcom/nrsmagic/sudoku/gui/c/a;->b:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/nrsmagic/sudoku/gui/c/g;->a(Landroid/widget/AdapterView$OnItemClickListener;)V

    sget-object v0, Lcom/nrsmagic/sudoku/gui/c/a;->e:Lcom/nrsmagic/sudoku/gui/c/g;

    invoke-virtual {v0, v8}, Lcom/nrsmagic/sudoku/gui/c/g;->a(Z)V

    :goto_1
    new-instance v0, Landroid/content/Intent;

    invoke-static {p0}, Lcom/nrsmagic/sudoku/gui/c/bb;->t(Landroid/content/Context;)Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v1, Lcom/nrsmagic/sudoku/gui/c/l;->T:Ljava/lang/String;

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void

    :pswitch_1
    if-nez p3, :cond_0

    invoke-static {p0, p1}, Lcom/nrsmagic/sudoku/gui/c/ag;->b(Landroid/content/Context;Lcom/nrsmagic/sudoku/gui/c/an;)Landroid/content/Intent;

    move-result-object v1

    iget v0, p1, Lcom/nrsmagic/sudoku/gui/c/an;->F:I

    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/c/ag;->a(I)I

    move-result v2

    sget v4, Lcom/nrsmagic/sudoku/gui/c/bb;->a:I

    move-object v0, p0

    move-object v3, p1

    move v6, v5

    invoke-static/range {v0 .. v6}, Lcom/nrsmagic/sudoku/gui/c/bb;->a(Landroid/content/Context;Landroid/content/Intent;ILcom/nrsmagic/sudoku/gui/c/an;IZZ)V

    goto :goto_0

    :cond_1
    iget-byte v0, p1, Lcom/nrsmagic/sudoku/gui/c/an;->e:B

    if-ne v0, v7, :cond_2

    iget-object v0, p1, Lcom/nrsmagic/sudoku/gui/c/an;->d:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/nrsmagic/sudoku/gui/c/ak;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Lcom/nrsmagic/sudoku/gui/c/an;->l:Ljava/lang/Integer;

    invoke-static {p0, p1}, Lcom/nrsmagic/sudoku/gui/c/bb;->b(Landroid/content/Context;Lcom/nrsmagic/sudoku/gui/c/an;)Z

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    :cond_2
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Lcom/nrsmagic/sudoku/gui/c/an;->l:Ljava/lang/Integer;

    invoke-static {p0, p1}, Lcom/nrsmagic/sudoku/gui/c/bb;->b(Landroid/content/Context;Lcom/nrsmagic/sudoku/gui/c/an;)Z

    sget-object v0, Lcom/nrsmagic/sudoku/gui/c/a;->d:Lcom/nrsmagic/sudoku/gui/c/an;

    invoke-static {p0, v0}, Lcom/nrsmagic/sudoku/gui/c/bb;->c(Landroid/content/Context;Lcom/nrsmagic/sudoku/gui/c/an;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static a(Landroid/app/Activity;Lcom/nrsmagic/sudoku/gui/c/m;)V
    .locals 2

    sget-object v0, Lcom/nrsmagic/sudoku/gui/c/a;->k:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/nrsmagic/sudoku/gui/c/a;->k:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    sget-object v1, Lcom/nrsmagic/sudoku/gui/c/a;->g:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    sget-object v0, Lcom/nrsmagic/sudoku/gui/c/a;->k:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    sput-object p1, Lcom/nrsmagic/sudoku/gui/c/a;->a:Lcom/nrsmagic/sudoku/gui/c/m;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    invoke-virtual {p1}, Lcom/nrsmagic/sudoku/gui/c/m;->requestFocus()Z

    sget-object v0, Lcom/nrsmagic/sudoku/gui/c/a;->k:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    sget-object v0, Lcom/nrsmagic/sudoku/gui/c/a;->h:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p1, v0}, Lcom/nrsmagic/sudoku/gui/c/m;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    return-void
.end method

.method protected static a(Landroid/content/Context;Lcom/nrsmagic/sudoku/gui/c/an;)V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p1, Lcom/nrsmagic/sudoku/gui/c/an;->q:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/nrsmagic/sudoku/gui/c/an;->q:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/nrsmagic/sudoku/gui/c/a;->b(Landroid/content/Context;Ljava/lang/String;Lcom/nrsmagic/sudoku/gui/c/an;)V

    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/nrsmagic/sudoku/gui/c/b/h;

    iget-object v1, p1, Lcom/nrsmagic/sudoku/gui/c/an;->q:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/nrsmagic/sudoku/gui/c/l;->aB:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/nrsmagic/sudoku/gui/c/l;->s:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v3, p1, Lcom/nrsmagic/sudoku/gui/c/an;->h:I

    invoke-static {p0, v2, v3}, Lcom/nrsmagic/sudoku/gui/c/bb;->b(Landroid/content/Context;Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    invoke-direct {v0, v1, v2, v4}, Lcom/nrsmagic/sudoku/gui/c/b/h;-><init>(Ljava/lang/String;Ljava/io/File;I)V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nrsmagic/sudoku/gui/c/b/h;->a(Ljava/lang/Object;)V

    new-instance v1, Lcom/nrsmagic/sudoku/gui/c/b;

    invoke-direct {v1, p0, p1}, Lcom/nrsmagic/sudoku/gui/c/b;-><init>(Landroid/content/Context;Lcom/nrsmagic/sudoku/gui/c/an;)V

    invoke-static {p0, v0, v1}, Lcom/nrsmagic/sudoku/gui/c/ak;->a(Landroid/content/Context;Lcom/nrsmagic/sudoku/gui/c/b/h;Lcom/nrsmagic/sudoku/gui/c/b/c;)V

    goto :goto_0
.end method

.method static synthetic a(Landroid/content/Context;Ljava/lang/String;Lcom/nrsmagic/sudoku/gui/c/an;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/nrsmagic/sudoku/gui/c/a;->b(Landroid/content/Context;Ljava/lang/String;Lcom/nrsmagic/sudoku/gui/c/an;)V

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

.method public static a(Landroid/app/Activity;ILandroid/view/KeyEvent;)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-ne p1, v1, :cond_5

    sget-object v1, Lcom/nrsmagic/sudoku/gui/c/a;->e:Lcom/nrsmagic/sudoku/gui/c/g;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/nrsmagic/sudoku/gui/c/a;->e:Lcom/nrsmagic/sudoku/gui/c/g;

    invoke-virtual {v1}, Lcom/nrsmagic/sudoku/gui/c/g;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lcom/nrsmagic/sudoku/gui/c/a;->f:Lcom/nrsmagic/sudoku/gui/c/g;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/nrsmagic/sudoku/gui/c/a;->f:Lcom/nrsmagic/sudoku/gui/c/g;

    invoke-virtual {v1}, Lcom/nrsmagic/sudoku/gui/c/g;->a()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    sget-object v1, Lcom/nrsmagic/sudoku/gui/c/a;->e:Lcom/nrsmagic/sudoku/gui/c/g;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/nrsmagic/sudoku/gui/c/a;->e:Lcom/nrsmagic/sudoku/gui/c/g;

    invoke-virtual {v1}, Lcom/nrsmagic/sudoku/gui/c/g;->a()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    sget-object v1, Lcom/nrsmagic/sudoku/gui/c/a;->f:Lcom/nrsmagic/sudoku/gui/c/g;

    if-eqz v1, :cond_5

    sget-object v1, Lcom/nrsmagic/sudoku/gui/c/a;->f:Lcom/nrsmagic/sudoku/gui/c/g;

    invoke-virtual {v1}, Lcom/nrsmagic/sudoku/gui/c/g;->a()Z

    move-result v1

    if-nez v1, :cond_5

    :cond_4
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/nrsmagic/sudoku/gui/c/c;

    invoke-direct {v2, p0}, Lcom/nrsmagic/sudoku/gui/c/c;-><init>(Landroid/app/Activity;)V

    const-wide/16 v3, 0x12c

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b()Landroid/app/Activity;
    .locals 1

    sget-object v0, Lcom/nrsmagic/sudoku/gui/c/a;->c:Landroid/app/Activity;

    return-object v0
.end method

.method private static b(Landroid/content/Context;Lcom/nrsmagic/sudoku/gui/c/an;)Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-static {p0}, Lcom/nrsmagic/sudoku/gui/c/bb;->r(Landroid/content/Context;)Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    sget-object v1, Lcom/nrsmagic/sudoku/gui/c/l;->S:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    sget-object v1, Lcom/nrsmagic/sudoku/gui/c/l;->R:Ljava/lang/String;

    iget v2, p1, Lcom/nrsmagic/sudoku/gui/c/an;->f:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object v1, Lcom/nrsmagic/sudoku/gui/c/l;->aA:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/nrsmagic/sudoku/gui/c/an;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static b(Landroid/app/Activity;)Landroid/view/View;
    .locals 2

    sget-object v0, Lcom/nrsmagic/sudoku/gui/c/a;->k:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    sget-object v0, Lcom/nrsmagic/sudoku/gui/c/a;->k:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    sget-object v1, Lcom/nrsmagic/sudoku/gui/c/a;->i:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    sget-object v0, Lcom/nrsmagic/sudoku/gui/c/a;->k:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nrsmagic/sudoku/gui/c/m;

    sput-object v0, Lcom/nrsmagic/sudoku/gui/c/a;->a:Lcom/nrsmagic/sudoku/gui/c/m;

    sget-object v0, Lcom/nrsmagic/sudoku/gui/c/a;->a:Lcom/nrsmagic/sudoku/gui/c/m;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    sget-object v0, Lcom/nrsmagic/sudoku/gui/c/a;->a:Lcom/nrsmagic/sudoku/gui/c/m;

    invoke-virtual {v0}, Lcom/nrsmagic/sudoku/gui/c/m;->requestFocus()Z

    sget-object v0, Lcom/nrsmagic/sudoku/gui/c/a;->a:Lcom/nrsmagic/sudoku/gui/c/m;

    invoke-virtual {v0}, Lcom/nrsmagic/sudoku/gui/c/m;->requestFocusFromTouch()Z

    sget-object v0, Lcom/nrsmagic/sudoku/gui/c/a;->a:Lcom/nrsmagic/sudoku/gui/c/m;

    sget-object v1, Lcom/nrsmagic/sudoku/gui/c/a;->j:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Lcom/nrsmagic/sudoku/gui/c/m;->startAnimation(Landroid/view/animation/Animation;)V

    sget-object v0, Lcom/nrsmagic/sudoku/gui/c/a;->a:Lcom/nrsmagic/sudoku/gui/c/m;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;Lcom/nrsmagic/sudoku/gui/c/an;)V
    .locals 4

    const/4 v3, 0x1

    new-instance v1, Landroid/content/Intent;

    sget-object v0, Lcom/nrsmagic/sudoku/gui/c/l;->al:Ljava/lang/String;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "android.intent.extra.shortcut.NAME"

    iget-object v2, p2, Lcom/nrsmagic/sudoku/gui/c/an;->g:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v0, Lcom/nrsmagic/sudoku/gui/c/l;->az:Ljava/lang/String;

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {p0, p2}, Lcom/nrsmagic/sudoku/gui/c/a;->b(Landroid/content/Context;Lcom/nrsmagic/sudoku/gui/c/an;)Landroid/content/Intent;

    move-result-object v0

    const-string v2, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/nrsmagic/sudoku/gui/c/bb;->a(Landroid/content/Context;Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x1080093

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_1
    const-string v2, ""

    invoke-static {p0, v2, v3}, Lcom/nrsmagic/sudoku/gui/c/bb;->a(Landroid/content/Context;Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/nrsmagic/sudoku/gui/c/bb;->a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    const-string v2, "android.intent.extra.shortcut.ICON"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic c()Lcom/nrsmagic/sudoku/gui/c/g;
    .locals 1

    sget-object v0, Lcom/nrsmagic/sudoku/gui/c/a;->f:Lcom/nrsmagic/sudoku/gui/c/g;

    return-object v0
.end method

.method private static d()V
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

    sput-object v0, Lcom/nrsmagic/sudoku/gui/c/a;->g:Landroid/view/animation/TranslateAnimation;

    sget-object v0, Lcom/nrsmagic/sudoku/gui/c/a;->g:Landroid/view/animation/TranslateAnimation;

    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/c/a;->a(Landroid/view/animation/TranslateAnimation;)V

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

    sput-object v5, Lcom/nrsmagic/sudoku/gui/c/a;->h:Landroid/view/animation/TranslateAnimation;

    sget-object v0, Lcom/nrsmagic/sudoku/gui/c/a;->h:Landroid/view/animation/TranslateAnimation;

    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/c/a;->a(Landroid/view/animation/TranslateAnimation;)V

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

    sput-object v5, Lcom/nrsmagic/sudoku/gui/c/a;->i:Landroid/view/animation/TranslateAnimation;

    sget-object v0, Lcom/nrsmagic/sudoku/gui/c/a;->i:Landroid/view/animation/TranslateAnimation;

    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/c/a;->a(Landroid/view/animation/TranslateAnimation;)V

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

    sput-object v5, Lcom/nrsmagic/sudoku/gui/c/a;->j:Landroid/view/animation/TranslateAnimation;

    sget-object v0, Lcom/nrsmagic/sudoku/gui/c/a;->j:Landroid/view/animation/TranslateAnimation;

    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/c/a;->a(Landroid/view/animation/TranslateAnimation;)V

    return-void
.end method
