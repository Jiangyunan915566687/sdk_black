.class public final enum Lcom/qq/e/v2/net/GDTADNetRequest$Method;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qq/e/v2/net/GDTADNetRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Method"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/qq/e/v2/net/GDTADNetRequest$Method;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum GET:Lcom/qq/e/v2/net/GDTADNetRequest$Method;

.field public static final enum POST:Lcom/qq/e/v2/net/GDTADNetRequest$Method;

.field private static final synthetic a:[Lcom/qq/e/v2/net/GDTADNetRequest$Method;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/qq/e/v2/net/GDTADNetRequest$Method;

    const-string v1, "GET"

    invoke-direct {v0, v1, v2}, Lcom/qq/e/v2/net/GDTADNetRequest$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qq/e/v2/net/GDTADNetRequest$Method;->GET:Lcom/qq/e/v2/net/GDTADNetRequest$Method;

    new-instance v0, Lcom/qq/e/v2/net/GDTADNetRequest$Method;

    const-string v1, "POST"

    invoke-direct {v0, v1, v3}, Lcom/qq/e/v2/net/GDTADNetRequest$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qq/e/v2/net/GDTADNetRequest$Method;->POST:Lcom/qq/e/v2/net/GDTADNetRequest$Method;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/qq/e/v2/net/GDTADNetRequest$Method;

    sget-object v1, Lcom/qq/e/v2/net/GDTADNetRequest$Method;->GET:Lcom/qq/e/v2/net/GDTADNetRequest$Method;

    aput-object v1, v0, v2

    sget-object v1, Lcom/qq/e/v2/net/GDTADNetRequest$Method;->POST:Lcom/qq/e/v2/net/GDTADNetRequest$Method;

    aput-object v1, v0, v3

    sput-object v0, Lcom/qq/e/v2/net/GDTADNetRequest$Method;->a:[Lcom/qq/e/v2/net/GDTADNetRequest$Method;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/qq/e/v2/net/GDTADNetRequest$Method;
    .locals 1

    const-class v0, Lcom/qq/e/v2/net/GDTADNetRequest$Method;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/qq/e/v2/net/GDTADNetRequest$Method;

    return-object v0
.end method

.method public static values()[Lcom/qq/e/v2/net/GDTADNetRequest$Method;
    .locals 1

    sget-object v0, Lcom/qq/e/v2/net/GDTADNetRequest$Method;->a:[Lcom/qq/e/v2/net/GDTADNetRequest$Method;

    invoke-virtual {v0}, [Lcom/qq/e/v2/net/GDTADNetRequest$Method;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/qq/e/v2/net/GDTADNetRequest$Method;

    return-object v0
.end method
