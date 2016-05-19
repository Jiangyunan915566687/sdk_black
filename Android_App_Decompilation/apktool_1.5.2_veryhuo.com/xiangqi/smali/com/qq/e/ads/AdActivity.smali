.class public Lcom/qq/e/ads/AdActivity;
.super Landroid/app/Activity;


# instance fields
.field private a:Lcom/qq/e/v2/plugininterfaces/ActivityDelegate;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    iget-object v0, p0, Lcom/qq/e/ads/AdActivity;->a:Lcom/qq/e/v2/plugininterfaces/ActivityDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qq/e/ads/AdActivity;->a:Lcom/qq/e/v2/plugininterfaces/ActivityDelegate;

    invoke-interface {v0}, Lcom/qq/e/v2/plugininterfaces/ActivityDelegate;->onBackPressed()V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/qq/e/ads/AdActivity;->a:Lcom/qq/e/v2/plugininterfaces/ActivityDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qq/e/ads/AdActivity;->a:Lcom/qq/e/v2/plugininterfaces/ActivityDelegate;

    invoke-interface {v0, p1}, Lcom/qq/e/v2/plugininterfaces/ActivityDelegate;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-virtual {p0}, Lcom/qq/e/ads/AdActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "gdt_activity_delegate_name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :try_start_0
    invoke-virtual {p0}, Lcom/qq/e/ads/AdActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/qq/e/ads/AdActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v0, "--UNKNOWN--"

    if-eqz v2, :cond_0

    const-string v3, "GDT_AD_APPID"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GDT_AD_APPID"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {}, Lcom/qq/e/v2/managers/GDTADManager;->getInstance()Lcom/qq/e/v2/managers/GDTADManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/qq/e/ads/AdActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/qq/e/v2/managers/GDTADManager;->initWith(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/qq/e/v2/managers/GDTADManager;->getInstance()Lcom/qq/e/v2/managers/GDTADManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qq/e/v2/managers/GDTADManager;->getPM()Lcom/qq/e/v2/managers/plugin/PM;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qq/e/v2/managers/plugin/PM;->getActivityDelegateFactory()Lcom/qq/e/v2/plugininterfaces/ActivityDelegateFactory;

    move-result-object v0

    invoke-interface {v0, v1, p0}, Lcom/qq/e/v2/plugininterfaces/ActivityDelegateFactory;->getDelegate(Ljava/lang/String;Landroid/app/Activity;)Lcom/qq/e/v2/plugininterfaces/ActivityDelegate;

    move-result-object v0

    iput-object v0, p0, Lcom/qq/e/ads/AdActivity;->a:Lcom/qq/e/v2/plugininterfaces/ActivityDelegate;

    iget-object v0, p0, Lcom/qq/e/ads/AdActivity;->a:Lcom/qq/e/v2/plugininterfaces/ActivityDelegate;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Init ADActivity Delegate return null,delegateName"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/e/v2/util/GDTLogger;->report(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/qq/e/ads/AdActivity;->a:Lcom/qq/e/v2/plugininterfaces/ActivityDelegate;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/qq/e/ads/AdActivity;->a:Lcom/qq/e/v2/plugininterfaces/ActivityDelegate;

    invoke-interface {v0, p1}, Lcom/qq/e/v2/plugininterfaces/ActivityDelegate;->onBeforeCreate(Landroid/os/Bundle;)V

    :goto_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/qq/e/ads/AdActivity;->a:Lcom/qq/e/v2/plugininterfaces/ActivityDelegate;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/qq/e/ads/AdActivity;->a:Lcom/qq/e/v2/plugininterfaces/ActivityDelegate;

    invoke-interface {v0, p1}, Lcom/qq/e/v2/plugininterfaces/ActivityDelegate;->onAfterCreate(Landroid/os/Bundle;)V

    :cond_2
    return-void

    :cond_3
    :try_start_1
    const-string v0, "Init GDTADManager fail in AdActivity"

    invoke-static {v0}, Lcom/qq/e/v2/util/GDTLogger;->report(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Init ADActivity Delegate Faile,DelegateName:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/qq/e/v2/util/GDTLogger;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/qq/e/ads/AdActivity;->finish()V

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/qq/e/ads/AdActivity;->a:Lcom/qq/e/v2/plugininterfaces/ActivityDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qq/e/ads/AdActivity;->a:Lcom/qq/e/v2/plugininterfaces/ActivityDelegate;

    invoke-interface {v0}, Lcom/qq/e/v2/plugininterfaces/ActivityDelegate;->onDestroy()V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lcom/qq/e/ads/AdActivity;->a:Lcom/qq/e/v2/plugininterfaces/ActivityDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qq/e/ads/AdActivity;->a:Lcom/qq/e/v2/plugininterfaces/ActivityDelegate;

    invoke-interface {v0}, Lcom/qq/e/v2/plugininterfaces/ActivityDelegate;->onResume()V

    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    iget-object v0, p0, Lcom/qq/e/ads/AdActivity;->a:Lcom/qq/e/v2/plugininterfaces/ActivityDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qq/e/ads/AdActivity;->a:Lcom/qq/e/v2/plugininterfaces/ActivityDelegate;

    invoke-interface {v0}, Lcom/qq/e/v2/plugininterfaces/ActivityDelegate;->onStop()V

    :cond_0
    return-void
.end method
