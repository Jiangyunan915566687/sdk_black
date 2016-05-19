.class public Lcom/nrsmagic/sudoku/gui/l/b/k;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nrsmagic/sudoku/gui/l/b/g;
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

    sget-object v0, Lcom/nrsmagic/sudoku/gui/l/e/b;->aP:Ljava/lang/String;

    sput-object v0, Lcom/nrsmagic/sudoku/gui/l/b/k;->B:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/nrsmagic/sudoku/gui/l/b/k;->v:I

    iput v1, p0, Lcom/nrsmagic/sudoku/gui/l/b/k;->w:I

    const-string v0, ""

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/l/b/k;->y:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/l/b/k;->z:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/nrsmagic/sudoku/gui/l/b/k;->A:Z

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "b"

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
    const-string v4, "a"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v0

    :goto_1
    iput-object v4, p0, Lcom/nrsmagic/sudoku/gui/l/b/k;->a:Ljava/lang/String;

    const-string v4, "b"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v4, v0

    :goto_2
    iput-object v4, p0, Lcom/nrsmagic/sudoku/gui/l/b/k;->b:Ljava/lang/String;

    const-string v4, "c"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v4, v3

    :goto_3
    iput v4, p0, Lcom/nrsmagic/sudoku/gui/l/b/k;->c:I

    const-string v4, "d"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    move-object v4, v0

    :goto_4
    iput-object v4, p0, Lcom/nrsmagic/sudoku/gui/l/b/k;->d:Ljava/lang/String;

    const-string v4, "e"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    move v4, v3

    :goto_5
    iput v4, p0, Lcom/nrsmagic/sudoku/gui/l/b/k;->e:I

    const-string v4, "f"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    move-object v4, v0

    :goto_6
    iput-object v4, p0, Lcom/nrsmagic/sudoku/gui/l/b/k;->f:Ljava/lang/String;

    const-string v4, "g"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    move-object v4, v0

    :goto_7
    iput-object v4, p0, Lcom/nrsmagic/sudoku/gui/l/b/k;->g:Ljava/lang/String;

    const-string v4, "h"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    move-object v4, v0

    :goto_8
    iput-object v4, p0, Lcom/nrsmagic/sudoku/gui/l/b/k;->h:Ljava/lang/String;

    const-string v4, "i"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    :goto_9
    iput v3, p0, Lcom/nrsmagic/sudoku/gui/l/b/k;->i:I

    const-string v3, "j"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    move-object v3, v0

    :goto_a
    iput-object v3, p0, Lcom/nrsmagic/sudoku/gui/l/b/k;->j:Ljava/lang/String;

    const-string v3, "k"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    move-object v3, v0

    :goto_b
    iput-object v3, p0, Lcom/nrsmagic/sudoku/gui/l/b/k;->k:Ljava/lang/String;

    const-string v3, "l"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    move-object v3, v0

    :goto_c
    iput-object v3, p0, Lcom/nrsmagic/sudoku/gui/l/b/k;->l:Ljava/lang/String;

    const-string v3, "m"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    move v3, v2

    :goto_d
    iput-boolean v3, p0, Lcom/nrsmagic/sudoku/gui/l/b/k;->m:Z

    const-string v3, "n"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    :goto_e
    iput-boolean v2, p0, Lcom/nrsmagic/sudoku/gui/l/b/k;->n:Z

    const-string v2, "o"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    move v2, v1

    :goto_f
    iput-boolean v2, p0, Lcom/nrsmagic/sudoku/gui/l/b/k;->o:Z

    const-string v2, "p"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    move-object v2, v0

    :goto_10
    iput-object v2, p0, Lcom/nrsmagic/sudoku/gui/l/b/k;->p:Ljava/lang/String;

    const-string v2, "q"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    move v2, v1

    :goto_11
    iput-boolean v2, p0, Lcom/nrsmagic/sudoku/gui/l/b/k;->q:Z

    const-string v2, "r"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    move-object v2, v0

    :goto_12
    iput-object v2, p0, Lcom/nrsmagic/sudoku/gui/l/b/k;->r:Ljava/lang/String;

    const-string v2, "s"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    move-object v2, v0

    :goto_13
    iput-object v2, p0, Lcom/nrsmagic/sudoku/gui/l/b/k;->s:Ljava/lang/String;

    const-string v2, "t"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    move v2, v1

    :goto_14
    iput v2, p0, Lcom/nrsmagic/sudoku/gui/l/b/k;->t:I

    const-string v2, "u"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    :goto_15
    iput v1, p0, Lcom/nrsmagic/sudoku/gui/l/b/k;->u:I

    const-string v1, "v"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    move-object v1, v0

    :goto_16
    iput-object v1, p0, Lcom/nrsmagic/sudoku/gui/l/b/k;->y:Ljava/lang/String;

    const-string v1, "w"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    move-object v1, v0

    :goto_17
    iput-object v1, p0, Lcom/nrsmagic/sudoku/gui/l/b/k;->z:Ljava/lang/String;

    const-string v1, "x"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    :goto_18
    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/l/b/k;->x:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :cond_1
    :try_start_1
    const-string v4, "a"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    :cond_2
    const-string v4, "b"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_2

    :cond_3
    const-string v4, "c"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    goto/16 :goto_3

    :cond_4
    const-string v4, "d"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_4

    :cond_5
    const-string v4, "e"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    goto/16 :goto_5

    :cond_6
    const-string v4, "f"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_6

    :cond_7
    const-string v4, "g"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_7

    :cond_8
    const-string v4, "h"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

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
    const-string v3, "m"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    goto/16 :goto_d

    :cond_e
    const-string v2, "n"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    goto/16 :goto_e

    :cond_f
    const-string v2, "o"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    goto/16 :goto_f

    :cond_10
    const-string v2, "p"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_10

    :cond_11
    const-string v2, "q"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    goto/16 :goto_11

    :cond_12
    const-string v2, "r"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_12

    :cond_13
    const-string v2, "s"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_13

    :cond_14
    const-string v2, "t"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    goto/16 :goto_14

    :cond_15
    const-string v1, "u"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    goto/16 :goto_15

    :cond_16
    const-string v1, "v"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_16

    :cond_17
    const-string v1, "w"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_17

    :cond_18
    const-string v0, "x"

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
