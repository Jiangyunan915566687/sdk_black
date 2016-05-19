.class final Lcom/qq/e/v2/util/GDTST$Holder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qq/e/v2/util/GDTST;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Holder"
.end annotation


# static fields
.field public static final instance:Lcom/qq/e/v2/util/GDTST;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/qq/e/v2/util/GDTST;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/qq/e/v2/util/GDTST;-><init>(B)V

    sput-object v0, Lcom/qq/e/v2/util/GDTST$Holder;->instance:Lcom/qq/e/v2/util/GDTST;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
