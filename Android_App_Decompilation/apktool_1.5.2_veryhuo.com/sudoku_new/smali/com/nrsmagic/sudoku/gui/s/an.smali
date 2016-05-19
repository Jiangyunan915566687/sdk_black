.class public Lcom/nrsmagic/sudoku/gui/s/an;
.super Ljava/lang/Object;


# static fields
.field private static final N:Ljava/lang/String;


# instance fields
.field protected A:I

.field protected B:I

.field protected C:I

.field protected D:I

.field protected E:I

.field protected F:I

.field protected G:Ljava/lang/String;

.field protected H:Ljava/lang/String;

.field protected I:I

.field protected J:I

.field protected K:I

.field protected L:Ljava/lang/String;

.field protected M:Ljava/lang/String;

.field protected a:Ljava/lang/String;

.field protected b:Ljava/lang/String;

.field protected c:J

.field protected d:Ljava/lang/String;

.field protected e:B

.field protected f:I

.field protected g:Ljava/lang/String;

.field protected h:I

.field protected i:Ljava/lang/String;

.field protected j:Z

.field protected k:Ljava/lang/String;

.field protected l:Ljava/lang/Integer;

.field protected m:Ljava/lang/String;

.field protected n:Ljava/lang/String;

.field protected o:I

.field protected p:Ljava/lang/String;

.field protected q:Ljava/lang/String;

.field protected r:Ljava/lang/String;

.field protected s:I

.field protected t:I

.field protected u:Ljava/lang/String;

.field protected v:I

.field protected w:I

.field protected x:Ljava/lang/String;

.field protected y:I

.field protected z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/nrsmagic/sudoku/gui/s/l;->C:Ljava/lang/String;

    sput-object v0, Lcom/nrsmagic/sudoku/gui/s/an;->N:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    const/4 v4, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/s/an;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/s/an;->b:Ljava/lang/String;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/nrsmagic/sudoku/gui/s/an;->c:J

    const-string v0, ""

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/s/an;->d:Ljava/lang/String;

    iput-byte v2, p0, Lcom/nrsmagic/sudoku/gui/s/an;->e:B

    iput v4, p0, Lcom/nrsmagic/sudoku/gui/s/an;->f:I

    const-string v0, ""

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/s/an;->g:Ljava/lang/String;

    iput v4, p0, Lcom/nrsmagic/sudoku/gui/s/an;->h:I

    const-string v0, ""

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/s/an;->i:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/nrsmagic/sudoku/gui/s/an;->j:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/s/an;->k:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/s/an;->l:Ljava/lang/Integer;

    sget-object v0, Lcom/nrsmagic/sudoku/gui/s/l;->cP:Ljava/lang/String;

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/s/an;->m:Ljava/lang/String;

    sget-object v0, Lcom/nrsmagic/sudoku/gui/s/l;->cQ:Ljava/lang/String;

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/s/an;->n:Ljava/lang/String;

    const/high16 v0, 0x10

    iput v0, p0, Lcom/nrsmagic/sudoku/gui/s/an;->o:I

    const-string v0, "1.0"

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/s/an;->p:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/s/an;->q:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/s/an;->r:Ljava/lang/String;

    iput v3, p0, Lcom/nrsmagic/sudoku/gui/s/an;->s:I

    iput v2, p0, Lcom/nrsmagic/sudoku/gui/s/an;->t:I

    const-string v0, ""

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/s/an;->u:Ljava/lang/String;

    iput v3, p0, Lcom/nrsmagic/sudoku/gui/s/an;->v:I

    iput v2, p0, Lcom/nrsmagic/sudoku/gui/s/an;->w:I

    const-string v0, ""

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/s/an;->x:Ljava/lang/String;

    iput v3, p0, Lcom/nrsmagic/sudoku/gui/s/an;->y:I

    iput v3, p0, Lcom/nrsmagic/sudoku/gui/s/an;->z:I

    iput v2, p0, Lcom/nrsmagic/sudoku/gui/s/an;->A:I

    iput v2, p0, Lcom/nrsmagic/sudoku/gui/s/an;->B:I

    const/16 v0, 0x3c

    iput v0, p0, Lcom/nrsmagic/sudoku/gui/s/an;->C:I

    iput v3, p0, Lcom/nrsmagic/sudoku/gui/s/an;->D:I

    iput v3, p0, Lcom/nrsmagic/sudoku/gui/s/an;->E:I

    iput v4, p0, Lcom/nrsmagic/sudoku/gui/s/an;->F:I

    const-string v0, ""

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/s/an;->G:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/s/an;->H:Ljava/lang/String;

    iput v2, p0, Lcom/nrsmagic/sudoku/gui/s/an;->I:I

    iput v2, p0, Lcom/nrsmagic/sudoku/gui/s/an;->J:I

    iput v2, p0, Lcom/nrsmagic/sudoku/gui/s/an;->K:I

    const-string v0, ""

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/s/an;->L:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/s/an;->M:Ljava/lang/String;

    return-void
.end method

.method protected static a([B)[Lcom/nrsmagic/sudoku/gui/s/an;
    .locals 11

    const/4 v10, 0x2

    const/4 v3, 0x0

    aget-byte v0, p0, v3

    if-gez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x3

    new-array v1, v10, [B

    invoke-static {p0, v0, v1, v3, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v1}, Lcom/nrsmagic/sudoku/gui/s/k;->c([B)I

    move-result v5

    const/4 v0, 0x5

    new-array v1, v5, [Lcom/nrsmagic/sudoku/gui/s/an;

    move v2, v3

    :goto_1
    if-ge v2, v5, :cond_2

    new-instance v6, Lcom/nrsmagic/sudoku/gui/s/an;

    invoke-direct {v6}, Lcom/nrsmagic/sudoku/gui/s/an;-><init>()V

    :goto_2
    add-int/lit8 v4, v0, 0x1

    aget-byte v0, p0, v0

    const/4 v7, -0x1

    if-eq v0, v7, :cond_1

    packed-switch v0, :pswitch_data_0

    new-array v0, v10, [B

    invoke-static {p0, v4, v0, v3, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/s/k;->c([B)I

    move-result v0

    add-int/lit8 v4, v4, 0x2

    add-int/2addr v0, v4

    goto :goto_2

    :pswitch_0
    new-array v0, v10, [B

    invoke-static {p0, v4, v0, v3, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/s/k;->c([B)I

    move-result v0

    add-int/lit8 v4, v4, 0x2

    new-array v7, v0, [B

    invoke-static {p0, v4, v7, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v8, Ljava/lang/String;

    sget-object v9, Lcom/nrsmagic/sudoku/gui/s/l;->aZ:Ljava/lang/String;

    invoke-direct {v8, v7, v9}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v8, v6, Lcom/nrsmagic/sudoku/gui/s/an;->a:Ljava/lang/String;

    add-int/2addr v0, v4

    goto :goto_2

    :pswitch_1
    new-array v0, v10, [B

    invoke-static {p0, v4, v0, v3, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/s/k;->c([B)I

    move-result v0

    add-int/lit8 v4, v4, 0x2

    new-array v7, v0, [B

    invoke-static {p0, v4, v7, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v8, Ljava/lang/String;

    sget-object v9, Lcom/nrsmagic/sudoku/gui/s/l;->aZ:Ljava/lang/String;

    invoke-direct {v8, v7, v9}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v8, v6, Lcom/nrsmagic/sudoku/gui/s/an;->b:Ljava/lang/String;

    add-int/2addr v0, v4

    goto :goto_2

    :pswitch_2
    new-array v0, v10, [B

    invoke-static {p0, v4, v0, v3, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/s/k;->c([B)I

    move-result v0

    add-int/lit8 v4, v4, 0x2

    new-array v7, v0, [B

    invoke-static {p0, v4, v7, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v7}, Lcom/nrsmagic/sudoku/gui/s/k;->a([B)J

    move-result-wide v7

    iput-wide v7, v6, Lcom/nrsmagic/sudoku/gui/s/an;->c:J

    add-int/2addr v0, v4

    goto :goto_2

    :pswitch_3
    add-int/lit8 v4, v4, 0x2

    add-int/lit8 v0, v4, 0x1

    aget-byte v4, p0, v4

    iput-byte v4, v6, Lcom/nrsmagic/sudoku/gui/s/an;->e:B

    goto :goto_2

    :pswitch_4
    new-array v0, v10, [B

    invoke-static {p0, v4, v0, v3, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/s/k;->c([B)I

    move-result v0

    add-int/lit8 v4, v4, 0x2

    new-array v7, v0, [B

    invoke-static {p0, v4, v7, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v7}, Ljava/lang/String;-><init>([B)V

    iput-object v8, v6, Lcom/nrsmagic/sudoku/gui/s/an;->d:Ljava/lang/String;

    add-int/2addr v0, v4

    goto/16 :goto_2

    :pswitch_5
    new-array v0, v10, [B

    invoke-static {p0, v4, v0, v3, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/s/k;->c([B)I

    move-result v0

    add-int/lit8 v4, v4, 0x2

    new-array v7, v0, [B

    invoke-static {p0, v4, v7, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v8, Ljava/lang/String;

    sget-object v9, Lcom/nrsmagic/sudoku/gui/s/l;->aZ:Ljava/lang/String;

    invoke-direct {v8, v7, v9}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v8, v6, Lcom/nrsmagic/sudoku/gui/s/an;->g:Ljava/lang/String;

    add-int/2addr v0, v4

    goto/16 :goto_2

    :pswitch_6
    new-array v0, v10, [B

    invoke-static {p0, v4, v0, v3, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/s/k;->c([B)I

    move-result v0

    add-int/lit8 v4, v4, 0x2

    new-array v7, v0, [B

    invoke-static {p0, v4, v7, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v7}, Lcom/nrsmagic/sudoku/gui/s/k;->b([B)I

    move-result v7

    iput v7, v6, Lcom/nrsmagic/sudoku/gui/s/an;->h:I

    add-int/2addr v0, v4

    goto/16 :goto_2

    :pswitch_7
    new-array v0, v10, [B

    invoke-static {p0, v4, v0, v3, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/s/k;->c([B)I

    move-result v0

    add-int/lit8 v4, v4, 0x2

    new-array v7, v0, [B

    invoke-static {p0, v4, v7, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v8, Ljava/lang/String;

    sget-object v9, Lcom/nrsmagic/sudoku/gui/s/l;->aZ:Ljava/lang/String;

    invoke-direct {v8, v7, v9}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v8, v6, Lcom/nrsmagic/sudoku/gui/s/an;->i:Ljava/lang/String;

    add-int/2addr v0, v4

    goto/16 :goto_2

    :pswitch_8
    new-array v0, v10, [B

    invoke-static {p0, v4, v0, v3, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/s/k;->c([B)I

    move-result v0

    add-int/lit8 v4, v4, 0x2

    new-array v7, v0, [B

    invoke-static {p0, v4, v7, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v8, Ljava/lang/String;

    sget-object v9, Lcom/nrsmagic/sudoku/gui/s/l;->aZ:Ljava/lang/String;

    invoke-direct {v8, v7, v9}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v8, v6, Lcom/nrsmagic/sudoku/gui/s/an;->m:Ljava/lang/String;

    add-int/2addr v0, v4

    goto/16 :goto_2

    :pswitch_9
    new-array v0, v10, [B

    invoke-static {p0, v4, v0, v3, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/s/k;->c([B)I

    move-result v0

    add-int/lit8 v4, v4, 0x2

    new-array v7, v0, [B

    invoke-static {p0, v4, v7, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v8, Ljava/lang/String;

    sget-object v9, Lcom/nrsmagic/sudoku/gui/s/l;->aZ:Ljava/lang/String;

    invoke-direct {v8, v7, v9}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v8, v6, Lcom/nrsmagic/sudoku/gui/s/an;->n:Ljava/lang/String;

    add-int/2addr v0, v4

    goto/16 :goto_2

    :pswitch_a
    new-array v0, v10, [B

    invoke-static {p0, v4, v0, v3, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/s/k;->c([B)I

    move-result v0

    add-int/lit8 v4, v4, 0x2

    new-array v7, v0, [B

    invoke-static {p0, v4, v7, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v7}, Lcom/nrsmagic/sudoku/gui/s/k;->b([B)I

    move-result v7

    iput v7, v6, Lcom/nrsmagic/sudoku/gui/s/an;->o:I

    add-int/2addr v0, v4

    goto/16 :goto_2

    :pswitch_b
    new-array v0, v10, [B

    invoke-static {p0, v4, v0, v3, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/s/k;->c([B)I

    move-result v0

    add-int/lit8 v4, v4, 0x2

    new-array v7, v0, [B

    invoke-static {p0, v4, v7, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v8, Ljava/lang/String;

    sget-object v9, Lcom/nrsmagic/sudoku/gui/s/l;->aZ:Ljava/lang/String;

    invoke-direct {v8, v7, v9}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v8, v6, Lcom/nrsmagic/sudoku/gui/s/an;->p:Ljava/lang/String;

    add-int/2addr v0, v4

    goto/16 :goto_2

    :pswitch_c
    new-array v0, v10, [B

    invoke-static {p0, v4, v0, v3, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/s/k;->c([B)I

    move-result v0

    add-int/lit8 v4, v4, 0x2

    new-array v7, v0, [B

    invoke-static {p0, v4, v7, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v8, Ljava/lang/String;

    sget-object v9, Lcom/nrsmagic/sudoku/gui/s/l;->aZ:Ljava/lang/String;

    invoke-direct {v8, v7, v9}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v8, v6, Lcom/nrsmagic/sudoku/gui/s/an;->q:Ljava/lang/String;

    add-int/2addr v0, v4

    goto/16 :goto_2

    :pswitch_d
    new-array v0, v10, [B

    invoke-static {p0, v4, v0, v3, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/s/k;->c([B)I

    move-result v0

    add-int/lit8 v4, v4, 0x2

    new-array v7, v0, [B

    invoke-static {p0, v4, v7, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v8, Ljava/lang/String;

    sget-object v9, Lcom/nrsmagic/sudoku/gui/s/l;->aZ:Ljava/lang/String;

    invoke-direct {v8, v7, v9}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v8, v6, Lcom/nrsmagic/sudoku/gui/s/an;->u:Ljava/lang/String;

    add-int/2addr v0, v4

    goto/16 :goto_2

    :pswitch_e
    new-array v0, v10, [B

    invoke-static {p0, v4, v0, v3, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/s/k;->c([B)I

    move-result v0

    add-int/lit8 v4, v4, 0x2

    new-array v7, v0, [B

    invoke-static {p0, v4, v7, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v7}, Lcom/nrsmagic/sudoku/gui/s/k;->b([B)I

    move-result v7

    iput v7, v6, Lcom/nrsmagic/sudoku/gui/s/an;->s:I

    add-int/2addr v0, v4

    goto/16 :goto_2

    :pswitch_f
    new-array v0, v10, [B

    invoke-static {p0, v4, v0, v3, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/s/k;->c([B)I

    move-result v0

    add-int/lit8 v4, v4, 0x2

    new-array v7, v0, [B

    invoke-static {p0, v4, v7, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v7}, Lcom/nrsmagic/sudoku/gui/s/k;->b([B)I

    move-result v7

    iput v7, v6, Lcom/nrsmagic/sudoku/gui/s/an;->t:I

    add-int/2addr v0, v4

    goto/16 :goto_2

    :pswitch_10
    new-array v0, v10, [B

    invoke-static {p0, v4, v0, v3, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/s/k;->c([B)I

    move-result v0

    add-int/lit8 v4, v4, 0x2

    new-array v7, v0, [B

    invoke-static {p0, v4, v7, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v8, Ljava/lang/String;

    sget-object v9, Lcom/nrsmagic/sudoku/gui/s/l;->aZ:Ljava/lang/String;

    invoke-direct {v8, v7, v9}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v8, v6, Lcom/nrsmagic/sudoku/gui/s/an;->r:Ljava/lang/String;

    add-int/2addr v0, v4

    goto/16 :goto_2

    :pswitch_11
    new-array v0, v10, [B

    invoke-static {p0, v4, v0, v3, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/s/k;->c([B)I

    move-result v0

    add-int/lit8 v4, v4, 0x2

    new-array v7, v0, [B

    invoke-static {p0, v4, v7, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v7}, Lcom/nrsmagic/sudoku/gui/s/k;->b([B)I

    move-result v7

    iput v7, v6, Lcom/nrsmagic/sudoku/gui/s/an;->v:I

    add-int/2addr v0, v4

    goto/16 :goto_2

    :pswitch_12
    new-array v0, v10, [B

    invoke-static {p0, v4, v0, v3, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/s/k;->c([B)I

    move-result v0

    add-int/lit8 v4, v4, 0x2

    new-array v7, v0, [B

    invoke-static {p0, v4, v7, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v7}, Lcom/nrsmagic/sudoku/gui/s/k;->b([B)I

    move-result v7

    iput v7, v6, Lcom/nrsmagic/sudoku/gui/s/an;->w:I

    add-int/2addr v0, v4

    goto/16 :goto_2

    :pswitch_13
    new-array v0, v10, [B

    invoke-static {p0, v4, v0, v3, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/s/k;->c([B)I

    move-result v0

    add-int/lit8 v4, v4, 0x2

    new-array v7, v0, [B

    invoke-static {p0, v4, v7, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v8, Ljava/lang/String;

    sget-object v9, Lcom/nrsmagic/sudoku/gui/s/l;->aZ:Ljava/lang/String;

    invoke-direct {v8, v7, v9}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v8, v6, Lcom/nrsmagic/sudoku/gui/s/an;->x:Ljava/lang/String;

    add-int/2addr v0, v4

    goto/16 :goto_2

    :pswitch_14
    new-array v0, v10, [B

    invoke-static {p0, v4, v0, v3, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/s/k;->c([B)I

    move-result v0

    add-int/lit8 v4, v4, 0x2

    new-array v7, v0, [B

    invoke-static {p0, v4, v7, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v7}, Lcom/nrsmagic/sudoku/gui/s/k;->b([B)I

    move-result v7

    iput v7, v6, Lcom/nrsmagic/sudoku/gui/s/an;->y:I

    add-int/2addr v0, v4

    goto/16 :goto_2

    :pswitch_15
    new-array v0, v10, [B

    invoke-static {p0, v4, v0, v3, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/s/k;->c([B)I

    move-result v0

    add-int/lit8 v4, v4, 0x2

    new-array v7, v0, [B

    invoke-static {p0, v4, v7, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v7}, Lcom/nrsmagic/sudoku/gui/s/k;->b([B)I

    move-result v7

    iput v7, v6, Lcom/nrsmagic/sudoku/gui/s/an;->z:I

    add-int/2addr v0, v4

    goto/16 :goto_2

    :pswitch_16
    new-array v0, v10, [B

    invoke-static {p0, v4, v0, v3, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/s/k;->c([B)I

    move-result v0

    add-int/lit8 v4, v4, 0x2

    new-array v7, v0, [B

    invoke-static {p0, v4, v7, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v7}, Lcom/nrsmagic/sudoku/gui/s/k;->b([B)I

    move-result v7

    iput v7, v6, Lcom/nrsmagic/sudoku/gui/s/an;->A:I

    add-int/2addr v0, v4

    goto/16 :goto_2

    :pswitch_17
    new-array v0, v10, [B

    invoke-static {p0, v4, v0, v3, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/s/k;->c([B)I

    move-result v0

    add-int/lit8 v4, v4, 0x2

    new-array v7, v0, [B

    invoke-static {p0, v4, v7, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v7}, Lcom/nrsmagic/sudoku/gui/s/k;->b([B)I

    move-result v7

    iput v7, v6, Lcom/nrsmagic/sudoku/gui/s/an;->B:I

    add-int/2addr v0, v4

    goto/16 :goto_2

    :pswitch_18
    new-array v0, v10, [B

    invoke-static {p0, v4, v0, v3, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/s/k;->c([B)I

    move-result v0

    add-int/lit8 v4, v4, 0x2

    new-array v7, v0, [B

    invoke-static {p0, v4, v7, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v7}, Lcom/nrsmagic/sudoku/gui/s/k;->b([B)I

    move-result v7

    iput v7, v6, Lcom/nrsmagic/sudoku/gui/s/an;->C:I

    add-int/2addr v0, v4

    goto/16 :goto_2

    :pswitch_19
    new-array v0, v10, [B

    invoke-static {p0, v4, v0, v3, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/s/k;->c([B)I

    move-result v0

    add-int/lit8 v4, v4, 0x2

    new-array v7, v0, [B

    invoke-static {p0, v4, v7, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v7}, Lcom/nrsmagic/sudoku/gui/s/k;->b([B)I

    move-result v7

    iput v7, v6, Lcom/nrsmagic/sudoku/gui/s/an;->D:I

    add-int/2addr v0, v4

    goto/16 :goto_2

    :pswitch_1a
    new-array v0, v10, [B

    invoke-static {p0, v4, v0, v3, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/s/k;->c([B)I

    move-result v0

    add-int/lit8 v4, v4, 0x2

    new-array v7, v0, [B

    invoke-static {p0, v4, v7, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v7}, Lcom/nrsmagic/sudoku/gui/s/k;->b([B)I

    move-result v7

    iput v7, v6, Lcom/nrsmagic/sudoku/gui/s/an;->E:I

    add-int/2addr v0, v4

    goto/16 :goto_2

    :pswitch_1b
    new-array v0, v10, [B

    invoke-static {p0, v4, v0, v3, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/s/k;->c([B)I

    move-result v0

    add-int/lit8 v4, v4, 0x2

    new-array v7, v0, [B

    invoke-static {p0, v4, v7, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v7}, Lcom/nrsmagic/sudoku/gui/s/k;->b([B)I

    move-result v7

    iput v7, v6, Lcom/nrsmagic/sudoku/gui/s/an;->F:I

    add-int/2addr v0, v4

    goto/16 :goto_2

    :pswitch_1c
    new-array v0, v10, [B

    invoke-static {p0, v4, v0, v3, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/s/k;->c([B)I

    move-result v0

    add-int/lit8 v4, v4, 0x2

    new-array v7, v0, [B

    invoke-static {p0, v4, v7, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v8, Ljava/lang/String;

    sget-object v9, Lcom/nrsmagic/sudoku/gui/s/l;->aZ:Ljava/lang/String;

    invoke-direct {v8, v7, v9}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v8, v6, Lcom/nrsmagic/sudoku/gui/s/an;->G:Ljava/lang/String;

    add-int/2addr v0, v4

    goto/16 :goto_2

    :pswitch_1d
    new-array v0, v10, [B

    invoke-static {p0, v4, v0, v3, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/s/k;->c([B)I

    move-result v0

    add-int/lit8 v4, v4, 0x2

    new-array v7, v0, [B

    invoke-static {p0, v4, v7, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v8, Ljava/lang/String;

    sget-object v9, Lcom/nrsmagic/sudoku/gui/s/l;->aZ:Ljava/lang/String;

    invoke-direct {v8, v7, v9}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v8, v6, Lcom/nrsmagic/sudoku/gui/s/an;->H:Ljava/lang/String;

    add-int/2addr v0, v4

    goto/16 :goto_2

    :pswitch_1e
    new-array v0, v10, [B

    invoke-static {p0, v4, v0, v3, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/s/k;->c([B)I

    move-result v0

    add-int/lit8 v4, v4, 0x2

    new-array v7, v0, [B

    invoke-static {p0, v4, v7, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v7}, Lcom/nrsmagic/sudoku/gui/s/k;->b([B)I

    move-result v7

    iput v7, v6, Lcom/nrsmagic/sudoku/gui/s/an;->I:I

    add-int/2addr v0, v4

    goto/16 :goto_2

    :pswitch_1f
    new-array v0, v10, [B

    invoke-static {p0, v4, v0, v3, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/s/k;->c([B)I

    move-result v0

    add-int/lit8 v4, v4, 0x2

    new-array v7, v0, [B

    invoke-static {p0, v4, v7, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v7}, Lcom/nrsmagic/sudoku/gui/s/k;->b([B)I

    move-result v7

    iput v7, v6, Lcom/nrsmagic/sudoku/gui/s/an;->J:I

    add-int/2addr v0, v4

    goto/16 :goto_2

    :pswitch_20
    new-array v0, v10, [B

    invoke-static {p0, v4, v0, v3, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/s/k;->c([B)I

    move-result v0

    add-int/lit8 v4, v4, 0x2

    new-array v7, v0, [B

    invoke-static {p0, v4, v7, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v7}, Lcom/nrsmagic/sudoku/gui/s/k;->b([B)I

    move-result v7

    iput v7, v6, Lcom/nrsmagic/sudoku/gui/s/an;->K:I

    add-int/2addr v0, v4

    goto/16 :goto_2

    :pswitch_21
    new-array v0, v10, [B

    invoke-static {p0, v4, v0, v3, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/s/k;->c([B)I

    move-result v0

    add-int/lit8 v4, v4, 0x2

    new-array v7, v0, [B

    invoke-static {p0, v4, v7, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v8, Ljava/lang/String;

    sget-object v9, Lcom/nrsmagic/sudoku/gui/s/l;->aZ:Ljava/lang/String;

    invoke-direct {v8, v7, v9}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v8, v6, Lcom/nrsmagic/sudoku/gui/s/an;->L:Ljava/lang/String;

    add-int/2addr v0, v4

    goto/16 :goto_2

    :pswitch_22
    new-array v0, v10, [B

    invoke-static {p0, v4, v0, v3, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v0}, Lcom/nrsmagic/sudoku/gui/s/k;->c([B)I

    move-result v0

    add-int/lit8 v4, v4, 0x2

    new-array v7, v0, [B

    invoke-static {p0, v4, v7, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v8, Ljava/lang/String;

    sget-object v9, Lcom/nrsmagic/sudoku/gui/s/l;->aZ:Ljava/lang/String;

    invoke-direct {v8, v7, v9}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v8, v6, Lcom/nrsmagic/sudoku/gui/s/an;->M:Ljava/lang/String;

    add-int/2addr v0, v4

    goto/16 :goto_2

    :cond_1
    add-int/lit8 v4, v4, 0x2

    aput-object v6, v1, v2

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v4

    goto/16 :goto_1

    :cond_2
    move-object v0, v1

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_10
        :pswitch_e
        :pswitch_f
        :pswitch_d
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
    .end packed-switch
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/s/an;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v1, Lcom/nrsmagic/sudoku/gui/s/an;->N:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/s/an;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v1, Lcom/nrsmagic/sudoku/gui/s/an;->N:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/s/an;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v1, Lcom/nrsmagic/sudoku/gui/s/an;->N:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v1, p0, Lcom/nrsmagic/sudoku/gui/s/an;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    sget-object v1, Lcom/nrsmagic/sudoku/gui/s/an;->N:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-byte v1, p0, Lcom/nrsmagic/sudoku/gui/s/an;->e:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    sget-object v1, Lcom/nrsmagic/sudoku/gui/s/an;->N:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/s/an;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v1, Lcom/nrsmagic/sudoku/gui/s/an;->N:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/nrsmagic/sudoku/gui/s/an;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    sget-object v1, Lcom/nrsmagic/sudoku/gui/s/an;->N:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/s/an;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v1, Lcom/nrsmagic/sudoku/gui/s/an;->N:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/s/an;->l:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    sget-object v1, Lcom/nrsmagic/sudoku/gui/s/an;->N:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/s/an;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v1, Lcom/nrsmagic/sudoku/gui/s/an;->N:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/s/an;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v1, Lcom/nrsmagic/sudoku/gui/s/an;->N:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/nrsmagic/sudoku/gui/s/an;->o:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    sget-object v1, Lcom/nrsmagic/sudoku/gui/s/an;->N:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/s/an;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v1, Lcom/nrsmagic/sudoku/gui/s/an;->N:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/s/an;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v1, Lcom/nrsmagic/sudoku/gui/s/an;->N:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/s/an;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v1, Lcom/nrsmagic/sudoku/gui/s/an;->N:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/nrsmagic/sudoku/gui/s/an;->s:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    sget-object v1, Lcom/nrsmagic/sudoku/gui/s/an;->N:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/nrsmagic/sudoku/gui/s/an;->t:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    sget-object v1, Lcom/nrsmagic/sudoku/gui/s/an;->N:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/s/an;->x:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v1, Lcom/nrsmagic/sudoku/gui/s/an;->N:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/s/an;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v1, Lcom/nrsmagic/sudoku/gui/s/an;->N:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/s/an;->G:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v1, Lcom/nrsmagic/sudoku/gui/s/an;->N:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/nrsmagic/sudoku/gui/s/an;->w:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    sget-object v1, Lcom/nrsmagic/sudoku/gui/s/an;->N:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/nrsmagic/sudoku/gui/s/an;->z:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    sget-object v1, Lcom/nrsmagic/sudoku/gui/s/an;->N:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/nrsmagic/sudoku/gui/s/an;->A:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    sget-object v1, Lcom/nrsmagic/sudoku/gui/s/an;->N:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/nrsmagic/sudoku/gui/s/an;->B:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    sget-object v1, Lcom/nrsmagic/sudoku/gui/s/an;->N:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/nrsmagic/sudoku/gui/s/an;->D:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    sget-object v1, Lcom/nrsmagic/sudoku/gui/s/an;->N:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/nrsmagic/sudoku/gui/s/an;->E:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    sget-object v1, Lcom/nrsmagic/sudoku/gui/s/an;->N:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/nrsmagic/sudoku/gui/s/an;->F:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    sget-object v1, Lcom/nrsmagic/sudoku/gui/s/an;->N:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/nrsmagic/sudoku/gui/s/an;->I:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    sget-object v1, Lcom/nrsmagic/sudoku/gui/s/an;->N:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/nrsmagic/sudoku/gui/s/an;->v:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    sget-object v1, Lcom/nrsmagic/sudoku/gui/s/an;->N:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/nrsmagic/sudoku/gui/s/an;->J:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    sget-object v1, Lcom/nrsmagic/sudoku/gui/s/an;->N:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/nrsmagic/sudoku/gui/s/an;->K:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    sget-object v1, Lcom/nrsmagic/sudoku/gui/s/an;->N:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/s/an;->L:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v1, Lcom/nrsmagic/sudoku/gui/s/an;->N:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/s/an;->M:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v1, Lcom/nrsmagic/sudoku/gui/s/an;->N:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    sget-object v2, Lcom/nrsmagic/sudoku/gui/s/an;->N:Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/nrsmagic/sudoku/gui/s/bb;->a(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v3, 0x0

    :try_start_0
    aget-object v3, v2, v3

    iput-object v3, p0, Lcom/nrsmagic/sudoku/gui/s/an;->a:Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v3, v2, v3

    iput-object v3, p0, Lcom/nrsmagic/sudoku/gui/s/an;->b:Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v3, v2, v3

    iput-object v3, p0, Lcom/nrsmagic/sudoku/gui/s/an;->d:Ljava/lang/String;

    const/4 v3, 0x3

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/nrsmagic/sudoku/gui/s/an;->c:J

    const/4 v3, 0x4

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(Ljava/lang/String;)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    iput-byte v3, p0, Lcom/nrsmagic/sudoku/gui/s/an;->e:B

    const/4 v3, 0x5

    aget-object v3, v2, v3

    iput-object v3, p0, Lcom/nrsmagic/sudoku/gui/s/an;->g:Ljava/lang/String;

    const/4 v3, 0x6

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/nrsmagic/sudoku/gui/s/an;->h:I

    const/4 v3, 0x7

    aget-object v3, v2, v3

    iput-object v3, p0, Lcom/nrsmagic/sudoku/gui/s/an;->i:Ljava/lang/String;

    const/16 v3, 0x8

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Lcom/nrsmagic/sudoku/gui/s/an;->l:Ljava/lang/Integer;

    const/16 v3, 0x9

    aget-object v3, v2, v3

    iput-object v3, p0, Lcom/nrsmagic/sudoku/gui/s/an;->m:Ljava/lang/String;

    const/16 v3, 0xa

    aget-object v3, v2, v3

    iput-object v3, p0, Lcom/nrsmagic/sudoku/gui/s/an;->n:Ljava/lang/String;

    const/16 v3, 0xb

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/nrsmagic/sudoku/gui/s/an;->o:I

    const/16 v3, 0xc

    aget-object v3, v2, v3

    iput-object v3, p0, Lcom/nrsmagic/sudoku/gui/s/an;->p:Ljava/lang/String;

    const/16 v3, 0xd

    aget-object v3, v2, v3

    iput-object v3, p0, Lcom/nrsmagic/sudoku/gui/s/an;->q:Ljava/lang/String;

    const/16 v3, 0xe

    aget-object v3, v2, v3

    iput-object v3, p0, Lcom/nrsmagic/sudoku/gui/s/an;->r:Ljava/lang/String;

    const/16 v3, 0xf

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/nrsmagic/sudoku/gui/s/an;->s:I

    const/16 v3, 0x10

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/nrsmagic/sudoku/gui/s/an;->t:I

    const/16 v3, 0x11

    aget-object v3, v2, v3

    iput-object v3, p0, Lcom/nrsmagic/sudoku/gui/s/an;->x:Ljava/lang/String;

    const/16 v3, 0x12

    aget-object v3, v2, v3

    iput-object v3, p0, Lcom/nrsmagic/sudoku/gui/s/an;->u:Ljava/lang/String;

    const/16 v3, 0x13

    aget-object v3, v2, v3

    iput-object v3, p0, Lcom/nrsmagic/sudoku/gui/s/an;->G:Ljava/lang/String;

    const/16 v3, 0x14

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/nrsmagic/sudoku/gui/s/an;->w:I

    const/16 v3, 0x15

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/nrsmagic/sudoku/gui/s/an;->z:I

    const/16 v3, 0x16

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/nrsmagic/sudoku/gui/s/an;->A:I

    const/16 v3, 0x17

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/nrsmagic/sudoku/gui/s/an;->B:I

    const/16 v3, 0x18

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/nrsmagic/sudoku/gui/s/an;->D:I

    const/16 v3, 0x19

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/nrsmagic/sudoku/gui/s/an;->E:I

    const/16 v3, 0x1a

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/nrsmagic/sudoku/gui/s/an;->F:I

    const/16 v3, 0x1b

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/nrsmagic/sudoku/gui/s/an;->I:I

    const/16 v3, 0x1c

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/nrsmagic/sudoku/gui/s/an;->v:I

    const/16 v3, 0x1d

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/nrsmagic/sudoku/gui/s/an;->J:I

    const/16 v3, 0x1e

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/nrsmagic/sudoku/gui/s/an;->K:I

    const/16 v3, 0x1f

    aget-object v3, v2, v3

    iput-object v3, p0, Lcom/nrsmagic/sudoku/gui/s/an;->L:Ljava/lang/String;

    const/16 v3, 0x20

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/nrsmagic/sudoku/gui/s/an;->M:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto/16 :goto_0

    :catch_0
    move-exception v1

    goto/16 :goto_0
.end method

.method protected b()V
    .locals 0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/nrsmagic/sudoku/gui/s/an;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
