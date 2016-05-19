.class final Lcom/qq/e/v2/a/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/qq/e/v2/net/GDTSecurityADNetRequest$CallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qq/e/v2/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/qq/e/v2/managers/setting/SM;

.field private synthetic b:Lcom/qq/e/v2/managers/plugin/PM;


# direct methods
.method constructor <init>(Lcom/qq/e/v2/a/a;Lcom/qq/e/v2/managers/setting/SM;Lcom/qq/e/v2/managers/plugin/PM;)V
    .locals 0

    iput-object p2, p0, Lcom/qq/e/v2/a/a$1;->a:Lcom/qq/e/v2/managers/setting/SM;

    iput-object p3, p0, Lcom/qq/e/v2/a/a$1;->b:Lcom/qq/e/v2/managers/plugin/PM;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onErr(Ljava/lang/Exception;)V
    .locals 1

    const-string v0, "ActivateError"

    invoke-static {v0, p1}, Lcom/qq/e/v2/util/GDTLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onResponse(Lcom/qq/e/v2/net/GDTSecurityADNetRequest;Lcom/qq/e/v2/net/GDTSecurityADNetResponse;)V
    .locals 5

    :try_start_0
    invoke-virtual {p2}, Lcom/qq/e/v2/net/GDTSecurityADNetResponse;->getStatusCode()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_a

    invoke-virtual {p2}, Lcom/qq/e/v2/net/GDTSecurityADNetResponse;->getContentAsString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ACTIVERESPONSE:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qq/e/v2/util/GDTLogger;->d(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/qq/e/v2/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "SDK Server response empty string,maybe zip or tea format error"

    invoke-static {v0}, Lcom/qq/e/v2/util/GDTLogger;->report(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 v0, -0x1

    const-string v2, "ret"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v0, "ret"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    :cond_2
    if-eqz v0, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Response Error,retCode="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/e/v2/util/GDTLogger;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ActivateError"

    invoke-static {v1, v0}, Lcom/qq/e/v2/util/GDTLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_3
    :try_start_1
    const-string v0, "suid"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "suid"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/e/v2/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/qq/e/v2/a/a$1;->a:Lcom/qq/e/v2/managers/setting/SM;

    invoke-virtual {v2, v0}, Lcom/qq/e/v2/managers/setting/SM;->updateSUID(Ljava/lang/String;)V

    :cond_4
    const-string v0, "sid"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "sid"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/e/v2/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/qq/e/v2/a/a$1;->a:Lcom/qq/e/v2/managers/setting/SM;

    invoke-virtual {v2, v0}, Lcom/qq/e/v2/managers/setting/SM;->updateSID(Ljava/lang/String;)V

    :cond_5
    const-string v0, "sig"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "sig"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "setting"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "setting"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "app"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "app"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "app"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "app"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/qq/e/v2/a/a$1;->a:Lcom/qq/e/v2/managers/setting/SM;

    invoke-virtual {v4, v3, v2}, Lcom/qq/e/v2/managers/setting/SM;->updateDEVCloudSetting(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    const-string v2, "sdk"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "sdk"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "sdk"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "sdk"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/qq/e/v2/a/a$1;->a:Lcom/qq/e/v2/managers/setting/SM;

    invoke-virtual {v4, v3, v2}, Lcom/qq/e/v2/managers/setting/SM;->updateSDKCloudSetting(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    const-string v2, "c"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v2, "c"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/qq/e/v2/a/a$1;->a:Lcom/qq/e/v2/managers/setting/SM;

    invoke-virtual {v2, v1}, Lcom/qq/e/v2/managers/setting/SM;->updateContextSetting(Ljava/lang/String;)V

    :cond_8
    :goto_1
    const-string v1, "jar"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "jar"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "url"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/qq/e/v2/a/a$1;->b:Lcom/qq/e/v2/managers/plugin/PM;

    invoke-virtual {v2, v1, v0}, Lcom/qq/e/v2/managers/plugin/PM;->update(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    const-string v1, "Parse Active or launch response exception"

    invoke-static {v1, v0}, Lcom/qq/e/v2/util/GDTLogger;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_9
    :try_start_2
    iget-object v1, p0, Lcom/qq/e/v2/a/a$1;->a:Lcom/qq/e/v2/managers/setting/SM;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/qq/e/v2/managers/setting/SM;->updateContextSetting(Ljava/lang/String;)V

    goto :goto_1

    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SDK server response code error while launch or activate,code:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/qq/e/v2/net/GDTSecurityADNetResponse;->getStatusCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/e/v2/util/GDTLogger;->report(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0
.end method
