.class public interface abstract Lcom/qq/e/gdtnativead/GDTNativeAd$GDTNativeAdListener;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qq/e/gdtnativead/GDTNativeAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "GDTNativeAdListener"
.end annotation


# virtual methods
.method public abstract onGDTNativeAdFail(I)V
.end method

.method public abstract onGDTNativeAdLoaded(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/qq/e/gdtnativead/GDTNativeAdDataRef;",
            ">;)V"
        }
    .end annotation
.end method
