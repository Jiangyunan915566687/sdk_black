.class public Lcom/qq/e/ads/AdSize;
.super Ljava/lang/Object;


# static fields
.field public static final BANNER:Lcom/qq/e/ads/AdSize; = null

.field public static final BANNER_SMALL:Lcom/qq/e/ads/AdSize; = null

.field public static final SMART_BANNER:Lcom/qq/e/ads/AdSize; = null

.field public static final SMART_BANNER_STR:Ljava/lang/String; = "smart_banner"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/qq/e/ads/AdSize;

    const/16 v1, 0x140

    const/16 v2, 0x32

    const-string v3, "mb"

    invoke-direct {v0, v1, v2, v3}, Lcom/qq/e/ads/AdSize;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/qq/e/ads/AdSize;->BANNER:Lcom/qq/e/ads/AdSize;

    new-instance v0, Lcom/qq/e/ads/AdSize;

    const/16 v1, 0xdc

    const/16 v2, 0x78

    const-string v3, "mb"

    invoke-direct {v0, v1, v2, v3}, Lcom/qq/e/ads/AdSize;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/qq/e/ads/AdSize;->BANNER_SMALL:Lcom/qq/e/ads/AdSize;

    new-instance v0, Lcom/qq/e/ads/AdSize;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/qq/e/ads/AdSize;-><init>(B)V

    sput-object v0, Lcom/qq/e/ads/AdSize;->SMART_BANNER:Lcom/qq/e/ads/AdSize;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
