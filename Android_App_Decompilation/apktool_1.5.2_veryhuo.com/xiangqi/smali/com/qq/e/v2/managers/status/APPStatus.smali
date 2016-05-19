.class public Lcom/qq/e/v2/managers/status/APPStatus;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qq/e/v2/managers/status/APPStatus;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/qq/e/v2/managers/status/APPStatus;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getAPPID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qq/e/v2/managers/status/APPStatus;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getAPPName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qq/e/v2/managers/status/APPStatus;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAPPVersion()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/qq/e/v2/managers/status/APPStatus;->getAPPName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qq/e/v2/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/qq/e/v2/managers/status/APPStatus;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v0, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method
