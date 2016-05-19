.class public Lcom/qq/e/comm/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/qq/e/v2/managers/setting/a;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/qq/e/v2/managers/setting/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qq/e/comm/a;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/qq/e/comm/a;->b:Lcom/qq/e/v2/managers/setting/a;

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p2, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-array v2, v0, [Ljava/lang/Class;

    const-class v3, Lcom/qq/e/ads/AdActivity;

    aput-object v3, v2, v1

    invoke-static {p0, v2}, Lcom/qq/e/comm/a;->a(Landroid/content/Context;[Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p0}, Lcom/qq/e/comm/a;->b(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p0}, Lcom/qq/e/comm/a;->c(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/io/File;Ljava/io/File;)Z
    .locals 6

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    :try_start_0
    const-string v1, "gdt_plugin"

    invoke-virtual {v2, v1}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const-string v3, "gdtad.jar"

    invoke-static {v1, v3}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "gdt_plugin"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "gdtad.jar"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v1, Lcom/qq/e/v2/constants/Constants$PLUGIN;->ASSET_PLUGIN_SIG:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, ""

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "467#####"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/qq/e/v2/util/StringUtil;->writeTo(Ljava/lang/String;Ljava/io/File;)V

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/qq/e/v2/util/FileUtil;->copyTo(Ljava/io/InputStream;Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :cond_1
    :goto_0
    return v0

    :catch_0
    move-exception v1

    const-string v2, "Exception while init default plugin manager"

    invoke-static {v2, v1}, Lcom/qq/e/v2/util/GDTLogger;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static varargs a(Landroid/content/Context;[Ljava/lang/Class;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    aget-object v3, p1, v1

    invoke-virtual {v2, p0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/high16 v4, 0x1

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Can not found "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", please set it in AndroidManifest.xml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qq/e/v2/util/GDTLogger;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Check required Activities error"

    invoke-static {v2, v1}, Lcom/qq/e/v2/util/GDTLogger;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public static a([B)[B
    .locals 4

    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    invoke-static {p0}, Lcom/qq/e/comm/a;->c([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/qq/e/v2/net/a;->a([B)[B

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "v"

    const-string v3, "1.1"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "d"

    const/4 v3, 0x0

    invoke-static {v0, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/qq/e/comm/a;->c([B)[B
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Json Exception in GDTSecurityPackageUtil.packageByteArray"

    invoke-static {v1, v0}, Lcom/qq/e/v2/util/GDTLogger;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-class v2, Lcom/qq/e/comm/DownloadService;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/high16 v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "Can not found DownloadService, please set it in AndroidManifest.xml"

    invoke-static {v1}, Lcom/qq/e/v2/util/GDTLogger;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    const-string v2, "Check required Services error"

    invoke-static {v2, v1}, Lcom/qq/e/v2/util/GDTLogger;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static b([B)[B
    .locals 3

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/qq/e/comm/a;->d([B)[B

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "d"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "d"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-static {v1}, Lcom/qq/e/v2/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_1
    return-object v0

    :cond_0
    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-static {v1}, Lcom/qq/e/v2/net/a;->b([B)[B

    move-result-object v1

    invoke-static {v1}, Lcom/qq/e/comm/a;->d([B)[B
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "Json Exception in GDTSecurityPackageUtil.unpackByteArray"

    invoke-static {v2, v1}, Lcom/qq/e/v2/util/GDTLogger;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_1
    move-exception v1

    const-string v2, "Exception in GDTSecurityPackageUtil.unpackByteArray"

    invoke-static {v2, v1}, Lcom/qq/e/v2/util/GDTLogger;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    move-object v1, v0

    goto :goto_0
.end method

.method public static c()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TIMESTAMP_BEFORE_BUILDCOMMONINFO:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/e/v2/util/GDTLogger;->d(Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lcom/qq/e/v2/managers/GDTADManager;->getInstance()Lcom/qq/e/v2/managers/GDTADManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qq/e/v2/managers/GDTADManager;->getSM()Lcom/qq/e/v2/managers/setting/SM;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "suid"

    invoke-virtual {v1}, Lcom/qq/e/v2/managers/setting/SM;->getSuid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/qq/e/comm/a;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    const-string v2, "sid"

    invoke-virtual {v1}, Lcom/qq/e/v2/managers/setting/SM;->getSid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Lcom/qq/e/comm/a;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "TIMESTAMP_AFTER_BUILDCOMMONINFO:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qq/e/v2/util/GDTLogger;->d(Ljava/lang/String;)V

    return-object v0
.end method

.method private static c(Landroid/content/Context;)Z
    .locals 3

    const/4 v2, -0x1

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.permission.INTERNET"

    invoke-virtual {p0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_0

    const-string v1, "Can not found android.permission.INTERNET, please set it in AndroidManifest.xml"

    invoke-static {v1}, Lcom/qq/e/v2/util/GDTLogger;->e(Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {p0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_1

    const-string v1, "Can not found android.permission.ACCESS_NETWORK_STATE, please set it in AndroidManifest.xml"

    invoke-static {v1}, Lcom/qq/e/v2/util/GDTLogger;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Check required Permissions error"

    invoke-static {v2, v1}, Lcom/qq/e/v2/util/GDTLogger;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    :try_start_1
    const-string v1, "android.permission.ACCESS_WIFI_STATE"

    invoke-virtual {p0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_2

    const-string v1, "Can not found android.permission.ACCESS_WIFI_STATE, please set it in AndroidManifest.xml"

    invoke-static {v1}, Lcom/qq/e/v2/util/GDTLogger;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-virtual {p0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_3

    const-string v1, "Can not found android.permission.READ_PHONE_STATE, please set it in AndroidManifest.xml"

    invoke-static {v1}, Lcom/qq/e/v2/util/GDTLogger;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_4

    const-string v1, "Can not found android.permission.WRITE_EXTERNAL_STORAGE, please set it in AndroidManifest.xml"

    invoke-static {v1}, Lcom/qq/e/v2/util/GDTLogger;->e(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static c([B)[B
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    array-length v1, p0

    if-nez v1, :cond_1

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0

    :cond_1
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_0
    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v2, v3}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v2, p0}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->finish()V

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v0

    :try_start_2
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v2, v0

    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_2

    :try_start_4
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V

    :cond_2
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_2
    if-eqz v2, :cond_3

    :try_start_5
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V

    :cond_3
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    :goto_3
    throw v0

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_1
.end method

.method public static d()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TimeStampBeforeBuildSigInfo:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/e/v2/util/GDTLogger;->d(Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lcom/qq/e/v2/managers/GDTADManager;->getInstance()Lcom/qq/e/v2/managers/GDTADManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qq/e/v2/managers/GDTADManager;->getSM()Lcom/qq/e/v2/managers/setting/SM;

    move-result-object v1

    invoke-static {}, Lcom/qq/e/v2/managers/GDTADManager;->getInstance()Lcom/qq/e/v2/managers/GDTADManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qq/e/v2/managers/GDTADManager;->getPM()Lcom/qq/e/v2/managers/plugin/PM;

    move-result-object v2

    if-eqz v1, :cond_0

    const-string v3, "app"

    invoke-virtual {v1}, Lcom/qq/e/v2/managers/setting/SM;->getDevCloudSettingSig()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/qq/e/comm/a;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    const-string v3, "sdk"

    invoke-virtual {v1}, Lcom/qq/e/v2/managers/setting/SM;->getSdkCloudSettingSig()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1, v0}, Lcom/qq/e/comm/a;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    :cond_0
    if-eqz v2, :cond_1

    const-string v1, "jar"

    invoke-virtual {v2}, Lcom/qq/e/v2/managers/plugin/PM;->getLocalSig()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Lcom/qq/e/comm/a;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    const-string v1, "plugin_version"

    invoke-virtual {v2}, Lcom/qq/e/v2/managers/plugin/PM;->getPluginVersion()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/qq/e/comm/a;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "TimeStampAfterBuildSigInfo:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qq/e/v2/util/GDTLogger;->d(Ljava/lang/String;)V

    return-object v0
.end method

.method public static d([B)[B
    .locals 7

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    array-length v1, p0

    if-nez v1, :cond_1

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0

    :cond_1
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x400

    new-array v1, v1, [B

    :try_start_0
    new-instance v2, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v2, v3}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    :goto_1
    :try_start_1
    invoke-virtual {v2, v1}, Ljava/util/zip/GZIPInputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_3

    const/4 v6, 0x0

    invoke-virtual {v4, v1, v6, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    :goto_2
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v2, :cond_2

    :try_start_3
    invoke-virtual {v2}, Ljava/util/zip/GZIPInputStream;->close()V

    :cond_2
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_3
    :try_start_4
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v0

    :try_start_5
    invoke-virtual {v2}, Ljava/util/zip/GZIPInputStream;->close()V

    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_3
    if-eqz v2, :cond_4

    :try_start_6
    invoke-virtual {v2}, Ljava/util/zip/GZIPInputStream;->close()V

    :cond_4
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    :goto_4
    throw v0

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_4
    move-exception v1

    move-object v2, v0

    goto :goto_2
.end method

.method public static e()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TimeStampBeforeBuildDevInfo:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/e/v2/util/GDTLogger;->d(Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lcom/qq/e/v2/managers/GDTADManager;->getInstance()Lcom/qq/e/v2/managers/GDTADManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qq/e/v2/managers/GDTADManager;->getDeviceStatus()Lcom/qq/e/v2/managers/status/DeviceStatus;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "did"

    invoke-virtual {v1}, Lcom/qq/e/v2/managers/status/DeviceStatus;->getDid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/qq/e/comm/a;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    const-string v2, "md"

    iget-object v3, v1, Lcom/qq/e/v2/managers/status/DeviceStatus;->model:Ljava/lang/String;

    invoke-static {v2, v3, v0}, Lcom/qq/e/comm/a;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    const-string v2, "lg"

    invoke-virtual {v1}, Lcom/qq/e/v2/managers/status/DeviceStatus;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/qq/e/comm/a;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    const-string v2, "w"

    invoke-virtual {v1}, Lcom/qq/e/v2/managers/status/DeviceStatus;->getDeviceWidth()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/qq/e/comm/a;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    const-string v2, "h"

    invoke-virtual {v1}, Lcom/qq/e/v2/managers/status/DeviceStatus;->getDeviceHeight()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/qq/e/comm/a;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    const-string v2, "dd"

    invoke-virtual {v1}, Lcom/qq/e/v2/managers/status/DeviceStatus;->getDeviceDensity()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/qq/e/comm/a;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    const-string v2, "apil"

    invoke-virtual {v1}, Lcom/qq/e/v2/managers/status/DeviceStatus;->getVersion()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/qq/e/comm/a;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    const-string v2, "os"

    const-string v3, "android"

    invoke-static {v2, v3, v0}, Lcom/qq/e/comm/a;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    const-string v2, "op"

    invoke-virtual {v1}, Lcom/qq/e/v2/managers/status/DeviceStatus;->getOperator()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Lcom/qq/e/comm/a;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "TimeStampAfterBuildDevInfo:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qq/e/v2/util/GDTLogger;->d(Ljava/lang/String;)V

    return-object v0
.end method

.method public static f()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lcom/qq/e/v2/managers/GDTADManager;->getInstance()Lcom/qq/e/v2/managers/GDTADManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qq/e/v2/managers/GDTADManager;->getAppStatus()Lcom/qq/e/v2/managers/status/APPStatus;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "an"

    invoke-virtual {v1}, Lcom/qq/e/v2/managers/status/APPStatus;->getAPPName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/qq/e/comm/a;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    const-string v2, "appkey"

    invoke-virtual {v1}, Lcom/qq/e/v2/managers/status/APPStatus;->getAPPID()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/qq/e/comm/a;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    const-string v2, "appv"

    invoke-virtual {v1}, Lcom/qq/e/v2/managers/status/APPStatus;->getAPPVersion()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Lcom/qq/e/comm/a;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    :cond_0
    return-object v0
.end method

.method public static g()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TimeStampBeforeBuildCTXInfo:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/e/v2/util/GDTLogger;->d(Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lcom/qq/e/v2/managers/GDTADManager;->getInstance()Lcom/qq/e/v2/managers/GDTADManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qq/e/v2/managers/GDTADManager;->getDeviceStatus()Lcom/qq/e/v2/managers/status/DeviceStatus;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "so"

    invoke-virtual {v1}, Lcom/qq/e/v2/managers/status/DeviceStatus;->getScreenOrientation()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/qq/e/comm/a;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    const-string v2, "dn"

    invoke-virtual {v1}, Lcom/qq/e/v2/managers/status/DeviceStatus;->getDataNet()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/qq/e/comm/a;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    const-string v2, "lat"

    invoke-virtual {v1}, Lcom/qq/e/v2/managers/status/DeviceStatus;->getLat()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/qq/e/comm/a;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    const-string v2, "lng"

    invoke-virtual {v1}, Lcom/qq/e/v2/managers/status/DeviceStatus;->getLng()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/qq/e/comm/a;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    invoke-virtual {v1}, Lcom/qq/e/v2/managers/status/DeviceStatus;->getLacAndCeilId()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "TimeStampAfterBuildCTXInfo:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qq/e/v2/util/GDTLogger;->d(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qq/e/comm/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Lcom/qq/e/v2/managers/setting/a;
    .locals 1

    iget-object v0, p0, Lcom/qq/e/comm/a;->b:Lcom/qq/e/v2/managers/setting/a;

    return-object v0
.end method
