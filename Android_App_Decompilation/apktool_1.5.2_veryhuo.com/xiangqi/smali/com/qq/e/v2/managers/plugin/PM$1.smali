.class final Lcom/qq/e/v2/managers/plugin/PM$1;
.super Ljava/util/HashMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qq/e/v2/managers/plugin/PM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/Class",
        "<*>;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-class v0, Lcom/qq/e/v2/plugininterfaces/ServiceDelegateFactory;

    const-string v1, "com.qq.e.v2.plugin.ServiceDelegateFactoryImpl"

    invoke-virtual {p0, v0, v1}, Lcom/qq/e/v2/managers/plugin/PM$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v0, Lcom/qq/e/v2/plugininterfaces/ActivityDelegateFactory;

    const-string v1, "com.qq.e.v2.plugin.ActivityDelegateFactoryImpl"

    invoke-virtual {p0, v0, v1}, Lcom/qq/e/v2/managers/plugin/PM$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v0, Lcom/qq/e/v2/plugininterfaces/BannerViewFactory;

    const-string v1, "com.qq.e.v2.plugin.BannerViewFactoryImpl"

    invoke-virtual {p0, v0, v1}, Lcom/qq/e/v2/managers/plugin/PM$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v0, Lcom/qq/e/splash/AdViewFactory;

    const-string v1, "com.qq.e.v2.plugin.AdViewFactoryImpl"

    invoke-virtual {p0, v0, v1}, Lcom/qq/e/v2/managers/plugin/PM$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v0, Lcom/qq/e/v2/plugininterfaces/GridAdViewFactory;

    const-string v1, "com.qq.e.v2.plugin.GridAdViewFactoryImpl"

    invoke-virtual {p0, v0, v1}, Lcom/qq/e/v2/managers/plugin/PM$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v0, Lcom/qq/e/v2/plugininterfaces/FeedsAdViewFactory;

    const-string v1, "com.qq.e.v2.plugin.FeedsAdViewFactoryImpl"

    invoke-virtual {p0, v0, v1}, Lcom/qq/e/v2/managers/plugin/PM$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v0, Lcom/qq/e/v2/plugininterfaces/InterstitialViewFactory;

    const-string v1, "com.qq.e.v2.plugin.InterstitialViewFactoryImpl"

    invoke-virtual {p0, v0, v1}, Lcom/qq/e/v2/managers/plugin/PM$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v0, Lcom/qq/e/v2/plugininterfaces/AppWallViewFactory;

    const-string v1, "com.qq.e.v2.plugin.AppWallViewFactoryImpl"

    invoke-virtual {p0, v0, v1}, Lcom/qq/e/v2/managers/plugin/PM$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v0, Lcom/qq/e/v2/plugininterfaces/GDTNativeAdViewFactory;

    const-string v1, "com.qq.e.v2.plugin.GDTNativeAdViewFactoryImpl"

    invoke-virtual {p0, v0, v1}, Lcom/qq/e/v2/managers/plugin/PM$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
