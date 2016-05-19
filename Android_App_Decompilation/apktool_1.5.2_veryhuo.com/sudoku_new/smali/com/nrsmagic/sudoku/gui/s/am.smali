.class public Lcom/nrsmagic/sudoku/gui/s/am;
.super Ljava/lang/Object;


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Ljava/lang/String;

.field protected c:Ljava/lang/String;

.field protected d:Ljava/lang/String;

.field protected e:D

.field protected f:D

.field protected g:Ljava/lang/String;

.field protected h:Ljava/lang/String;

.field protected i:I

.field protected j:Ljava/lang/String;

.field protected k:I

.field protected l:Ljava/lang/String;

.field protected m:I

.field protected n:Ljava/lang/String;

.field protected o:Ljava/lang/String;

.field protected p:I

.field protected q:I

.field protected r:Ljava/lang/String;

.field protected s:Ljava/lang/String;

.field protected t:Ljava/lang/String;

.field protected u:I


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 5

    const-wide v3, -0x3f80c00000000000L

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/s/am;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/s/am;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/s/am;->c:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/s/am;->d:Ljava/lang/String;

    iput-wide v3, p0, Lcom/nrsmagic/sudoku/gui/s/am;->e:D

    iput-wide v3, p0, Lcom/nrsmagic/sudoku/gui/s/am;->f:D

    const-string v0, ""

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/s/am;->g:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/s/am;->h:Ljava/lang/String;

    const v0, 0x186cc

    iput v0, p0, Lcom/nrsmagic/sudoku/gui/s/am;->i:I

    const-string v0, ""

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/s/am;->j:Ljava/lang/String;

    const/16 v0, 0xa0

    iput v0, p0, Lcom/nrsmagic/sudoku/gui/s/am;->k:I

    sget-object v0, Lcom/nrsmagic/sudoku/gui/s/l;->av:Ljava/lang/String;

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/s/am;->l:Ljava/lang/String;

    iput v1, p0, Lcom/nrsmagic/sudoku/gui/s/am;->m:I

    const-string v0, ""

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/s/am;->n:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/s/am;->o:Ljava/lang/String;

    iput v2, p0, Lcom/nrsmagic/sudoku/gui/s/am;->p:I

    iput v2, p0, Lcom/nrsmagic/sudoku/gui/s/am;->q:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/s/am;->r:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/s/am;->s:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/s/am;->t:Ljava/lang/String;

    iput v1, p0, Lcom/nrsmagic/sudoku/gui/s/am;->u:I

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/s/am;->h:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/s/am;->g:Ljava/lang/String;

    invoke-static {p1}, Lcom/nrsmagic/sudoku/gui/s/bb;->f(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput v0, p0, Lcom/nrsmagic/sudoku/gui/s/am;->p:I

    sget-object v0, Lcom/nrsmagic/sudoku/gui/s/l;->av:Ljava/lang/String;

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/s/am;->c:Ljava/lang/String;

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    invoke-static {p1}, Lcom/nrsmagic/sudoku/gui/s/bb;->m(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/s/am;->b:Ljava/lang/String;

    invoke-static {p1}, Lcom/nrsmagic/sudoku/gui/s/bb;->a(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/nrsmagic/sudoku/gui/s/am;->i:I

    iget v0, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v0, p0, Lcom/nrsmagic/sudoku/gui/s/am;->k:I

    invoke-static {p1}, Lcom/nrsmagic/sudoku/gui/s/bb;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/s/am;->n:Ljava/lang/String;

    invoke-static {p1}, Lcom/nrsmagic/sudoku/gui/s/bb;->o(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/s/am;->o:Ljava/lang/String;

    invoke-static {p1}, Lcom/nrsmagic/sudoku/gui/s/bb;->l(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/nrsmagic/sudoku/gui/s/am;->u:I

    return-void

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method private c()I
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/s/am;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/s/am;->b:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/s/am;->d:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, ""

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/s/am;->d:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/s/am;->c:Ljava/lang/String;

    if-nez v0, :cond_2

    sget-object v0, Lcom/nrsmagic/sudoku/gui/s/l;->av:Ljava/lang/String;

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/s/am;->c:Ljava/lang/String;

    :cond_2
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/s/am;->h:Ljava/lang/String;

    if-nez v0, :cond_3

    const-string v0, ""

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/s/am;->h:Ljava/lang/String;

    :cond_3
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/s/am;->n:Ljava/lang/String;

    if-nez v0, :cond_4

    const-string v0, ""

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/s/am;->n:Ljava/lang/String;

    :cond_4
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/s/am;->o:Ljava/lang/String;

    if-nez v0, :cond_5

    const-string v0, ""

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/s/am;->o:Ljava/lang/String;

    :cond_5
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/s/am;->s:Ljava/lang/String;

    if-nez v0, :cond_6

    const-string v0, ""

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/s/am;->s:Ljava/lang/String;

    :cond_6
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/s/am;->t:Ljava/lang/String;

    if-nez v0, :cond_7

    const-string v0, ""

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/s/am;->t:Ljava/lang/String;

    :cond_7
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/s/am;->l:Ljava/lang/String;

    if-eqz v0, :cond_8

    const-string v0, ""

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/s/am;->l:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    sget-object v0, Lcom/nrsmagic/sudoku/gui/s/l;->av:Ljava/lang/String;

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/s/am;->l:Ljava/lang/String;

    :cond_9
    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/s/am;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1e

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/s/am;->b:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/s/am;->c:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/s/am;->d:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    add-int/2addr v0, v2

    iget-wide v2, p0, Lcom/nrsmagic/sudoku/gui/s/am;->e:D

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    add-int/2addr v0, v2

    iget-wide v2, p0, Lcom/nrsmagic/sudoku/gui/s/am;->f:D

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/s/am;->g:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/s/am;->h:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x7

    const-string v2, "2.1.3"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    add-int/2addr v2, v0

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/s/am;->j:Ljava/lang/String;

    if-eqz v0, :cond_b

    const-string v0, ""

    iget-object v3, p0, Lcom/nrsmagic/sudoku/gui/s/am;->j:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/s/am;->j:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, 0x3

    :goto_0
    add-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x7

    add-int/lit8 v0, v0, 0x3

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/s/am;->l:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x7

    add-int/lit8 v0, v0, 0x3

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/s/am;->n:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x3

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/s/am;->o:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x7

    add-int/lit8 v0, v0, 0x7

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/s/am;->r:Ljava/lang/String;

    if-eqz v2, :cond_a

    const-string v2, ""

    iget-object v3, p0, Lcom/nrsmagic/sudoku/gui/s/am;->r:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/s/am;->r:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, 0x3

    :cond_a
    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x3

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/s/am;->s:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x3

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/s/am;->t:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x7

    return v0

    :cond_b
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method protected a()V
    .locals 0

    return-void
.end method

.method protected b()[B
    .locals 8

    const/4 v4, 0x3

    const/4 v3, 0x1

    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x0

    invoke-direct {p0}, Lcom/nrsmagic/sudoku/gui/s/am;->c()I

    move-result v0

    new-array v1, v0, [B

    const/16 v2, 0x11

    aput-byte v2, v1, v5

    add-int/lit8 v0, v0, -0x3

    int-to-short v0, v0

    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/s/k;->a(S)[B

    move-result-object v0

    invoke-static {v0, v5, v1, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-byte v3, v1, v4

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/s/am;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    int-to-short v0, v0

    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/s/k;->a(S)[B

    move-result-object v0

    invoke-static {v0, v5, v1, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v0, 0x6

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/s/am;->b:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v3, v2

    invoke-static {v2, v5, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v2

    add-int/lit8 v0, v0, 0x6

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/s/am;->j:Ljava/lang/String;

    if-eqz v2, :cond_0

    const-string v2, ""

    iget-object v3, p0, Lcom/nrsmagic/sudoku/gui/s/am;->j:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v2, v0, 0x1

    const/16 v3, 0xa

    aput-byte v3, v1, v0

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/s/am;->j:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    int-to-short v0, v0

    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/s/k;->a(S)[B

    move-result-object v0

    array-length v3, v0

    invoke-static {v0, v5, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v2, 0x2

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/s/am;->j:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v3, v2

    invoke-static {v2, v5, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, v2

    add-int/2addr v0, v2

    :cond_0
    add-int/lit8 v2, v0, 0x1

    const/16 v3, 0xd

    aput-byte v3, v1, v0

    invoke-static {v7}, Lcom/nrsmagic/sudoku/gui/s/k;->a(S)[B

    move-result-object v0

    array-length v3, v0

    invoke-static {v0, v5, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v2, 0x2

    iget v2, p0, Lcom/nrsmagic/sudoku/gui/s/am;->m:I

    invoke-static {v2}, Lcom/nrsmagic/sudoku/gui/s/k;->a(I)[B

    move-result-object v2

    array-length v3, v2

    invoke-static {v2, v5, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, v2

    add-int/2addr v0, v2

    add-int/lit8 v2, v0, 0x1

    aput-byte v5, v1, v0

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/s/am;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    int-to-short v0, v0

    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/s/k;->a(S)[B

    move-result-object v0

    invoke-static {v0, v5, v1, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v2, 0x2

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/s/am;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v3, v2

    invoke-static {v2, v5, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, v2

    add-int/2addr v0, v2

    add-int/lit8 v2, v0, 0x1

    aput-byte v6, v1, v0

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/s/am;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    int-to-short v0, v0

    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/s/k;->a(S)[B

    move-result-object v0

    invoke-static {v0, v5, v1, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v2, 0x2

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/s/am;->c:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v3, v2

    invoke-static {v2, v5, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, v2

    add-int/2addr v0, v2

    add-int/lit8 v2, v0, 0x1

    aput-byte v4, v1, v0

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/s/am;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    int-to-short v0, v0

    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/s/k;->a(S)[B

    move-result-object v0

    invoke-static {v0, v5, v1, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v2, 0x2

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/s/am;->d:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v3, v2

    invoke-static {v2, v5, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, v2

    add-int/2addr v0, v2

    add-int/lit8 v2, v0, 0x1

    aput-byte v7, v1, v0

    iget-wide v3, p0, Lcom/nrsmagic/sudoku/gui/s/am;->e:D

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v3, v3

    int-to-short v3, v3

    invoke-static {v3}, Lcom/nrsmagic/sudoku/gui/s/k;->a(S)[B

    move-result-object v3

    invoke-static {v3, v5, v1, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v2, 0x2

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v3, v0

    invoke-static {v0, v5, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0

    add-int/2addr v0, v2

    add-int/lit8 v2, v0, 0x1

    const/4 v3, 0x5

    aput-byte v3, v1, v0

    iget-wide v3, p0, Lcom/nrsmagic/sudoku/gui/s/am;->f:D

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v3, v3

    int-to-short v3, v3

    invoke-static {v3}, Lcom/nrsmagic/sudoku/gui/s/k;->a(S)[B

    move-result-object v3

    invoke-static {v3, v5, v1, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v2, 0x2

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v3, v0

    invoke-static {v0, v5, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0

    add-int/2addr v0, v2

    add-int/lit8 v2, v0, 0x1

    const/4 v3, 0x6

    aput-byte v3, v1, v0

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/s/am;->g:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    int-to-short v0, v0

    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/s/k;->a(S)[B

    move-result-object v0

    array-length v3, v0

    invoke-static {v0, v5, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v2, 0x2

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/s/am;->g:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v3, v2

    invoke-static {v2, v5, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, v2

    add-int/2addr v0, v2

    add-int/lit8 v2, v0, 0x1

    const/4 v3, 0x7

    aput-byte v3, v1, v0

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/s/am;->h:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    int-to-short v0, v0

    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/s/k;->a(S)[B

    move-result-object v0

    array-length v3, v0

    invoke-static {v0, v5, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v2, 0x2

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/s/am;->h:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v3, v2

    invoke-static {v2, v5, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, v2

    add-int/2addr v0, v2

    add-int/lit8 v2, v0, 0x1

    const/16 v3, 0x8

    aput-byte v3, v1, v0

    invoke-static {v7}, Lcom/nrsmagic/sudoku/gui/s/k;->a(S)[B

    move-result-object v0

    array-length v3, v0

    invoke-static {v0, v5, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v2, 0x2

    iget v2, p0, Lcom/nrsmagic/sudoku/gui/s/am;->i:I

    invoke-static {v2}, Lcom/nrsmagic/sudoku/gui/s/k;->a(I)[B

    move-result-object v2

    array-length v3, v2

    invoke-static {v2, v5, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, v2

    add-int/2addr v0, v2

    add-int/lit8 v2, v0, 0x1

    const/16 v3, 0x9

    aput-byte v3, v1, v0

    const-string v0, "2.1.3"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    int-to-short v0, v0

    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/s/k;->a(S)[B

    move-result-object v0

    array-length v3, v0

    invoke-static {v0, v5, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v2, 0x2

    const-string v2, "2.1.3"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v3, v2

    invoke-static {v2, v5, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, v2

    add-int/2addr v0, v2

    add-int/lit8 v2, v0, 0x1

    const/16 v3, 0xb

    aput-byte v3, v1, v0

    invoke-static {v7}, Lcom/nrsmagic/sudoku/gui/s/k;->a(S)[B

    move-result-object v0

    array-length v3, v0

    invoke-static {v0, v5, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v2, 0x2

    iget v2, p0, Lcom/nrsmagic/sudoku/gui/s/am;->k:I

    invoke-static {v2}, Lcom/nrsmagic/sudoku/gui/s/k;->a(I)[B

    move-result-object v2

    array-length v3, v2

    invoke-static {v2, v5, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, v2

    add-int/2addr v0, v2

    add-int/lit8 v2, v0, 0x1

    const/16 v3, 0xc

    aput-byte v3, v1, v0

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/s/am;->l:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    int-to-short v0, v0

    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/s/k;->a(S)[B

    move-result-object v0

    array-length v3, v0

    invoke-static {v0, v5, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v2, 0x2

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/s/am;->l:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v3, v2

    invoke-static {v2, v5, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, v2

    add-int/2addr v0, v2

    add-int/lit8 v2, v0, 0x1

    const/16 v3, 0xe

    aput-byte v3, v1, v0

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/s/am;->n:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    int-to-short v0, v0

    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/s/k;->a(S)[B

    move-result-object v0

    array-length v3, v0

    invoke-static {v0, v5, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v2, 0x2

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/s/am;->n:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v3, v2

    invoke-static {v2, v5, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, v2

    add-int/2addr v0, v2

    add-int/lit8 v2, v0, 0x1

    const/16 v3, 0xf

    aput-byte v3, v1, v0

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/s/am;->o:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    int-to-short v0, v0

    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/s/k;->a(S)[B

    move-result-object v0

    array-length v3, v0

    invoke-static {v0, v5, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v2, 0x2

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/s/am;->o:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v3, v2

    invoke-static {v2, v5, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, v2

    add-int/2addr v0, v2

    add-int/lit8 v2, v0, 0x1

    const/16 v3, 0x10

    aput-byte v3, v1, v0

    invoke-static {v7}, Lcom/nrsmagic/sudoku/gui/s/k;->a(S)[B

    move-result-object v0

    array-length v3, v0

    invoke-static {v0, v5, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v2, 0x2

    iget v2, p0, Lcom/nrsmagic/sudoku/gui/s/am;->p:I

    invoke-static {v2}, Lcom/nrsmagic/sudoku/gui/s/k;->a(I)[B

    move-result-object v2

    array-length v3, v2

    invoke-static {v2, v5, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, v2

    add-int/2addr v0, v2

    add-int/lit8 v2, v0, 0x1

    const/16 v3, 0x11

    aput-byte v3, v1, v0

    invoke-static {v7}, Lcom/nrsmagic/sudoku/gui/s/k;->a(S)[B

    move-result-object v0

    array-length v3, v0

    invoke-static {v0, v5, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v2, 0x2

    iget v2, p0, Lcom/nrsmagic/sudoku/gui/s/am;->q:I

    invoke-static {v2}, Lcom/nrsmagic/sudoku/gui/s/k;->a(I)[B

    move-result-object v2

    array-length v3, v2

    invoke-static {v2, v5, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, v2

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/s/am;->r:Ljava/lang/String;

    if-eqz v2, :cond_1

    const-string v2, ""

    iget-object v3, p0, Lcom/nrsmagic/sudoku/gui/s/am;->r:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    add-int/lit8 v2, v0, 0x1

    const/16 v3, 0x12

    aput-byte v3, v1, v0

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/s/am;->r:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    int-to-short v0, v0

    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/s/k;->a(S)[B

    move-result-object v0

    array-length v3, v0

    invoke-static {v0, v5, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v2, 0x2

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/s/am;->r:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v3, v2

    invoke-static {v2, v5, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, v2

    add-int/2addr v0, v2

    :cond_1
    add-int/lit8 v2, v0, 0x1

    const/16 v3, 0x13

    aput-byte v3, v1, v0

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/s/am;->s:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    int-to-short v0, v0

    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/s/k;->a(S)[B

    move-result-object v0

    array-length v3, v0

    invoke-static {v0, v5, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v2, 0x2

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/s/am;->s:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v3, v2

    invoke-static {v2, v5, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, v2

    add-int/2addr v0, v2

    add-int/lit8 v2, v0, 0x1

    const/16 v3, 0x64

    aput-byte v3, v1, v0

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/s/am;->t:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    int-to-short v0, v0

    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/s/k;->a(S)[B

    move-result-object v0

    array-length v3, v0

    invoke-static {v0, v5, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v2, 0x2

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/s/am;->t:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v3, v2

    invoke-static {v2, v5, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, v2

    add-int/2addr v0, v2

    add-int/lit8 v2, v0, 0x1

    const/16 v3, 0x14

    aput-byte v3, v1, v0

    invoke-static {v7}, Lcom/nrsmagic/sudoku/gui/s/k;->a(S)[B

    move-result-object v0

    array-length v3, v0

    invoke-static {v0, v5, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v2, 0x2

    iget v2, p0, Lcom/nrsmagic/sudoku/gui/s/am;->u:I

    invoke-static {v2}, Lcom/nrsmagic/sudoku/gui/s/k;->a(I)[B

    move-result-object v2

    array-length v3, v2

    invoke-static {v2, v5, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, v2

    add-int/2addr v0, v2

    return-object v1
.end method
