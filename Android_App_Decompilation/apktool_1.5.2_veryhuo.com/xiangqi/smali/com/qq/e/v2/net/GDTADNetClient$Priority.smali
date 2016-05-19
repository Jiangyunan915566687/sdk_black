.class public final enum Lcom/qq/e/v2/net/GDTADNetClient$Priority;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qq/e/v2/net/GDTADNetClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Priority"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/qq/e/v2/net/GDTADNetClient$Priority;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum High:Lcom/qq/e/v2/net/GDTADNetClient$Priority;

.field public static final enum Low:Lcom/qq/e/v2/net/GDTADNetClient$Priority;

.field public static final enum Mid:Lcom/qq/e/v2/net/GDTADNetClient$Priority;

.field private static final synthetic b:[Lcom/qq/e/v2/net/GDTADNetClient$Priority;


# instance fields
.field private a:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    new-instance v0, Lcom/qq/e/v2/net/GDTADNetClient$Priority;

    const-string v1, "High"

    invoke-direct {v0, v1, v4, v2}, Lcom/qq/e/v2/net/GDTADNetClient$Priority;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qq/e/v2/net/GDTADNetClient$Priority;->High:Lcom/qq/e/v2/net/GDTADNetClient$Priority;

    new-instance v0, Lcom/qq/e/v2/net/GDTADNetClient$Priority;

    const-string v1, "Mid"

    invoke-direct {v0, v1, v2, v3}, Lcom/qq/e/v2/net/GDTADNetClient$Priority;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qq/e/v2/net/GDTADNetClient$Priority;->Mid:Lcom/qq/e/v2/net/GDTADNetClient$Priority;

    new-instance v0, Lcom/qq/e/v2/net/GDTADNetClient$Priority;

    const-string v1, "Low"

    invoke-direct {v0, v1, v3, v5}, Lcom/qq/e/v2/net/GDTADNetClient$Priority;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qq/e/v2/net/GDTADNetClient$Priority;->Low:Lcom/qq/e/v2/net/GDTADNetClient$Priority;

    new-array v0, v5, [Lcom/qq/e/v2/net/GDTADNetClient$Priority;

    sget-object v1, Lcom/qq/e/v2/net/GDTADNetClient$Priority;->High:Lcom/qq/e/v2/net/GDTADNetClient$Priority;

    aput-object v1, v0, v4

    sget-object v1, Lcom/qq/e/v2/net/GDTADNetClient$Priority;->Mid:Lcom/qq/e/v2/net/GDTADNetClient$Priority;

    aput-object v1, v0, v2

    sget-object v1, Lcom/qq/e/v2/net/GDTADNetClient$Priority;->Low:Lcom/qq/e/v2/net/GDTADNetClient$Priority;

    aput-object v1, v0, v3

    sput-object v0, Lcom/qq/e/v2/net/GDTADNetClient$Priority;->b:[Lcom/qq/e/v2/net/GDTADNetClient$Priority;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/qq/e/v2/net/GDTADNetClient$Priority;->a:I

    return-void
.end method

.method static synthetic a(Lcom/qq/e/v2/net/GDTADNetClient$Priority;)I
    .locals 1

    iget v0, p0, Lcom/qq/e/v2/net/GDTADNetClient$Priority;->a:I

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/qq/e/v2/net/GDTADNetClient$Priority;
    .locals 1

    const-class v0, Lcom/qq/e/v2/net/GDTADNetClient$Priority;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/qq/e/v2/net/GDTADNetClient$Priority;

    return-object v0
.end method

.method public static values()[Lcom/qq/e/v2/net/GDTADNetClient$Priority;
    .locals 1

    sget-object v0, Lcom/qq/e/v2/net/GDTADNetClient$Priority;->b:[Lcom/qq/e/v2/net/GDTADNetClient$Priority;

    invoke-virtual {v0}, [Lcom/qq/e/v2/net/GDTADNetClient$Priority;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/qq/e/v2/net/GDTADNetClient$Priority;

    return-object v0
.end method


# virtual methods
.method public final value()I
    .locals 1

    iget v0, p0, Lcom/qq/e/v2/net/GDTADNetClient$Priority;->a:I

    return v0
.end method
