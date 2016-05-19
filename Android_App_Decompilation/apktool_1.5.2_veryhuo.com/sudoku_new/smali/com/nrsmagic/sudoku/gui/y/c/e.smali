.class public Lcom/nrsmagic/sudoku/gui/y/c/e;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/util/List;

.field public static b:Ljava/util/List;

.field public static c:Ljava/util/List;

.field private static d:Lcom/nrsmagic/sudoku/gui/y/c/e;

.field private static e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/nrsmagic/sudoku/gui/y/c/e;->a:Ljava/util/List;

    new-instance v0, Lcom/nrsmagic/sudoku/gui/y/c/e;

    invoke-direct {v0}, Lcom/nrsmagic/sudoku/gui/y/c/e;-><init>()V

    sput-object v0, Lcom/nrsmagic/sudoku/gui/y/c/e;->d:Lcom/nrsmagic/sudoku/gui/y/c/e;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/nrsmagic/sudoku/gui/y/c/e;->c:Ljava/util/List;

    const/4 v0, 0x0

    sput v0, Lcom/nrsmagic/sudoku/gui/y/c/e;->e:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/nrsmagic/sudoku/gui/y/c/e;
    .locals 1

    sget-object v0, Lcom/nrsmagic/sudoku/gui/y/c/e;->d:Lcom/nrsmagic/sudoku/gui/y/c/e;

    if-nez v0, :cond_0

    new-instance v0, Lcom/nrsmagic/sudoku/gui/y/c/e;

    invoke-direct {v0}, Lcom/nrsmagic/sudoku/gui/y/c/e;-><init>()V

    sput-object v0, Lcom/nrsmagic/sudoku/gui/y/c/e;->d:Lcom/nrsmagic/sudoku/gui/y/c/e;

    :cond_0
    sget-object v0, Lcom/nrsmagic/sudoku/gui/y/c/e;->b:Ljava/util/List;

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/nrsmagic/sudoku/gui/y/c/e;->b(Landroid/content/Context;)Ljava/util/List;

    :cond_1
    sget-object v0, Lcom/nrsmagic/sudoku/gui/y/c/e;->d:Lcom/nrsmagic/sudoku/gui/y/c/e;

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_0

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/util/List;Ljava/lang/String;)Z
    .locals 3

    const/4 v2, 0x0

    move v1, v2

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nrsmagic/sudoku/gui/y/b/b;

    iget-object v0, v0, Lcom/nrsmagic/sudoku/gui/y/b/b;->f:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_1
    return v2

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public static b(Landroid/content/Context;)Ljava/util/List;
    .locals 10

    const/4 v3, 0x0

    const/16 v9, 0x14

    const/4 v2, 0x0

    sput v2, Lcom/nrsmagic/sudoku/gui/y/c/e;->e:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/nrsmagic/sudoku/gui/y/c/e;->c:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/nrsmagic/sudoku/gui/y/c/e;->b:Ljava/util/List;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    new-instance v5, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    invoke-direct {v5, v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v0, "android.intent.category.LAUNCHER"

    invoke-virtual {v5, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p0}, Lcom/nrsmagic/sudoku/gui/y/c/h;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz v6, :cond_5

    const-string v1, ""

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-static {v6}, Lcom/nrsmagic/sudoku/gui/y/c/h;->e(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    move-object v1, v0

    :goto_0
    const/4 v0, 0x1

    invoke-virtual {v4, v5, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/nrsmagic/sudoku/gui/y/c/e;->b:Ljava/util/List;

    sget-object v0, Lcom/nrsmagic/sudoku/gui/y/c/e;->b:Ljava/util/List;

    if-eqz v0, :cond_3

    if-eqz v6, :cond_1

    invoke-static {v6}, Lcom/nrsmagic/sudoku/gui/y/c/h;->d(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    array-length v5, v4

    move v0, v2

    :goto_1
    if-ge v0, v5, :cond_1

    aget-object v6, v4, v0

    invoke-static {v6, p0}, Lcom/nrsmagic/sudoku/gui/y/c/h;->b(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-static {v1, v6}, Lcom/nrsmagic/sudoku/gui/y/c/e;->a(Ljava/util/List;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    sget-object v7, Lcom/nrsmagic/sudoku/gui/y/c/e;->c:Ljava/util/List;

    invoke-static {v7, v6}, Lcom/nrsmagic/sudoku/gui/y/c/e;->b(Ljava/util/List;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    sget-object v8, Lcom/nrsmagic/sudoku/gui/y/c/e;->c:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    add-int/2addr v7, v8

    if-gt v7, v9, :cond_0

    sget-object v7, Lcom/nrsmagic/sudoku/gui/y/c/e;->c:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    sget-object v0, Lcom/nrsmagic/sudoku/gui/y/c/e;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    sget-object v0, Lcom/nrsmagic/sudoku/gui/y/c/e;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x2

    if-lez v0, :cond_4

    sget-object v0, Lcom/nrsmagic/sudoku/gui/y/c/e;->b:Ljava/util/List;

    sget-object v4, Lcom/nrsmagic/sudoku/gui/y/c/e;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v2

    add-int/lit8 v4, v4, -0x2

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    :goto_3
    sget-object v4, Lcom/nrsmagic/sudoku/gui/y/c/e;->c:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    if-eqz v0, :cond_2

    invoke-static {v1, v0}, Lcom/nrsmagic/sudoku/gui/y/c/e;->a(Ljava/util/List;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Lcom/nrsmagic/sudoku/gui/y/c/e;->c:Ljava/util/List;

    invoke-static {v4, v0}, Lcom/nrsmagic/sudoku/gui/y/c/e;->b(Ljava/util/List;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    sget-object v5, Lcom/nrsmagic/sudoku/gui/y/c/e;->c:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/2addr v4, v5

    if-ge v4, v9, :cond_2

    sget v4, Lcom/nrsmagic/sudoku/gui/y/c/e;->e:I

    const/4 v5, 0x4

    if-ge v4, v5, :cond_2

    sget-object v4, Lcom/nrsmagic/sudoku/gui/y/c/e;->c:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget v0, Lcom/nrsmagic/sudoku/gui/y/c/e;->e:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/nrsmagic/sudoku/gui/y/c/e;->e:I

    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    :cond_3
    sget-object v0, Lcom/nrsmagic/sudoku/gui/y/c/e;->b:Ljava/util/List;

    return-object v0

    :cond_4
    move-object v0, v3

    goto :goto_3

    :cond_5
    move-object v1, v0

    goto/16 :goto_0
.end method

.method public static b(Ljava/util/List;Ljava/lang/String;)Z
    .locals 3

    const/4 v2, 0x0

    move v1, v2

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_1
    return v2

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method


# virtual methods
.method public a(Ljava/lang/String;I)Z
    .locals 4

    const/4 v1, 0x0

    invoke-static {p2}, Lcom/nrsmagic/sudoku/gui/y/c/h;->b(I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_0

    move v0, v1

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    :try_start_0
    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    :cond_0
    return v1

    :catch_0
    move-exception v3

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
