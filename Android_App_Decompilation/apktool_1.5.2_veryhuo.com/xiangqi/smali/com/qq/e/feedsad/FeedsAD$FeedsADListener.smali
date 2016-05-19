.class public interface abstract Lcom/qq/e/feedsad/FeedsAD$FeedsADListener;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qq/e/feedsad/FeedsAD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FeedsADListener"
.end annotation


# virtual methods
.method public abstract onFeedsADFail(I)V
.end method

.method public abstract onFeedsADLoaded(Ljava/util/Collection;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/qq/e/feedsad/FeedsADViewRef;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onFeedsADReady(Lcom/qq/e/feedsad/FeedsADViewRef;)V
.end method
