.class public Lcom/nrsmagic/sudoku/gui/r/l;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nrsmagic/sudoku/gui/r/d/n;


# static fields
.field private static a:Lcom/nrsmagic/sudoku/gui/r/l;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Landroid/view/WindowManager;

.field private d:Landroid/view/WindowManager$LayoutParams;

.field private e:Z

.field private f:Z

.field private g:F

.field private h:F

.field private i:F

.field private j:F

.field private k:F

.field private l:F

.field private m:I

.field private n:I

.field private o:Lcom/nrsmagic/sudoku/gui/r/b/f;

.field private p:I

.field private q:I

.field private r:Lcom/nrsmagic/sudoku/gui/r/d/o;

.field private s:Landroid/os/CountDownTimer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/nrsmagic/sudoku/gui/r/l;->a:Lcom/nrsmagic/sudoku/gui/r/l;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/nrsmagic/sudoku/gui/r/l;->e:Z

    iput-boolean v0, p0, Lcom/nrsmagic/sudoku/gui/r/l;->f:Z

    iput v1, p0, Lcom/nrsmagic/sudoku/gui/r/l;->m:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/l;->o:Lcom/nrsmagic/sudoku/gui/r/b/f;

    iput v1, p0, Lcom/nrsmagic/sudoku/gui/r/l;->p:I

    iput v1, p0, Lcom/nrsmagic/sudoku/gui/r/l;->q:I

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/l;->b:Landroid/content/Context;

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/l;->b:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/l;->c:Landroid/view/WindowManager;

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/l;->d:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/l;->d:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7d2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/l;->d:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/l;->d:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x28

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/l;->d:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    return-void
.end method

.method static synthetic a(Lcom/nrsmagic/sudoku/gui/r/l;)Landroid/os/CountDownTimer;
    .locals 1

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/l;->s:Landroid/os/CountDownTimer;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/nrsmagic/sudoku/gui/r/l;
    .locals 1

    sget-object v0, Lcom/nrsmagic/sudoku/gui/r/l;->a:Lcom/nrsmagic/sudoku/gui/r/l;

    if-nez v0, :cond_0

    new-instance v0, Lcom/nrsmagic/sudoku/gui/r/l;

    invoke-direct {v0, p0}, Lcom/nrsmagic/sudoku/gui/r/l;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/nrsmagic/sudoku/gui/r/l;->a:Lcom/nrsmagic/sudoku/gui/r/l;

    :cond_0
    sget-object v0, Lcom/nrsmagic/sudoku/gui/r/l;->a:Lcom/nrsmagic/sudoku/gui/r/l;

    return-object v0
.end method

.method private a(Lcom/nrsmagic/sudoku/gui/r/b/f;I)V
    .locals 7

    iget v0, p1, Lcom/nrsmagic/sudoku/gui/r/b/f;->t:I

    if-nez v0, :cond_0

    const/16 v0, 0x78

    iput v0, p1, Lcom/nrsmagic/sudoku/gui/r/b/f;->t:I

    :cond_0
    new-instance v0, Lcom/nrsmagic/sudoku/gui/r/o;

    iget v1, p1, Lcom/nrsmagic/sudoku/gui/r/b/f;->t:I

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v2, v1

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/nrsmagic/sudoku/gui/r/o;-><init>(Lcom/nrsmagic/sudoku/gui/r/l;JJI)V

    invoke-virtual {v0}, Lcom/nrsmagic/sudoku/gui/r/o;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/l;->s:Landroid/os/CountDownTimer;

    return-void
.end method

.method static synthetic a(Lcom/nrsmagic/sudoku/gui/r/l;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nrsmagic/sudoku/gui/r/l;->b(I)V

    return-void
.end method

.method static synthetic a(Lcom/nrsmagic/sudoku/gui/r/l;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/nrsmagic/sudoku/gui/r/l;->e:Z

    return p1
.end method

.method static synthetic b(Lcom/nrsmagic/sudoku/gui/r/l;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/l;->b:Landroid/content/Context;

    return-object v0
.end method

.method private b(I)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/l;->o:Lcom/nrsmagic/sudoku/gui/r/b/f;

    iput v2, v0, Lcom/nrsmagic/sudoku/gui/r/b/f;->x:I

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/l;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/r/l;->o:Lcom/nrsmagic/sudoku/gui/r/b/f;

    invoke-static {v0, v1}, Lcom/nrsmagic/sudoku/gui/r/e/h;->d(Landroid/content/Context;Lcom/nrsmagic/sudoku/gui/r/b/f;)Z

    new-instance v0, Lcom/nrsmagic/sudoku/gui/r/b/q;

    invoke-direct {v0}, Lcom/nrsmagic/sudoku/gui/r/b/q;-><init>()V

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/r/l;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/nrsmagic/sudoku/gui/r/b/q;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/l;->o:Lcom/nrsmagic/sudoku/gui/r/b/f;

    iget v0, v0, Lcom/nrsmagic/sudoku/gui/r/b/f;->c:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/l;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/r/l;->o:Lcom/nrsmagic/sudoku/gui/r/b/f;

    iget-object v1, v1, Lcom/nrsmagic/sudoku/gui/r/b/f;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/nrsmagic/sudoku/gui/r/p;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/nrsmagic/sudoku/gui/r/l;->a(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/l;->o:Lcom/nrsmagic/sudoku/gui/r/b/f;

    iget v0, v0, Lcom/nrsmagic/sudoku/gui/r/b/f;->s:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/l;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/r/l;->o:Lcom/nrsmagic/sudoku/gui/r/b/f;

    invoke-static {v0, v1}, Lcom/nrsmagic/sudoku/gui/r/e/h;->a(Landroid/content/Context;Lcom/nrsmagic/sudoku/gui/r/b/f;)V

    :goto_1
    invoke-virtual {p0, p1}, Lcom/nrsmagic/sudoku/gui/r/l;->a(I)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/nrsmagic/sudoku/gui/r/l;->d()V

    goto :goto_1
.end method

.method private c(Lcom/nrsmagic/sudoku/gui/r/b/f;)I
    .locals 4

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/l;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/r/l;->b:Landroid/content/Context;

    sget-object v2, Lcom/nrsmagic/sudoku/gui/r/e/b;->F:Ljava/lang/String;

    iget v3, p1, Lcom/nrsmagic/sudoku/gui/r/b/f;->e:I

    invoke-static {v1, v2, v3}, Lcom/nrsmagic/sudoku/gui/r/e/h;->a(Landroid/content/Context;Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nrsmagic/sudoku/gui/r/d/u;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c()V
    .locals 2

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/l;->o:Lcom/nrsmagic/sudoku/gui/r/b/f;

    const/4 v1, 0x0

    iput v1, v0, Lcom/nrsmagic/sudoku/gui/r/b/f;->x:I

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/l;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/r/l;->o:Lcom/nrsmagic/sudoku/gui/r/b/f;

    invoke-static {v0, v1}, Lcom/nrsmagic/sudoku/gui/r/e/h;->d(Landroid/content/Context;Lcom/nrsmagic/sudoku/gui/r/b/f;)Z

    new-instance v0, Lcom/nrsmagic/sudoku/gui/r/b/q;

    invoke-direct {v0}, Lcom/nrsmagic/sudoku/gui/r/b/q;-><init>()V

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/r/l;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/nrsmagic/sudoku/gui/r/b/q;->a(Landroid/content/Context;)V

    return-void
.end method

.method private d(Lcom/nrsmagic/sudoku/gui/r/b/f;)I
    .locals 4

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/l;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/r/l;->b:Landroid/content/Context;

    sget-object v2, Lcom/nrsmagic/sudoku/gui/r/e/b;->F:Ljava/lang/String;

    iget v3, p1, Lcom/nrsmagic/sudoku/gui/r/b/f;->e:I

    invoke-static {v1, v2, v3}, Lcom/nrsmagic/sudoku/gui/r/e/h;->a(Landroid/content/Context;Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nrsmagic/sudoku/gui/r/d/u;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/r/l;->b:Landroid/content/Context;

    const-class v2, Lcom/nrsmagic/sudoku/gui/r/Sw;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    sget-object v1, Lcom/nrsmagic/sudoku/gui/r/e/b;->aT:Ljava/lang/String;

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/r/l;->o:Lcom/nrsmagic/sudoku/gui/r/b/f;

    invoke-virtual {v2}, Lcom/nrsmagic/sudoku/gui/r/b/f;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/r/l;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private e()V
    .locals 4

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/l;->d:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/nrsmagic/sudoku/gui/r/l;->i:F

    iget v2, p0, Lcom/nrsmagic/sudoku/gui/r/l;->g:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/l;->d:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/nrsmagic/sudoku/gui/r/l;->j:F

    iget v2, p0, Lcom/nrsmagic/sudoku/gui/r/l;->h:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    :try_start_0
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/l;->c:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/r/l;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/r/l;->o:Lcom/nrsmagic/sudoku/gui/r/b/f;

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/nrsmagic/sudoku/gui/r/d/k;->a(Landroid/content/Context;Lcom/nrsmagic/sudoku/gui/r/b/f;I)Lcom/nrsmagic/sudoku/gui/r/d/k;

    move-result-object v1

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/r/l;->d:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public a()Landroid/view/WindowManager$LayoutParams;
    .locals 1

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/l;->d:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method public a(I)V
    .locals 4

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    :try_start_0
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/l;->c:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/r/l;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/r/l;->o:Lcom/nrsmagic/sudoku/gui/r/b/f;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/nrsmagic/sudoku/gui/r/d/k;->a(Landroid/content/Context;Lcom/nrsmagic/sudoku/gui/r/b/f;I)Lcom/nrsmagic/sudoku/gui/r/d/k;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nrsmagic/sudoku/gui/r/l;->e:Z

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/l;->s:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/l;->s:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_1
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/l;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/r/e;->a(Landroid/content/Context;)Lcom/nrsmagic/sudoku/gui/r/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nrsmagic/sudoku/gui/r/e;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :pswitch_1
    :try_start_1
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/l;->c:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/r/l;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/r/l;->o:Lcom/nrsmagic/sudoku/gui/r/b/f;

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/nrsmagic/sudoku/gui/r/d/k;->a(Landroid/content/Context;Lcom/nrsmagic/sudoku/gui/r/b/f;I)Lcom/nrsmagic/sudoku/gui/r/d/k;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nrsmagic/sudoku/gui/r/l;->e:Z

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/l;->s:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/l;->s:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_2
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/l;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/r/e;->a(Landroid/content/Context;)Lcom/nrsmagic/sudoku/gui/r/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nrsmagic/sudoku/gui/r/e;->a()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/l;->r:Lcom/nrsmagic/sudoku/gui/r/d/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/l;->r:Lcom/nrsmagic/sudoku/gui/r/d/o;

    invoke-virtual {v0}, Lcom/nrsmagic/sudoku/gui/r/d/o;->dismiss()V

    iput-boolean v1, p0, Lcom/nrsmagic/sudoku/gui/r/l;->e:Z

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/l;->s:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/l;->s:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_3
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/l;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/r/e;->a(Landroid/content/Context;)Lcom/nrsmagic/sudoku/gui/r/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nrsmagic/sudoku/gui/r/e;->a()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public a(Landroid/content/Context;Lcom/nrsmagic/sudoku/gui/r/b/f;)V
    .locals 4

    const/4 v3, 0x1

    iget-boolean v0, p0, Lcom/nrsmagic/sudoku/gui/r/l;->e:Z

    if-nez v0, :cond_0

    iput-object p2, p0, Lcom/nrsmagic/sudoku/gui/r/l;->o:Lcom/nrsmagic/sudoku/gui/r/b/f;

    new-instance v0, Lcom/nrsmagic/sudoku/gui/r/d/s;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/r/l;->o:Lcom/nrsmagic/sudoku/gui/r/b/f;

    invoke-direct {v0, p1, v1}, Lcom/nrsmagic/sudoku/gui/r/d/s;-><init>(Landroid/content/Context;Lcom/nrsmagic/sudoku/gui/r/b/f;)V

    new-instance v1, Lcom/nrsmagic/sudoku/gui/r/m;

    invoke-direct {v1, p0}, Lcom/nrsmagic/sudoku/gui/r/m;-><init>(Lcom/nrsmagic/sudoku/gui/r/l;)V

    invoke-virtual {v0, v1}, Lcom/nrsmagic/sudoku/gui/r/d/s;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lcom/nrsmagic/sudoku/gui/r/d/o;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v3, v2, p2}, Lcom/nrsmagic/sudoku/gui/r/d/o;-><init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;Lcom/nrsmagic/sudoku/gui/r/b/f;)V

    iput-object v1, p0, Lcom/nrsmagic/sudoku/gui/r/l;->r:Lcom/nrsmagic/sudoku/gui/r/d/o;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/r/l;->r:Lcom/nrsmagic/sudoku/gui/r/d/o;

    invoke-virtual {v1, v0}, Lcom/nrsmagic/sudoku/gui/r/d/o;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/l;->r:Lcom/nrsmagic/sudoku/gui/r/d/o;

    invoke-virtual {v0}, Lcom/nrsmagic/sudoku/gui/r/d/o;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/l;->r:Lcom/nrsmagic/sudoku/gui/r/d/o;

    new-instance v1, Lcom/nrsmagic/sudoku/gui/r/n;

    invoke-direct {v1, p0}, Lcom/nrsmagic/sudoku/gui/r/n;-><init>(Lcom/nrsmagic/sudoku/gui/r/l;)V

    invoke-virtual {v0, v1}, Lcom/nrsmagic/sudoku/gui/r/d/o;->a(Lcom/nrsmagic/sudoku/gui/r/d/q;)V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/l;->r:Lcom/nrsmagic/sudoku/gui/r/d/o;

    invoke-virtual {v0}, Lcom/nrsmagic/sudoku/gui/r/d/o;->show()V

    invoke-direct {p0}, Lcom/nrsmagic/sudoku/gui/r/l;->c()V

    iput-boolean v3, p0, Lcom/nrsmagic/sudoku/gui/r/l;->e:Z

    const/4 v0, 0x2

    invoke-direct {p0, p2, v0}, Lcom/nrsmagic/sudoku/gui/r/l;->a(Lcom/nrsmagic/sudoku/gui/r/b/f;I)V

    :cond_0
    return-void
.end method

.method public a(Lcom/nrsmagic/sudoku/gui/r/b/f;)V
    .locals 5

    const/4 v4, -0x1

    const/4 v2, -0x2

    const/4 v3, 0x1

    iget-boolean v0, p0, Lcom/nrsmagic/sudoku/gui/r/l;->e:Z

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/nrsmagic/sudoku/gui/r/l;->o:Lcom/nrsmagic/sudoku/gui/r/b/f;

    iget v0, p0, Lcom/nrsmagic/sudoku/gui/r/l;->p:I

    if-eq v0, v4, :cond_1

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/l;->d:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/nrsmagic/sudoku/gui/r/l;->p:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    :goto_0
    iget v0, p0, Lcom/nrsmagic/sudoku/gui/r/l;->q:I

    if-eq v0, v4, :cond_2

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/l;->d:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/nrsmagic/sudoku/gui/r/l;->q:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    :goto_1
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/l;->d:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/l;->d:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/l;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/r/l;->o:Lcom/nrsmagic/sudoku/gui/r/b/f;

    invoke-static {v0, v1, v3}, Lcom/nrsmagic/sudoku/gui/r/d/k;->a(Landroid/content/Context;Lcom/nrsmagic/sudoku/gui/r/b/f;I)Lcom/nrsmagic/sudoku/gui/r/d/k;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/nrsmagic/sudoku/gui/r/d/k;->a(I)V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/l;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/r/l;->o:Lcom/nrsmagic/sudoku/gui/r/b/f;

    invoke-static {v0, v1, v3}, Lcom/nrsmagic/sudoku/gui/r/d/k;->a(Landroid/content/Context;Lcom/nrsmagic/sudoku/gui/r/b/f;I)Lcom/nrsmagic/sudoku/gui/r/d/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nrsmagic/sudoku/gui/r/d/k;->a()V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/l;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/r/l;->o:Lcom/nrsmagic/sudoku/gui/r/b/f;

    invoke-static {v0, v1, v3}, Lcom/nrsmagic/sudoku/gui/r/d/k;->a(Landroid/content/Context;Lcom/nrsmagic/sudoku/gui/r/b/f;I)Lcom/nrsmagic/sudoku/gui/r/d/k;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/nrsmagic/sudoku/gui/r/d/k;->a(Lcom/nrsmagic/sudoku/gui/r/d/n;)V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/l;->c:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/r/l;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/r/l;->o:Lcom/nrsmagic/sudoku/gui/r/b/f;

    invoke-static {v1, v2, v3}, Lcom/nrsmagic/sudoku/gui/r/d/k;->a(Landroid/content/Context;Lcom/nrsmagic/sudoku/gui/r/b/f;I)Lcom/nrsmagic/sudoku/gui/r/d/k;

    move-result-object v1

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/r/l;->d:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-boolean v3, p0, Lcom/nrsmagic/sudoku/gui/r/l;->e:Z

    invoke-direct {p0}, Lcom/nrsmagic/sudoku/gui/r/l;->c()V

    invoke-direct {p0, p1, v3}, Lcom/nrsmagic/sudoku/gui/r/l;->a(Lcom/nrsmagic/sudoku/gui/r/b/f;I)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/l;->o:Lcom/nrsmagic/sudoku/gui/r/b/f;

    invoke-direct {p0, v0}, Lcom/nrsmagic/sudoku/gui/r/l;->c(Lcom/nrsmagic/sudoku/gui/r/b/f;)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/r/l;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/nrsmagic/sudoku/gui/r/e/h;->m(Landroid/content/Context;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int v0, v1, v0

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/r/l;->d:Landroid/view/WindowManager$LayoutParams;

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/l;->o:Lcom/nrsmagic/sudoku/gui/r/b/f;

    invoke-direct {p0, v0}, Lcom/nrsmagic/sudoku/gui/r/l;->d(Lcom/nrsmagic/sudoku/gui/r/b/f;)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/r/l;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/nrsmagic/sudoku/gui/r/e/h;->n(Landroid/content/Context;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int v0, v1, v0

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/r/l;->d:Landroid/view/WindowManager$LayoutParams;

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_1
.end method

.method public a(Landroid/view/MotionEvent;I)Z
    .locals 7

    const/16 v6, 0x28

    const/16 v5, 0xd

    const/4 v4, 0x1

    const/4 v3, -0x1

    iget v0, p0, Lcom/nrsmagic/sudoku/gui/r/l;->m:I

    if-ne v0, v3, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/r/l;->d:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    add-float/2addr v1, v2

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/nrsmagic/sudoku/gui/r/l;->m:I

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/nrsmagic/sudoku/gui/r/l;->i:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget v1, p0, Lcom/nrsmagic/sudoku/gui/r/l;->m:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/nrsmagic/sudoku/gui/r/l;->j:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_0
    return v4

    :pswitch_0
    iput-boolean v4, p0, Lcom/nrsmagic/sudoku/gui/r/l;->f:Z

    iput v3, p0, Lcom/nrsmagic/sudoku/gui/r/l;->m:I

    iget v0, p0, Lcom/nrsmagic/sudoku/gui/r/l;->m:I

    if-ne v0, v3, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/r/l;->d:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    add-float/2addr v1, v2

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/nrsmagic/sudoku/gui/r/l;->m:I

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/nrsmagic/sudoku/gui/r/l;->g:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/nrsmagic/sudoku/gui/r/l;->h:F

    iget v0, p0, Lcom/nrsmagic/sudoku/gui/r/l;->i:F

    iput v0, p0, Lcom/nrsmagic/sudoku/gui/r/l;->k:F

    iget v0, p0, Lcom/nrsmagic/sudoku/gui/r/l;->j:F

    iput v0, p0, Lcom/nrsmagic/sudoku/gui/r/l;->l:F

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/l;->c:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/nrsmagic/sudoku/gui/r/l;->n:I

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/nrsmagic/sudoku/gui/r/l;->e()V

    iget v0, p0, Lcom/nrsmagic/sudoku/gui/r/l;->i:F

    iget v1, p0, Lcom/nrsmagic/sudoku/gui/r/l;->k:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/nrsmagic/sudoku/gui/r/l;->j:F

    iget v2, p0, Lcom/nrsmagic/sudoku/gui/r/l;->l:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/r/l;->b:Landroid/content/Context;

    invoke-static {v2, v6}, Lcom/nrsmagic/sudoku/gui/r/e/h;->a(Landroid/content/Context;I)I

    move-result v2

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-gtz v0, :cond_3

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/l;->b:Landroid/content/Context;

    invoke-static {v0, v5}, Lcom/nrsmagic/sudoku/gui/r/e/h;->a(Landroid/content/Context;I)I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, v1, v0

    if-lez v0, :cond_1

    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nrsmagic/sudoku/gui/r/l;->f:Z

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/nrsmagic/sudoku/gui/r/l;->e()V

    iget v0, p0, Lcom/nrsmagic/sudoku/gui/r/l;->i:F

    iget v1, p0, Lcom/nrsmagic/sudoku/gui/r/l;->k:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/nrsmagic/sudoku/gui/r/l;->j:F

    iget v2, p0, Lcom/nrsmagic/sudoku/gui/r/l;->l:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget-boolean v2, p0, Lcom/nrsmagic/sudoku/gui/r/l;->f:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/r/l;->b:Landroid/content/Context;

    invoke-static {v2, v6}, Lcom/nrsmagic/sudoku/gui/r/e/h;->a(Landroid/content/Context;I)I

    move-result v2

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_4

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/l;->b:Landroid/content/Context;

    invoke-static {v0, v5}, Lcom/nrsmagic/sudoku/gui/r/e/h;->a(Landroid/content/Context;I)I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, v1, v0

    if-gez v0, :cond_4

    invoke-direct {p0, p2}, Lcom/nrsmagic/sudoku/gui/r/l;->b(I)V

    :cond_4
    const/4 v0, 0x0

    iput v0, p0, Lcom/nrsmagic/sudoku/gui/r/l;->h:F

    iput v0, p0, Lcom/nrsmagic/sudoku/gui/r/l;->g:F

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public b(Lcom/nrsmagic/sudoku/gui/r/b/f;)V
    .locals 4

    const/4 v1, -0x1

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/nrsmagic/sudoku/gui/r/l;->e:Z

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/nrsmagic/sudoku/gui/r/l;->o:Lcom/nrsmagic/sudoku/gui/r/b/f;

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/l;->d:Landroid/view/WindowManager$LayoutParams;

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/l;->d:Landroid/view/WindowManager$LayoutParams;

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/l;->d:Landroid/view/WindowManager$LayoutParams;

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/l;->d:Landroid/view/WindowManager$LayoutParams;

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/l;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/r/l;->o:Lcom/nrsmagic/sudoku/gui/r/b/f;

    invoke-static {v0, v1, v3}, Lcom/nrsmagic/sudoku/gui/r/d/k;->a(Landroid/content/Context;Lcom/nrsmagic/sudoku/gui/r/b/f;I)Lcom/nrsmagic/sudoku/gui/r/d/k;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/nrsmagic/sudoku/gui/r/d/k;->a(I)V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/l;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/r/l;->o:Lcom/nrsmagic/sudoku/gui/r/b/f;

    invoke-static {v0, v1, v3}, Lcom/nrsmagic/sudoku/gui/r/d/k;->a(Landroid/content/Context;Lcom/nrsmagic/sudoku/gui/r/b/f;I)Lcom/nrsmagic/sudoku/gui/r/d/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nrsmagic/sudoku/gui/r/d/k;->a()V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/l;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/r/l;->o:Lcom/nrsmagic/sudoku/gui/r/b/f;

    invoke-static {v0, v1, v3}, Lcom/nrsmagic/sudoku/gui/r/d/k;->a(Landroid/content/Context;Lcom/nrsmagic/sudoku/gui/r/b/f;I)Lcom/nrsmagic/sudoku/gui/r/d/k;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/nrsmagic/sudoku/gui/r/d/k;->a(Lcom/nrsmagic/sudoku/gui/r/d/n;)V

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/l;->c:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/r/l;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/r/l;->o:Lcom/nrsmagic/sudoku/gui/r/b/f;

    invoke-static {v1, v2, v3}, Lcom/nrsmagic/sudoku/gui/r/d/k;->a(Landroid/content/Context;Lcom/nrsmagic/sudoku/gui/r/b/f;I)Lcom/nrsmagic/sudoku/gui/r/d/k;

    move-result-object v1

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/r/l;->d:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nrsmagic/sudoku/gui/r/l;->e:Z

    invoke-direct {p0}, Lcom/nrsmagic/sudoku/gui/r/l;->c()V

    invoke-direct {p0, p1, v3}, Lcom/nrsmagic/sudoku/gui/r/l;->a(Lcom/nrsmagic/sudoku/gui/r/b/f;I)V

    :cond_0
    return-void
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nrsmagic/sudoku/gui/r/l;->e:Z

    return v0
.end method
