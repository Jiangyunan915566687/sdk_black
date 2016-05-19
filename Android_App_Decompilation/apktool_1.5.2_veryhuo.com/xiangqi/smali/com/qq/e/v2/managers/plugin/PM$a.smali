.class final Lcom/qq/e/v2/managers/plugin/PM$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/qq/e/v2/net/GDTPlainADNetRequest$CallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qq/e/v2/managers/plugin/PM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private synthetic b:Lcom/qq/e/v2/managers/plugin/PM;


# direct methods
.method public constructor <init>(Lcom/qq/e/v2/managers/plugin/PM;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/qq/e/v2/managers/plugin/PM$a;->b:Lcom/qq/e/v2/managers/plugin/PM;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/qq/e/v2/managers/plugin/PM$a;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/Exception;)V
    .locals 1

    const-string v0, "Exception while update plugin"

    invoke-static {v0, p1}, Lcom/qq/e/v2/util/GDTLogger;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onResponse(Lcom/qq/e/v2/net/GDTPlainADNetRequest;Lcom/qq/e/v2/net/GDTPlainADNetResponse;)V
    .locals 9

    const/4 v2, 0x0

    const/4 v0, 0x1

    const/4 v4, 0x0

    invoke-virtual {p2}, Lcom/qq/e/v2/net/GDTPlainADNetResponse;->getStatusCode()I

    move-result v1

    const/16 v3, 0xc8

    if-ne v1, v3, :cond_6

    :try_start_0
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v5

    invoke-virtual {p2}, Lcom/qq/e/v2/net/GDTPlainADNetResponse;->getRawContent()Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    :try_start_1
    iget-object v3, p0, Lcom/qq/e/v2/managers/plugin/PM$a;->b:Lcom/qq/e/v2/managers/plugin/PM;

    invoke-static {v3}, Lcom/qq/e/v2/managers/plugin/PM;->a(Lcom/qq/e/v2/managers/plugin/PM;)Ljava/io/File;

    move-result-object v6

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_3

    const/16 v2, 0x400

    :try_start_2
    new-array v2, v2, [B

    :goto_0
    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v7

    if-lez v7, :cond_0

    const/4 v8, 0x0

    invoke-virtual {v5, v2, v8, v7}, Ljava/security/MessageDigest;->update([BII)V

    const/4 v8, 0x0

    invoke-virtual {v3, v2, v8, v7}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v2, v3

    :goto_1
    :try_start_3
    const-string v3, "DownLoad plugin jar exception"

    invoke-static {v3, v0}, Lcom/qq/e/v2/util/GDTLogger;->report(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    invoke-static {v1}, Lcom/qq/e/v2/util/FileUtil;->tryClose(Ljava/io/InputStream;)V

    invoke-static {v2}, Lcom/qq/e/v2/util/FileUtil;->tryClose(Ljava/io/OutputStream;)V

    :goto_2
    return-void

    :cond_0
    :try_start_4
    invoke-static {v1}, Lcom/qq/e/v2/util/FileUtil;->tryClose(Ljava/io/InputStream;)V

    invoke-static {v3}, Lcom/qq/e/v2/util/FileUtil;->tryClose(Ljava/io/OutputStream;)V

    invoke-virtual {v5}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    invoke-static {v2}, Lcom/qq/e/v2/util/Md5Util;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/qq/e/v2/util/GDTST;->getToolInstance()Lcom/qq/e/v2/util/GDTST;

    move-result-object v5

    iget-object v7, p0, Lcom/qq/e/v2/managers/plugin/PM$a;->a:Ljava/lang/String;

    invoke-virtual {v5, v7, v2}, Lcom/qq/e/v2/util/GDTST;->verify(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v2, p0, Lcom/qq/e/v2/managers/plugin/PM$a;->b:Lcom/qq/e/v2/managers/plugin/PM;

    invoke-static {v2}, Lcom/qq/e/v2/managers/plugin/PM;->b(Lcom/qq/e/v2/managers/plugin/PM;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {p1}, Lcom/qq/e/v2/net/GDTPlainADNetRequest;->getUrl()Ljava/lang/String;

    move-result-object v7

    const-string v2, "0"

    invoke-static {}, Lcom/qq/e/v2/managers/plugin/PM;->a()Ljava/util/regex/Pattern;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v2, 0x1

    invoke-virtual {v7, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    :cond_1
    const/4 v7, 0x0

    invoke-static {v2, v7}, Lcom/qq/e/v2/util/StringUtil;->parseInteger(Ljava/lang/String;I)I

    move-result v7

    const/16 v8, 0x1d3

    if-ge v7, v8, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "online plugin version is smaller than asset plugin version"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",467"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/e/v2/util/GDTLogger;->w(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_4} :catch_1

    invoke-static {v1}, Lcom/qq/e/v2/util/FileUtil;->tryClose(Ljava/io/InputStream;)V

    invoke-static {v3}, Lcom/qq/e/v2/util/FileUtil;->tryClose(Ljava/io/OutputStream;)V

    goto :goto_2

    :cond_2
    :try_start_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "#####"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v7, p0, Lcom/qq/e/v2/managers/plugin/PM$a;->a:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v5}, Lcom/qq/e/v2/util/StringUtil;->writeTo(Ljava/lang/String;Ljava/io/File;)V

    iget-object v2, p0, Lcom/qq/e/v2/managers/plugin/PM$a;->b:Lcom/qq/e/v2/managers/plugin/PM;

    invoke-static {v2}, Lcom/qq/e/v2/managers/plugin/PM;->c(Lcom/qq/e/v2/managers/plugin/PM;)Ljava/io/File;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/qq/e/v2/util/FileUtil;->renameTo(Ljava/io/File;Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/qq/e/v2/managers/plugin/PM$a;->b:Lcom/qq/e/v2/managers/plugin/PM;

    invoke-static {v2}, Lcom/qq/e/v2/managers/plugin/PM;->d(Lcom/qq/e/v2/managers/plugin/PM;)Ljava/io/File;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/qq/e/v2/util/FileUtil;->renameTo(Ljava/io/File;Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_4

    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "TIMESTAMP_AFTER_DOWNPLUGIN:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ";sig="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/qq/e/v2/managers/plugin/PM$a;->a:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/qq/e/v2/util/GDTLogger;->d(Ljava/lang/String;)V

    if-nez v0, :cond_3

    const-string v0, "Fail to update plugin while renaming jar and sig files"

    invoke-static {v0}, Lcom/qq/e/v2/util/GDTLogger;->report(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5 .. :try_end_5} :catch_1

    :cond_3
    :goto_4
    invoke-static {v1}, Lcom/qq/e/v2/util/FileUtil;->tryClose(Ljava/io/InputStream;)V

    invoke-static {v3}, Lcom/qq/e/v2/util/FileUtil;->tryClose(Ljava/io/OutputStream;)V

    goto/16 :goto_2

    :cond_4
    move v0, v4

    goto :goto_3

    :cond_5
    :try_start_6
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    const-string v0, "Fail to update plugin while verifying,sig=%s,md5=%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/qq/e/v2/managers/plugin/PM$a;->a:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v2, v4, v5

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/e/v2/util/GDTLogger;->report(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    :goto_5
    :try_start_7
    const-string v2, "MD5 method not support on this device"

    invoke-static {v2, v0}, Lcom/qq/e/v2/util/GDTLogger;->report(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    invoke-static {v1}, Lcom/qq/e/v2/util/FileUtil;->tryClose(Ljava/io/InputStream;)V

    invoke-static {v3}, Lcom/qq/e/v2/util/FileUtil;->tryClose(Ljava/io/OutputStream;)V

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    :goto_6
    invoke-static {v1}, Lcom/qq/e/v2/util/FileUtil;->tryClose(Ljava/io/InputStream;)V

    invoke-static {v3}, Lcom/qq/e/v2/util/FileUtil;->tryClose(Ljava/io/OutputStream;)V

    throw v0

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DownLoad Plugin Jar Status error,response status code="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/qq/e/v2/net/GDTPlainADNetResponse;->getStatusCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/e/v2/util/GDTLogger;->report(Ljava/lang/String;)V

    goto/16 :goto_2

    :catchall_1
    move-exception v0

    move-object v3, v2

    goto :goto_6

    :catchall_2
    move-exception v0

    goto :goto_6

    :catchall_3
    move-exception v0

    move-object v3, v2

    goto :goto_6

    :catch_2
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    goto :goto_5

    :catch_3
    move-exception v0

    move-object v3, v2

    goto :goto_5

    :catch_4
    move-exception v0

    move-object v1, v2

    goto/16 :goto_1

    :catch_5
    move-exception v0

    goto/16 :goto_1
.end method
