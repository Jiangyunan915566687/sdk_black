.class public Lcom/nrsmagic/sudoku/gui/r/b/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nrsmagic/sudoku/gui/r/b/g;


# instance fields
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

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field public o:Ljava/lang/String;

.field public p:I

.field public q:I

.field public r:Ljava/lang/String;

.field public s:I

.field public t:I

.field public u:Z

.field public v:Z

.field public w:Z

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/nrsmagic/sudoku/gui/r/b/f;->s:I

    const v0, 0x1d4c0

    iput v0, p0, Lcom/nrsmagic/sudoku/gui/r/b/f;->t:I

    iput-boolean v1, p0, Lcom/nrsmagic/sudoku/gui/r/b/f;->u:Z

    iput-boolean v1, p0, Lcom/nrsmagic/sudoku/gui/r/b/f;->v:Z

    iput-boolean v1, p0, Lcom/nrsmagic/sudoku/gui/r/b/f;->w:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/nrsmagic/sudoku/gui/r/b/f;->x:I

    iput v1, p0, Lcom/nrsmagic/sudoku/gui/r/b/f;->y:I

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "b"

    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    const-string v3, "a"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v2

    :goto_1
    iput-object v3, p0, Lcom/nrsmagic/sudoku/gui/r/b/f;->a:Ljava/lang/String;

    const-string v3, "b"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v3, v2

    :goto_2
    iput-object v3, p0, Lcom/nrsmagic/sudoku/gui/r/b/f;->b:Ljava/lang/String;

    const-string v3, "c"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v3, v1

    :goto_3
    iput v3, p0, Lcom/nrsmagic/sudoku/gui/r/b/f;->c:I

    const-string v3, "d"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    move-object v3, v2

    :goto_4
    iput-object v3, p0, Lcom/nrsmagic/sudoku/gui/r/b/f;->d:Ljava/lang/String;

    const-string v3, "e"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    move v3, v1

    :goto_5
    iput v3, p0, Lcom/nrsmagic/sudoku/gui/r/b/f;->e:I

    const-string v3, "f"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    move-object v3, v2

    :goto_6
    iput-object v3, p0, Lcom/nrsmagic/sudoku/gui/r/b/f;->f:Ljava/lang/String;

    const-string v3, "g"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    move-object v3, v2

    :goto_7
    iput-object v3, p0, Lcom/nrsmagic/sudoku/gui/r/b/f;->g:Ljava/lang/String;

    const-string v3, "h"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    move-object v3, v2

    :goto_8
    iput-object v3, p0, Lcom/nrsmagic/sudoku/gui/r/b/f;->h:Ljava/lang/String;

    const-string v3, "i"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    move v3, v1

    :goto_9
    iput v3, p0, Lcom/nrsmagic/sudoku/gui/r/b/f;->i:I

    const-string v3, "j"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    move-object v3, v2

    :goto_a
    iput-object v3, p0, Lcom/nrsmagic/sudoku/gui/r/b/f;->j:Ljava/lang/String;

    const-string v3, "k"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    move-object v3, v2

    :goto_b
    iput-object v3, p0, Lcom/nrsmagic/sudoku/gui/r/b/f;->k:Ljava/lang/String;

    const-string v3, "l"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    move-object v3, v2

    :goto_c
    iput-object v3, p0, Lcom/nrsmagic/sudoku/gui/r/b/f;->l:Ljava/lang/String;

    const-string v3, "m"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    :goto_d
    iput-object v2, p0, Lcom/nrsmagic/sudoku/gui/r/b/f;->m:Ljava/lang/String;

    const-string v2, "n"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    const-string v2, ""

    :goto_e
    iput-object v2, p0, Lcom/nrsmagic/sudoku/gui/r/b/f;->n:Ljava/lang/String;

    const-string v2, "o"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    const-string v2, ""

    :goto_f
    iput-object v2, p0, Lcom/nrsmagic/sudoku/gui/r/b/f;->o:Ljava/lang/String;

    const-string v2, "p"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    move v2, v1

    :goto_10
    iput v2, p0, Lcom/nrsmagic/sudoku/gui/r/b/f;->p:I

    const-string v2, "q"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    :goto_11
    iput v1, p0, Lcom/nrsmagic/sudoku/gui/r/b/f;->q:I

    const-string v1, "r"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    const-string v1, ""

    :goto_12
    iput-object v1, p0, Lcom/nrsmagic/sudoku/gui/r/b/f;->r:Ljava/lang/String;

    const-string v1, "s"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    move v1, v0

    :goto_13
    iput v1, p0, Lcom/nrsmagic/sudoku/gui/r/b/f;->s:I

    const-string v1, "t"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    :goto_14
    iput v0, p0, Lcom/nrsmagic/sudoku/gui/r/b/f;->t:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :cond_1
    :try_start_1
    const-string v3, "a"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    :cond_2
    const-string v3, "b"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2

    :cond_3
    const-string v3, "c"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    goto/16 :goto_3

    :cond_4
    const-string v3, "d"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_4

    :cond_5
    const-string v3, "e"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    goto/16 :goto_5

    :cond_6
    const-string v3, "f"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_6

    :cond_7
    const-string v3, "g"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_7

    :cond_8
    const-string v3, "h"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_8

    :cond_9
    const-string v3, "i"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    goto/16 :goto_9

    :cond_a
    const-string v3, "j"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_a

    :cond_b
    const-string v3, "k"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_b

    :cond_c
    const-string v3, "l"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_c

    :cond_d
    const-string v2, "m"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_d

    :cond_e
    const-string v2, "n"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_e

    :cond_f
    const-string v2, "o"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_f

    :cond_10
    const-string v2, "p"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    goto/16 :goto_10

    :cond_11
    const-string v1, "q"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    goto/16 :goto_11

    :cond_12
    const-string v1, "r"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_12

    :cond_13
    const-string v1, "s"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    goto/16 :goto_13

    :cond_14
    const-string v0, "t"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    goto/16 :goto_14
.end method

.method public a(Ljava/lang/String;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    sget-object v2, Lcom/nrsmagic/sudoku/gui/r/e/b;->aP:Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/nrsmagic/sudoku/gui/r/e/h;->a(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v3, 0x0

    :try_start_0
    aget-object v3, v2, v3

    iput-object v3, p0, Lcom/nrsmagic/sudoku/gui/r/b/f;->a:Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v3, v2, v3

    iput-object v3, p0, Lcom/nrsmagic/sudoku/gui/r/b/f;->b:Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(Ljava/lang/String;)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    iput v3, p0, Lcom/nrsmagic/sudoku/gui/r/b/f;->c:I

    const/4 v3, 0x3

    aget-object v3, v2, v3

    iput-object v3, p0, Lcom/nrsmagic/sudoku/gui/r/b/f;->d:Ljava/lang/String;

    const/4 v3, 0x4

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/nrsmagic/sudoku/gui/r/b/f;->e:I

    const/4 v3, 0x5

    aget-object v3, v2, v3

    iput-object v3, p0, Lcom/nrsmagic/sudoku/gui/r/b/f;->f:Ljava/lang/String;

    const/4 v3, 0x6

    aget-object v3, v2, v3

    iput-object v3, p0, Lcom/nrsmagic/sudoku/gui/r/b/f;->g:Ljava/lang/String;

    const/4 v3, 0x7

    aget-object v3, v2, v3

    iput-object v3, p0, Lcom/nrsmagic/sudoku/gui/r/b/f;->h:Ljava/lang/String;

    const/16 v3, 0x8

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/nrsmagic/sudoku/gui/r/b/f;->i:I

    const/16 v3, 0x9

    aget-object v3, v2, v3

    iput-object v3, p0, Lcom/nrsmagic/sudoku/gui/r/b/f;->j:Ljava/lang/String;

    const/16 v3, 0xa

    aget-object v3, v2, v3

    iput-object v3, p0, Lcom/nrsmagic/sudoku/gui/r/b/f;->k:Ljava/lang/String;

    const/16 v3, 0xb

    aget-object v3, v2, v3

    iput-object v3, p0, Lcom/nrsmagic/sudoku/gui/r/b/f;->l:Ljava/lang/String;

    const/16 v3, 0xc

    aget-object v3, v2, v3

    iput-object v3, p0, Lcom/nrsmagic/sudoku/gui/r/b/f;->m:Ljava/lang/String;

    const/16 v3, 0xd

    aget-object v3, v2, v3

    iput-object v3, p0, Lcom/nrsmagic/sudoku/gui/r/b/f;->n:Ljava/lang/String;

    const/16 v3, 0xe

    aget-object v3, v2, v3

    iput-object v3, p0, Lcom/nrsmagic/sudoku/gui/r/b/f;->o:Ljava/lang/String;

    const/16 v3, 0xf

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/nrsmagic/sudoku/gui/r/b/f;->p:I

    const/16 v3, 0x10

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/nrsmagic/sudoku/gui/r/b/f;->q:I

    const/16 v3, 0x11

    aget-object v3, v2, v3

    iput-object v3, p0, Lcom/nrsmagic/sudoku/gui/r/b/f;->r:Ljava/lang/String;

    const/16 v3, 0x12

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/nrsmagic/sudoku/gui/r/b/f;->x:I

    const/16 v3, 0x13

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/nrsmagic/sudoku/gui/r/b/f;->y:I

    const/16 v3, 0x14

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/nrsmagic/sudoku/gui/r/b/f;->s:I

    const/16 v3, 0x15

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/nrsmagic/sudoku/gui/r/b/f;->t:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto/16 :goto_0

    :catch_0
    move-exception v1

    goto/16 :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/r/b/f;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v1, Lcom/nrsmagic/sudoku/gui/r/e/b;->aP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/r/b/f;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v1, Lcom/nrsmagic/sudoku/gui/r/e/b;->aP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/nrsmagic/sudoku/gui/r/b/f;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    sget-object v1, Lcom/nrsmagic/sudoku/gui/r/e/b;->aP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/r/b/f;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v1, Lcom/nrsmagic/sudoku/gui/r/e/b;->aP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/nrsmagic/sudoku/gui/r/b/f;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    sget-object v1, Lcom/nrsmagic/sudoku/gui/r/e/b;->aP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/r/b/f;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v1, Lcom/nrsmagic/sudoku/gui/r/e/b;->aP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/r/b/f;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v1, Lcom/nrsmagic/sudoku/gui/r/e/b;->aP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/r/b/f;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v1, Lcom/nrsmagic/sudoku/gui/r/e/b;->aP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/nrsmagic/sudoku/gui/r/b/f;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    sget-object v1, Lcom/nrsmagic/sudoku/gui/r/e/b;->aP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/r/b/f;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v1, Lcom/nrsmagic/sudoku/gui/r/e/b;->aP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/r/b/f;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v1, Lcom/nrsmagic/sudoku/gui/r/e/b;->aP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/r/b/f;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v1, Lcom/nrsmagic/sudoku/gui/r/e/b;->aP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/r/b/f;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v1, Lcom/nrsmagic/sudoku/gui/r/e/b;->aP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/r/b/f;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v1, Lcom/nrsmagic/sudoku/gui/r/e/b;->aP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/r/b/f;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v1, Lcom/nrsmagic/sudoku/gui/r/e/b;->aP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/nrsmagic/sudoku/gui/r/b/f;->p:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    sget-object v1, Lcom/nrsmagic/sudoku/gui/r/e/b;->aP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/nrsmagic/sudoku/gui/r/b/f;->q:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    sget-object v1, Lcom/nrsmagic/sudoku/gui/r/e/b;->aP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/nrsmagic/sudoku/gui/r/b/f;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v1, Lcom/nrsmagic/sudoku/gui/r/e/b;->aP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/nrsmagic/sudoku/gui/r/b/f;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    sget-object v1, Lcom/nrsmagic/sudoku/gui/r/e/b;->aP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/nrsmagic/sudoku/gui/r/b/f;->y:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    sget-object v1, Lcom/nrsmagic/sudoku/gui/r/e/b;->aP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/nrsmagic/sudoku/gui/r/b/f;->s:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    sget-object v1, Lcom/nrsmagic/sudoku/gui/r/e/b;->aP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/nrsmagic/sudoku/gui/r/b/f;->t:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    sget-object v1, Lcom/nrsmagic/sudoku/gui/r/e/b;->aP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method
