.class public Lcom/qq/e/v2/net/GDTPlainADNetRequest;
.super Lcom/qq/e/v2/net/GDTADNetRequest;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qq/e/v2/net/GDTPlainADNetRequest$CallBack;
    }
.end annotation


# instance fields
.field private a:Lcom/qq/e/v2/net/GDTPlainADNetRequest$CallBack;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/qq/e/v2/net/GDTADNetRequest$Method;[BLcom/qq/e/v2/net/GDTPlainADNetRequest$CallBack;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/qq/e/v2/net/GDTADNetRequest;-><init>(Ljava/lang/String;Lcom/qq/e/v2/net/GDTADNetRequest$Method;[B)V

    iput-object p4, p0, Lcom/qq/e/v2/net/GDTPlainADNetRequest;->a:Lcom/qq/e/v2/net/GDTPlainADNetRequest$CallBack;

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 2

    iget-object v0, p0, Lcom/qq/e/v2/net/GDTPlainADNetRequest;->a:Lcom/qq/e/v2/net/GDTPlainADNetRequest$CallBack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qq/e/v2/net/GDTPlainADNetRequest;->a:Lcom/qq/e/v2/net/GDTPlainADNetRequest$CallBack;

    invoke-interface {v0, p1}, Lcom/qq/e/v2/net/GDTPlainADNetRequest$CallBack;->onError(Ljava/lang/Exception;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Exception for plain Request to url:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/qq/e/v2/net/GDTPlainADNetRequest;->getUrlWithParas()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/qq/e/v2/util/GDTLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onResponse(Lorg/apache/http/HttpResponse;)V
    .locals 2

    iget-object v0, p0, Lcom/qq/e/v2/net/GDTPlainADNetRequest;->a:Lcom/qq/e/v2/net/GDTPlainADNetRequest$CallBack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qq/e/v2/net/GDTPlainADNetRequest;->a:Lcom/qq/e/v2/net/GDTPlainADNetRequest$CallBack;

    new-instance v1, Lcom/qq/e/v2/net/GDTPlainADNetResponse;

    invoke-direct {v1, p1, p0}, Lcom/qq/e/v2/net/GDTPlainADNetResponse;-><init>(Lorg/apache/http/HttpResponse;Lcom/qq/e/v2/net/GDTPlainADNetRequest;)V

    invoke-interface {v0, p0, v1}, Lcom/qq/e/v2/net/GDTPlainADNetRequest$CallBack;->onResponse(Lcom/qq/e/v2/net/GDTPlainADNetRequest;Lcom/qq/e/v2/net/GDTPlainADNetResponse;)V

    :cond_0
    return-void
.end method
