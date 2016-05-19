.class public Lcom/qq/e/v2/net/GDTSecurityADNetRequest;
.super Lcom/qq/e/v2/net/GDTADNetRequest;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qq/e/v2/net/GDTSecurityADNetRequest$CallBack;
    }
.end annotation


# instance fields
.field private a:Lcom/qq/e/v2/net/GDTSecurityADNetRequest$CallBack;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/qq/e/v2/net/GDTSecurityADNetRequest$CallBack;)V
    .locals 2

    sget-object v1, Lcom/qq/e/v2/net/GDTADNetRequest$Method;->POST:Lcom/qq/e/v2/net/GDTADNetRequest$Method;

    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, v1, v0}, Lcom/qq/e/v2/net/GDTADNetRequest;-><init>(Ljava/lang/String;Lcom/qq/e/v2/net/GDTADNetRequest$Method;[B)V

    iput-object p3, p0, Lcom/qq/e/v2/net/GDTSecurityADNetRequest;->a:Lcom/qq/e/v2/net/GDTSecurityADNetRequest$CallBack;

    return-void

    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/qq/e/comm/a;->a([B)[B

    move-result-object v0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;[BLcom/qq/e/v2/net/GDTSecurityADNetRequest$CallBack;)V
    .locals 2

    sget-object v0, Lcom/qq/e/v2/net/GDTADNetRequest$Method;->POST:Lcom/qq/e/v2/net/GDTADNetRequest$Method;

    invoke-static {p2}, Lcom/qq/e/comm/a;->a([B)[B

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/qq/e/v2/net/GDTADNetRequest;-><init>(Ljava/lang/String;Lcom/qq/e/v2/net/GDTADNetRequest$Method;[B)V

    iput-object p3, p0, Lcom/qq/e/v2/net/GDTSecurityADNetRequest;->a:Lcom/qq/e/v2/net/GDTSecurityADNetRequest$CallBack;

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Lcom/qq/e/v2/net/GDTSecurityADNetRequest;->a:Lcom/qq/e/v2/net/GDTSecurityADNetRequest$CallBack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qq/e/v2/net/GDTSecurityADNetRequest;->a:Lcom/qq/e/v2/net/GDTSecurityADNetRequest$CallBack;

    invoke-interface {v0, p1}, Lcom/qq/e/v2/net/GDTSecurityADNetRequest$CallBack;->onErr(Ljava/lang/Exception;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "excute security ad request error"

    invoke-static {v0, p1}, Lcom/qq/e/v2/util/GDTLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onResponse(Lorg/apache/http/HttpResponse;)V
    .locals 2

    iget-object v0, p0, Lcom/qq/e/v2/net/GDTSecurityADNetRequest;->a:Lcom/qq/e/v2/net/GDTSecurityADNetRequest$CallBack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qq/e/v2/net/GDTSecurityADNetRequest;->a:Lcom/qq/e/v2/net/GDTSecurityADNetRequest$CallBack;

    new-instance v1, Lcom/qq/e/v2/net/GDTSecurityADNetResponse;

    invoke-direct {v1, p1, p0}, Lcom/qq/e/v2/net/GDTSecurityADNetResponse;-><init>(Lorg/apache/http/HttpResponse;Lcom/qq/e/v2/net/GDTSecurityADNetRequest;)V

    invoke-interface {v0, p0, v1}, Lcom/qq/e/v2/net/GDTSecurityADNetRequest$CallBack;->onResponse(Lcom/qq/e/v2/net/GDTSecurityADNetRequest;Lcom/qq/e/v2/net/GDTSecurityADNetResponse;)V

    :cond_0
    return-void
.end method
