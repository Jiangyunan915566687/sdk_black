.class public Lcom/qq/e/v2/managers/setting/SM;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/qq/e/v2/managers/setting/a;

.field private b:Ljava/lang/String;

.field private c:Lcom/qq/e/v2/managers/setting/a;

.field private d:Lcom/qq/e/v2/managers/setting/a;

.field private e:Ljava/lang/String;

.field private f:Lcom/qq/e/v2/managers/setting/b;

.field private g:Lcom/qq/e/v2/managers/setting/b;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/qq/e/v2/managers/setting/SM;->i:Ljava/lang/String;

    iput-object p1, p0, Lcom/qq/e/v2/managers/setting/SM;->j:Landroid/content/Context;

    new-instance v0, Lcom/qq/e/v2/managers/setting/a;

    invoke-direct {v0}, Lcom/qq/e/v2/managers/setting/a;-><init>()V

    iput-object v0, p0, Lcom/qq/e/v2/managers/setting/SM;->a:Lcom/qq/e/v2/managers/setting/a;

    new-instance v0, Lcom/qq/e/v2/managers/setting/a;

    invoke-direct {v0}, Lcom/qq/e/v2/managers/setting/a;-><init>()V

    iput-object v0, p0, Lcom/qq/e/v2/managers/setting/SM;->d:Lcom/qq/e/v2/managers/setting/a;

    new-instance v0, Lcom/qq/e/v2/managers/setting/c;

    invoke-direct {v0}, Lcom/qq/e/v2/managers/setting/c;-><init>()V

    iput-object v0, p0, Lcom/qq/e/v2/managers/setting/SM;->g:Lcom/qq/e/v2/managers/setting/b;

    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/qq/e/v2/managers/setting/SM;->j:Landroid/content/Context;

    const-string v2, "e_qq_com_setting"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    const-string v2, "gdt_suid"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/qq/e/v2/util/StringUtil;->readAll(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qq/e/v2/managers/setting/SM;->h:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-direct {p0}, Lcom/qq/e/v2/managers/setting/SM;->a()V

    invoke-direct {p0}, Lcom/qq/e/v2/managers/setting/SM;->b()V

    return-void

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qq/e/v2/managers/setting/SM;->h:Ljava/lang/String;

    const-string v0, "IO Exception while loading suid"

    invoke-static {v0}, Lcom/qq/e/v2/util/GDTLogger;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static a(Ljava/lang/Object;)I
    .locals 2

    const/high16 v0, -0x8000

    if-nez p0, :cond_0

    :goto_0
    return v0

    :cond_0
    instance-of v1, p0, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private a()V
    .locals 2

    iget-object v0, p0, Lcom/qq/e/v2/managers/setting/SM;->j:Landroid/content/Context;

    invoke-static {v0}, Lcom/qq/e/v2/managers/setting/a;->b(Landroid/content/Context;)Lcom/qq/e/v2/managers/setting/d;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/qq/e/v2/managers/setting/d;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/qq/e/v2/managers/setting/SM;->e:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/qq/e/v2/managers/setting/d;->b()Lcom/qq/e/v2/managers/setting/b;

    move-result-object v0

    iput-object v0, p0, Lcom/qq/e/v2/managers/setting/SM;->f:Lcom/qq/e/v2/managers/setting/b;

    :goto_0
    return-void

    :cond_0
    const-string v0, "Load Local SDK Cloud setting fail"

    invoke-static {v0}, Lcom/qq/e/v2/util/GDTLogger;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private b()V
    .locals 2

    iget-object v0, p0, Lcom/qq/e/v2/managers/setting/SM;->j:Landroid/content/Context;

    invoke-static {v0}, Lcom/qq/e/v2/managers/setting/a;->a(Landroid/content/Context;)Lcom/qq/e/comm/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/qq/e/comm/a;->b()Lcom/qq/e/v2/managers/setting/a;

    move-result-object v1

    iput-object v1, p0, Lcom/qq/e/v2/managers/setting/SM;->c:Lcom/qq/e/v2/managers/setting/a;

    invoke-virtual {v0}, Lcom/qq/e/comm/a;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qq/e/v2/managers/setting/SM;->b:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    const-string v0, "Load Local DEV Cloud setting fail"

    invoke-static {v0}, Lcom/qq/e/v2/util/GDTLogger;->d(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/qq/e/v2/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/qq/e/v2/managers/setting/SM;->a:Lcom/qq/e/v2/managers/setting/a;

    invoke-virtual {v1, p1}, Lcom/qq/e/v2/managers/setting/a;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/qq/e/v2/managers/setting/SM;->a:Lcom/qq/e/v2/managers/setting/a;

    invoke-virtual {v1, p1}, Lcom/qq/e/v2/managers/setting/a;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/qq/e/v2/managers/setting/SM;->c:Lcom/qq/e/v2/managers/setting/a;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/qq/e/v2/managers/setting/SM;->c:Lcom/qq/e/v2/managers/setting/a;

    invoke-virtual {v1, p1}, Lcom/qq/e/v2/managers/setting/a;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    move-object v0, v1

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/qq/e/v2/managers/setting/SM;->d:Lcom/qq/e/v2/managers/setting/a;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/qq/e/v2/managers/setting/SM;->d:Lcom/qq/e/v2/managers/setting/a;

    invoke-virtual {v1, p1}, Lcom/qq/e/v2/managers/setting/a;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    move-object v0, v1

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/qq/e/v2/managers/setting/SM;->f:Lcom/qq/e/v2/managers/setting/b;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/qq/e/v2/managers/setting/SM;->f:Lcom/qq/e/v2/managers/setting/b;

    invoke-virtual {v1, p1}, Lcom/qq/e/v2/managers/setting/b;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_5

    move-object v0, v1

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/qq/e/v2/managers/setting/SM;->g:Lcom/qq/e/v2/managers/setting/b;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/qq/e/v2/managers/setting/SM;->g:Lcom/qq/e/v2/managers/setting/b;

    invoke-virtual {v1, p1}, Lcom/qq/e/v2/managers/setting/b;->a(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception in settingManager.get Setting for key:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/qq/e/v2/util/GDTLogger;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getDevCloudSettingSig()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qq/e/v2/managers/setting/SM;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getForPlacement(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/qq/e/v2/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Lcom/qq/e/v2/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move-object v0, v1

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/qq/e/v2/managers/setting/SM;->a:Lcom/qq/e/v2/managers/setting/a;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/qq/e/v2/managers/setting/SM;->a:Lcom/qq/e/v2/managers/setting/a;

    invoke-virtual {v0, p1, p2}, Lcom/qq/e/v2/managers/setting/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_3
    iget-object v0, p0, Lcom/qq/e/v2/managers/setting/SM;->c:Lcom/qq/e/v2/managers/setting/a;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/qq/e/v2/managers/setting/SM;->c:Lcom/qq/e/v2/managers/setting/a;

    invoke-virtual {v0, p1, p2}, Lcom/qq/e/v2/managers/setting/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_4
    iget-object v0, p0, Lcom/qq/e/v2/managers/setting/SM;->d:Lcom/qq/e/v2/managers/setting/a;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/qq/e/v2/managers/setting/SM;->d:Lcom/qq/e/v2/managers/setting/a;

    invoke-virtual {v0, p1, p2}, Lcom/qq/e/v2/managers/setting/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_5
    invoke-virtual {p0, p1}, Lcom/qq/e/v2/managers/setting/SM;->get(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "Exception in settingManager.getForPlacement"

    invoke-static {v2, v0}, Lcom/qq/e/v2/util/GDTLogger;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public getInteger(Ljava/lang/String;)I
    .locals 1

    invoke-virtual {p0, p1}, Lcom/qq/e/v2/managers/setting/SM;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/e/v2/managers/setting/SM;->a(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getIntegerForPlacement(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/qq/e/v2/managers/setting/SM;->getForPlacement(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/e/v2/managers/setting/SM;->a(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getSdkCloudSettingSig()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qq/e/v2/managers/setting/SM;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getSid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qq/e/v2/managers/setting/SM;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/qq/e/v2/managers/setting/SM;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getStringForPlacement(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/qq/e/v2/managers/setting/SM;->getForPlacement(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSuid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qq/e/v2/managers/setting/SM;->h:Ljava/lang/String;

    return-object v0
.end method

.method public setDEVCodeSetting(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/qq/e/v2/managers/setting/SM;->d:Lcom/qq/e/v2/managers/setting/a;

    invoke-virtual {v0, p1, p2}, Lcom/qq/e/v2/managers/setting/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setDEVCodeSetting(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/qq/e/v2/managers/setting/SM;->d:Lcom/qq/e/v2/managers/setting/a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/qq/e/v2/managers/setting/a;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public updateContextSetting(Ljava/lang/String;)V
    .locals 4

    :try_start_0
    new-instance v0, Lcom/qq/e/v2/managers/setting/a;

    invoke-direct {v0}, Lcom/qq/e/v2/managers/setting/a;-><init>()V

    invoke-static {p1}, Lcom/qq/e/v2/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Lcom/qq/e/v2/managers/setting/a;

    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/qq/e/v2/managers/setting/a;-><init>(Ljava/lang/String;)V

    :cond_0
    iput-object v0, p0, Lcom/qq/e/v2/managers/setting/SM;->a:Lcom/qq/e/v2/managers/setting/a;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Exception while update Context Setting"

    invoke-static {v1, v0}, Lcom/qq/e/v2/util/GDTLogger;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public updateDEVCloudSetting(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/qq/e/v2/managers/setting/SM;->j:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/qq/e/v2/managers/setting/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/qq/e/v2/managers/setting/SM;->b()V

    :cond_0
    return-void
.end method

.method public updateSDKCloudSetting(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/qq/e/v2/managers/setting/SM;->j:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/qq/e/v2/managers/setting/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/qq/e/v2/managers/setting/SM;->a()V

    :cond_0
    return-void
.end method

.method public updateSID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/qq/e/v2/managers/setting/SM;->i:Ljava/lang/String;

    return-void
.end method

.method public updateSUID(Ljava/lang/String;)V
    .locals 4

    invoke-static {p1}, Lcom/qq/e/v2/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/qq/e/v2/managers/setting/SM;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/qq/e/v2/managers/setting/SM;->h:Ljava/lang/String;

    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/qq/e/v2/managers/setting/SM;->j:Landroid/content/Context;

    const-string v2, "e_qq_com_setting"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    const-string v2, "gdt_suid"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/qq/e/v2/util/StringUtil;->writeTo(Ljava/lang/String;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Exception while persit suid"

    invoke-static {v1, v0}, Lcom/qq/e/v2/util/GDTLogger;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
