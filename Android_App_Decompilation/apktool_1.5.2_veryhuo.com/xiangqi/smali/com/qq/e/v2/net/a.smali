.class public final Lcom/qq/e/v2/net/a;
.super Ljava/lang/Object;


# static fields
.field private static a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/qq/e/v2/net/a;->a:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x46t 0x55t 0x93t 0x78t
        0xb4t 0xd5t 0x7bt 0xf6t
        0xeat 0x3et 0x96t 0x81t
        0x48t 0xact 0x7ft 0x45t
    .end array-data
.end method

.method private static a(B)I
    .locals 0

    if-gez p0, :cond_0

    add-int/lit16 p0, p0, 0x100

    :cond_0
    return p0
.end method

.method public static a([B)[B
    .locals 14

    array-length v0, p0

    rem-int/lit8 v0, v0, 0x8

    rsub-int/lit8 v0, v0, 0x8

    array-length v1, p0

    add-int/2addr v1, v0

    new-array v6, v1, [B

    const/4 v1, 0x0

    int-to-byte v2, v0

    aput-byte v2, v6, v1

    const/4 v1, 0x0

    array-length v2, p0

    invoke-static {p0, v1, v6, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v6

    new-array v1, v0, [B

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    sget-object v4, Lcom/qq/e/v2/net/a;->a:[I

    invoke-static {v6, v0}, Lcom/qq/e/v2/net/a;->a([BI)[I

    move-result-object v7

    const/4 v2, 0x0

    aget v5, v7, v2

    const/4 v2, 0x1

    aget v3, v7, v2

    const/4 v2, 0x0

    const/4 v8, 0x0

    aget v8, v4, v8

    const/4 v9, 0x1

    aget v9, v4, v9

    const/4 v10, 0x2

    aget v10, v4, v10

    const/4 v11, 0x3

    aget v11, v4, v11

    const/4 v4, 0x0

    :goto_1
    const/16 v12, 0x20

    if-ge v4, v12, :cond_0

    const v12, -0x61c88647

    add-int/2addr v2, v12

    shl-int/lit8 v12, v3, 0x4

    add-int/2addr v12, v8

    add-int v13, v3, v2

    xor-int/2addr v12, v13

    shr-int/lit8 v13, v3, 0x5

    add-int/2addr v13, v9

    xor-int/2addr v12, v13

    add-int/2addr v5, v12

    shl-int/lit8 v12, v5, 0x4

    add-int/2addr v12, v10

    add-int v13, v5, v2

    xor-int/2addr v12, v13

    shr-int/lit8 v13, v5, 0x5

    add-int/2addr v13, v11

    xor-int/2addr v12, v13

    add-int/2addr v3, v12

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    aput v5, v7, v2

    const/4 v2, 0x1

    aput v3, v7, v2

    const/4 v2, 0x0

    invoke-static {v7, v2}, Lcom/qq/e/v2/net/a;->a([II)[B

    move-result-object v2

    const/4 v3, 0x0

    const/16 v4, 0x8

    invoke-static {v2, v3, v1, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v0, 0x8

    goto :goto_0

    :cond_1
    array-length v0, v1

    if-lez v0, :cond_2

    move-object v0, v1

    :goto_2
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private static a([II)[B
    .locals 5

    const/4 v0, 0x0

    array-length v1, p0

    shl-int/lit8 v1, v1, 0x2

    new-array v2, v1, [B

    move v1, v0

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    add-int/lit8 v3, v0, 0x3

    aget v4, p0, v1

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    add-int/lit8 v3, v0, 0x2

    aget v4, p0, v1

    shr-int/lit8 v4, v4, 0x8

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    add-int/lit8 v3, v0, 0x1

    aget v4, p0, v1

    shr-int/lit8 v4, v4, 0x10

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    aget v3, p0, v1

    ushr-int/lit8 v3, v3, 0x18

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x4

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method private static a([BI)[I
    .locals 4

    array-length v0, p0

    shr-int/lit8 v0, v0, 0x2

    new-array v1, v0, [I

    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge p1, v2, :cond_0

    add-int/lit8 v2, p1, 0x3

    aget-byte v2, p0, v2

    invoke-static {v2}, Lcom/qq/e/v2/net/a;->a(B)I

    move-result v2

    add-int/lit8 v3, p1, 0x2

    aget-byte v3, p0, v3

    invoke-static {v3}, Lcom/qq/e/v2/net/a;->a(B)I

    move-result v3

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, p1, 0x1

    aget-byte v3, p0, v3

    invoke-static {v3}, Lcom/qq/e/v2/net/a;->a(B)I

    move-result v3

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    aget-byte v3, p0, p1

    shl-int/lit8 v3, v3, 0x18

    or-int/2addr v2, v3

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 p1, p1, 0x4

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static b([B)[B
    .locals 15

    const/4 v14, 0x1

    const/4 v1, 0x0

    array-length v0, p0

    new-array v6, v0, [B

    move v0, v1

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    sget-object v3, Lcom/qq/e/v2/net/a;->a:[I

    invoke-static {p0, v0}, Lcom/qq/e/v2/net/a;->a([BI)[I

    move-result-object v7

    aget v4, v7, v1

    aget v2, v7, v14

    aget v8, v3, v1

    aget v9, v3, v14

    const/4 v5, 0x2

    aget v10, v3, v5

    const/4 v5, 0x3

    aget v11, v3, v5

    const v3, -0x3910c8e0

    move v5, v4

    move v4, v3

    move v3, v2

    move v2, v1

    :goto_1
    const/16 v12, 0x20

    if-ge v2, v12, :cond_0

    shl-int/lit8 v12, v5, 0x4

    add-int/2addr v12, v10

    add-int v13, v5, v4

    xor-int/2addr v12, v13

    shr-int/lit8 v13, v5, 0x5

    add-int/2addr v13, v11

    xor-int/2addr v12, v13

    sub-int/2addr v3, v12

    shl-int/lit8 v12, v3, 0x4

    add-int/2addr v12, v8

    add-int v13, v3, v4

    xor-int/2addr v12, v13

    shr-int/lit8 v13, v3, 0x5

    add-int/2addr v13, v9

    xor-int/2addr v12, v13

    sub-int/2addr v5, v12

    const v12, -0x61c88647

    sub-int/2addr v4, v12

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    aput v5, v7, v1

    aput v3, v7, v14

    invoke-static {v7, v1}, Lcom/qq/e/v2/net/a;->a([II)[B

    move-result-object v2

    const/16 v3, 0x8

    invoke-static {v2, v1, v6, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v0, 0x8

    goto :goto_0

    :cond_1
    array-length v0, v6

    if-lez v0, :cond_2

    aget-byte v2, v6, v1

    array-length v0, v6

    sub-int/2addr v0, v2

    new-array v0, v0, [B

    array-length v3, v0

    invoke-static {v6, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_2
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method
