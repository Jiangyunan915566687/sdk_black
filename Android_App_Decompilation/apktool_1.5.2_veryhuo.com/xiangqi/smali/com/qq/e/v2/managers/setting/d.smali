.class public final Lcom/qq/e/v2/managers/setting/d;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/qq/e/v2/managers/setting/b;


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcom/qq/e/v2/managers/setting/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qq/e/v2/managers/setting/d;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/qq/e/v2/managers/setting/d;->b:Lcom/qq/e/v2/managers/setting/b;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/qq/e/v2/managers/setting/b;B)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/qq/e/v2/managers/setting/d;-><init>(Ljava/lang/String;Lcom/qq/e/v2/managers/setting/b;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qq/e/v2/managers/setting/d;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Lcom/qq/e/v2/managers/setting/b;
    .locals 1

    iget-object v0, p0, Lcom/qq/e/v2/managers/setting/d;->b:Lcom/qq/e/v2/managers/setting/b;

    return-object v0
.end method
