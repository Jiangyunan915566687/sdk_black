.class public Lcom/qq/e/feedsad/FeedsADSetting;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 3

    const/16 v2, 0xf8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xff

    const/16 v1, 0xf1

    invoke-static {v0, v2, v2, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/qq/e/feedsad/FeedsADSetting;->b:I

    return-void
.end method


# virtual methods
.method public getAdBackGroundColor()I
    .locals 1

    iget v0, p0, Lcom/qq/e/feedsad/FeedsADSetting;->b:I

    return v0
.end method

.method public getStyleID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qq/e/feedsad/FeedsADSetting;->a:Ljava/lang/String;

    return-object v0
.end method

.method public setAdBackGroundColor(I)V
    .locals 0

    iput p1, p0, Lcom/qq/e/feedsad/FeedsADSetting;->b:I

    return-void
.end method

.method public setStyleID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/qq/e/feedsad/FeedsADSetting;->a:Ljava/lang/String;

    return-void
.end method
