.class public Lcom/nrsmagic/sudoku/gui/y/b/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nrsmagic/sudoku/gui/y/b/c;
.implements Ljava/io/Serializable;


# static fields
.field private static final B:Ljava/lang/String;


# instance fields
.field public A:Z

.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:I

.field public d:Ljava/lang/String;

.field public e:I

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:I

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Z

.field public n:Z

.field public o:Z

.field public p:Ljava/lang/String;

.field public q:Z

.field public r:Ljava/lang/String;

.field public s:Ljava/lang/String;

.field public t:I

.field public u:I

.field public v:I

.field public w:I

.field public x:Ljava/lang/String;

.field public y:Ljava/lang/String;

.field public z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/nrsmagic/sudoku/gui/y/c/b;->U:Ljava/lang/String;

    sput-object v0, Lcom/nrsmagic/sudoku/gui/y/b/b;->B:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/nrsmagic/sudoku/gui/y/b/b;->v:I

    iput v1, p0, Lcom/nrsmagic/sudoku/gui/y/b/b;->w:I

    const-string v0, ""

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/y/b/b;->y:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/y/b/b;->z:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/nrsmagic/sudoku/gui/y/b/b;->A:Z

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/nrsmagic/sudoku/gui/y/c/b;->c:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 5

    const/4 v2, 0x1

    const/4 v3, -0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    sget-object v4, Lcom/nrsmagic/sudoku/gui/y/c/b;->b:Ljava/lang/String;

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v0

    :goto_1
    iput-object v4, p0, Lcom/nrsmagic/sudoku/gui/y/b/b;->a:Ljava/lang/String;

    sget-object v4, Lcom/nrsmagic/sudoku/gui/y/c/b;->c:Ljava/lang/String;

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v4, v0

    :goto_2
    iput-object v4, p0, Lcom/nrsmagic/sudoku/gui/y/b/b;->b:Ljava/lang/String;

    sget-object v4, Lcom/nrsmagic/sudoku/gui/y/c/b;->d:Ljava/lang/String;

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v4, v3

    :goto_3
    iput v4, p0, Lcom/nrsmagic/sudoku/gui/y/b/b;->c:I

    sget-object v4, Lcom/nrsmagic/sudoku/gui/y/c/b;->e:Ljava/lang/String;

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    move-object v4, v0

    :goto_4
    iput-object v4, p0, Lcom/nrsmagic/sudoku/gui/y/b/b;->d:Ljava/lang/String;

    sget-object v4, Lcom/nrsmagic/sudoku/gui/y/c/b;->f:Ljava/lang/String;

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    move v4, v3

    :goto_5
    iput v4, p0, Lcom/nrsmagic/sudoku/gui/y/b/b;->e:I

    sget-object v4, Lcom/nrsmagic/sudoku/gui/y/c/b;->g:Ljava/lang/String;

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    move-object v4, v0

    :goto_6
    iput-object v4, p0, Lcom/nrsmagic/sudoku/gui/y/b/b;->f:Ljava/lang/String;

    sget-object v4, Lcom/nrsmagic/sudoku/gui/y/c/b;->h:Ljava/lang/String;

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    move-object v4, v0

    :goto_7
    iput-object v4, p0, Lcom/nrsmagic/sudoku/gui/y/b/b;->g:Ljava/lang/String;

    sget-object v4, Lcom/nrsmagic/sudoku/gui/y/c/b;->i:Ljava/lang/String;

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    move-object v4, v0

    :goto_8
    iput-object v4, p0, Lcom/nrsmagic/sudoku/gui/y/b/b;->h:Ljava/lang/String;

    sget-object v4, Lcom/nrsmagic/sudoku/gui/y/c/b;->j:Ljava/lang/String;

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    :goto_9
    iput v3, p0, Lcom/nrsmagic/sudoku/gui/y/b/b;->i:I

    sget-object v3, Lcom/nrsmagic/sudoku/gui/y/c/b;->k:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    move-object v3, v0

    :goto_a
    iput-object v3, p0, Lcom/nrsmagic/sudoku/gui/y/b/b;->j:Ljava/lang/String;

    sget-object v3, Lcom/nrsmagic/sudoku/gui/y/c/b;->l:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    move-object v3, v0

    :goto_b
    iput-object v3, p0, Lcom/nrsmagic/sudoku/gui/y/b/b;->k:Ljava/lang/String;

    sget-object v3, Lcom/nrsmagic/sudoku/gui/y/c/b;->m:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    move-object v3, v0

    :goto_c
    iput-object v3, p0, Lcom/nrsmagic/sudoku/gui/y/b/b;->l:Ljava/lang/String;

    sget-object v3, Lcom/nrsmagic/sudoku/gui/y/c/b;->n:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    move v3, v2

    :goto_d
    iput-boolean v3, p0, Lcom/nrsmagic/sudoku/gui/y/b/b;->m:Z

    sget-object v3, Lcom/nrsmagic/sudoku/gui/y/c/b;->o:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    :goto_e
    iput-boolean v2, p0, Lcom/nrsmagic/sudoku/gui/y/b/b;->n:Z

    sget-object v2, Lcom/nrsmagic/sudoku/gui/y/c/b;->p:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    move v2, v1

    :goto_f
    iput-boolean v2, p0, Lcom/nrsmagic/sudoku/gui/y/b/b;->o:Z

    sget-object v2, Lcom/nrsmagic/sudoku/gui/y/c/b;->q:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    move-object v2, v0

    :goto_10
    iput-object v2, p0, Lcom/nrsmagic/sudoku/gui/y/b/b;->p:Ljava/lang/String;

    sget-object v2, Lcom/nrsmagic/sudoku/gui/y/c/b;->r:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    move v2, v1

    :goto_11
    iput-boolean v2, p0, Lcom/nrsmagic/sudoku/gui/y/b/b;->q:Z

    sget-object v2, Lcom/nrsmagic/sudoku/gui/y/c/b;->s:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    move-object v2, v0

    :goto_12
    iput-object v2, p0, Lcom/nrsmagic/sudoku/gui/y/b/b;->r:Ljava/lang/String;

    sget-object v2, Lcom/nrsmagic/sudoku/gui/y/c/b;->t:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    move-object v2, v0

    :goto_13
    iput-object v2, p0, Lcom/nrsmagic/sudoku/gui/y/b/b;->s:Ljava/lang/String;

    sget-object v2, Lcom/nrsmagic/sudoku/gui/y/c/b;->u:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    move v2, v1

    :goto_14
    iput v2, p0, Lcom/nrsmagic/sudoku/gui/y/b/b;->t:I

    sget-object v2, Lcom/nrsmagic/sudoku/gui/y/c/b;->v:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    :goto_15
    iput v1, p0, Lcom/nrsmagic/sudoku/gui/y/b/b;->u:I

    sget-object v1, Lcom/nrsmagic/sudoku/gui/y/c/b;->w:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    move-object v1, v0

    :goto_16
    iput-object v1, p0, Lcom/nrsmagic/sudoku/gui/y/b/b;->y:Ljava/lang/String;

    sget-object v1, Lcom/nrsmagic/sudoku/gui/y/c/b;->x:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    move-object v1, v0

    :goto_17
    iput-object v1, p0, Lcom/nrsmagic/sudoku/gui/y/b/b;->z:Ljava/lang/String;

    sget-object v1, Lcom/nrsmagic/sudoku/gui/y/c/b;->y:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    :goto_18
    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/y/b/b;->x:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :cond_1
    :try_start_1
    sget-object v4, Lcom/nrsmagic/sudoku/gui/y/c/b;->b:Ljava/lang/String;

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    :cond_2
    sget-object v4, Lcom/nrsmagic/sudoku/gui/y/c/b;->c:Ljava/lang/String;

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_2

    :cond_3
    sget-object v4, Lcom/nrsmagic/sudoku/gui/y/c/b;->d:Ljava/lang/String;

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    goto/16 :goto_3

    :cond_4
    sget-object v4, Lcom/nrsmagic/sudoku/gui/y/c/b;->e:Ljava/lang/String;

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_4

    :cond_5
    sget-object v4, Lcom/nrsmagic/sudoku/gui/y/c/b;->f:Ljava/lang/String;

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    goto/16 :goto_5

    :cond_6
    sget-object v4, Lcom/nrsmagic/sudoku/gui/y/c/b;->g:Ljava/lang/String;

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_6

    :cond_7
    sget-object v4, Lcom/nrsmagic/sudoku/gui/y/c/b;->h:Ljava/lang/String;

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_7

    :cond_8
    sget-object v4, Lcom/nrsmagic/sudoku/gui/y/c/b;->i:Ljava/lang/String;

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_8

    :cond_9
    sget-object v3, Lcom/nrsmagic/sudoku/gui/y/c/b;->j:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    goto/16 :goto_9

    :cond_a
    sget-object v3, Lcom/nrsmagic/sudoku/gui/y/c/b;->k:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_a

    :cond_b
    sget-object v3, Lcom/nrsmagic/sudoku/gui/y/c/b;->l:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_b

    :cond_c
    sget-object v3, Lcom/nrsmagic/sudoku/gui/y/c/b;->m:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_c

    :cond_d
    sget-object v3, Lcom/nrsmagic/sudoku/gui/y/c/b;->n:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    goto/16 :goto_d

    :cond_e
    sget-object v2, Lcom/nrsmagic/sudoku/gui/y/c/b;->o:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    goto/16 :goto_e

    :cond_f
    sget-object v2, Lcom/nrsmagic/sudoku/gui/y/c/b;->p:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    goto/16 :goto_f

    :cond_10
    sget-object v2, Lcom/nrsmagic/sudoku/gui/y/c/b;->q:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_10

    :cond_11
    sget-object v2, Lcom/nrsmagic/sudoku/gui/y/c/b;->r:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    goto/16 :goto_11

    :cond_12
    sget-object v2, Lcom/nrsmagic/sudoku/gui/y/c/b;->s:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_12

    :cond_13
    sget-object v2, Lcom/nrsmagic/sudoku/gui/y/c/b;->t:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_13

    :cond_14
    sget-object v2, Lcom/nrsmagic/sudoku/gui/y/c/b;->u:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    goto/16 :goto_14

    :cond_15
    sget-object v1, Lcom/nrsmagic/sudoku/gui/y/c/b;->v:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    goto/16 :goto_15

    :cond_16
    sget-object v1, Lcom/nrsmagic/sudoku/gui/y/c/b;->w:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_16

    :cond_17
    sget-object v1, Lcom/nrsmagic/sudoku/gui/y/c/b;->x:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_17

    :cond_18
    sget-object v0, Lcom/nrsmagic/sudoku/gui/y/c/b;->y:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto/16 :goto_18
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method
