.class public Lcom/baidu/mobads/Ad;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/mobads/Ad$MaterialType;
    }
.end annotation


# static fields
.field public static final AD_LOCAL_PIC:Ljava/lang/String; = "local_pic"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:I

.field private n:I

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:I

.field private t:Lcom/baidu/mobads/Ad$MaterialType;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/mobads/Ad;->p:Ljava/lang/String;

    sget-object v0, Lcom/baidu/mobads/Ad$MaterialType;->NONE:Lcom/baidu/mobads/Ad$MaterialType;

    iput-object v0, p0, Lcom/baidu/mobads/Ad;->t:Lcom/baidu/mobads/Ad$MaterialType;

    return-void
.end method

.method public static parse(Lorg/json/JSONObject;)Lcom/baidu/mobads/Ad;
    .locals 4

    const/4 v3, 0x0

    new-instance v1, Lcom/baidu/mobads/Ad;

    invoke-direct {v1}, Lcom/baidu/mobads/Ad;-><init>()V

    const-string v0, "id"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/baidu/mobads/Ad;->a:Ljava/lang/String;

    const-string v0, "desc"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/baidu/mobads/Ad;->b:Ljava/lang/String;

    const-string v0, "tit"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/baidu/mobads/Ad;->c:Ljava/lang/String;

    const-string v0, "type"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/baidu/mobads/Ad;->d:Ljava/lang/String;

    const-string v0, "act"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/baidu/mobads/Ad;->e:I

    const-string v0, "local_pic"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/baidu/mobads/Ad;->f:Ljava/lang/String;

    const-string v0, "w_picurl"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/baidu/mobads/Ad;->g:Ljava/lang/String;

    const-string v0, "curl"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/baidu/mobads/Ad;->h:Ljava/lang/String;

    const-string v0, "clklogurl"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/baidu/mobads/Ad;->i:Ljava/lang/String;

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/baidu/mobads/Ad;->j:Ljava/lang/String;

    const-string v0, "sms"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/baidu/mobads/Ad;->k:Ljava/lang/String;

    const-string v0, "pk"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/baidu/mobads/Ad;->l:Ljava/lang/String;

    const-string v0, "w"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/baidu/mobads/Ad;->m:I

    const-string v0, "h"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/baidu/mobads/Ad;->n:I

    const-string v0, "mon"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/baidu/mobads/Ad;->o:Ljava/lang/String;

    const-string v0, "qk"

    const-string v2, ""

    invoke-virtual {p0, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/baidu/mobads/Ad;->p:Ljava/lang/String;

    const-string v0, "appname"

    invoke-virtual {p0, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/baidu/mobads/Ad;->q:Ljava/lang/String;

    const-string v0, "ori_curl"

    invoke-virtual {p0, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/baidu/mobads/Ad;->r:Ljava/lang/String;

    const-string v0, "anti_tag"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/baidu/mobads/Ad;->s:I

    iget-object v0, v1, Lcom/baidu/mobads/Ad;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/baidu/mobads/Ad;->d:Ljava/lang/String;

    const-string v2, "text"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/baidu/mobads/Ad$MaterialType;->TEXT:Lcom/baidu/mobads/Ad$MaterialType;

    iput-object v0, v1, Lcom/baidu/mobads/Ad;->t:Lcom/baidu/mobads/Ad$MaterialType;

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    iget-object v0, v1, Lcom/baidu/mobads/Ad;->d:Ljava/lang/String;

    const-string v2, "image"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, v1, Lcom/baidu/mobads/Ad;->g:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/baidu/mobads/Ad;->g:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, v1, Lcom/baidu/mobads/Ad;->g:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    const-string v0, ""

    if-ltz v2, :cond_2

    iget-object v0, v1, Lcom/baidu/mobads/Ad;->g:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_2
    const-string v2, ".gif"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/baidu/mobads/Ad$MaterialType;->GIF:Lcom/baidu/mobads/Ad$MaterialType;

    iput-object v0, v1, Lcom/baidu/mobads/Ad;->t:Lcom/baidu/mobads/Ad$MaterialType;

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/baidu/mobads/Ad$MaterialType;->STATIC_IMAGE:Lcom/baidu/mobads/Ad$MaterialType;

    iput-object v0, v1, Lcom/baidu/mobads/Ad;->t:Lcom/baidu/mobads/Ad$MaterialType;

    goto :goto_0

    :cond_4
    iget-object v0, v1, Lcom/baidu/mobads/Ad;->d:Ljava/lang/String;

    const-string v2, "rm"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/baidu/mobads/Ad$MaterialType;->HTML:Lcom/baidu/mobads/Ad$MaterialType;

    iput-object v0, v1, Lcom/baidu/mobads/Ad;->t:Lcom/baidu/mobads/Ad$MaterialType;

    goto :goto_0
.end method


# virtual methods
.method public getAct()I
    .locals 1

    iget v0, p0, Lcom/baidu/mobads/Ad;->e:I

    return v0
.end method

.method public getAnti_tag()I
    .locals 1

    iget v0, p0, Lcom/baidu/mobads/Ad;->s:I

    return v0
.end method

.method public getAppname()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mobads/Ad;->q:Ljava/lang/String;

    return-object v0
.end method

.method public getClickFeeUrl(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    iget v0, p0, Lcom/baidu/mobads/Ad;->s:I

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "http://mobads.baidu.com/ad.html?url=%s&sn=%s&v=%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/baidu/mobads/Ad;->h:Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Lcom/baidu/mobads/AdManager;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/baidu/mobads/b/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {}, Lcom/baidu/mobads/AdManager;->getCompositeV()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "getClickFeeUrl is"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/baidu/mobads/b/e;->a([Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "exception when getClickFeeUrl:"

    invoke-static {v1, v0}, Lcom/baidu/mobads/b/e;->b(Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Lcom/baidu/mobads/Ad;->h:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/baidu/mobads/Ad;->h:Ljava/lang/String;

    goto :goto_0
.end method

.method public getClkLogUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mobads/Ad;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getCurl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mobads/Ad;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mobads/Ad;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getH()I
    .locals 1

    iget v0, p0, Lcom/baidu/mobads/Ad;->n:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mobads/Ad;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getLocal_pic()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mobads/Ad;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getMon()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mobads/Ad;->o:Ljava/lang/String;

    return-object v0
.end method

.method public getMtype()Lcom/baidu/mobads/Ad$MaterialType;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mobads/Ad;->t:Lcom/baidu/mobads/Ad$MaterialType;

    return-object v0
.end method

.method public getOri_url()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mobads/Ad;->r:Ljava/lang/String;

    return-object v0
.end method

.method public getPhone()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mobads/Ad;->j:Ljava/lang/String;

    return-object v0
.end method

.method public getPk()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mobads/Ad;->l:Ljava/lang/String;

    return-object v0
.end method

.method public getQk()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mobads/Ad;->p:Ljava/lang/String;

    return-object v0
.end method

.method public getSms()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mobads/Ad;->k:Ljava/lang/String;

    return-object v0
.end method

.method public getTit()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mobads/Ad;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mobads/Ad;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getW()I
    .locals 1

    iget v0, p0, Lcom/baidu/mobads/Ad;->m:I

    return v0
.end method

.method public getW_picurl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mobads/Ad;->g:Ljava/lang/String;

    return-object v0
.end method

.method public setAct(I)V
    .locals 0

    iput p1, p0, Lcom/baidu/mobads/Ad;->e:I

    return-void
.end method

.method public setAnti_tag(I)V
    .locals 0

    iput p1, p0, Lcom/baidu/mobads/Ad;->s:I

    return-void
.end method

.method public setAppname(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mobads/Ad;->q:Ljava/lang/String;

    return-void
.end method

.method public setClkLogUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mobads/Ad;->i:Ljava/lang/String;

    return-void
.end method

.method public setCurl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mobads/Ad;->h:Ljava/lang/String;

    return-void
.end method

.method public setDesc(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mobads/Ad;->b:Ljava/lang/String;

    return-void
.end method

.method public setH(I)V
    .locals 0

    iput p1, p0, Lcom/baidu/mobads/Ad;->n:I

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mobads/Ad;->a:Ljava/lang/String;

    return-void
.end method

.method public setLocal_pic(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mobads/Ad;->f:Ljava/lang/String;

    return-void
.end method

.method public setMon(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mobads/Ad;->o:Ljava/lang/String;

    return-void
.end method

.method public setMtype(Lcom/baidu/mobads/Ad$MaterialType;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mobads/Ad;->t:Lcom/baidu/mobads/Ad$MaterialType;

    return-void
.end method

.method public setOri_url(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mobads/Ad;->r:Ljava/lang/String;

    return-void
.end method

.method public setPhone(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mobads/Ad;->j:Ljava/lang/String;

    return-void
.end method

.method public setPk(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mobads/Ad;->l:Ljava/lang/String;

    return-void
.end method

.method public setQk(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mobads/Ad;->p:Ljava/lang/String;

    return-void
.end method

.method public setSms(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mobads/Ad;->k:Ljava/lang/String;

    return-void
.end method

.method public setTit(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mobads/Ad;->c:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mobads/Ad;->d:Ljava/lang/String;

    return-void
.end method

.method public setW(I)V
    .locals 0

    iput p1, p0, Lcom/baidu/mobads/Ad;->m:I

    return-void
.end method

.method public setW_picurl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mobads/Ad;->g:Ljava/lang/String;

    return-void
.end method
