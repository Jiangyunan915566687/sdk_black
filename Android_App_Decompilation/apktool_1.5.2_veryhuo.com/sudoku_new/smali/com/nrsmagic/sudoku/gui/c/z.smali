.class public Lcom/nrsmagic/sudoku/gui/c/z;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nrsmagic/sudoku/gui/c/y;


# static fields
.field public static u:Ljava/lang/String;


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

.field public p:Z

.field public q:Ljava/lang/String;

.field public r:Ljava/lang/String;

.field public s:I

.field public t:Ljava/lang/String;

.field public v:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "2.1.3"

    sput-object v0, Lcom/nrsmagic/sudoku/gui/c/z;->u:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/nrsmagic/sudoku/gui/c/z;->v:I

    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/c/z;->b:Ljava/lang/String;

    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/c/z;->a:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/c/z;->q:Ljava/lang/String;

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/c/z;->d:Ljava/lang/String;

    invoke-static {p1}, Lcom/nrsmagic/sudoku/gui/c/bb;->m(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/c/z;->c:Ljava/lang/String;

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v0, p0, Lcom/nrsmagic/sudoku/gui/c/z;->g:I

    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/nrsmagic/sudoku/gui/c/z;->h:I

    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/nrsmagic/sudoku/gui/c/z;->i:I

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v2, p0, Lcom/nrsmagic/sudoku/gui/c/z;->e:Ljava/lang/String;

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v1, p0, Lcom/nrsmagic/sudoku/gui/c/z;->f:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {p1, v0}, Lcom/nrsmagic/sudoku/gui/c/bb;->b(Landroid/content/Context;Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/c/z;->n:Ljava/lang/String;

    sget-object v0, Lcom/nrsmagic/sudoku/gui/c/d/b;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/nrsmagic/sudoku/gui/c/l;->E:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/c/z;->n:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/nrsmagic/sudoku/gui/c/bb;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/c/z;->o:Ljava/lang/String;

    sget-object v0, Lcom/nrsmagic/sudoku/gui/c/d/b;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/nrsmagic/sudoku/gui/c/l;->D:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/c/z;->o:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/nrsmagic/sudoku/gui/c/ak;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/c/z;->m:Ljava/lang/String;

    iget-object v0, p0, Lcom/nrsmagic/sudoku/gui/c/z;->m:Ljava/lang/String;

    if-nez v0, :cond_0

    sget-object v0, Lcom/nrsmagic/sudoku/gui/c/l;->av:Ljava/lang/String;

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/c/z;->m:Ljava/lang/String;

    :cond_0
    invoke-static {p1}, Lcom/nrsmagic/sudoku/gui/c/bb;->k(Landroid/content/Context;)Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    iput-wide v1, p0, Lcom/nrsmagic/sudoku/gui/c/z;->k:D

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/nrsmagic/sudoku/gui/c/z;->j:D

    iget-wide v0, p0, Lcom/nrsmagic/sudoku/gui/c/z;->k:D

    iget-wide v2, p0, Lcom/nrsmagic/sudoku/gui/c/z;->j:D

    invoke-static {v0, v1, v2, v3}, Lcom/nrsmagic/sudoku/gui/c/bb;->a(DD)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iput-object v0, p0, Lcom/nrsmagic/sudoku/gui/c/z;->l:Ljava/lang/String;

    :cond_1
    invoke-static {p1}, Lcom/nrsmagic/sudoku/gui/c/bb;->f(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nrsmagic/sudoku/gui/c/z;->p:Z

    invoke-static {p1}, Lcom/nrsmagic/sudoku/gui/c/bb;->a(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/nrsmagic/sudoku/gui/c/z;->s:I

    iget v0, p0, Lcom/nrsmagic/sudoku/gui/c/z;->s:I

    const v1, 0x186dd

    if-eq v0, v1, :cond_2

    :cond_2
    return-void

    :catch_0
    move-exception v1

    goto/16 :goto_0
.end method


# virtual methods
.method public a()Lorg/json/JSONObject;
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    sget-object v1, Lcom/nrsmagic/sudoku/gui/c/l;->bz:Ljava/lang/String;

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/c/z;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v1, Lcom/nrsmagic/sudoku/gui/c/l;->bA:Ljava/lang/String;

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/c/z;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v1, Lcom/nrsmagic/sudoku/gui/c/l;->bB:Ljava/lang/String;

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/c/z;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v1, Lcom/nrsmagic/sudoku/gui/c/l;->bC:Ljava/lang/String;

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/c/z;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v1, Lcom/nrsmagic/sudoku/gui/c/l;->bD:Ljava/lang/String;

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/c/z;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v1, Lcom/nrsmagic/sudoku/gui/c/l;->bE:Ljava/lang/String;

    iget v2, p0, Lcom/nrsmagic/sudoku/gui/c/z;->f:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    sget-object v1, Lcom/nrsmagic/sudoku/gui/c/l;->bF:Ljava/lang/String;

    iget v2, p0, Lcom/nrsmagic/sudoku/gui/c/z;->g:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    sget-object v1, Lcom/nrsmagic/sudoku/gui/c/l;->bG:Ljava/lang/String;

    iget v2, p0, Lcom/nrsmagic/sudoku/gui/c/z;->h:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    sget-object v1, Lcom/nrsmagic/sudoku/gui/c/l;->bH:Ljava/lang/String;

    iget v2, p0, Lcom/nrsmagic/sudoku/gui/c/z;->i:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    sget-object v1, Lcom/nrsmagic/sudoku/gui/c/l;->bI:Ljava/lang/String;

    iget-wide v2, p0, Lcom/nrsmagic/sudoku/gui/c/z;->j:D

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    sget-object v1, Lcom/nrsmagic/sudoku/gui/c/l;->bJ:Ljava/lang/String;

    iget-wide v2, p0, Lcom/nrsmagic/sudoku/gui/c/z;->k:D

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    sget-object v1, Lcom/nrsmagic/sudoku/gui/c/l;->bK:Ljava/lang/String;

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/c/z;->l:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v1, Lcom/nrsmagic/sudoku/gui/c/l;->bL:Ljava/lang/String;

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/c/z;->m:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v1, Lcom/nrsmagic/sudoku/gui/c/l;->bM:Ljava/lang/String;

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/c/z;->n:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v1, Lcom/nrsmagic/sudoku/gui/c/l;->bN:Ljava/lang/String;

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/c/z;->o:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v1, Lcom/nrsmagic/sudoku/gui/c/l;->bO:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/nrsmagic/sudoku/gui/c/z;->p:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    sget-object v1, Lcom/nrsmagic/sudoku/gui/c/l;->bP:Ljava/lang/String;

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/c/z;->q:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v1, Lcom/nrsmagic/sudoku/gui/c/l;->bQ:Ljava/lang/String;

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/c/z;->r:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v1, Lcom/nrsmagic/sudoku/gui/c/l;->bR:Ljava/lang/String;

    iget v2, p0, Lcom/nrsmagic/sudoku/gui/c/z;->s:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    sget-object v1, Lcom/nrsmagic/sudoku/gui/c/l;->bS:Ljava/lang/String;

    iget-object v2, p0, Lcom/nrsmagic/sudoku/gui/c/z;->t:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v1, Lcom/nrsmagic/sudoku/gui/c/l;->bT:Ljava/lang/String;

    sget-object v2, Lcom/nrsmagic/sudoku/gui/c/z;->u:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v1, Lcom/nrsmagic/sudoku/gui/c/l;->bU:Ljava/lang/String;

    iget v2, p0, Lcom/nrsmagic/sudoku/gui/c/z;->v:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
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

.method public a(Lorg/json/JSONObject;)V
    .locals 6

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    sget-object v4, Lcom/nrsmagic/sudoku/gui/c/l;->bz:Ljava/lang/String;

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v1

    :goto_1
    iput-object v4, p0, Lcom/nrsmagic/sudoku/gui/c/z;->a:Ljava/lang/String;

    sget-object v4, Lcom/nrsmagic/sudoku/gui/c/l;->bA:Ljava/lang/String;

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v4, v1

    :goto_2
    iput-object v4, p0, Lcom/nrsmagic/sudoku/gui/c/z;->b:Ljava/lang/String;

    sget-object v4, Lcom/nrsmagic/sudoku/gui/c/l;->bB:Ljava/lang/String;

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v4, v1

    :goto_3
    iput-object v4, p0, Lcom/nrsmagic/sudoku/gui/c/z;->c:Ljava/lang/String;

    sget-object v4, Lcom/nrsmagic/sudoku/gui/c/l;->bC:Ljava/lang/String;

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    move-object v4, v1

    :goto_4
    iput-object v4, p0, Lcom/nrsmagic/sudoku/gui/c/z;->d:Ljava/lang/String;

    sget-object v4, Lcom/nrsmagic/sudoku/gui/c/l;->bD:Ljava/lang/String;

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    move-object v4, v1

    :goto_5
    iput-object v4, p0, Lcom/nrsmagic/sudoku/gui/c/z;->e:Ljava/lang/String;

    sget-object v4, Lcom/nrsmagic/sudoku/gui/c/l;->bE:Ljava/lang/String;

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    move v4, v0

    :goto_6
    iput v4, p0, Lcom/nrsmagic/sudoku/gui/c/z;->f:I

    sget-object v4, Lcom/nrsmagic/sudoku/gui/c/l;->bF:Ljava/lang/String;

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    move v4, v0

    :goto_7
    iput v4, p0, Lcom/nrsmagic/sudoku/gui/c/z;->g:I

    sget-object v4, Lcom/nrsmagic/sudoku/gui/c/l;->bG:Ljava/lang/String;

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    move v4, v0

    :goto_8
    iput v4, p0, Lcom/nrsmagic/sudoku/gui/c/z;->h:I

    sget-object v4, Lcom/nrsmagic/sudoku/gui/c/l;->bH:Ljava/lang/String;

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    move v4, v0

    :goto_9
    iput v4, p0, Lcom/nrsmagic/sudoku/gui/c/z;->i:I

    sget-object v4, Lcom/nrsmagic/sudoku/gui/c/l;->bI:Ljava/lang/String;

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    move-wide v4, v2

    :goto_a
    iput-wide v4, p0, Lcom/nrsmagic/sudoku/gui/c/z;->j:D

    sget-object v4, Lcom/nrsmagic/sudoku/gui/c/l;->bJ:Ljava/lang/String;

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    :goto_b
    iput-wide v2, p0, Lcom/nrsmagic/sudoku/gui/c/z;->k:D

    sget-object v2, Lcom/nrsmagic/sudoku/gui/c/l;->bK:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    move-object v2, v1

    :goto_c
    iput-object v2, p0, Lcom/nrsmagic/sudoku/gui/c/z;->l:Ljava/lang/String;

    sget-object v2, Lcom/nrsmagic/sudoku/gui/c/l;->bL:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    move-object v2, v1

    :goto_d
    iput-object v2, p0, Lcom/nrsmagic/sudoku/gui/c/z;->m:Ljava/lang/String;

    sget-object v2, Lcom/nrsmagic/sudoku/gui/c/l;->bM:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    move-object v2, v1

    :goto_e
    iput-object v2, p0, Lcom/nrsmagic/sudoku/gui/c/z;->n:Ljava/lang/String;

    sget-object v2, Lcom/nrsmagic/sudoku/gui/c/l;->bN:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    move-object v2, v1

    :goto_f
    iput-object v2, p0, Lcom/nrsmagic/sudoku/gui/c/z;->o:Ljava/lang/String;

    sget-object v2, Lcom/nrsmagic/sudoku/gui/c/l;->bO:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    move v2, v0

    :goto_10
    iput-boolean v2, p0, Lcom/nrsmagic/sudoku/gui/c/z;->p:Z

    sget-object v2, Lcom/nrsmagic/sudoku/gui/c/l;->bP:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    move-object v2, v1

    :goto_11
    iput-object v2, p0, Lcom/nrsmagic/sudoku/gui/c/z;->q:Ljava/lang/String;

    sget-object v2, Lcom/nrsmagic/sudoku/gui/c/l;->bQ:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    move-object v2, v1

    :goto_12
    iput-object v2, p0, Lcom/nrsmagic/sudoku/gui/c/z;->r:Ljava/lang/String;

    sget-object v2, Lcom/nrsmagic/sudoku/gui/c/l;->bR:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    const v2, 0x186a8

    :goto_13
    iput v2, p0, Lcom/nrsmagic/sudoku/gui/c/z;->s:I

    sget-object v2, Lcom/nrsmagic/sudoku/gui/c/l;->bS:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    move-object v2, v1

    :goto_14
    iput-object v2, p0, Lcom/nrsmagic/sudoku/gui/c/z;->t:Ljava/lang/String;

    sget-object v2, Lcom/nrsmagic/sudoku/gui/c/l;->bT:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    :goto_15
    sput-object v1, Lcom/nrsmagic/sudoku/gui/c/z;->u:Ljava/lang/String;

    sget-object v1, Lcom/nrsmagic/sudoku/gui/c/l;->bU:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    :goto_16
    iput v0, p0, Lcom/nrsmagic/sudoku/gui/c/z;->v:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :cond_1
    :try_start_1
    sget-object v4, Lcom/nrsmagic/sudoku/gui/c/l;->bz:Ljava/lang/String;

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    :cond_2
    sget-object v4, Lcom/nrsmagic/sudoku/gui/c/l;->bA:Ljava/lang/String;

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_2

    :cond_3
    sget-object v4, Lcom/nrsmagic/sudoku/gui/c/l;->bB:Ljava/lang/String;

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_3

    :cond_4
    sget-object v4, Lcom/nrsmagic/sudoku/gui/c/l;->bC:Ljava/lang/String;

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_4

    :cond_5
    sget-object v4, Lcom/nrsmagic/sudoku/gui/c/l;->bD:Ljava/lang/String;

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_5

    :cond_6
    sget-object v4, Lcom/nrsmagic/sudoku/gui/c/l;->bE:Ljava/lang/String;

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    goto/16 :goto_6

    :cond_7
    sget-object v4, Lcom/nrsmagic/sudoku/gui/c/l;->bF:Ljava/lang/String;

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    goto/16 :goto_7

    :cond_8
    sget-object v4, Lcom/nrsmagic/sudoku/gui/c/l;->bG:Ljava/lang/String;

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    goto/16 :goto_8

    :cond_9
    sget-object v4, Lcom/nrsmagic/sudoku/gui/c/l;->bH:Ljava/lang/String;

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    goto/16 :goto_9

    :cond_a
    sget-object v4, Lcom/nrsmagic/sudoku/gui/c/l;->bI:Ljava/lang/String;

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    goto/16 :goto_a

    :cond_b
    sget-object v2, Lcom/nrsmagic/sudoku/gui/c/l;->bJ:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    goto/16 :goto_b

    :cond_c
    sget-object v2, Lcom/nrsmagic/sudoku/gui/c/l;->bK:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_c

    :cond_d
    sget-object v2, Lcom/nrsmagic/sudoku/gui/c/l;->bL:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_d

    :cond_e
    sget-object v2, Lcom/nrsmagic/sudoku/gui/c/l;->bM:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_e

    :cond_f
    sget-object v2, Lcom/nrsmagic/sudoku/gui/c/l;->bN:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_f

    :cond_10
    sget-object v2, Lcom/nrsmagic/sudoku/gui/c/l;->bO:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    goto/16 :goto_10

    :cond_11
    sget-object v2, Lcom/nrsmagic/sudoku/gui/c/l;->bP:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_11

    :cond_12
    sget-object v2, Lcom/nrsmagic/sudoku/gui/c/l;->bQ:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_12

    :cond_13
    sget-object v2, Lcom/nrsmagic/sudoku/gui/c/l;->bR:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    goto/16 :goto_13

    :cond_14
    sget-object v2, Lcom/nrsmagic/sudoku/gui/c/l;->bS:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_14

    :cond_15
    sget-object v1, Lcom/nrsmagic/sudoku/gui/c/l;->bT:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_15

    :cond_16
    sget-object v0, Lcom/nrsmagic/sudoku/gui/c/l;->bU:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    goto/16 :goto_16
.end method

.method public b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/nrsmagic/sudoku/gui/c/l;->bz:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method
