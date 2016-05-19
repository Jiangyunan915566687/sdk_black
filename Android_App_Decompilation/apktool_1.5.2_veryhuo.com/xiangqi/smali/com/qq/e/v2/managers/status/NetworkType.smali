.class public final enum Lcom/qq/e/v2/managers/status/NetworkType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/qq/e/v2/managers/status/NetworkType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum NET_2G:Lcom/qq/e/v2/managers/status/NetworkType;

.field public static final enum NET_3G:Lcom/qq/e/v2/managers/status/NetworkType;

.field public static final enum NET_4G:Lcom/qq/e/v2/managers/status/NetworkType;

.field public static final enum UNKNOWN:Lcom/qq/e/v2/managers/status/NetworkType;

.field public static final enum WIFI:Lcom/qq/e/v2/managers/status/NetworkType;

.field private static final synthetic c:[Lcom/qq/e/v2/managers/status/NetworkType;


# instance fields
.field private a:I

.field private b:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x0

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    new-instance v0, Lcom/qq/e/v2/managers/status/NetworkType;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v6, v6, v3}, Lcom/qq/e/v2/managers/status/NetworkType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/qq/e/v2/managers/status/NetworkType;->UNKNOWN:Lcom/qq/e/v2/managers/status/NetworkType;

    new-instance v0, Lcom/qq/e/v2/managers/status/NetworkType;

    const-string v1, "WIFI"

    invoke-direct {v0, v1, v3, v3, v4}, Lcom/qq/e/v2/managers/status/NetworkType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/qq/e/v2/managers/status/NetworkType;->WIFI:Lcom/qq/e/v2/managers/status/NetworkType;

    new-instance v0, Lcom/qq/e/v2/managers/status/NetworkType;

    const-string v1, "NET_2G"

    invoke-direct {v0, v1, v4, v4, v5}, Lcom/qq/e/v2/managers/status/NetworkType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/qq/e/v2/managers/status/NetworkType;->NET_2G:Lcom/qq/e/v2/managers/status/NetworkType;

    new-instance v0, Lcom/qq/e/v2/managers/status/NetworkType;

    const-string v1, "NET_3G"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v7, v7, v2}, Lcom/qq/e/v2/managers/status/NetworkType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/qq/e/v2/managers/status/NetworkType;->NET_3G:Lcom/qq/e/v2/managers/status/NetworkType;

    new-instance v0, Lcom/qq/e/v2/managers/status/NetworkType;

    const-string v1, "NET_4G"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v5, v5, v2}, Lcom/qq/e/v2/managers/status/NetworkType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/qq/e/v2/managers/status/NetworkType;->NET_4G:Lcom/qq/e/v2/managers/status/NetworkType;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/qq/e/v2/managers/status/NetworkType;

    sget-object v1, Lcom/qq/e/v2/managers/status/NetworkType;->UNKNOWN:Lcom/qq/e/v2/managers/status/NetworkType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/qq/e/v2/managers/status/NetworkType;->WIFI:Lcom/qq/e/v2/managers/status/NetworkType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/qq/e/v2/managers/status/NetworkType;->NET_2G:Lcom/qq/e/v2/managers/status/NetworkType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/qq/e/v2/managers/status/NetworkType;->NET_3G:Lcom/qq/e/v2/managers/status/NetworkType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/qq/e/v2/managers/status/NetworkType;->NET_4G:Lcom/qq/e/v2/managers/status/NetworkType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/qq/e/v2/managers/status/NetworkType;->c:[Lcom/qq/e/v2/managers/status/NetworkType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/qq/e/v2/managers/status/NetworkType;->a:I

    iput p4, p0, Lcom/qq/e/v2/managers/status/NetworkType;->b:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/qq/e/v2/managers/status/NetworkType;
    .locals 1

    const-class v0, Lcom/qq/e/v2/managers/status/NetworkType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/qq/e/v2/managers/status/NetworkType;

    return-object v0
.end method

.method public static values()[Lcom/qq/e/v2/managers/status/NetworkType;
    .locals 1

    sget-object v0, Lcom/qq/e/v2/managers/status/NetworkType;->c:[Lcom/qq/e/v2/managers/status/NetworkType;

    invoke-virtual {v0}, [Lcom/qq/e/v2/managers/status/NetworkType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/qq/e/v2/managers/status/NetworkType;

    return-object v0
.end method


# virtual methods
.method public final getConnValue()I
    .locals 1

    iget v0, p0, Lcom/qq/e/v2/managers/status/NetworkType;->a:I

    return v0
.end method

.method public final getPermValue()I
    .locals 1

    iget v0, p0, Lcom/qq/e/v2/managers/status/NetworkType;->b:I

    return v0
.end method
