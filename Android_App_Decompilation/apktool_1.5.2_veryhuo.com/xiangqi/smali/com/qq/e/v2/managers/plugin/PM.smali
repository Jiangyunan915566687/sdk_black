.class public Lcom/qq/e/v2/managers/plugin/PM;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qq/e/v2/managers/plugin/PM$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/regex/Pattern;

.field private static final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private d:Ljava/io/File;

.field private e:I

.field private f:Ldalvik/system/DexClassLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, ".*plugin\\.dex-(\\d+)\\.jar.*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/qq/e/v2/managers/plugin/PM;->a:Ljava/util/regex/Pattern;

    new-instance v0, Lcom/qq/e/v2/managers/plugin/PM$1;

    invoke-direct {v0}, Lcom/qq/e/v2/managers/plugin/PM$1;-><init>()V

    sput-object v0, Lcom/qq/e/v2/managers/plugin/PM;->g:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qq/e/v2/managers/plugin/PM;->b:Landroid/content/Context;

    invoke-direct {p0}, Lcom/qq/e/v2/managers/plugin/PM;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "PluginFile:\t"

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/qq/e/v2/managers/plugin/PM;->d:Ljava/io/File;

    if-nez v0, :cond_1

    const-string v0, "null"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/e/v2/util/GDTLogger;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/qq/e/v2/managers/plugin/PM;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    :try_start_0
    new-instance v0, Ldalvik/system/DexClassLoader;

    iget-object v1, p0, Lcom/qq/e/v2/managers/plugin/PM;->d:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/qq/e/v2/managers/plugin/PM;->b:Landroid/content/Context;

    const-string v3, "e_qq_com_dex"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    iput-object v0, p0, Lcom/qq/e/v2/managers/plugin/PM;->f:Ldalvik/system/DexClassLoader;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/qq/e/v2/managers/plugin/PM;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "exception while init plugin class loader"

    invoke-static {v1, v0}, Lcom/qq/e/v2/util/GDTLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_2
    iput-object v2, p0, Lcom/qq/e/v2/managers/plugin/PM;->f:Ldalvik/system/DexClassLoader;

    goto :goto_1
.end method

.method private a(Ljava/io/File;Ljava/io/File;)I
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/qq/e/v2/util/StringUtil;->readAll(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "#####"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    aget-object v2, v0, v2

    const/4 v3, 0x0

    aget-object v0, v0, v3

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/qq/e/v2/util/StringUtil;->parseInteger(Ljava/lang/String;I)I

    move-result v0

    invoke-static {}, Lcom/qq/e/v2/util/GDTST;->getToolInstance()Lcom/qq/e/v2/util/GDTST;

    move-result-object v3

    invoke-virtual {v3, v2, p2}, Lcom/qq/e/v2/util/GDTST;->verifyFile(Ljava/lang/String;Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_0

    iput-object v2, p0, Lcom/qq/e/v2/managers/plugin/PM;->c:Ljava/lang/String;

    iput-object p2, p0, Lcom/qq/e/v2/managers/plugin/PM;->d:Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "Exception while init plugin manager"

    invoke-static {v2, v0}, Lcom/qq/e/v2/util/GDTLogger;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/qq/e/v2/managers/plugin/PM;)Ljava/io/File;
    .locals 3

    new-instance v0, Ljava/io/File;

    invoke-direct {p0}, Lcom/qq/e/v2/managers/plugin/PM;->c()Ljava/io/File;

    move-result-object v1

    const-string v2, "gdt_plugin.tmp"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic a()Ljava/util/regex/Pattern;
    .locals 1

    sget-object v0, Lcom/qq/e/v2/managers/plugin/PM;->a:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static synthetic b(Lcom/qq/e/v2/managers/plugin/PM;)Ljava/io/File;
    .locals 3

    new-instance v0, Ljava/io/File;

    invoke-direct {p0}, Lcom/qq/e/v2/managers/plugin/PM;->c()Ljava/io/File;

    move-result-object v1

    const-string v2, "gdt_plugin.tmp.sig"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private b()Z
    .locals 7

    const/16 v6, 0x1d3

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "TimeStap_BEFORE_PLUGIN_INIT:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/qq/e/v2/util/GDTLogger;->d(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/qq/e/v2/managers/plugin/PM;->e()Ljava/io/File;

    move-result-object v2

    invoke-direct {p0}, Lcom/qq/e/v2/managers/plugin/PM;->d()Ljava/io/File;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/qq/e/v2/managers/plugin/PM;->a(Ljava/io/File;Ljava/io/File;)I

    move-result v2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "last updated plugin version ="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";asset plugin version=467"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/qq/e/v2/util/GDTLogger;->d(Ljava/lang/String;)V

    if-ge v2, v6, :cond_1

    iget-object v2, p0, Lcom/qq/e/v2/managers/plugin/PM;->b:Landroid/content/Context;

    invoke-direct {p0}, Lcom/qq/e/v2/managers/plugin/PM;->d()Ljava/io/File;

    move-result-object v4

    invoke-direct {p0}, Lcom/qq/e/v2/managers/plugin/PM;->e()Ljava/io/File;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/qq/e/comm/a;->a(Landroid/content/Context;Ljava/io/File;Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/qq/e/v2/constants/Constants$PLUGIN;->ASSET_PLUGIN_SIG:Ljava/lang/String;

    iput-object v2, p0, Lcom/qq/e/v2/managers/plugin/PM;->c:Ljava/lang/String;

    iput-object v3, p0, Lcom/qq/e/v2/managers/plugin/PM;->d:Ljava/io/File;

    const/16 v2, 0x1d3

    iput v2, p0, Lcom/qq/e/v2/managers/plugin/PM;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "TimeStap_AFTER_PLUGIN_INIT:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qq/e/v2/util/GDTLogger;->d(Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    :try_start_1
    const-string v0, "Fail to prepair Defult plugin "

    invoke-static {v0}, Lcom/qq/e/v2/util/GDTLogger;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "TimeStap_AFTER_PLUGIN_INIT:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/e/v2/util/GDTLogger;->d(Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :cond_1
    :try_start_2
    iput v2, p0, Lcom/qq/e/v2/managers/plugin/PM;->e:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "TimeStap_AFTER_PLUGIN_INIT:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qq/e/v2/util/GDTLogger;->d(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    const-string v2, "Exception while init plugin manager"

    invoke-static {v2, v0}, Lcom/qq/e/v2/util/GDTLogger;->report(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "TimeStap_AFTER_PLUGIN_INIT:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/e/v2/util/GDTLogger;->d(Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "TimeStap_AFTER_PLUGIN_INIT:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qq/e/v2/util/GDTLogger;->d(Ljava/lang/String;)V

    throw v0
.end method

.method private c()Ljava/io/File;
    .locals 3

    iget-object v0, p0, Lcom/qq/e/v2/managers/plugin/PM;->b:Landroid/content/Context;

    const-string v1, "e_qq_com_plugin"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/qq/e/v2/managers/plugin/PM;)Ljava/io/File;
    .locals 1

    invoke-direct {p0}, Lcom/qq/e/v2/managers/plugin/PM;->d()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private d()Ljava/io/File;
    .locals 3

    new-instance v0, Ljava/io/File;

    invoke-direct {p0}, Lcom/qq/e/v2/managers/plugin/PM;->c()Ljava/io/File;

    move-result-object v1

    const-string v2, "gdt_plugin.jar"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic d(Lcom/qq/e/v2/managers/plugin/PM;)Ljava/io/File;
    .locals 1

    invoke-direct {p0}, Lcom/qq/e/v2/managers/plugin/PM;->e()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private e()Ljava/io/File;
    .locals 3

    new-instance v0, Ljava/io/File;

    invoke-direct {p0}, Lcom/qq/e/v2/managers/plugin/PM;->c()Ljava/io/File;

    move-result-object v1

    const-string v2, "gdt_plugin.jar.sig"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getActivityDelegateFactory()Lcom/qq/e/v2/plugininterfaces/ActivityDelegateFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qq/e/v2/managers/plugin/a;
        }
    .end annotation

    const-class v0, Lcom/qq/e/v2/plugininterfaces/ActivityDelegateFactory;

    invoke-virtual {p0, v0}, Lcom/qq/e/v2/managers/plugin/PM;->getFactory(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qq/e/v2/plugininterfaces/ActivityDelegateFactory;

    return-object v0
.end method

.method public getAdViewFactory()Lcom/qq/e/splash/AdViewFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qq/e/v2/managers/plugin/a;
        }
    .end annotation

    const-class v0, Lcom/qq/e/splash/AdViewFactory;

    invoke-virtual {p0, v0}, Lcom/qq/e/v2/managers/plugin/PM;->getFactory(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qq/e/splash/AdViewFactory;

    return-object v0
.end method

.method public getAppWallViewFactory()Lcom/qq/e/v2/plugininterfaces/AppWallViewFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qq/e/v2/managers/plugin/a;
        }
    .end annotation

    const-class v0, Lcom/qq/e/v2/plugininterfaces/AppWallViewFactory;

    invoke-virtual {p0, v0}, Lcom/qq/e/v2/managers/plugin/PM;->getFactory(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qq/e/v2/plugininterfaces/AppWallViewFactory;

    return-object v0
.end method

.method public getBannerViewFactory()Lcom/qq/e/v2/plugininterfaces/BannerViewFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qq/e/v2/managers/plugin/a;
        }
    .end annotation

    const-class v0, Lcom/qq/e/v2/plugininterfaces/BannerViewFactory;

    invoke-virtual {p0, v0}, Lcom/qq/e/v2/managers/plugin/PM;->getFactory(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qq/e/v2/plugininterfaces/BannerViewFactory;

    return-object v0
.end method

.method public getFactory(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qq/e/v2/managers/plugin/a;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GetFactoryInstaceforInterface:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/e/v2/util/GDTLogger;->d(Ljava/lang/String;)V

    sget-object v0, Lcom/qq/e/v2/constants/Constants$PLUGIN;->ASSET_PLUGIN_SIG:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    move-object v1, v0

    :goto_0
    if-nez v1, :cond_1

    new-instance v0, Lcom/qq/e/v2/managers/plugin/a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fail to init GDTADPLugin,PluginClassLoader == null;while loading factory impl for:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/qq/e/v2/managers/plugin/a;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/qq/e/v2/managers/plugin/PM;->f:Ldalvik/system/DexClassLoader;

    move-object v1, v0

    goto :goto_0

    :cond_1
    :try_start_0
    sget-object v0, Lcom/qq/e/v2/managers/plugin/PM;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/qq/e/v2/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v0, Lcom/qq/e/v2/managers/plugin/a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "factory  implemention name is not specified for interface:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/qq/e/v2/managers/plugin/a;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/qq/e/v2/managers/plugin/a;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Fail to getfactory implement instance for interface:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/qq/e/v2/managers/plugin/a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    :try_start_1
    invoke-virtual {v1, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getInstance"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    return-object v0
.end method

.method public getFeedsAdViewFactory()Lcom/qq/e/v2/plugininterfaces/FeedsAdViewFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qq/e/v2/managers/plugin/a;
        }
    .end annotation

    const-class v0, Lcom/qq/e/v2/plugininterfaces/FeedsAdViewFactory;

    invoke-virtual {p0, v0}, Lcom/qq/e/v2/managers/plugin/PM;->getFactory(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qq/e/v2/plugininterfaces/FeedsAdViewFactory;

    return-object v0
.end method

.method public getGDTNativeAdViewFactory()Lcom/qq/e/v2/plugininterfaces/GDTNativeAdViewFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qq/e/v2/managers/plugin/a;
        }
    .end annotation

    const-class v0, Lcom/qq/e/v2/plugininterfaces/GDTNativeAdViewFactory;

    invoke-virtual {p0, v0}, Lcom/qq/e/v2/managers/plugin/PM;->getFactory(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qq/e/v2/plugininterfaces/GDTNativeAdViewFactory;

    return-object v0
.end method

.method public getGridAdViewFactory()Lcom/qq/e/v2/plugininterfaces/GridAdViewFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qq/e/v2/managers/plugin/a;
        }
    .end annotation

    const-class v0, Lcom/qq/e/v2/plugininterfaces/GridAdViewFactory;

    invoke-virtual {p0, v0}, Lcom/qq/e/v2/managers/plugin/PM;->getFactory(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qq/e/v2/plugininterfaces/GridAdViewFactory;

    return-object v0
.end method

.method public getInterstitialViewFactory()Lcom/qq/e/v2/plugininterfaces/InterstitialViewFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qq/e/v2/managers/plugin/a;
        }
    .end annotation

    const-class v0, Lcom/qq/e/v2/plugininterfaces/InterstitialViewFactory;

    invoke-virtual {p0, v0}, Lcom/qq/e/v2/managers/plugin/PM;->getFactory(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qq/e/v2/plugininterfaces/InterstitialViewFactory;

    return-object v0
.end method

.method public getLocalSig()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qq/e/v2/managers/plugin/PM;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getPluginVersion()I
    .locals 1

    iget v0, p0, Lcom/qq/e/v2/managers/plugin/PM;->e:I

    return v0
.end method

.method public getServiceDelegateFactory()Lcom/qq/e/v2/plugininterfaces/ServiceDelegateFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qq/e/v2/managers/plugin/a;
        }
    .end annotation

    const-class v0, Lcom/qq/e/v2/plugininterfaces/ServiceDelegateFactory;

    invoke-virtual {p0, v0}, Lcom/qq/e/v2/managers/plugin/PM;->getFactory(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qq/e/v2/plugininterfaces/ServiceDelegateFactory;

    return-object v0
.end method

.method public update(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TIMESTAP_BEFORE_DOWN_PLUGIN:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/e/v2/util/GDTLogger;->d(Ljava/lang/String;)V

    const-string v0, "0"

    sget-object v1, Lcom/qq/e/v2/managers/plugin/PM;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/qq/e/v2/util/StringUtil;->parseInteger(Ljava/lang/String;I)I

    move-result v0

    const/16 v1, 0x1d3

    if-ge v0, v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "online plugin version is smaller than asset plugin version"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",467"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".download give up"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/e/v2/util/GDTLogger;->w(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/qq/e/v2/net/GDTPlainADNetRequest;

    sget-object v1, Lcom/qq/e/v2/net/GDTADNetRequest$Method;->GET:Lcom/qq/e/v2/net/GDTADNetRequest$Method;

    const/4 v2, 0x0

    new-instance v3, Lcom/qq/e/v2/managers/plugin/PM$a;

    invoke-direct {v3, p0, p1}, Lcom/qq/e/v2/managers/plugin/PM$a;-><init>(Lcom/qq/e/v2/managers/plugin/PM;Ljava/lang/String;)V

    invoke-direct {v0, p2, v1, v2, v3}, Lcom/qq/e/v2/net/GDTPlainADNetRequest;-><init>(Ljava/lang/String;Lcom/qq/e/v2/net/GDTADNetRequest$Method;[BLcom/qq/e/v2/net/GDTPlainADNetRequest$CallBack;)V

    invoke-static {}, Lcom/qq/e/v2/net/GDTADNetClient;->getInstance()Lcom/qq/e/v2/net/GDTADNetClient;

    move-result-object v1

    sget-object v2, Lcom/qq/e/v2/net/GDTADNetClient$Priority;->High:Lcom/qq/e/v2/net/GDTADNetClient$Priority;

    const/4 v3, 0x3

    invoke-virtual {v1, v0, v2, v3}, Lcom/qq/e/v2/net/GDTADNetClient;->excute(Lcom/qq/e/v2/net/GDTADNetRequest;Lcom/qq/e/v2/net/GDTADNetClient$Priority;I)V

    goto :goto_0
.end method
