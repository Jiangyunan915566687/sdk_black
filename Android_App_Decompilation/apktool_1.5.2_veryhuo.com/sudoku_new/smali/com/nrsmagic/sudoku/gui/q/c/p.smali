.class public Lcom/nrsmagic/sudoku/gui/q/c/p;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/util/List;

.field public static b:Ljava/util/List;

.field public static c:Ljava/util/List;

.field private static d:Lcom/nrsmagic/sudoku/gui/q/c/p;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/nrsmagic/sudoku/gui/q/c/p;

    invoke-direct {v0}, Lcom/nrsmagic/sudoku/gui/q/c/p;-><init>()V

    sput-object v0, Lcom/nrsmagic/sudoku/gui/q/c/p;->d:Lcom/nrsmagic/sudoku/gui/q/c/p;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/nrsmagic/sudoku/gui/q/c/p;->a:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/nrsmagic/sudoku/gui/q/c/p;->c:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/nrsmagic/sudoku/gui/q/c/p;
    .locals 2

    const-class v1, Lcom/nrsmagic/sudoku/gui/q/c/p;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/nrsmagic/sudoku/gui/q/c/p;->d:Lcom/nrsmagic/sudoku/gui/q/c/p;

    if-nez v0, :cond_0

    new-instance v0, Lcom/nrsmagic/sudoku/gui/q/c/p;

    invoke-direct {v0}, Lcom/nrsmagic/sudoku/gui/q/c/p;-><init>()V

    sput-object v0, Lcom/nrsmagic/sudoku/gui/q/c/p;->d:Lcom/nrsmagic/sudoku/gui/q/c/p;

    :cond_0
    sget-object v0, Lcom/nrsmagic/sudoku/gui/q/c/p;->b:Ljava/util/List;

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/nrsmagic/sudoku/gui/q/c/p;->b(Landroid/content/Context;)Ljava/util/List;

    :cond_1
    sget-object v0, Lcom/nrsmagic/sudoku/gui/q/c/p;->d:Lcom/nrsmagic/sudoku/gui/q/c/p;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
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

.method public static a(Ljava/lang/String;I)Z
    .locals 4

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/nrsmagic/sudoku/gui/q/c/s;->b(I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_1

    move v0, v1

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    if-eqz p0, :cond_0

    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public static b(Landroid/content/Context;)Ljava/util/List;
    .locals 4

    sget-object v0, Lcom/nrsmagic/sudoku/gui/q/c/p;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/nrsmagic/sudoku/gui/q/c/p;->b:Ljava/util/List;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/nrsmagic/sudoku/gui/q/c/p;->b:Ljava/util/List;

    sget-object v0, Lcom/nrsmagic/sudoku/gui/q/c/p;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    sget-object v0, Lcom/nrsmagic/sudoku/gui/q/c/p;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    sget-object v2, Lcom/nrsmagic/sudoku/gui/q/c/p;->c:Ljava/util/List;

    sget-object v0, Lcom/nrsmagic/sudoku/gui/q/c/p;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/nrsmagic/sudoku/gui/q/c/p;->b:Ljava/util/List;

    return-object v0
.end method

.method public static b(Ljava/lang/String;I)Z
    .locals 4

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/nrsmagic/sudoku/gui/q/c/s;->b(I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_0

    move v0, v1

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
