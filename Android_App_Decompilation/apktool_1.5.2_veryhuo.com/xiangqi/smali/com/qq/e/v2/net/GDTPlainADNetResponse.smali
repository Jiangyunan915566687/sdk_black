.class public Lcom/qq/e/v2/net/GDTPlainADNetResponse;
.super Lcom/qq/e/v2/net/GDTADNetResponse;


# instance fields
.field private a:Lcom/qq/e/v2/net/GDTPlainADNetRequest;


# direct methods
.method public constructor <init>(Lorg/apache/http/HttpResponse;Lcom/qq/e/v2/net/GDTPlainADNetRequest;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/qq/e/v2/net/GDTADNetResponse;-><init>(Lorg/apache/http/HttpResponse;)V

    iput-object p2, p0, Lcom/qq/e/v2/net/GDTPlainADNetResponse;->a:Lcom/qq/e/v2/net/GDTPlainADNetRequest;

    return-void
.end method


# virtual methods
.method public getContentAsByteArray()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/qq/e/v2/net/GDTPlainADNetResponse;->b()[B

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "HTTPStatus Error for PlainRequst to URL"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/qq/e/v2/net/GDTPlainADNetResponse;->a:Lcom/qq/e/v2/net/GDTPlainADNetRequest;

    invoke-virtual {v1}, Lcom/qq/e/v2/net/GDTPlainADNetRequest;->getUrlWithParas()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ;statusCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/qq/e/v2/net/GDTPlainADNetResponse;->getStatusCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/e/v2/util/GDTLogger;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/qq/e/v2/net/GDTPlainADNetResponse;->a()Lorg/apache/http/HttpResponse;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "gzip"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/qq/e/comm/a;->d([B)[B

    move-result-object v0

    goto :goto_0
.end method
