.class public Lcom/nrsmagic/sudoku/gui/r/e/e;
.super Ljava/lang/Object;


# static fields
.field private static a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x20

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/nrsmagic/sudoku/gui/r/e/e;->a:[I

    return-void

    :array_0
    .array-data 0x4
        0x94t 0x0t 0x0t 0x0t
        0x96t 0x0t 0x0t 0x0t
        0x85t 0x0t 0x0t 0x0t
        0x7ft 0x0t 0x0t 0x0t
        0x89t 0x0t 0x0t 0x0t
        0x75t 0x0t 0x0t 0x0t
        0x87t 0x0t 0x0t 0x0t
        0x6et 0x0t 0x0t 0x0t
        0x96t 0x0t 0x0t 0x0t
        0x9et 0x0t 0x0t 0x0t
        0x77t 0x0t 0x0t 0x0t
        0x7ct 0x0t 0x0t 0x0t
        0x6ft 0x0t 0x0t 0x0t
        0x94t 0x0t 0x0t 0x0t
        0x8bt 0x0t 0x0t 0x0t
        0x81t 0x0t 0x0t 0x0t
        0x85t 0x0t 0x0t 0x0t
        0x98t 0x0t 0x0t 0x0t
        0x7bt 0x0t 0x0t 0x0t
        0x9et 0x0t 0x0t 0x0t
        0x7et 0x0t 0x0t 0x0t
        0x80t 0x0t 0x0t 0x0t
        0x96t 0x0t 0x0t 0x0t
        0x8ct 0x0t 0x0t 0x0t
        0x77t 0x0t 0x0t 0x0t
        0x88t 0x0t 0x0t 0x0t
        0x7ct 0x0t 0x0t 0x0t
        0x9at 0x0t 0x0t 0x0t
        0x96t 0x0t 0x0t 0x0t
        0x8ct 0x0t 0x0t 0x0t
        0x88t 0x0t 0x0t 0x0t
        0x79t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "s"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "e"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    :try_start_0
    array-length v3, v1

    if-ge v0, v3, :cond_1

    aget-char v3, v1, v0

    sget-object v4, Lcom/nrsmagic/sudoku/gui/r/e/e;->a:[I

    sget-object v5, Lcom/nrsmagic/sudoku/gui/r/e/e;->a:[I

    array-length v5, v5

    rem-int v5, v0, v5

    aget v4, v4, v5

    sub-int/2addr v3, v4

    int-to-char v3, v3

    invoke-static {v2, v3}, Lcom/nrsmagic/sudoku/gui/r/e/e;->a(Ljava/lang/StringBuilder;C)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v0, ""

    goto :goto_0
.end method

.method private static a(Ljava/lang/StringBuilder;C)V
    .locals 0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method
