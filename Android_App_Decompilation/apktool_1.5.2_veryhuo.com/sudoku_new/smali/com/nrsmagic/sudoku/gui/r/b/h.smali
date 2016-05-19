.class Lcom/nrsmagic/sudoku/gui/r/b/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nrsmagic/sudoku/gui/r/b/g;


# static fields
.field public static s:Ljava/lang/String;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:D

.field public k:D

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field public o:Ljava/lang/String;

.field public p:Ljava/lang/String;

.field public q:Ljava/lang/String;

.field public r:I

.field public t:Ljava/lang/String;

.field public u:I

.field public v:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "1.0.9"

    sput-object v0, Lcom/nrsmagic/sudoku/gui/r/b/h;->s:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-static {p1}, Lcom/nrsmagic/sudoku/gui/r/e/h;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/nrsmagic/sudoku/gui/r/b/h;->c:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/b/h;->d:Ljava/lang/String;

    invoke-static {p1}, Lcom/nrsmagic/sudoku/gui/r/e/h;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/b/h;->o:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/b/h;->b:Ljava/lang/String;

    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/b/h;->a:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/b/h;->p:Ljava/lang/String;

    invoke-static {p1}, Lcom/nrsmagic/sudoku/gui/r/e/h;->c(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/nrsmagic/sudoku/gui/r/b/h;->r:I

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v0, p0, Lcom/nrsmagic/sudoku/gui/r/b/h;->g:I

    iget v0, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/nrsmagic/sudoku/gui/r/b/h;->h:I

    iget v0, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/nrsmagic/sudoku/gui/r/b/h;->i:I

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v2, p0, Lcom/nrsmagic/sudoku/gui/r/b/h;->e:Ljava/lang/String;

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v0, p0, Lcom/nrsmagic/sudoku/gui/r/b/h;->f:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {p1}, Lcom/nrsmagic/sudoku/gui/r/e/h;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/b/h;->n:Ljava/lang/String;

    invoke-static {p1}, Lcom/nrsmagic/sudoku/gui/r/e/h;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/b/h;->m:Ljava/lang/String;

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/b/h;->m:Ljava/lang/String;

    if-nez v0, :cond_0

    sget-object v0, Lcom/nrsmagic/sudoku/gui/r/e/b;->bN:Ljava/lang/String;

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/b/h;->m:Ljava/lang/String;

    :cond_0
    invoke-static {p1}, Lcom/nrsmagic/sudoku/gui/r/e/h;->o(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/b/h;->t:Ljava/lang/String;

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/r/b/h;->t:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/nrsmagic/sudoku/gui/r/e/h;->k(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput v0, p0, Lcom/nrsmagic/sudoku/gui/r/b/h;->u:I

    invoke-static {p1}, Lcom/nrsmagic/sudoku/gui/r/e/h;->q(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/nrsmagic/sudoku/gui/r/b/h;->v:I

    return-void

    :cond_1
    move v0, v1

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "a"

    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 5

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

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
    iput-object v4, p0, Lcom/nrsmagic/sudoku/gui/r/b/h;->a:Ljava/lang/String;

    const-string v4, "b"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v4, v0

    :goto_2
    iput-object v4, p0, Lcom/nrsmagic/sudoku/gui/r/b/h;->b:Ljava/lang/String;

    const-string v4, "c"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v4, v0

    :goto_3
    iput-object v4, p0, Lcom/nrsmagic/sudoku/gui/r/b/h;->c:Ljava/lang/String;

    const-string v4, "d"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    move-object v4, v0

    :goto_4
    iput-object v4, p0, Lcom/nrsmagic/sudoku/gui/r/b/h;->d:Ljava/lang/String;

    const-string v4, "e"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    move-object v4, v0

    :goto_5
    iput-object v4, p0, Lcom/nrsmagic/sudoku/gui/r/b/h;->e:Ljava/lang/String;

    const-string v4, "f"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    move v4, v3

    :goto_6
    iput v4, p0, Lcom/nrsmagic/sudoku/gui/r/b/h;->f:I

    const-string v4, "g"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    move v4, v3

    :goto_7
    iput v4, p0, Lcom/nrsmagic/sudoku/gui/r/b/h;->g:I

    const-string v4, "h"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    move v4, v3

    :goto_8
    iput v4, p0, Lcom/nrsmagic/sudoku/gui/r/b/h;->h:I

    const-string v4, "i"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    :goto_9
    iput v3, p0, Lcom/nrsmagic/sudoku/gui/r/b/h;->i:I

    const-string v3, "j"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    move-wide v3, v1

    :goto_a
    iput-wide v3, p0, Lcom/nrsmagic/sudoku/gui/r/b/h;->j:D

    const-string v3, "k"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    :goto_b
    iput-wide v1, p0, Lcom/nrsmagic/sudoku/gui/r/b/h;->k:D

    const-string v1, "l"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    move-object v1, v0

    :goto_c
    iput-object v1, p0, Lcom/nrsmagic/sudoku/gui/r/b/h;->l:Ljava/lang/String;

    const-string v1, "m"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    move-object v1, v0

    :goto_d
    iput-object v1, p0, Lcom/nrsmagic/sudoku/gui/r/b/h;->m:Ljava/lang/String;

    const-string v1, "n"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    move-object v1, v0

    :goto_e
    iput-object v1, p0, Lcom/nrsmagic/sudoku/gui/r/b/h;->n:Ljava/lang/String;

    const-string v1, "o"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    move-object v1, v0

    :goto_f
    iput-object v1, p0, Lcom/nrsmagic/sudoku/gui/r/b/h;->o:Ljava/lang/String;

    const-string v1, "p"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    move-object v1, v0

    :goto_10
    iput-object v1, p0, Lcom/nrsmagic/sudoku/gui/r/b/h;->p:Ljava/lang/String;

    const-string v1, "q"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    move-object v1, v0

    :goto_11
    iput-object v1, p0, Lcom/nrsmagic/sudoku/gui/r/b/h;->q:Ljava/lang/String;

    const-string v1, "r"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    const v1, 0x186a8

    :goto_12
    iput v1, p0, Lcom/nrsmagic/sudoku/gui/r/b/h;->r:I

    const-string v1, "s"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    move-object v1, v0

    :goto_13
    sput-object v1, Lcom/nrsmagic/sudoku/gui/r/b/h;->s:Ljava/lang/String;

    const-string v1, "t"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    move-object v1, v0

    :goto_14
    iput-object v1, p0, Lcom/nrsmagic/sudoku/gui/r/b/h;->t:Ljava/lang/String;

    const-string v1, "u"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    move-object v1, v0

    :goto_15
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/nrsmagic/sudoku/gui/r/b/h;->u:I

    const-string v1, "v"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    :goto_16
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/nrsmagic/sudoku/gui/r/b/h;->v:I
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

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_3

    :cond_4
    const-string v4, "d"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_4

    :cond_5
    const-string v4, "e"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_5

    :cond_6
    const-string v4, "f"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    goto/16 :goto_6

    :cond_7
    const-string v4, "g"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    goto/16 :goto_7

    :cond_8
    const-string v4, "h"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    goto/16 :goto_8

    :cond_9
    const-string v3, "i"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    goto/16 :goto_9

    :cond_a
    const-string v3, "j"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    goto/16 :goto_a

    :cond_b
    const-string v1, "k"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    goto/16 :goto_b

    :cond_c
    const-string v1, "l"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_c

    :cond_d
    const-string v1, "m"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_d

    :cond_e
    const-string v1, "n"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_e

    :cond_f
    const-string v1, "o"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_f

    :cond_10
    const-string v1, "p"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_10

    :cond_11
    const-string v1, "q"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_11

    :cond_12
    const-string v1, "r"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    goto/16 :goto_12

    :cond_13
    const-string v1, "s"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_13

    :cond_14
    const-string v1, "t"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_14

    :cond_15
    const-string v1, "u"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto/16 :goto_15

    :cond_16
    const-string v0, "v"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto/16 :goto_16
.end method

.method public b()Lorg/json/JSONObject;
    .locals 5

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "a"

    iget-object v3, p0, Lcom/nrsmagic/sudoku/gui/r/b/h;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "b"

    iget-object v3, p0, Lcom/nrsmagic/sudoku/gui/r/b/h;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "c"

    iget-object v3, p0, Lcom/nrsmagic/sudoku/gui/r/b/h;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "d"

    iget-object v3, p0, Lcom/nrsmagic/sudoku/gui/r/b/h;->d:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "e"

    iget-object v3, p0, Lcom/nrsmagic/sudoku/gui/r/b/h;->e:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "f"

    iget v3, p0, Lcom/nrsmagic/sudoku/gui/r/b/h;->f:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "g"

    iget v3, p0, Lcom/nrsmagic/sudoku/gui/r/b/h;->g:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "h"

    iget v3, p0, Lcom/nrsmagic/sudoku/gui/r/b/h;->h:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "i"

    iget v3, p0, Lcom/nrsmagic/sudoku/gui/r/b/h;->i:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "j"

    iget-wide v3, p0, Lcom/nrsmagic/sudoku/gui/r/b/h;->j:D

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v2, "k"

    iget-wide v3, p0, Lcom/nrsmagic/sudoku/gui/r/b/h;->k:D

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v2, "l"

    iget-object v3, p0, Lcom/nrsmagic/sudoku/gui/r/b/h;->l:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "m"

    iget-object v3, p0, Lcom/nrsmagic/sudoku/gui/r/b/h;->m:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "n"

    iget-object v3, p0, Lcom/nrsmagic/sudoku/gui/r/b/h;->n:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "o"

    iget-object v3, p0, Lcom/nrsmagic/sudoku/gui/r/b/h;->o:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "p"

    iget-object v3, p0, Lcom/nrsmagic/sudoku/gui/r/b/h;->p:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "q"

    iget-object v3, p0, Lcom/nrsmagic/sudoku/gui/r/b/h;->q:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "r"

    iget v3, p0, Lcom/nrsmagic/sudoku/gui/r/b/h;->r:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "s"

    sget-object v3, Lcom/nrsmagic/sudoku/gui/r/b/h;->s:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "t"

    iget-object v3, p0, Lcom/nrsmagic/sudoku/gui/r/b/h;->t:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "u"

    iget v3, p0, Lcom/nrsmagic/sudoku/gui/r/b/h;->u:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "v"

    iget v3, p0, Lcom/nrsmagic/sudoku/gui/r/b/h;->v:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/nrsmagic/sudoku/gui/r/b/h;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method
